#!/usr/bin/env python3
"""Materialise the model as PostgreSQL DDL.

Emits, into ddl/:
  00_schemas.sql        one schema per module, plus egd_catalog and legacy
  10_<module>.sql       CREATE TABLE per module, canonical Latin column names,
                        primary keys, COMMENT ON TABLE/COLUMN carrying the legacy
                        SAP field name and description
  80_catalog.sql        egd_catalog.field_map / table_map / concept_label — the model
                        describing itself inside the database
  85_catalog_data.sql   INSERTs for the catalog, including the ten-language concept labels
  90_legacy_views.sql   legacy.<table> views renaming every canonical column back to its
                        SAP field name, so a mirror pipeline can round-trip unchanged
  95_foreign_keys.sql   FK constraints, emitted NOT VALID and only where the parent table
                        and its key are actually defined in this model

Run from the repository root:  python3 scripts/emit_postgres.py
"""
import glob
import json
import os
import re
from datetime import datetime, timezone

import yaml

BASE = "schema/sap-modules"
OUT = "ddl"
REGISTER = "schema/lexicon/CANONICAL-FIELDS.yaml"
I18N = "schema/lexicon/i18n.json"
STAMP = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")

HEADER = f"""-- EVE Datasphere Sovereign — PostgreSQL materialisation
-- Generated {STAMP} by scripts/emit_postgres.py. Do not hand-edit; regenerate.
-- Column names are the canonical Latin layer (EgD-LATIN-001). The legacy SAP field name
-- is preserved in COMMENT ON COLUMN and in egd_catalog.field_map, and is the join key.
-- Mirror, never cannibalise. Pour le bien-etre du peuple.
"""

RESERVED = {
    "all", "and", "any", "array", "as", "asc", "authorization", "between", "both", "case",
    "cast", "check", "collate", "column", "constraint", "create", "current_date",
    "current_time", "current_user", "default", "desc", "distinct", "do", "else", "end",
    "except", "false", "for", "foreign", "from", "grant", "group", "having", "in",
    "initially", "intersect", "into", "is", "join", "leading", "like", "limit", "localtime",
    "not", "null", "offset", "on", "only", "or", "order", "placing", "primary",
    "references", "returning", "select", "session_user", "some", "table", "then", "to",
    "trailing", "true", "union", "unique", "user", "using", "when", "where", "window",
    "with", "sql",
    # type_func_name and reserved keywords that also bite as identifiers
    "cross", "full", "inner", "join", "left", "right", "natural", "outer", "similar",
    "verbose", "freeze", "ilike", "isnull", "notnull", "overlaps", "tablesample",
    "concurrently", "current_catalog", "current_role", "current_schema", "lateral",
    "variadic", "asymmetric", "symmetric", "analyse", "analyze", "binary", "collation",
    "deferrable", "fetch", "return", "returns", "trigger", "values", "position", "time",
    "timestamp", "date", "interval", "row", "grouping", "both_",
}

# CROSS is a SQL keyword; the cross-application schema is spelled out instead.
SCHEMA_ALIAS = {"cross": "cross_app"}


def q(s):
    return "'" + str(s).replace("'", "''") + "'"


def ident(name):
    n = re.sub(r"[^0-9a-zA-Z_]", "_", str(name)).lower().strip("_") or "col"
    if n[0].isdigit():
        n = "f_" + n
    if n in RESERVED:
        n = n + "_"
    return n[:63]


def pg_type(f):
    dt = str(f.get("datatype") or "").upper().strip()
    ln = f.get("length")
    dec = f.get("decimals") or 0
    try:
        ln = int(ln)
    except (TypeError, ValueError):
        ln = None
    if dt in ("DATS", "DATN"):
        return "date"
    if dt in ("TIMS", "TIMN"):
        return "time"
    if dt in ("DEC", "CURR", "QUAN", "FLTP", "P"):
        if dt == "FLTP":
            return "double precision"
        return f"numeric({max(ln or 15, 1)},{dec})"
    if dt in ("INT1", "INT2"):
        return "smallint"
    if dt == "INT4":
        return "integer"
    if dt in ("INT8",):
        return "bigint"
    if dt in ("RAW", "LRAW", "RSTR"):
        return "bytea"
    if dt in ("STRG", "STRING", "SSTR"):
        return "text"
    if dt in ("CLNT",):
        return "char(3)"
    if dt in ("LANG",):
        return "char(1)"
    if dt in ("CUKY", "UNIT"):
        return f"varchar({ln or 5})"
    if dt in ("CHAR", "NUMC", "ACCP", "VARC", "CDAY"):
        return f"varchar({ln})" if ln else "text"
    return f"varchar({ln})" if ln else "text"


def load():
    out = {}
    for path in sorted(glob.glob(f"{BASE}/*/tables/*.yaml")):
        module = path.split("/")[2]
        doc = yaml.safe_load(open(path))
        if isinstance(doc, dict) and doc.get("table") and (doc.get("fields") or []):
            out.setdefault(module, []).append(doc)
    for m in out:
        out[m].sort(key=lambda d: d["table"])
    return out


