-- EVE Datasphere Sovereign — PostgreSQL materialisation
-- Generated 2026-08-01T02:19:53Z by scripts/emit_postgres.py. Do not hand-edit; regenerate.
-- Column names are the canonical Latin layer (EgD-LATIN-001). The legacy SAP field name
-- is preserved in COMMENT ON COLUMN and in egd_catalog.field_map, and is the join key.
-- Mirror, never cannibalise. Pour le bien-etre du peuple.

CREATE SCHEMA IF NOT EXISTS bw;
CREATE SCHEMA IF NOT EXISTS co;
CREATE SCHEMA IF NOT EXISTS cross_app;
CREATE SCHEMA IF NOT EXISTS ext;
CREATE SCHEMA IF NOT EXISTS fi;
CREATE SCHEMA IF NOT EXISTS hr;
CREATE SCHEMA IF NOT EXISTS int;
CREATE SCHEMA IF NOT EXISTS mm;
CREATE SCHEMA IF NOT EXISTS pm;
CREATE SCHEMA IF NOT EXISTS pp;
CREATE SCHEMA IF NOT EXISTS ps;
CREATE SCHEMA IF NOT EXISTS qm;
CREATE SCHEMA IF NOT EXISTS sd;
CREATE SCHEMA IF NOT EXISTS egd_catalog;
CREATE SCHEMA IF NOT EXISTS legacy;
