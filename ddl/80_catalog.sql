-- EVE Datasphere Sovereign — PostgreSQL materialisation
-- Generated 2026-08-01T02:19:53Z by scripts/emit_postgres.py. Do not hand-edit; regenerate.
-- Column names are the canonical Latin layer (EgD-LATIN-001). The legacy SAP field name
-- is preserved in COMMENT ON COLUMN and in egd_catalog.field_map, and is the join key.
-- Mirror, never cannibalise. Pour le bien-etre du peuple.

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