def main():
    data = load()
    reg = yaml.safe_load(open(REGISTER)) if os.path.exists(REGISTER) else {}
    i18n = json.load(open(I18N)) if os.path.exists(I18N) else {"labels": {}}
    os.makedirs(OUT, exist_ok=True)

    modules = sorted(data)
    with open(f"{OUT}/00_schemas.sql", "w") as fh:
        fh.write(HEADER + "\n")
        for m in modules + ["egd_catalog", "legacy"]:
            fh.write(f"CREATE SCHEMA IF NOT EXISTS {ident(SCHEMA_ALIAS.get(m, m))};\n")

    field_rows, table_rows, view_sql, fk_sql = [], [], [], []
    defined = {d["table"]: m for m in data for d in data[m]}
    pk_of = {}
    ncols = 0

    for m in modules:
        lines = [HEADER, f"-- module {m.upper()}\n"]
        for d in data[m]:
            t = d["table"]
            schema, tbl = ident(SCHEMA_ALIAS.get(m, m)), ident(t)
            canon = (reg.get(t) or {}).get("fields", {})
            cols, comments, pk, seen, colmap = [], [], [], {}, []
            for f in d["fields"]:
                legacy = str(f.get("name", "")).strip()
                if not legacy:
                    continue
                c = canon.get(legacy, {})
                base = ident(c.get("canonical") or legacy)
                col = base
                if col in seen:
                    seen[base] += 1
                    col = f"{base}_{seen[base]}"
                else:
                    seen[base] = 0
                colmap.append((col, legacy))
                cols.append(f"  {col} {pg_type(f)}")
                ncols += 1
                note = f'{legacy} — {f.get("description","")}'
                if c.get("latin"):
                    note += f' [{c["latin"]}]'
                comments.append(
                    f"COMMENT ON COLUMN {schema}.{tbl}.{col} IS {q(note)};")
                if f.get("key"):
                    pk.append(col)
                field_rows.append((m.upper(), t, legacy, col, c.get("latin") or "",
                                   json.dumps(c.get("concepts") or []),
                                   str(f.get("data_element") or ""),
                                   str(f.get("check_table") or ""),
                                   bool(f.get("key")),
                                   str(f.get("description") or "")))
            if not cols:
                continue
            pk_of[t] = pk
            body = ",\n".join(cols)
            if pk:
                body += f",\n  CONSTRAINT {tbl}_pk PRIMARY KEY ({', '.join(pk)})"
            lines.append(f"CREATE TABLE IF NOT EXISTS {schema}.{tbl} (\n{body}\n);")
            lines.append(f"COMMENT ON TABLE {schema}.{tbl} IS "
                         f"{q(t + ' — ' + str(d.get('description',''))[:600])};")
            lines.extend(comments)
            lines.append("")
            table_rows.append((m.upper(), t, str(d.get("description") or ""),
                               str(d.get("source") or ""), len(cols)))
            sel = ",\n    ".join(f'{c} AS "{lg}"' for c, lg in colmap)
            view_sql.append(f'CREATE OR REPLACE VIEW legacy."{t}" AS\n  SELECT\n    '
                            f'{sel}\n  FROM {schema}.{tbl};')
            for k in (d.get("foreign_keys") or []):
                child = str(k.get("field") or "")
                parent = str(k.get("check_table") or "")
                if parent not in defined or child not in [lg for _, lg in colmap]:
                    continue
                fk_sql.append(f"-- {t}.{child} -> {parent}."
                              f"{k.get('check_field') or '?'}")
        open(f"{OUT}/10_{m}.sql", "w").write("\n".join(lines) + "\n")

    with open(f"{OUT}/80_catalog.sql", "w") as fh:
        fh.write(HEADER + """
CREATE TABLE IF NOT EXISTS egd_catalog.table_map (
  module        varchar(8)  NOT NULL,
  legacy_table  varchar(64) NOT NULL,
  description   text,
  source        text,
  column_count  integer,
  CONSTRAINT table_map_pk PRIMARY KEY (legacy_table)
);
COMMENT ON TABLE egd_catalog.table_map IS
  'Every table in the sovereign mirror, with the source the definition was taken from.';

CREATE TABLE IF NOT EXISTS egd_catalog.field_map (
  module          varchar(8)  NOT NULL,
  legacy_table    varchar(64) NOT NULL,
  legacy_field    varchar(64) NOT NULL,
  canonical_name  varchar(64) NOT NULL,
  latin           text,
  concepts        jsonb,
  data_element    varchar(64),
  check_table     varchar(64),
  is_key          boolean     NOT NULL DEFAULT false,
  description     text,
  CONSTRAINT field_map_pk PRIMARY KEY (legacy_table, legacy_field)
);
COMMENT ON TABLE egd_catalog.field_map IS
  'The join key between the canonical Latin layer and SAP. Never drop this table.';

CREATE TABLE IF NOT EXISTS egd_catalog.concept_label (
  lang        varchar(8)  NOT NULL,
  concept_en  text        NOT NULL,
  label       text        NOT NULL,
  CONSTRAINT concept_label_pk PRIMARY KEY (lang, concept_en)
);
COMMENT ON TABLE egd_catalog.concept_label IS
  'Concept-layer translations. Renaming the whole model into a country language is a join
   against this table, not a schema change.';

-- Every field, in any language, in one query:
CREATE OR REPLACE VIEW egd_catalog.field_localised AS
  SELECT f.module, f.legacy_table, f.legacy_field, f.canonical_name, f.latin, l.lang,
         string_agg(l.label, ' · ' ORDER BY c.ord) AS localised_name
    FROM egd_catalog.field_map f
    CROSS JOIN LATERAL jsonb_array_elements_text(coalesce(f.concepts,'[]'::jsonb))
                       WITH ORDINALITY AS c(concept, ord)
    JOIN egd_catalog.concept_label l ON l.concept_en = c.concept
   GROUP BY f.module, f.legacy_table, f.legacy_field, f.canonical_name, f.latin, l.lang;
""")

    def ins(table, cols, rows):
        if not rows:
            return ""
        head = f"INSERT INTO {table} ({', '.join(cols)}) VALUES\n"
        vals = ",\n".join("  (" + ", ".join(
            ("true" if v is True else "false" if v is False else q(v)) for v in r) + ")"
            for r in rows)
        return head + vals + "\nON CONFLICT DO NOTHING;\n\n"

    lab_rows = [(lang, k, v) for lang, m in (i18n.get("labels") or {}).items()
                for k, v in m.items()]
    with open(f"{OUT}/85_catalog_data.sql", "w") as fh:
        fh.write(HEADER + "\n")
        fh.write(ins("egd_catalog.table_map",
                     ["module", "legacy_table", "description", "source", "column_count"],
                     table_rows))
        for i in range(0, len(field_rows), 500):
            fh.write(ins("egd_catalog.field_map",
                         ["module", "legacy_table", "legacy_field", "canonical_name",
                          "latin", "concepts", "data_element", "check_table", "is_key",
                          "description"], field_rows[i:i + 500]))
        for i in range(0, len(lab_rows), 500):
            fh.write(ins("egd_catalog.concept_label",
                         ["lang", "concept_en", "label"], lab_rows[i:i + 500]))

    open(f"{OUT}/90_legacy_views.sql", "w").write(
        HEADER + "\n-- Round-trip: every table under its SAP name, columns under their SAP\n"
                 "-- field names. A mirror pipeline written against SAP needs no rewrite.\n\n"
        + "\n\n".join(view_sql) + "\n")
    open(f"{OUT}/95_foreign_keys.sql", "w").write(
        HEADER + "\n-- Declared relationships from the model's check tables. Emitted as\n"
                 "-- documentation rather than constraints: SAP check tables are frequently\n"
                 "-- language- or client-dependent and a mirror load must not fail on them.\n\n"
        + "\n".join(sorted(set(fk_sql))) + "\n")

    open(f"{OUT}/README.md", "w").write(f"""# PostgreSQL materialisation

Generated {STAMP} by [`scripts/emit_postgres.py`](../scripts/emit_postgres.py). Regenerate,
never hand-edit.

{len(table_rows)} tables · {ncols:,} columns · {len(lab_rows):,} concept translations.

Load in order:

```bash
for f in ddl/00_schemas.sql ddl/10_*.sql ddl/80_catalog.sql ddl/85_catalog_data.sql \\
         ddl/90_legacy_views.sql; do psql "$DATABASE_URL" -f "$f"; done
```

- **Column names are the canonical Latin layer.** The legacy SAP field name is on every
  column as a `COMMENT`, which is what a client tool shows on hover, and in
  `egd_catalog.field_map`, which is what a query joins on.
- **`legacy.<TABLE>` views** present every table under its SAP name with SAP field names, so
  an existing extractor keeps working unchanged.
- **Rename the model into any language** with one query — no schema change:

```sql
SELECT legacy_table, legacy_field, canonical_name, localised_name
  FROM egd_catalog.field_localised
 WHERE lang = 'fr' AND legacy_table = 'ACDOCA';
```

- Relationships are shipped as documentation in `95_foreign_keys.sql`, not as constraints: a
  mirror load must never fail because the source system's check table is client-dependent.

*Pour le bien-être du peuple.* © 2026 Dany Thériault / EVE Glyph Design.
""")
    print(f"{len(table_rows)} tables · {ncols} columns · {len(field_rows)} field_map rows · "
          f"{len(lab_rows)} label rows · {len(view_sql)} legacy views")


if __name__ == "__main__":
    main()
