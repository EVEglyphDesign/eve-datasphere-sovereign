# PostgreSQL materialisation

Generated 2026-08-01T01:47:33Z by [`scripts/emit_postgres.py`](../scripts/emit_postgres.py). Regenerate,
never hand-edit.

238 tables · 9,586 columns · 2,460 concept translations.

Load in order:

```bash
for f in ddl/00_schemas.sql ddl/10_*.sql ddl/80_catalog.sql ddl/85_catalog_data.sql \
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
