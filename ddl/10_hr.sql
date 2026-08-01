-- EVE Datasphere Sovereign — PostgreSQL materialisation
-- Generated 2026-08-01T02:17:52Z by scripts/emit_postgres.py. Do not hand-edit; regenerate.
-- Column names are the canonical Latin layer (EgD-LATIN-001). The legacy SAP field name
-- is preserved in COMMENT ON COLUMN and in egd_catalog.field_map, and is the join key.
-- Mirror, never cannibalise. Pour le bien-etre du peuple.

-- module HR

CREATE TABLE IF NOT EXISTS hr.hrp1000 (
  cli char(3),
  cns_vrs varchar(2),
  obi_gen varchar(2),
  obi varchar(8),
  cns_sta varchar(1),
  ini_die_obi date,
  fin_die_obi date,
  lng_clv char(1),
  num_gin_tbl varchar(3),
  obi_gen2 varchar(10),
  gin varchar(4),
  mut date,
  usr_nom varchar(12),
  csa varchar(2),
  tbl_sgn varchar(1),
  txt_gin varchar(8),
  obi2 varchar(12),
  obi_nom varchar(40),
  die date,
  obi_axq varchar(12),
  nom_axq varchar(40),
  mc_seark varchar(52),
  CONSTRAINT hrp1000_pk PRIMARY KEY (cli, cns_vrs, obi_gen, obi, cns_sta, ini_die_obi, fin_die_obi, lng_clv, num_gin_tbl)
);
COMMENT ON TABLE hr.hrp1000 IS 'HRP1000 — Infotype 1000 DB Table — the organizational-management object master: every object (org unit, position, job, cost center, task, etc., typed via OTYPE/OBJID under plan version PLVAR) with its short and long text (SHORT/STEXT), search-helper fields, planning status, and validity interval. This is one of the three organizational management tables alongside HRP1001 (relationships between objects — the important one, since SAP expresses org structure as relationships rather than a hierarchy column) and HRP1002 (object descriptions/texts); HRP1000 is the object registry that HRP1001''s relationship r';
COMMENT ON COLUMN hr.hrp1000.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN hr.hrp1000.cns_vrs IS 'PLVAR — Plan Version [consilium versio]';
COMMENT ON COLUMN hr.hrp1000.obi_gen IS 'OTYPE — Object Type [obiectum genus]';
COMMENT ON COLUMN hr.hrp1000.obi IS 'OBJID — Object ID [obiectum]';
COMMENT ON COLUMN hr.hrp1000.cns_sta IS 'ISTAT — Planning Status [consilium status]';
COMMENT ON COLUMN hr.hrp1000.ini_die_obi IS 'BEGDA — Start Date — validity interval start for this object record [initium dies obiectum]';
COMMENT ON COLUMN hr.hrp1000.fin_die_obi IS 'ENDDA — End Date — validity interval end for this object record [finis dies obiectum]';
COMMENT ON COLUMN hr.hrp1000.lng_clv IS 'LANGU — Language Key [lingua clavis]';
COMMENT ON COLUMN hr.hrp1000.num_gin_tbl IS 'SEQNR — Number of Infotype Record with Same Key [numerus genus informationis tabula]';
COMMENT ON COLUMN hr.hrp1000.obi_gen2 IS 'OTJID — Concatenation of Object Type and Object ID [obiectum genus]';
COMMENT ON COLUMN hr.hrp1000.gin IS 'INFTY — Infotype [genus informationis]';
COMMENT ON COLUMN hr.hrp1000.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.hrp1000.usr_nom IS 'UNAME — User Name [usor nomen]';
COMMENT ON COLUMN hr.hrp1000.csa IS 'REASN — Reason [causa]';
COMMENT ON COLUMN hr.hrp1000.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.hrp1000.txt_gin IS 'ITXNR — Text Module for Infotype [textus genus informationis]';
COMMENT ON COLUMN hr.hrp1000.obi2 IS 'SHORT — Object Abbreviation [obiectum]';
COMMENT ON COLUMN hr.hrp1000.obi_nom IS 'STEXT — Object Name [obiectum nomen]';
COMMENT ON COLUMN hr.hrp1000.die IS 'GDATE — Delimitation Date [dies]';
COMMENT ON COLUMN hr.hrp1000.obi_axq IS 'MC_SHORT — Object Abbreviation (Search Help) [obiectum auxilium quaerendi]';
COMMENT ON COLUMN hr.hrp1000.nom_axq IS 'MC_STEXT — Name (Search Help) [nomen auxilium quaerendi]';
COMMENT ON COLUMN hr.hrp1000.mc_seark IS 'MC_SEARK — Search Term';

CREATE TABLE IF NOT EXISTS hr.hrp1001 (
  cli char(3),
  obi_gen_fns varchar(2),
  obi_fns_rlt varchar(8),
  cns_vrs varchar(2),
  rlt_drc_gen varchar(1),
  rlt_gen_cod varchar(3),
  cns_sta varchar(1),
  pri varchar(2),
  ini_die_rlt date,
  fin_die_rlt date,
  cmp varchar(10),
  num_gin_tbl varchar(3),
  gin varchar(4),
  obi_gen varchar(10),
  sbg varchar(4),
  mut date,
  usr_nom varchar(12),
  csa varchar(2),
  tbl_sgn varchar(1),
  txt_gin varchar(8),
  gen_obi_mta varchar(2),
  obi_mta_rlt varchar(45),
  prozt numeric(5,2),
  num varchar(32),
  CONSTRAINT hrp1001_pk PRIMARY KEY (cli, obi_gen_fns, obi_fns_rlt, cns_vrs, rlt_drc_gen, rlt_gen_cod, cns_sta, pri, ini_die_rlt, fin_die_rlt, cmp, num_gin_tbl)
);
COMMENT ON TABLE hr.hrp1001 IS 'HRP1001 — Infotype 1001 DB Table — the organizational-management relationships table, and the important one of the three OM tables (alongside HRP1000 object master and HRP1002 object descriptions), because SAP expresses org structure as directed relationship edges between objects rather than as a hierarchy column: a source object (OTYPE/OBJID/PLVAR) is linked to a related object (SCLAS/SOBID) via a typed relationship (RELAT, with direction sign RSIGN) — e.g. an org unit ''reports to'' another org unit, a position ''belongs to'' an org unit, or a person ''holds'' a position — under a validity interval. Reconst';
COMMENT ON COLUMN hr.hrp1001.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN hr.hrp1001.obi_gen_fns IS 'OTYPE — Object Type — type of the source object in the relationship [obiectum genus fons]';
COMMENT ON COLUMN hr.hrp1001.obi_fns_rlt IS 'OBJID — Object ID — ID of the source object in the relationship [obiectum fons relatio]';
COMMENT ON COLUMN hr.hrp1001.cns_vrs IS 'PLVAR — Plan Version [consilium versio]';
COMMENT ON COLUMN hr.hrp1001.rlt_drc_gen IS 'RSIGN — Relationship Specification — direction sign (e.g. A for ''to'', B for ''from'') for the relationship type [relatio directio genus]';
COMMENT ON COLUMN hr.hrp1001.rlt_gen_cod IS 'RELAT — Relationship Between Objects — the relationship type code (e.g. reports-to, belongs-to, holds) [relatio genus codex]';
COMMENT ON COLUMN hr.hrp1001.cns_sta IS 'ISTAT — Planning Status [consilium status]';
COMMENT ON COLUMN hr.hrp1001.pri IS 'PRIOX — Priority [prioritas]';
COMMENT ON COLUMN hr.hrp1001.ini_die_rlt IS 'BEGDA — Start Date — validity interval start for this relationship [initium dies relatio]';
COMMENT ON COLUMN hr.hrp1001.fin_die_rlt IS 'ENDDA — End Date — validity interval end for this relationship [finis dies relatio]';
COMMENT ON COLUMN hr.hrp1001.cmp IS 'VARYF — Variation Field for File PLOG [campus]';
COMMENT ON COLUMN hr.hrp1001.num_gin_tbl IS 'SEQNR — Number of Infotype Record with Same Key [numerus genus informationis tabula]';
COMMENT ON COLUMN hr.hrp1001.gin IS 'INFTY — Infotype [genus informationis]';
COMMENT ON COLUMN hr.hrp1001.obi_gen IS 'OTJID — Concatenation of Object Type and Object ID [obiectum genus]';
COMMENT ON COLUMN hr.hrp1001.sbg IS 'SUBTY — Subtype [subgenus]';
COMMENT ON COLUMN hr.hrp1001.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.hrp1001.usr_nom IS 'UNAME — User Name [usor nomen]';
COMMENT ON COLUMN hr.hrp1001.csa IS 'REASN — Reason [causa]';
COMMENT ON COLUMN hr.hrp1001.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.hrp1001.txt_gin IS 'ITXNR — Text Module for Infotype [textus genus informationis]';
COMMENT ON COLUMN hr.hrp1001.gen_obi_mta IS 'SCLAS — Type of Related Object — object type of the target object in the relationship [genus obiectum meta]';
COMMENT ON COLUMN hr.hrp1001.obi_mta_rlt IS 'SOBID — ID of Related Object — object ID of the target object in the relationship (e.g. the PERNR-linked object ID for a holder relationship) [obiectum meta relatio]';
COMMENT ON COLUMN hr.hrp1001.prozt IS 'PROZT — Weighting Percentage';
COMMENT ON COLUMN hr.hrp1001.num IS 'ADATANR — ADATA Number [numerus]';

CREATE TABLE IF NOT EXISTS hr.hrp1002 (
  cli char(3),
  cns_vrs varchar(2),
  obi_gen varchar(2),
  obi varchar(8),
  sbg varchar(4),
  cns_sta varchar(1),
  ini_die_dsc date,
  fin_die_dsc date,
  lng_clv char(1),
  cmp varchar(9),
  num_gin_tbl varchar(3),
  gin varchar(4),
  obi_gen2 varchar(10),
  mut date,
  usr_nom varchar(12),
  csa varchar(2),
  tbl_sgn varchar(1),
  txt_gin varchar(8),
  rfr_num_tbl varchar(32),
  CONSTRAINT hrp1002_pk PRIMARY KEY (cli, cns_vrs, obi_gen, obi, sbg, cns_sta, ini_die_dsc, fin_die_dsc, lng_clv, cmp, num_gin_tbl)
);
COMMENT ON TABLE hr.hrp1002 IS 'HRP1002 — Infotype 1002 DB Table — the organizational-management object descriptions/free-text table, the third of the three OM tables alongside HRP1000 (object master) and HRP1001 (relationships, the important one since org structure lives in relationship edges, not a hierarchy column): a long-text description for a given object (OTYPE/OBJID/PLVAR), referenced via TABNR into the text/table-extension storage, under a validity interval. This table is personal data when the described object is a person-holding object — any mirrored copy must be handled under consent-scoped access controls.';
COMMENT ON COLUMN hr.hrp1002.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN hr.hrp1002.cns_vrs IS 'PLVAR — Plan Version [consilium versio]';
COMMENT ON COLUMN hr.hrp1002.obi_gen IS 'OTYPE — Object Type [obiectum genus]';
COMMENT ON COLUMN hr.hrp1002.obi IS 'OBJID — Object ID [obiectum]';
COMMENT ON COLUMN hr.hrp1002.sbg IS 'SUBTY — Subtype [subgenus]';
COMMENT ON COLUMN hr.hrp1002.cns_sta IS 'ISTAT — Planning Status [consilium status]';
COMMENT ON COLUMN hr.hrp1002.ini_die_dsc IS 'BEGDA — Start Date — validity interval start for this description record [initium dies descriptio]';
COMMENT ON COLUMN hr.hrp1002.fin_die_dsc IS 'ENDDA — End Date — validity interval end for this description record [finis dies descriptio]';
COMMENT ON COLUMN hr.hrp1002.lng_clv IS 'LANGU — Language Key [lingua clavis]';
COMMENT ON COLUMN hr.hrp1002.cmp IS 'FILLER — Dummy Field with Length 9 [campus]';
COMMENT ON COLUMN hr.hrp1002.num_gin_tbl IS 'SEQNR — Number of Infotype Record with Same Key [numerus genus informationis tabula]';
COMMENT ON COLUMN hr.hrp1002.gin IS 'INFTY — Infotype [genus informationis]';
COMMENT ON COLUMN hr.hrp1002.obi_gen2 IS 'OTJID — Concatenation of Object Type and Object ID [obiectum genus]';
COMMENT ON COLUMN hr.hrp1002.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.hrp1002.usr_nom IS 'UNAME — User Name [usor nomen]';
COMMENT ON COLUMN hr.hrp1002.csa IS 'REASN — Reason [causa]';
COMMENT ON COLUMN hr.hrp1002.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.hrp1002.txt_gin IS 'ITXNR — Text Module for Infotype [textus genus informationis]';
COMMENT ON COLUMN hr.hrp1002.rfr_num_tbl IS 'TABNR — Reference Number to Table Part — points into the associated long-text/table-extension storage [referentia numerus tabula]';

CREATE TABLE IF NOT EXISTS hr.pa0000 (
  cli char(3),
  nps varchar(8),
  sbg varchar(4),
  obi varchar(2),
  obx_idx_tbl varchar(1),
  fin_die_tbl date,
  ini_die_tbl date,
  num_gin_tbl varchar(3),
  mut date,
  nom_psn_mut varchar(12),
  tbl_sgn varchar(1),
  txt_gin varchar(1),
  rfr varchar(1),
  cnf varchar(1),
  gin varchar(2),
  csa varchar(2),
  cmp varchar(1),
  cmp2 varchar(1),
  cmp3 varchar(1),
  cmp4 varchar(1),
  cmp5 varchar(2),
  cmp6 varchar(2),
  val varchar(4),
  gen varchar(2),
  csa2 varchar(2),
  emp_sta varchar(1),
  sta varchar(1),
  sol_sta varchar(1),
  CONSTRAINT pa0000_pk PRIMARY KEY (cli, nps, sbg, obi, obx_idx_tbl, fin_die_tbl, ini_die_tbl, num_gin_tbl)
);
COMMENT ON TABLE hr.pa0000 IS 'PA0000 — HR Master Record: Infotype 0000 (Actions) — the employment-event record for a personnel number: every hire, transfer, re-organization, and termination is written here as a dated action (MASSN) with a reason (MASSG) and the resulting employment/customer/special-payment status flags (STAT1/STAT2/STAT3), under the same validity-interval key pattern (BEGDA/ENDDA/SEQNR) as PA0001 Organizational Assignment, which this infotype''s actions actually trigger. This infotype carries personal data — it records an identifiable employee''s employment history and status — and any mirrored copy must be handled u';
COMMENT ON COLUMN hr.pa0000.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN hr.pa0000.nps IS 'PERNR — Personnel Number [numerus personae]';
COMMENT ON COLUMN hr.pa0000.sbg IS 'SUBTY — Subtype [subgenus]';
COMMENT ON COLUMN hr.pa0000.obi IS 'OBJPS — Object Identification [obiectum]';
COMMENT ON COLUMN hr.pa0000.obx_idx_tbl IS 'SPRPS — Lock Indicator for HR Master Data Record [obex index tabula]';
COMMENT ON COLUMN hr.pa0000.fin_die_tbl IS 'ENDDA — End Date — validity interval end for this action record [finis dies tabula]';
COMMENT ON COLUMN hr.pa0000.ini_die_tbl IS 'BEGDA — Start Date — validity interval start for this action record; effective date of the hire/transfer/termination [initium dies tabula]';
COMMENT ON COLUMN hr.pa0000.num_gin_tbl IS 'SEQNR — Number of Infotype Record with Same Key [numerus genus informationis tabula]';
COMMENT ON COLUMN hr.pa0000.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.pa0000.nom_psn_mut IS 'UNAME — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN hr.pa0000.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.pa0000.txt_gin IS 'ITXEX — Text Exists for Infotype [textus genus informationis]';
COMMENT ON COLUMN hr.pa0000.rfr IS 'REFEX — Reference Fields Exist (Primary/Secondary Costs) [referentia]';
COMMENT ON COLUMN hr.pa0000.cnf IS 'ORDEX — Confirmation Fields Exist [confirmatio]';
COMMENT ON COLUMN hr.pa0000.gin IS 'ITBLD — Infotype Screen Control [genus informationis]';
COMMENT ON COLUMN hr.pa0000.csa IS 'PREAS — Reason for Changing Master Data [causa]';
COMMENT ON COLUMN hr.pa0000.cmp IS 'FLAG1 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0000.cmp2 IS 'FLAG2 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0000.cmp3 IS 'FLAG3 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0000.cmp4 IS 'FLAG4 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0000.cmp5 IS 'RESE1 — Reserved Field/Unused Field of Length 2 [campus]';
COMMENT ON COLUMN hr.pa0000.cmp6 IS 'RESE2 — Reserved Field/Unused Field of Length 2 [campus]';
COMMENT ON COLUMN hr.pa0000.val IS 'GRPVL — Grouping Value for Personnel Assignments [valor]';
COMMENT ON COLUMN hr.pa0000.gen IS 'MASSN — Action Type — hire, transfer, termination and other personnel action codes [genus]';
COMMENT ON COLUMN hr.pa0000.csa2 IS 'MASSG — Reason for Action [causa]';
COMMENT ON COLUMN hr.pa0000.emp_sta IS 'STAT1 — Customer-Specific Status [emptor status]';
COMMENT ON COLUMN hr.pa0000.sta IS 'STAT2 — Employment Status [status]';
COMMENT ON COLUMN hr.pa0000.sol_sta IS 'STAT3 — Special Payment Status [solutio status]';

CREATE TABLE IF NOT EXISTS hr.pa0001 (
  cli char(3),
  nps varchar(8),
  sbg varchar(4),
  obi varchar(2),
  obx_idx_tbl varchar(1),
  fin_die_asg date,
  ini_die_asg date,
  num_gin_tbl varchar(3),
  mut date,
  nom_psn_mut varchar(12),
  tbl_sgn varchar(1),
  txt_gin varchar(1),
  rfr varchar(1),
  cnf varchar(1),
  gin varchar(2),
  csa varchar(2),
  val varchar(4),
  soc varchar(4),
  apr_loc varchar(4),
  cop varchar(1),
  sop varchar(2),
  clv varchar(14),
  ang varchar(4),
  spr varchar(4),
  psn varchar(4),
  are varchar(2),
  ops_pct varchar(2),
  csm_cmp varchar(10),
  uor varchar(8),
  mnu_ttl_cmp varchar(8),
  ofm varchar(8),
  are2 varchar(8),
  sacha varchar(3),
  sachp varchar(3),
  tmp varchar(3),
  opr_nom_ult varchar(30),
  nom_opr_cmp varchar(40),
  obi_gen varchar(2),
  cts varchar(4),
  amd varchar(4),
  fistl varchar(16),
  geber varchar(10),
  afn varchar(16),
  grant_nbr varchar(20),
  seg varchar(10),
  per varchar(10),
  CONSTRAINT pa0001_pk PRIMARY KEY (cli, nps, sbg, obi, obx_idx_tbl, fin_die_asg, ini_die_asg, num_gin_tbl)
);
COMMENT ON TABLE hr.pa0001 IS 'PA0001 — HR Master Record: Infotype 0001 (Organizational Assignment) — the personnel administration infotype that carries an employee''s org placement: personnel number, name, cost centre, org unit, position, job, personnel area/subarea, employee group/subgroup, and the validity interval (BEGDA/ENDDA) under which that assignment holds. This is the SAP analogue the CDK twin''s employee/technician master keys on: personnel number ↔ technician ID, cost centre ↔ department, org unit/position ↔ role.';
COMMENT ON COLUMN hr.pa0001.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN hr.pa0001.nps IS 'PERNR — Personnel Number [numerus personae]';
COMMENT ON COLUMN hr.pa0001.sbg IS 'SUBTY — Subtype [subgenus]';
COMMENT ON COLUMN hr.pa0001.obi IS 'OBJPS — Object Identification [obiectum]';
COMMENT ON COLUMN hr.pa0001.obx_idx_tbl IS 'SPRPS — Lock Indicator for HR Master Data Record [obex index tabula]';
COMMENT ON COLUMN hr.pa0001.fin_die_asg IS 'ENDDA — End Date — validity interval end for this org-assignment record [finis dies assignatio]';
COMMENT ON COLUMN hr.pa0001.ini_die_asg IS 'BEGDA — Start Date — validity interval start for this org-assignment record [initium dies assignatio]';
COMMENT ON COLUMN hr.pa0001.num_gin_tbl IS 'SEQNR — Number of Infotype Record with Same Key [numerus genus informationis tabula]';
COMMENT ON COLUMN hr.pa0001.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.pa0001.nom_psn_mut IS 'UNAME — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN hr.pa0001.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.pa0001.txt_gin IS 'ITXEX — Text Exists for Infotype [textus genus informationis]';
COMMENT ON COLUMN hr.pa0001.rfr IS 'REFEX — Reference Fields Exist (Primary/Secondary Costs) [referentia]';
COMMENT ON COLUMN hr.pa0001.cnf IS 'ORDEX — Confirmation Fields Exist [confirmatio]';
COMMENT ON COLUMN hr.pa0001.gin IS 'ITBLD — Infotype Screen Control [genus informationis]';
COMMENT ON COLUMN hr.pa0001.csa IS 'PREAS — Reason for Changing Master Data [causa]';
COMMENT ON COLUMN hr.pa0001.val IS 'GRPVL — Grouping Value for Personnel Assignments [valor]';
COMMENT ON COLUMN hr.pa0001.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN hr.pa0001.apr_loc IS 'WERKS — Personnel Area — the CDK analogue''s rooftop/location grouping [area personalis locus]';
COMMENT ON COLUMN hr.pa0001.cop IS 'PERSG — Employee Group [coetus operariorum]';
COMMENT ON COLUMN hr.pa0001.sop IS 'PERSK — Employee Subgroup [subcoetus operariorum]';
COMMENT ON COLUMN hr.pa0001.clv IS 'VDSK1 — Organizational Key [clavis]';
COMMENT ON COLUMN hr.pa0001.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN hr.pa0001.spr IS 'BTRTL — Personnel Subarea [subarea personalis]';
COMMENT ON COLUMN hr.pa0001.psn IS 'JUPER — Legal Person [persona]';
COMMENT ON COLUMN hr.pa0001.are IS 'ABKRS — Payroll Area [area]';
COMMENT ON COLUMN hr.pa0001.ops_pct IS 'ANSVH — Work Contract [opus pactum]';
COMMENT ON COLUMN hr.pa0001.csm_cmp IS 'KOSTL — Cost Center — the CDK analogue''s department field [centrum sumptus campus]';
COMMENT ON COLUMN hr.pa0001.uor IS 'ORGEH — Organizational Unit [unitas ordinis]';
COMMENT ON COLUMN hr.pa0001.mnu_ttl_cmp IS 'PLANS — Position — the CDK analogue''s role/title field [munus titulus campus]';
COMMENT ON COLUMN hr.pa0001.ofm IS 'STELL — Job [officium]';
COMMENT ON COLUMN hr.pa0001.are2 IS 'MSTBR — Supervisor Area [area]';
COMMENT ON COLUMN hr.pa0001.sacha IS 'SACHA — Payroll Administrator';
COMMENT ON COLUMN hr.pa0001.sachp IS 'SACHP — Administrator for HR Master Data';
COMMENT ON COLUMN hr.pa0001.tmp IS 'SACHZ — Administrator for Time Recording [tempus]';
COMMENT ON COLUMN hr.pa0001.opr_nom_ult IS 'SNAME — Employee''s Name (sortable, last name first) — the CDK analogue''s technician name-reference field [operarius nomen ultimus]';
COMMENT ON COLUMN hr.pa0001.nom_opr_cmp IS 'ENAME — Formatted Name of Employee or Applicant — the CDK analogue''s technician display-name field [nomen operarius campus]';
COMMENT ON COLUMN hr.pa0001.obi_gen IS 'OTYPE — Object Type [obiectum genus]';
COMMENT ON COLUMN hr.pa0001.cts IS 'SBMOD — Administrator Group [coetus]';
COMMENT ON COLUMN hr.pa0001.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN hr.pa0001.fistl IS 'FISTL — Funds Center';
COMMENT ON COLUMN hr.pa0001.geber IS 'GEBER — Fund';
COMMENT ON COLUMN hr.pa0001.afn IS 'FKBER — Functional Area [area functionis]';
COMMENT ON COLUMN hr.pa0001.grant_nbr IS 'GRANT_NBR — Grant';
COMMENT ON COLUMN hr.pa0001.seg IS 'SGMNT — Segment for Segmental Reporting [segmentum]';
COMMENT ON COLUMN hr.pa0001.per IS 'BUDGET_PD — FM: Budget Period [periodus]';

CREATE TABLE IF NOT EXISTS hr.pa0002 (
  cli char(3),
  nps varchar(8),
  sbg varchar(4),
  obi varchar(2),
  obx_idx_tbl varchar(1),
  fin_die_tbl date,
  ini_die_tbl date,
  num_gin_tbl varchar(3),
  mut date,
  nom_psn_mut varchar(12),
  tbl_sgn varchar(1),
  txt_gin varchar(1),
  rfr varchar(1),
  cnf varchar(1),
  gin varchar(2),
  csa varchar(2),
  cmp varchar(1),
  cmp2 varchar(1),
  cmp3 varchar(1),
  cmp4 varchar(1),
  cmp5 varchar(2),
  cmp6 varchar(2),
  val varchar(4),
  inits varchar(10),
  ult_nom varchar(40),
  nom varchar(40),
  nom2 varchar(40),
  pri_nom varchar(40),
  nom3 varchar(80),
  ttl varchar(15),
  ttl2 varchar(15),
  ttl3 varchar(15),
  nom4 varchar(15),
  nom5 varchar(15),
  rufnm varchar(40),
  nom6 varchar(40),
  nom_idx_opr varchar(2),
  frm_dml_clv varchar(1),
  clv varchar(1),
  die date,
  ptr varchar(3),
  gbdep varchar(3),
  gbort varchar(40),
  natio varchar(3),
  nati2 varchar(3),
  nati3 varchar(3),
  lng char(1),
  clv2 varchar(2),
  sta_clv varchar(1),
  vla_die_sta date,
  num numeric(3,0),
  nom7 varchar(1),
  permo varchar(2),
  num2 varchar(20),
  die2 date,
  pri_nom2 varchar(40),
  ult_nom2 varchar(40),
  pri_nom3 varchar(40),
  ult_nom3 varchar(40),
  nom8 varchar(40),
  nom9 varchar(40),
  nickk varchar(40),
  nickr varchar(40),
  ann varchar(4),
  mns varchar(2),
  die_mns_ann varchar(2),
  ult_nom_cmp varchar(25),
  pri_nom_cmp varchar(25),
  nom10 varchar(15),
  CONSTRAINT pa0002_pk PRIMARY KEY (cli, nps, sbg, obi, obx_idx_tbl, fin_die_tbl, ini_die_tbl, num_gin_tbl)
);
COMMENT ON TABLE hr.pa0002 IS 'PA0002 — HR Master Record: Infotype 0002 (Personal Data) — the employee''s personal identity data: legal name components (last/first/birth/nickname/middle name), title and name affixes, gender, date and place of birth, nationality (up to three), marital status and date, number of children, communication language, religious denomination, and personnel ID number, keyed by personnel number under the same validity-interval pattern as PA0001 Organizational Assignment. SAP''s real table carries additional Japan-localization name-script fields (Katakana/Romaji); this definition carries the complete field list a';
COMMENT ON COLUMN hr.pa0002.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN hr.pa0002.nps IS 'PERNR — Personnel Number [numerus personae]';
COMMENT ON COLUMN hr.pa0002.sbg IS 'SUBTY — Subtype [subgenus]';
COMMENT ON COLUMN hr.pa0002.obi IS 'OBJPS — Object Identification [obiectum]';
COMMENT ON COLUMN hr.pa0002.obx_idx_tbl IS 'SPRPS — Lock Indicator for HR Master Data Record [obex index tabula]';
COMMENT ON COLUMN hr.pa0002.fin_die_tbl IS 'ENDDA — End Date — validity interval end for this personal-data record [finis dies tabula]';
COMMENT ON COLUMN hr.pa0002.ini_die_tbl IS 'BEGDA — Start Date — validity interval start for this personal-data record [initium dies tabula]';
COMMENT ON COLUMN hr.pa0002.num_gin_tbl IS 'SEQNR — Number of Infotype Record with Same Key [numerus genus informationis tabula]';
COMMENT ON COLUMN hr.pa0002.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.pa0002.nom_psn_mut IS 'UNAME — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN hr.pa0002.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.pa0002.txt_gin IS 'ITXEX — Text Exists for Infotype [textus genus informationis]';
COMMENT ON COLUMN hr.pa0002.rfr IS 'REFEX — Reference Fields Exist (Primary/Secondary Costs) [referentia]';
COMMENT ON COLUMN hr.pa0002.cnf IS 'ORDEX — Confirmation Fields Exist [confirmatio]';
COMMENT ON COLUMN hr.pa0002.gin IS 'ITBLD — Infotype Screen Control [genus informationis]';
COMMENT ON COLUMN hr.pa0002.csa IS 'PREAS — Reason for Changing Master Data [causa]';
COMMENT ON COLUMN hr.pa0002.cmp IS 'FLAG1 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0002.cmp2 IS 'FLAG2 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0002.cmp3 IS 'FLAG3 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0002.cmp4 IS 'FLAG4 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0002.cmp5 IS 'RESE1 — Reserved Field/Unused Field of Length 2 [campus]';
COMMENT ON COLUMN hr.pa0002.cmp6 IS 'RESE2 — Reserved Field/Unused Field of Length 2 [campus]';
COMMENT ON COLUMN hr.pa0002.val IS 'GRPVL — Grouping Value for Personnel Assignments [valor]';
COMMENT ON COLUMN hr.pa0002.inits IS 'INITS — Initials';
COMMENT ON COLUMN hr.pa0002.ult_nom IS 'NACHN — Last Name [ultimus nomen]';
COMMENT ON COLUMN hr.pa0002.nom IS 'NAME2 — Name at Birth [nomen]';
COMMENT ON COLUMN hr.pa0002.nom2 IS 'NACH2 — Second Name [nomen]';
COMMENT ON COLUMN hr.pa0002.pri_nom IS 'VORNA — First Name [primus nomen]';
COMMENT ON COLUMN hr.pa0002.nom3 IS 'CNAME — Complete Name [nomen]';
COMMENT ON COLUMN hr.pa0002.ttl IS 'TITEL — Title [titulus]';
COMMENT ON COLUMN hr.pa0002.ttl2 IS 'TITL2 — Second Title [titulus]';
COMMENT ON COLUMN hr.pa0002.ttl3 IS 'NAMZU — Other Title [titulus]';
COMMENT ON COLUMN hr.pa0002.nom4 IS 'VORSW — Name Prefix [nomen]';
COMMENT ON COLUMN hr.pa0002.nom5 IS 'VORS2 — Second Name Prefix [nomen]';
COMMENT ON COLUMN hr.pa0002.rufnm IS 'RUFNM — Nickname';
COMMENT ON COLUMN hr.pa0002.nom6 IS 'MIDNM — Middle Name [nomen]';
COMMENT ON COLUMN hr.pa0002.nom_idx_opr IS 'KNZNM — Name Format Indicator for Employee in a List [nomen index operarius]';
COMMENT ON COLUMN hr.pa0002.frm_dml_clv IS 'ANRED — Form-of-Address Key [forma domicilium clavis]';
COMMENT ON COLUMN hr.pa0002.clv IS 'GESCH — Gender Key [clavis]';
COMMENT ON COLUMN hr.pa0002.die IS 'GBDAT — Date of Birth [dies]';
COMMENT ON COLUMN hr.pa0002.ptr IS 'GBLND — Country of Birth [patria]';
COMMENT ON COLUMN hr.pa0002.gbdep IS 'GBDEP — State';
COMMENT ON COLUMN hr.pa0002.gbort IS 'GBORT — Birthplace';
COMMENT ON COLUMN hr.pa0002.natio IS 'NATIO — Nationality';
COMMENT ON COLUMN hr.pa0002.nati2 IS 'NATI2 — Second Nationality';
COMMENT ON COLUMN hr.pa0002.nati3 IS 'NATI3 — Third Nationality';
COMMENT ON COLUMN hr.pa0002.lng IS 'SPRSL — Communication Language [lingua]';
COMMENT ON COLUMN hr.pa0002.clv2 IS 'KONFE — Religious Denomination Key [clavis]';
COMMENT ON COLUMN hr.pa0002.sta_clv IS 'FAMST — Marital Status Key [status clavis]';
COMMENT ON COLUMN hr.pa0002.vla_die_sta IS 'FAMDT — Valid From Date of Current Marital Status [validus ab dies status]';
COMMENT ON COLUMN hr.pa0002.num IS 'ANZKD — Number of Children [numerus]';
COMMENT ON COLUMN hr.pa0002.nom7 IS 'NACON — Name Connection [nomen]';
COMMENT ON COLUMN hr.pa0002.permo IS 'PERMO — Modifier for Personnel Identifier';
COMMENT ON COLUMN hr.pa0002.num2 IS 'PERID — Personnel ID Number [numerus]';
COMMENT ON COLUMN hr.pa0002.die2 IS 'GBPAS — Date of Birth According to Passport [dies]';
COMMENT ON COLUMN hr.pa0002.pri_nom2 IS 'FNAMK — First Name (Katakana) [primus nomen]';
COMMENT ON COLUMN hr.pa0002.ult_nom2 IS 'LNAMK — Last Name (Katakana) [ultimus nomen]';
COMMENT ON COLUMN hr.pa0002.pri_nom3 IS 'FNAMR — First Name (Romaji) [primus nomen]';
COMMENT ON COLUMN hr.pa0002.ult_nom3 IS 'LNAMR — Last Name (Romaji) [ultimus nomen]';
COMMENT ON COLUMN hr.pa0002.nom8 IS 'NABIK — Name of Birth (Katakana) [nomen]';
COMMENT ON COLUMN hr.pa0002.nom9 IS 'NABIR — Name of Birth (Romaji) [nomen]';
COMMENT ON COLUMN hr.pa0002.nickk IS 'NICKK — Koseki (Katakana)';
COMMENT ON COLUMN hr.pa0002.nickr IS 'NICKR — Koseki (Romaji)';
COMMENT ON COLUMN hr.pa0002.ann IS 'GBJHR — Year of Birth [annus]';
COMMENT ON COLUMN hr.pa0002.mns IS 'GBMON — Month of Birth [mensis]';
COMMENT ON COLUMN hr.pa0002.die_mns_ann IS 'GBTAG — Birth Date (to Month/Year) [dies mensis annus]';
COMMENT ON COLUMN hr.pa0002.ult_nom_cmp IS 'NCHMC — Last Name (Field for Search Help) [ultimus nomen campus]';
COMMENT ON COLUMN hr.pa0002.pri_nom_cmp IS 'VNAMC — First Name (Field for Search Help) [primus nomen campus]';
COMMENT ON COLUMN hr.pa0002.nom10 IS 'NAMZ2 — Name Affix for Name at Birth [nomen]';

CREATE TABLE IF NOT EXISTS hr.pa0006 (
  cli char(3),
  nps varchar(8),
  sbg_dml_tbl varchar(4),
  obi varchar(2),
  obx_idx_tbl varchar(1),
  fin_die_dml date,
  ini_die_dml date,
  num_gin_tbl varchar(3),
  mut date,
  nom_psn_mut varchar(12),
  tbl_sgn varchar(1),
  txt_gin varchar(1),
  rfr varchar(1),
  cnf varchar(1),
  gin varchar(2),
  csa varchar(2),
  cmp varchar(1),
  cmp2 varchar(1),
  cmp3 varchar(1),
  cmp4 varchar(1),
  cmp5 varchar(2),
  cmp6 varchar(2),
  val varchar(4),
  dml_tbl_gen varchar(4),
  nom varchar(40),
  num varchar(60),
  urb varchar(40),
  ort02 varchar(40),
  cod varchar(10),
  ptr_clv varchar(3),
  tel_num varchar(14),
  entkm numeric(3,0),
  soc varchar(1),
  busrt varchar(3),
  dml varchar(40),
  adr03 varchar(40),
  adr04 varchar(40),
  reg varchar(3),
  num2 varchar(10),
  posta varchar(10),
  num_cod varchar(10),
  floor varchar(10),
  strds varchar(2),
  entk2 numeric(3,0),
  gen varchar(4),
  num3 varchar(20),
  gen2 varchar(4),
  num4 varchar(20),
  gen3 varchar(4),
  num5 varchar(20),
  gen4 varchar(4),
  num6 varchar(20),
  gen5 varchar(4),
  num7 varchar(20),
  gen6 varchar(4),
  num8 varchar(20),
  idx_rlt_cod varchar(2),
  cod2 varchar(3),
  urb_cod varchar(6),
  dml2 varchar(40),
  psn varchar(40),
  pri_dml varchar(40),
  railw varchar(1),
  CONSTRAINT pa0006_pk PRIMARY KEY (cli, nps, sbg_dml_tbl, obi, obx_idx_tbl, fin_die_dml, ini_die_dml, num_gin_tbl)
);
COMMENT ON TABLE hr.pa0006 IS 'PA0006 — HR Master Record: Infotype 0006 (Addresses) — an employee''s address records (permanent, mailing, emergency-contact, etc. via subtype ANSSA): street, house number, city, district, postal code, country/region, telephone, commute distance, and up to six generic communication-type/number pairs (COM01-06/NUM01-06), keyed by personnel number under the same validity-interval pattern as PA0001 Organizational Assignment. SAP''s real table also carries Japan-localization address-script fields (Katakana); this definition carries the complete field list as sourced. This infotype holds an identifiable emplo';
COMMENT ON COLUMN hr.pa0006.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN hr.pa0006.nps IS 'PERNR — Personnel Number [numerus personae]';
COMMENT ON COLUMN hr.pa0006.sbg_dml_tbl IS 'SUBTY — Subtype — address record type [subgenus domicilium tabula]';
COMMENT ON COLUMN hr.pa0006.obi IS 'OBJPS — Object Identification [obiectum]';
COMMENT ON COLUMN hr.pa0006.obx_idx_tbl IS 'SPRPS — Lock Indicator for HR Master Data Record [obex index tabula]';
COMMENT ON COLUMN hr.pa0006.fin_die_dml IS 'ENDDA — End Date — validity interval end for this address record [finis dies domicilium]';
COMMENT ON COLUMN hr.pa0006.ini_die_dml IS 'BEGDA — Start Date — validity interval start for this address record [initium dies domicilium]';
COMMENT ON COLUMN hr.pa0006.num_gin_tbl IS 'SEQNR — Number of Infotype Record with Same Key [numerus genus informationis tabula]';
COMMENT ON COLUMN hr.pa0006.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.pa0006.nom_psn_mut IS 'UNAME — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN hr.pa0006.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.pa0006.txt_gin IS 'ITXEX — Text Exists for Infotype [textus genus informationis]';
COMMENT ON COLUMN hr.pa0006.rfr IS 'REFEX — Reference Fields Exist (Primary/Secondary Costs) [referentia]';
COMMENT ON COLUMN hr.pa0006.cnf IS 'ORDEX — Confirmation Fields Exist [confirmatio]';
COMMENT ON COLUMN hr.pa0006.gin IS 'ITBLD — Infotype Screen Control [genus informationis]';
COMMENT ON COLUMN hr.pa0006.csa IS 'PREAS — Reason for Changing Master Data [causa]';
COMMENT ON COLUMN hr.pa0006.cmp IS 'FLAG1 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0006.cmp2 IS 'FLAG2 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0006.cmp3 IS 'FLAG3 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0006.cmp4 IS 'FLAG4 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0006.cmp5 IS 'RESE1 — Reserved Field/Unused Field of Length 2 [campus]';
COMMENT ON COLUMN hr.pa0006.cmp6 IS 'RESE2 — Reserved Field/Unused Field of Length 2 [campus]';
COMMENT ON COLUMN hr.pa0006.val IS 'GRPVL — Grouping Value for Personnel Assignments [valor]';
COMMENT ON COLUMN hr.pa0006.dml_tbl_gen IS 'ANSSA — Address Record Type [domicilium tabula genus]';
COMMENT ON COLUMN hr.pa0006.nom IS 'NAME2 — Contact Name [nomen]';
COMMENT ON COLUMN hr.pa0006.num IS 'STRAS — Street and House Number [numerus]';
COMMENT ON COLUMN hr.pa0006.urb IS 'ORT01 — City [urbs]';
COMMENT ON COLUMN hr.pa0006.ort02 IS 'ORT02 — District';
COMMENT ON COLUMN hr.pa0006.cod IS 'PSTLZ — Postal Code [codex]';
COMMENT ON COLUMN hr.pa0006.ptr_clv IS 'LAND1 — Country Key [patria clavis]';
COMMENT ON COLUMN hr.pa0006.tel_num IS 'TELNR — Telephone Number [telephonum numerus]';
COMMENT ON COLUMN hr.pa0006.entkm IS 'ENTKM — Distance in Kilometers';
COMMENT ON COLUMN hr.pa0006.soc IS 'WKWNG — Company Housing [societas]';
COMMENT ON COLUMN hr.pa0006.busrt IS 'BUSRT — Bus Route';
COMMENT ON COLUMN hr.pa0006.dml IS 'LOCAT — 2nd Address Line [domicilium]';
COMMENT ON COLUMN hr.pa0006.adr03 IS 'ADR03 — Street 2';
COMMENT ON COLUMN hr.pa0006.adr04 IS 'ADR04 — Street 3';
COMMENT ON COLUMN hr.pa0006.reg IS 'STATE — Region (State, Province, County) [regio]';
COMMENT ON COLUMN hr.pa0006.num2 IS 'HSNMR — House Number [numerus]';
COMMENT ON COLUMN hr.pa0006.posta IS 'POSTA — Identification of an Apartment in a Building';
COMMENT ON COLUMN hr.pa0006.num_cod IS 'BLDNG — Building (Number or Code) [numerus codex]';
COMMENT ON COLUMN hr.pa0006.floor IS 'FLOOR — Floor in Building';
COMMENT ON COLUMN hr.pa0006.strds IS 'STRDS — Street Abbreviation';
COMMENT ON COLUMN hr.pa0006.entk2 IS 'ENTK2 — Distance in Kilometers';
COMMENT ON COLUMN hr.pa0006.gen IS 'COM01 — Communication Type [genus]';
COMMENT ON COLUMN hr.pa0006.num3 IS 'NUM01 — Communication Number [numerus]';
COMMENT ON COLUMN hr.pa0006.gen2 IS 'COM02 — Communication Type [genus]';
COMMENT ON COLUMN hr.pa0006.num4 IS 'NUM02 — Communication Number [numerus]';
COMMENT ON COLUMN hr.pa0006.gen3 IS 'COM03 — Communication Type [genus]';
COMMENT ON COLUMN hr.pa0006.num5 IS 'NUM03 — Communication Number [numerus]';
COMMENT ON COLUMN hr.pa0006.gen4 IS 'COM04 — Communication Type [genus]';
COMMENT ON COLUMN hr.pa0006.num6 IS 'NUM04 — Communication Number [numerus]';
COMMENT ON COLUMN hr.pa0006.gen5 IS 'COM05 — Communication Type [genus]';
COMMENT ON COLUMN hr.pa0006.num7 IS 'NUM05 — Communication Number [numerus]';
COMMENT ON COLUMN hr.pa0006.gen6 IS 'COM06 — Communication Type [genus]';
COMMENT ON COLUMN hr.pa0006.num8 IS 'NUM06 — Communication Number [numerus]';
COMMENT ON COLUMN hr.pa0006.idx_rlt_cod IS 'INDRL — Indicator for Relationship (Specification Code) [index relatio codex]';
COMMENT ON COLUMN hr.pa0006.cod2 IS 'COUNC — County Code [codex]';
COMMENT ON COLUMN hr.pa0006.urb_cod IS 'RCTVC — Municipal City Code [urbs codex]';
COMMENT ON COLUMN hr.pa0006.dml2 IS 'OR2KK — Second Address Line (Katakana) [domicilium]';
COMMENT ON COLUMN hr.pa0006.psn IS 'CONKK — Contact Person (Katakana) (Japan) [persona]';
COMMENT ON COLUMN hr.pa0006.pri_dml IS 'OR1KK — First Address Line (Katakana) [primus domicilium]';
COMMENT ON COLUMN hr.pa0006.railw IS 'RAILW — Social Subscription Railway';

CREATE TABLE IF NOT EXISTS hr.pa0007 (
  cli char(3),
  nps varchar(8),
  sbg varchar(4),
  obi varchar(2),
  obx_idx_tbl varchar(1),
  fin_die_tmp date,
  ini_die_tmp date,
  num_gin_tbl varchar(3),
  mut date,
  nom_psn_mut varchar(12),
  tbl_sgn varchar(1),
  txt_gin varchar(1),
  rfr varchar(1),
  cnf varchar(1),
  gin varchar(2),
  csa varchar(2),
  cmp varchar(1),
  cmp2 varchar(1),
  cmp3 varchar(1),
  cmp4 varchar(1),
  cmp5 varchar(2),
  cmp6 varchar(2),
  val varchar(4),
  ops varchar(8),
  opr_tmp_sta varchar(1),
  empct numeric(5,2),
  mostd numeric(5,2),
  wostd numeric(5,2),
  arbst numeric(5,2),
  wkwdy numeric(4,2),
  jrstd numeric(7,2),
  idx_tmp_opr varchar(1),
  num_ops_die numeric(5,2),
  num_ops_die2 numeric(5,2),
  minwo numeric(5,2),
  num_ops numeric(5,2),
  num_ops_mns numeric(5,2),
  num_ops_mns2 numeric(5,2),
  minja numeric(7,2),
  num_ann numeric(7,2),
  ops2 varchar(1),
  idx_tmp varchar(2),
  wweek varchar(2),
  rfr2 varchar(5),
  CONSTRAINT pa0007_pk PRIMARY KEY (cli, nps, sbg, obi, obx_idx_tbl, fin_die_tmp, ini_die_tmp, num_gin_tbl)
);
COMMENT ON TABLE hr.pa0007 IS 'PA0007 — HR Master Record: Infotype 0007 (Planned Working Time) — the employee''s work-schedule assignment: work schedule rule (SCHKZ), time-management status, employment percentage, and the daily/weekly/monthly/annual planned-hours envelope (target plus min/max bounds), keyed by personnel number under the same validity-interval pattern as PA0001 Organizational Assignment. This is the planning-side counterpart to PA2001 Absences and PA2002 Attendances, which record actual time against this planned baseline. This infotype is personal data — it reflects an identifiable employee''s individual work-time arra';
COMMENT ON COLUMN hr.pa0007.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN hr.pa0007.nps IS 'PERNR — Personnel Number [numerus personae]';
COMMENT ON COLUMN hr.pa0007.sbg IS 'SUBTY — Subtype [subgenus]';
COMMENT ON COLUMN hr.pa0007.obi IS 'OBJPS — Object Identification [obiectum]';
COMMENT ON COLUMN hr.pa0007.obx_idx_tbl IS 'SPRPS — Lock Indicator for HR Master Data Record [obex index tabula]';
COMMENT ON COLUMN hr.pa0007.fin_die_tmp IS 'ENDDA — End Date — validity interval end for this planned-working-time record [finis dies tempus]';
COMMENT ON COLUMN hr.pa0007.ini_die_tmp IS 'BEGDA — Start Date — validity interval start for this planned-working-time record [initium dies tempus]';
COMMENT ON COLUMN hr.pa0007.num_gin_tbl IS 'SEQNR — Number of Infotype Record with Same Key [numerus genus informationis tabula]';
COMMENT ON COLUMN hr.pa0007.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.pa0007.nom_psn_mut IS 'UNAME — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN hr.pa0007.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.pa0007.txt_gin IS 'ITXEX — Text Exists for Infotype [textus genus informationis]';
COMMENT ON COLUMN hr.pa0007.rfr IS 'REFEX — Reference Fields Exist (Primary/Secondary Costs) [referentia]';
COMMENT ON COLUMN hr.pa0007.cnf IS 'ORDEX — Confirmation Fields Exist [confirmatio]';
COMMENT ON COLUMN hr.pa0007.gin IS 'ITBLD — Infotype Screen Control [genus informationis]';
COMMENT ON COLUMN hr.pa0007.csa IS 'PREAS — Reason for Changing Master Data [causa]';
COMMENT ON COLUMN hr.pa0007.cmp IS 'FLAG1 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0007.cmp2 IS 'FLAG2 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0007.cmp3 IS 'FLAG3 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0007.cmp4 IS 'FLAG4 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0007.cmp5 IS 'RESE1 — Reserved Field/Unused Field of Length 2 [campus]';
COMMENT ON COLUMN hr.pa0007.cmp6 IS 'RESE2 — Reserved Field/Unused Field of Length 2 [campus]';
COMMENT ON COLUMN hr.pa0007.val IS 'GRPVL — Grouping Value for Personnel Assignments [valor]';
COMMENT ON COLUMN hr.pa0007.ops IS 'SCHKZ — Work Schedule Rule [opus]';
COMMENT ON COLUMN hr.pa0007.opr_tmp_sta IS 'ZTERF — Employee Time Management Status [operarius tempus status]';
COMMENT ON COLUMN hr.pa0007.empct IS 'EMPCT — Employment Percentage';
COMMENT ON COLUMN hr.pa0007.mostd IS 'MOSTD — Monthly Hours';
COMMENT ON COLUMN hr.pa0007.wostd IS 'WOSTD — Hours per Week';
COMMENT ON COLUMN hr.pa0007.arbst IS 'ARBST — Daily Working Hours';
COMMENT ON COLUMN hr.pa0007.wkwdy IS 'WKWDY — Weekly Workdays';
COMMENT ON COLUMN hr.pa0007.jrstd IS 'JRSTD — Annual Working Hours';
COMMENT ON COLUMN hr.pa0007.idx_tmp_opr IS 'TEILK — Indicator Part-Time Employee [index tempus operarius]';
COMMENT ON COLUMN hr.pa0007.num_ops_die IS 'MINTA — Minimum Number of Work Hours per Day [numerus opus dies]';
COMMENT ON COLUMN hr.pa0007.num_ops_die2 IS 'MAXTA — Maximum Number of Work Hours per Day [numerus opus dies]';
COMMENT ON COLUMN hr.pa0007.minwo IS 'MINWO — Minimum Weekly Working Hours';
COMMENT ON COLUMN hr.pa0007.num_ops IS 'MAXWO — Maximum Number of Work Hours per Week [numerus opus]';
COMMENT ON COLUMN hr.pa0007.num_ops_mns IS 'MINMO — Minimum Number of Work Hours per Month [numerus opus mensis]';
COMMENT ON COLUMN hr.pa0007.num_ops_mns2 IS 'MAXMO — Maximum Number of Work Hours per Month [numerus opus mensis]';
COMMENT ON COLUMN hr.pa0007.minja IS 'MINJA — Minimum Annual Working Hours';
COMMENT ON COLUMN hr.pa0007.num_ann IS 'MAXJA — Maximum Number of Working Hours per Year [numerus annus]';
COMMENT ON COLUMN hr.pa0007.ops2 IS 'DYSCH — Create Daily Work Schedule Dynamically [opus]';
COMMENT ON COLUMN hr.pa0007.idx_tmp IS 'KZTIM — Additional Indicator for Time Management [index tempus]';
COMMENT ON COLUMN hr.pa0007.wweek IS 'WWEEK — Working Week';
COMMENT ON COLUMN hr.pa0007.rfr2 IS 'AWTYP — Reference Transaction [referentia]';

CREATE TABLE IF NOT EXISTS hr.pa0008 (
  cli char(3),
  nps varchar(8),
  sbg varchar(4),
  obi varchar(2),
  obx_idx_tbl varchar(1),
  fin_die_tbl date,
  ini_die_tbl date,
  num_gin_tbl varchar(3),
  mut date,
  nom_psn_mut varchar(12),
  tbl_sgn varchar(1),
  csa varchar(2),
  val varchar(4),
  gen varchar(2),
  are varchar(2),
  cts varchar(8),
  grd varchar(2),
  die date,
  smp_grd varchar(2),
  partn varchar(2),
  cvm varchar(5),
  gen2 varchar(2),
  are2 varchar(2),
  cts2 varchar(8),
  grd2 varchar(2),
  die2 date,
  cpc_grd numeric(5,2),
  per numeric(5,2),
  ansal numeric(15,2),
  cvm2 varchar(5),
  cts3 varchar(10),
  cts4 varchar(6),
  sal_gen_tmp varchar(4),
  sal_gen_sum numeric(13,2),
  num numeric(7,2),
  tmp_msu_uni varchar(3),
  ope_idx_sal varchar(1),
  sal_gen varchar(4),
  sal_gen_sum2 numeric(13,2),
  num2 numeric(7,2),
  tmp_msu_uni2 varchar(3),
  ope_idx_sal2 varchar(1),
  sal_gen2 varchar(4),
  sal_gen_sum3 numeric(13,2),
  num3 numeric(7,2),
  tmp_msu_uni3 varchar(3),
  ope_idx_sal3 varchar(1),
  sal_gen3 varchar(4),
  sal_gen_sum4 numeric(13,2),
  num4 numeric(7,2),
  tmp_msu_uni4 varchar(3),
  ope_idx_sal4 varchar(1),
  sal_gen4 varchar(4),
  sal_gen_sum5 numeric(13,2),
  num5 numeric(7,2),
  tmp_msu_uni5 varchar(3),
  ope_idx_sal5 varchar(1),
  sal_gen5 varchar(4),
  sal_gen_sum6 numeric(13,2),
  num6 numeric(7,2),
  tmp_msu_uni6 varchar(3),
  ope_idx_sal6 varchar(1),
  sal_gen6 varchar(4),
  sal_gen_sum7 numeric(13,2),
  num7 numeric(7,2),
  tmp_msu_uni7 varchar(3),
  ope_idx_sal7 varchar(1),
  sal_gen7 varchar(4),
  sal_gen_sum8 numeric(13,2),
  num8 numeric(7,2),
  tmp_msu_uni8 varchar(3),
  ope_idx_sal8 varchar(1),
  gen3 varchar(1),
  sgn varchar(1),
  CONSTRAINT pa0008_pk PRIMARY KEY (cli, nps, sbg, obi, obx_idx_tbl, fin_die_tbl, ini_die_tbl, num_gin_tbl)
);
COMMENT ON TABLE hr.pa0008 IS 'PA0008 — HR Master Record: Infotype 0008 (Basic Pay) — the employee''s compensation record: pay scale type/area/group/level, annual salary, and up to 40 repeating wage-type slots (LGA01-LGA40, each with its amount BET_nn, number ANZ_nn, unit EIN_nn, operation indicator OPK_nn, and indirect-valuation flag IND_nn), keyed by personnel number under the same validity-interval pattern as PA0001 Organizational Assignment. SAP''s real table carries 40 repeating wage-type slot groups (roughly 190 fields in total); this definition is scoped to the full key, all organizational/pay-scale reference fields, and the fi';
COMMENT ON COLUMN hr.pa0008.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN hr.pa0008.nps IS 'PERNR — Personnel Number [numerus personae]';
COMMENT ON COLUMN hr.pa0008.sbg IS 'SUBTY — Subtype [subgenus]';
COMMENT ON COLUMN hr.pa0008.obi IS 'OBJPS — Object Identification [obiectum]';
COMMENT ON COLUMN hr.pa0008.obx_idx_tbl IS 'SPRPS — Lock Indicator for HR Master Data Record [obex index tabula]';
COMMENT ON COLUMN hr.pa0008.fin_die_tbl IS 'ENDDA — End Date — validity interval end for this basic-pay record [finis dies tabula]';
COMMENT ON COLUMN hr.pa0008.ini_die_tbl IS 'BEGDA — Start Date — validity interval start for this basic-pay record [initium dies tabula]';
COMMENT ON COLUMN hr.pa0008.num_gin_tbl IS 'SEQNR — Number of Infotype Record with Same Key [numerus genus informationis tabula]';
COMMENT ON COLUMN hr.pa0008.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.pa0008.nom_psn_mut IS 'UNAME — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN hr.pa0008.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.pa0008.csa IS 'PREAS — Reason for Changing Master Data [causa]';
COMMENT ON COLUMN hr.pa0008.val IS 'GRPVL — Grouping Value for Personnel Assignments [valor]';
COMMENT ON COLUMN hr.pa0008.gen IS 'TRFAR — Pay Scale Type [genus]';
COMMENT ON COLUMN hr.pa0008.are IS 'TRFGB — Pay Scale Area [area]';
COMMENT ON COLUMN hr.pa0008.cts IS 'TRFGR — Pay Scale Group [coetus]';
COMMENT ON COLUMN hr.pa0008.grd IS 'TRFST — Pay Scale Level [gradus]';
COMMENT ON COLUMN hr.pa0008.die IS 'STVOR — Date of Next Increase [dies]';
COMMENT ON COLUMN hr.pa0008.smp_grd IS 'ORZST — Cost of Living Allowance Level [sumptus gradus]';
COMMENT ON COLUMN hr.pa0008.partn IS 'PARTN — Partnership';
COMMENT ON COLUMN hr.pa0008.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN hr.pa0008.gen2 IS 'VGLTA — Comparison Pay Scale Type [genus]';
COMMENT ON COLUMN hr.pa0008.are2 IS 'VGLGB — Comparison Pay Scale Area [area]';
COMMENT ON COLUMN hr.pa0008.cts2 IS 'VGLGR — Comparison Pay Scale Group [coetus]';
COMMENT ON COLUMN hr.pa0008.grd2 IS 'VGLST — Comparison Pay Scale Level [gradus]';
COMMENT ON COLUMN hr.pa0008.die2 IS 'VGLSV — Date of Next Increase (Comparison) [dies]';
COMMENT ON COLUMN hr.pa0008.cpc_grd IS 'BSGRD — Capacity Utilization Level [capacitas gradus]';
COMMENT ON COLUMN hr.pa0008.per IS 'DIVGV — Working Hours per Payroll Period [periodus]';
COMMENT ON COLUMN hr.pa0008.ansal IS 'ANSAL — Annual Salary';
COMMENT ON COLUMN hr.pa0008.cvm2 IS 'ANCUR — Currency Key for Annual Salary [clavis monetae]';
COMMENT ON COLUMN hr.pa0008.cts3 IS 'FALGK — Case Group Catalog [coetus]';
COMMENT ON COLUMN hr.pa0008.cts4 IS 'FALGR — Case Group [coetus]';
COMMENT ON COLUMN hr.pa0008.sal_gen_tmp IS 'LGA01 — Wage Type — recurring/one-time pay component slot 1 of 40 (representative of LGA01-LGA40) [salarium genus tempus]';
COMMENT ON COLUMN hr.pa0008.sal_gen_sum IS 'BET01 — Wage Type Amount for Payments — slot 1 [salarium genus summa]';
COMMENT ON COLUMN hr.pa0008.num IS 'ANZ01 — Number — slot 1 [numerus]';
COMMENT ON COLUMN hr.pa0008.tmp_msu_uni IS 'EIN01 — Time/Measurement Unit — slot 1 [tempus mensuratio unitas]';
COMMENT ON COLUMN hr.pa0008.ope_idx_sal IS 'OPK01 — Operation Indicator for Wage Types — slot 1 [operatio index salarium]';
COMMENT ON COLUMN hr.pa0008.sal_gen IS 'LGA02 — Wage Type — slot 2 of 40 [salarium genus]';
COMMENT ON COLUMN hr.pa0008.sal_gen_sum2 IS 'BET02 — Wage Type Amount for Payments — slot 2 [salarium genus summa]';
COMMENT ON COLUMN hr.pa0008.num2 IS 'ANZ02 — Number — slot 2 [numerus]';
COMMENT ON COLUMN hr.pa0008.tmp_msu_uni2 IS 'EIN02 — Time/Measurement Unit — slot 2 [tempus mensuratio unitas]';
COMMENT ON COLUMN hr.pa0008.ope_idx_sal2 IS 'OPK02 — Operation Indicator for Wage Types — slot 2 [operatio index salarium]';
COMMENT ON COLUMN hr.pa0008.sal_gen2 IS 'LGA03 — Wage Type — slot 3 of 40 [salarium genus]';
COMMENT ON COLUMN hr.pa0008.sal_gen_sum3 IS 'BET03 — Wage Type Amount for Payments — slot 3 [salarium genus summa]';
COMMENT ON COLUMN hr.pa0008.num3 IS 'ANZ03 — Number — slot 3 [numerus]';
COMMENT ON COLUMN hr.pa0008.tmp_msu_uni3 IS 'EIN03 — Time/Measurement Unit — slot 3 [tempus mensuratio unitas]';
COMMENT ON COLUMN hr.pa0008.ope_idx_sal3 IS 'OPK03 — Operation Indicator for Wage Types — slot 3 [operatio index salarium]';
COMMENT ON COLUMN hr.pa0008.sal_gen3 IS 'LGA04 — Wage Type — slot 4 of 40 [salarium genus]';
COMMENT ON COLUMN hr.pa0008.sal_gen_sum4 IS 'BET04 — Wage Type Amount for Payments — slot 4 [salarium genus summa]';
COMMENT ON COLUMN hr.pa0008.num4 IS 'ANZ04 — Number — slot 4 [numerus]';
COMMENT ON COLUMN hr.pa0008.tmp_msu_uni4 IS 'EIN04 — Time/Measurement Unit — slot 4 [tempus mensuratio unitas]';
COMMENT ON COLUMN hr.pa0008.ope_idx_sal4 IS 'OPK04 — Operation Indicator for Wage Types — slot 4 [operatio index salarium]';
COMMENT ON COLUMN hr.pa0008.sal_gen4 IS 'LGA05 — Wage Type — slot 5 of 40 [salarium genus]';
COMMENT ON COLUMN hr.pa0008.sal_gen_sum5 IS 'BET05 — Wage Type Amount for Payments — slot 5 [salarium genus summa]';
COMMENT ON COLUMN hr.pa0008.num5 IS 'ANZ05 — Number — slot 5 [numerus]';
COMMENT ON COLUMN hr.pa0008.tmp_msu_uni5 IS 'EIN05 — Time/Measurement Unit — slot 5 [tempus mensuratio unitas]';
COMMENT ON COLUMN hr.pa0008.ope_idx_sal5 IS 'OPK05 — Operation Indicator for Wage Types — slot 5 [operatio index salarium]';
COMMENT ON COLUMN hr.pa0008.sal_gen5 IS 'LGA06 — Wage Type — slot 6 of 40 [salarium genus]';
COMMENT ON COLUMN hr.pa0008.sal_gen_sum6 IS 'BET06 — Wage Type Amount for Payments — slot 6 [salarium genus summa]';
COMMENT ON COLUMN hr.pa0008.num6 IS 'ANZ06 — Number — slot 6 [numerus]';
COMMENT ON COLUMN hr.pa0008.tmp_msu_uni6 IS 'EIN06 — Time/Measurement Unit — slot 6 [tempus mensuratio unitas]';
COMMENT ON COLUMN hr.pa0008.ope_idx_sal6 IS 'OPK06 — Operation Indicator for Wage Types — slot 6 [operatio index salarium]';
COMMENT ON COLUMN hr.pa0008.sal_gen6 IS 'LGA07 — Wage Type — slot 7 of 40 [salarium genus]';
COMMENT ON COLUMN hr.pa0008.sal_gen_sum7 IS 'BET07 — Wage Type Amount for Payments — slot 7 [salarium genus summa]';
COMMENT ON COLUMN hr.pa0008.num7 IS 'ANZ07 — Number — slot 7 [numerus]';
COMMENT ON COLUMN hr.pa0008.tmp_msu_uni7 IS 'EIN07 — Time/Measurement Unit — slot 7 [tempus mensuratio unitas]';
COMMENT ON COLUMN hr.pa0008.ope_idx_sal7 IS 'OPK07 — Operation Indicator for Wage Types — slot 7 [operatio index salarium]';
COMMENT ON COLUMN hr.pa0008.sal_gen7 IS 'LGA08 — Wage Type — slot 8 of 40 [salarium genus]';
COMMENT ON COLUMN hr.pa0008.sal_gen_sum8 IS 'BET08 — Wage Type Amount for Payments — slot 8 [salarium genus summa]';
COMMENT ON COLUMN hr.pa0008.num8 IS 'ANZ08 — Number — slot 8 [numerus]';
COMMENT ON COLUMN hr.pa0008.tmp_msu_uni8 IS 'EIN08 — Time/Measurement Unit — slot 8 [tempus mensuratio unitas]';
COMMENT ON COLUMN hr.pa0008.ope_idx_sal8 IS 'OPK08 — Operation Indicator for Wage Types — slot 8 [operatio index salarium]';
COMMENT ON COLUMN hr.pa0008.gen3 IS 'CPIND — Planned Compensation Type [genus]';
COMMENT ON COLUMN hr.pa0008.sgn IS 'FLAGA — General Flag [signum]';

CREATE TABLE IF NOT EXISTS hr.pa0014 (
  cli char(3),
  nps varchar(8),
  sbg_sal_gen varchar(4),
  obi varchar(2),
  obx_idx_tbl varchar(1),
  fin_die_sol date,
  ini_die_sol date,
  num_gin_tbl varchar(3),
  mut date,
  nom_psn_mut varchar(12),
  tbl_sgn varchar(1),
  txt_gin varchar(1),
  rfr varchar(1),
  cnf varchar(1),
  gin varchar(2),
  csa varchar(2),
  cmp varchar(1),
  cmp2 varchar(1),
  cmp3 varchar(1),
  cmp4 varchar(1),
  cmp5 varchar(2),
  cmp6 varchar(2),
  val varchar(4),
  sal_gen varchar(4),
  ope_idx_sal varchar(1),
  sal_gen_sum numeric(13,2),
  cvm varchar(5),
  num numeric(7,2),
  tmp_msu_uni varchar(3),
  idx_aes varchar(1),
  pri_sol_die date,
  pri_sol_per varchar(2),
  num_sol numeric(3,0),
  tmp_uni_sol varchar(3),
  asg_num varchar(20),
  die_arg date,
  sol varchar(4),
  CONSTRAINT pa0014_pk PRIMARY KEY (cli, nps, sbg_sal_gen, obi, obx_idx_tbl, fin_die_sol, ini_die_sol, num_gin_tbl)
);
COMMENT ON TABLE hr.pa0014 IS 'PA0014 — HR Master Record: Infotype 0014 (Recurring Payments and Deductions) — recurring pay-slip line items outside basic pay: wage type, amount/currency, number and unit for indirect valuation, first-payment date/period and recurrence interval, bank-transfer date, assignment number, and payment model, keyed by personnel number under the same validity-interval pattern as PA0001 Organizational Assignment. This complements PA0008 Basic Pay as the recurring allowances/deductions feed into payroll. This infotype is personal data — it discloses an identifiable employee''s recurring pay components and deduct';
COMMENT ON COLUMN hr.pa0014.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN hr.pa0014.nps IS 'PERNR — Personnel Number [numerus personae]';
COMMENT ON COLUMN hr.pa0014.sbg_sal_gen IS 'SUBTY — Subtype — wage type category [subgenus salarium genus]';
COMMENT ON COLUMN hr.pa0014.obi IS 'OBJPS — Object Identification [obiectum]';
COMMENT ON COLUMN hr.pa0014.obx_idx_tbl IS 'SPRPS — Lock Indicator for HR Master Data Record [obex index tabula]';
COMMENT ON COLUMN hr.pa0014.fin_die_sol IS 'ENDDA — End Date — validity interval end for this recurring-payment record [finis dies solutio]';
COMMENT ON COLUMN hr.pa0014.ini_die_sol IS 'BEGDA — Start Date — validity interval start for this recurring-payment record [initium dies solutio]';
COMMENT ON COLUMN hr.pa0014.num_gin_tbl IS 'SEQNR — Number of Infotype Record with Same Key [numerus genus informationis tabula]';
COMMENT ON COLUMN hr.pa0014.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.pa0014.nom_psn_mut IS 'UNAME — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN hr.pa0014.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.pa0014.txt_gin IS 'ITXEX — Text Exists for Infotype [textus genus informationis]';
COMMENT ON COLUMN hr.pa0014.rfr IS 'REFEX — Reference Fields Exist (Primary/Secondary Costs) [referentia]';
COMMENT ON COLUMN hr.pa0014.cnf IS 'ORDEX — Confirmation Fields Exist [confirmatio]';
COMMENT ON COLUMN hr.pa0014.gin IS 'ITBLD — Infotype Screen Control [genus informationis]';
COMMENT ON COLUMN hr.pa0014.csa IS 'PREAS — Reason for Changing Master Data [causa]';
COMMENT ON COLUMN hr.pa0014.cmp IS 'FLAG1 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0014.cmp2 IS 'FLAG2 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0014.cmp3 IS 'FLAG3 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0014.cmp4 IS 'FLAG4 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0014.cmp5 IS 'RESE1 — Reserved Field/Unused Field of Length 2 [campus]';
COMMENT ON COLUMN hr.pa0014.cmp6 IS 'RESE2 — Reserved Field/Unused Field of Length 2 [campus]';
COMMENT ON COLUMN hr.pa0014.val IS 'GRPVL — Grouping Value for Personnel Assignments [valor]';
COMMENT ON COLUMN hr.pa0014.sal_gen IS 'LGART — Wage Type [salarium genus]';
COMMENT ON COLUMN hr.pa0014.ope_idx_sal IS 'OPKEN — Operation Indicator for Wage Types [operatio index salarium]';
COMMENT ON COLUMN hr.pa0014.sal_gen_sum IS 'BETRG — Wage Type Amount for Payments [salarium genus summa]';
COMMENT ON COLUMN hr.pa0014.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN hr.pa0014.num IS 'ANZHL — Number [numerus]';
COMMENT ON COLUMN hr.pa0014.tmp_msu_uni IS 'ZEINH — Time/Measurement Unit [tempus mensuratio unitas]';
COMMENT ON COLUMN hr.pa0014.idx_aes IS 'INDBW — Indicator for Indirect Valuation [index aestimatio]';
COMMENT ON COLUMN hr.pa0014.pri_sol_die IS 'ZDATE — First Payment Date [primus solutio dies]';
COMMENT ON COLUMN hr.pa0014.pri_sol_per IS 'ZFPER — First Payment Period [primus solutio periodus]';
COMMENT ON COLUMN hr.pa0014.num_sol IS 'ZANZL — Number for Determining Further Payment Dates [numerus solutio]';
COMMENT ON COLUMN hr.pa0014.tmp_uni_sol IS 'ZEINZ — Time Unit for Determining Next Payment [tempus unitas solutio]';
COMMENT ON COLUMN hr.pa0014.asg_num IS 'ZUORD — Assignment Number [assignatio numerus]';
COMMENT ON COLUMN hr.pa0014.die_arg IS 'UWDAT — Date of Bank Transfer [dies argentaria]';
COMMENT ON COLUMN hr.pa0014.sol IS 'MODEL — Payment Model [solutio]';

CREATE TABLE IF NOT EXISTS hr.pa0105 (
  cli char(3),
  nps varchar(8),
  sbg_gen_ctg varchar(4),
  obi varchar(2),
  obx_idx_tbl varchar(1),
  fin_die_tbl date,
  ini_die_tbl date,
  num_gin_tbl varchar(3),
  mut date,
  nom_psn_mut varchar(12),
  tbl_sgn varchar(1),
  txt_gin varchar(1),
  rfr varchar(1),
  cnf varchar(1),
  gin varchar(2),
  csa varchar(2),
  cmp varchar(1),
  cmp2 varchar(1),
  cmp3 varchar(1),
  cmp4 varchar(1),
  cmp5 varchar(2),
  cmp6 varchar(2),
  val varchar(4),
  gen_usr_cnl varchar(4),
  num_usr_frm varchar(30),
  num_frm_dml varchar(241),
  CONSTRAINT pa0105_pk PRIMARY KEY (cli, nps, sbg_gen_ctg, obi, obx_idx_tbl, fin_die_tbl, ini_die_tbl, num_gin_tbl)
);
COMMENT ON TABLE hr.pa0105 IS 'PA0105 — HR Master Record: Infotype 0105 (Communications) — the join between a person and their system identity: communication type (USRTY, e.g. system user ID, e-mail address, and other configured communication channels via subtype T591A) paired with the identifier/number itself (USRID, plus a long-form USRID_LONG for values exceeding 30 characters such as full e-mail addresses), keyed by personnel number under the same validity-interval pattern as PA0001 Organizational Assignment. This is the infotype consuming systems mirror to resolve a PERNR to a login/user ID or e-mail address. This infotype is p';
COMMENT ON COLUMN hr.pa0105.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN hr.pa0105.nps IS 'PERNR — Personnel Number [numerus personae]';
COMMENT ON COLUMN hr.pa0105.sbg_gen_ctg IS 'SUBTY — Subtype — communication type category [subgenus genus categoria]';
COMMENT ON COLUMN hr.pa0105.obi IS 'OBJPS — Object Identification [obiectum]';
COMMENT ON COLUMN hr.pa0105.obx_idx_tbl IS 'SPRPS — Lock Indicator for HR Master Data Record [obex index tabula]';
COMMENT ON COLUMN hr.pa0105.fin_die_tbl IS 'ENDDA — End Date — validity interval end for this communication record [finis dies tabula]';
COMMENT ON COLUMN hr.pa0105.ini_die_tbl IS 'BEGDA — Start Date — validity interval start for this communication record [initium dies tabula]';
COMMENT ON COLUMN hr.pa0105.num_gin_tbl IS 'SEQNR — Number of Infotype Record with Same Key [numerus genus informationis tabula]';
COMMENT ON COLUMN hr.pa0105.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.pa0105.nom_psn_mut IS 'UNAME — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN hr.pa0105.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.pa0105.txt_gin IS 'ITXEX — Text Exists for Infotype [textus genus informationis]';
COMMENT ON COLUMN hr.pa0105.rfr IS 'REFEX — Reference Fields Exist (Primary/Secondary Costs) [referentia]';
COMMENT ON COLUMN hr.pa0105.cnf IS 'ORDEX — Confirmation Fields Exist [confirmatio]';
COMMENT ON COLUMN hr.pa0105.gin IS 'ITBLD — Infotype Screen Control [genus informationis]';
COMMENT ON COLUMN hr.pa0105.csa IS 'PREAS — Reason for Changing Master Data [causa]';
COMMENT ON COLUMN hr.pa0105.cmp IS 'FLAG1 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0105.cmp2 IS 'FLAG2 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0105.cmp3 IS 'FLAG3 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0105.cmp4 IS 'FLAG4 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa0105.cmp5 IS 'RESE1 — Reserved Field/Unused Field of Length 2 [campus]';
COMMENT ON COLUMN hr.pa0105.cmp6 IS 'RESE2 — Reserved Field/Unused Field of Length 2 [campus]';
COMMENT ON COLUMN hr.pa0105.val IS 'GRPVL — Grouping Value for Personnel Assignments [valor]';
COMMENT ON COLUMN hr.pa0105.gen_usr_cnl IS 'USRTY — Communication Type — e.g. system user ID, e-mail, or other configured channel [genus usor canalis]';
COMMENT ON COLUMN hr.pa0105.num_usr_frm IS 'USRID — Communication Identification/Number — the user ID or short-form identifier value for USRTY [numerus usor forma]';
COMMENT ON COLUMN hr.pa0105.num_frm_dml IS 'USRID_LONG — Communication: Long Identification/Number — long-form identifier (e.g. full e-mail address) for values exceeding USRID''s 30 characters [numerus forma domicilium]';

CREATE TABLE IF NOT EXISTS hr.pa2001 (
  cli char(3),
  nps varchar(8),
  sbg varchar(4),
  obi varchar(2),
  obx_idx_tbl varchar(1),
  fin_die_abs date,
  ini_die_abs date,
  num_gin_tbl varchar(3),
  mut date,
  nom_psn_mut varchar(12),
  tbl_sgn varchar(1),
  txt_gin varchar(1),
  rfr varchar(1),
  cnf varchar(1),
  gin varchar(2),
  csa varchar(2),
  cmp varchar(1),
  cmp2 varchar(1),
  cmp3 varchar(1),
  cmp4 varchar(1),
  cmp5 varchar(2),
  cmp6 varchar(2),
  val varchar(4),
  ini_tmp time,
  fin_tmp time,
  die_idx varchar(1),
  pra_abs_gen varchar(4),
  pra_abs numeric(6,2),
  abs numeric(7,2),
  abrtg numeric(6,2),
  abrst numeric(7,2),
  anrtg numeric(6,2),
  fin date,
  fin2 date,
  ini date,
  die date,
  idx numeric(2,0),
  idx2 numeric(2,0),
  kaltg numeric(6,2),
  idx_ddc varchar(1),
  ini_ann_ddc varchar(4),
  aes_sol numeric(13,2),
  idx3 varchar(1),
  cts varchar(8),
  grd varchar(2),
  num varchar(2),
  idx4 varchar(4),
  obi_gen varchar(2),
  mnu varchar(8),
  mldda date,
  mlduz time,
  rmduz time,
  vorgs varchar(15),
  cod_dsc varchar(6),
  dsc varchar(20),
  rfr_num varchar(8),
  unfal varchar(1),
  sbg2 varchar(4),
  sbg3 varchar(4),
  ops_cpc numeric(4,2),
  gin2 varchar(4),
  sgn varchar(1),
  num2 varchar(1),
  tbl_die varchar(1),
  cvm varchar(5),
  logsys varchar(10),
  rfr2 varchar(5),
  rfr_ndo varchar(10),
  rfr3 varchar(10),
  doc_tmp varchar(10),
  ndo_tmp varchar(20),
  gen varchar(1),
  payid varchar(1),
  sol_die date,
  csa2 varchar(4),
  fin_die date,
  fin_die2 date,
  fin_die3 date,
  idx5 varchar(1),
  sta_nts varchar(1),
  gen2 varchar(2),
  tdlangu varchar(10),
  tdsubla varchar(3),
  tmp_gen varchar(4),
  die_idx2 varchar(1),
  CONSTRAINT pa2001_pk PRIMARY KEY (cli, nps, sbg, obi, obx_idx_tbl, fin_die_abs, ini_die_abs, num_gin_tbl)
);
COMMENT ON TABLE hr.pa2001 IS 'PA2001 — HR Time Record: Infotype 2001 (Absences) — one of the two time-evaluation input infotypes (the other being PA2002 Attendances) that pair with the already-defined AFRU confirmations: attendance/absence type (AWART), start/end time, days and hours counted for attendance/absence, payroll, and continued-pay purposes, sickness-tracking dates and indicators, and off-cycle payroll linkage, keyed by personnel number under the same validity-interval pattern as PA0001 Organizational Assignment. This infotype is personal data — it records an identifiable employee''s leave, sickness, and absence history, i';
COMMENT ON COLUMN hr.pa2001.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN hr.pa2001.nps IS 'PERNR — Personnel Number [numerus personae]';
COMMENT ON COLUMN hr.pa2001.sbg IS 'SUBTY — Subtype [subgenus]';
COMMENT ON COLUMN hr.pa2001.obi IS 'OBJPS — Object Identification [obiectum]';
COMMENT ON COLUMN hr.pa2001.obx_idx_tbl IS 'SPRPS — Lock Indicator for HR Master Data Record [obex index tabula]';
COMMENT ON COLUMN hr.pa2001.fin_die_abs IS 'ENDDA — End Date — validity interval end for this absence record [finis dies absentia]';
COMMENT ON COLUMN hr.pa2001.ini_die_abs IS 'BEGDA — Start Date — validity interval start for this absence record [initium dies absentia]';
COMMENT ON COLUMN hr.pa2001.num_gin_tbl IS 'SEQNR — Number of Infotype Record with Same Key [numerus genus informationis tabula]';
COMMENT ON COLUMN hr.pa2001.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.pa2001.nom_psn_mut IS 'UNAME — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN hr.pa2001.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.pa2001.txt_gin IS 'ITXEX — Text Exists for Infotype [textus genus informationis]';
COMMENT ON COLUMN hr.pa2001.rfr IS 'REFEX — Reference Fields Exist (Primary/Secondary Costs) [referentia]';
COMMENT ON COLUMN hr.pa2001.cnf IS 'ORDEX — Confirmation Fields Exist [confirmatio]';
COMMENT ON COLUMN hr.pa2001.gin IS 'ITBLD — Infotype Screen Control [genus informationis]';
COMMENT ON COLUMN hr.pa2001.csa IS 'PREAS — Reason for Changing Master Data [causa]';
COMMENT ON COLUMN hr.pa2001.cmp IS 'FLAG1 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa2001.cmp2 IS 'FLAG2 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa2001.cmp3 IS 'FLAG3 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa2001.cmp4 IS 'FLAG4 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa2001.cmp5 IS 'RESE1 — Reserved Field/Unused Field of Length 2 [campus]';
COMMENT ON COLUMN hr.pa2001.cmp6 IS 'RESE2 — Reserved Field/Unused Field of Length 2 [campus]';
COMMENT ON COLUMN hr.pa2001.val IS 'GRPVL — Grouping Value for Personnel Assignments [valor]';
COMMENT ON COLUMN hr.pa2001.ini_tmp IS 'BEGUZ — Start Time [initium tempus]';
COMMENT ON COLUMN hr.pa2001.fin_tmp IS 'ENDUZ — End Time [finis tempus]';
COMMENT ON COLUMN hr.pa2001.die_idx IS 'VTKEN — Previous Day Indicator [dies index]';
COMMENT ON COLUMN hr.pa2001.pra_abs_gen IS 'AWART — Attendance or Absence Type [praesentia absentia genus]';
COMMENT ON COLUMN hr.pa2001.pra_abs IS 'ABWTG — Attendance and Absence Days [praesentia absentia]';
COMMENT ON COLUMN hr.pa2001.abs IS 'STDAZ — Absence Hours [absentia]';
COMMENT ON COLUMN hr.pa2001.abrtg IS 'ABRTG — Payroll Days';
COMMENT ON COLUMN hr.pa2001.abrst IS 'ABRST — Payroll Hours';
COMMENT ON COLUMN hr.pa2001.anrtg IS 'ANRTG — Days Credited for Continued Pay';
COMMENT ON COLUMN hr.pa2001.fin IS 'LFZED — End of Continued Pay [finis]';
COMMENT ON COLUMN hr.pa2001.fin2 IS 'KRGED — End of Sick Pay [finis]';
COMMENT ON COLUMN hr.pa2001.ini IS 'KBBEG — Certified Start of Sickness [initium]';
COMMENT ON COLUMN hr.pa2001.die IS 'RMDDA — Date on Which Illness Was Confirmed [dies]';
COMMENT ON COLUMN hr.pa2001.idx IS 'KENN1 — Indicator for Subsequent Illness [index]';
COMMENT ON COLUMN hr.pa2001.idx2 IS 'KENN2 — Indicator for Repeated Illness [index]';
COMMENT ON COLUMN hr.pa2001.kaltg IS 'KALTG — Calendar Days';
COMMENT ON COLUMN hr.pa2001.idx_ddc IS 'URMAN — Indicator for Manual Leave Deduction [index deductio]';
COMMENT ON COLUMN hr.pa2001.ini_ann_ddc IS 'BEGVA — Start Year for Leave Deduction [initium annus deductio]';
COMMENT ON COLUMN hr.pa2001.aes_sol IS 'BWGRL — Valuation Basis for Different Payment [aestimatio solutio]';
COMMENT ON COLUMN hr.pa2001.idx3 IS 'AUFKZ — Extra Pay Indicator [index]';
COMMENT ON COLUMN hr.pa2001.cts IS 'TRFGR — Pay Scale Group [coetus]';
COMMENT ON COLUMN hr.pa2001.grd IS 'TRFST — Pay Scale Level [gradus]';
COMMENT ON COLUMN hr.pa2001.num IS 'PRAKN — Premium Number [numerus]';
COMMENT ON COLUMN hr.pa2001.idx4 IS 'PRAKZ — Premium Indicator [index]';
COMMENT ON COLUMN hr.pa2001.obi_gen IS 'OTYPE — Object Type [obiectum genus]';
COMMENT ON COLUMN hr.pa2001.mnu IS 'PLANS — Position [munus]';
COMMENT ON COLUMN hr.pa2001.mldda IS 'MLDDA — Reported On';
COMMENT ON COLUMN hr.pa2001.mlduz IS 'MLDUZ — Reported At';
COMMENT ON COLUMN hr.pa2001.rmduz IS 'RMDUZ — Sickness Confirmed At';
COMMENT ON COLUMN hr.pa2001.vorgs IS 'VORGS — Superior Out Sick (Illness)';
COMMENT ON COLUMN hr.pa2001.cod_dsc IS 'UMSKD — Code for Description of Illness [codex descriptio]';
COMMENT ON COLUMN hr.pa2001.dsc IS 'UMSCH — Description of Illness [descriptio]';
COMMENT ON COLUMN hr.pa2001.rfr_num IS 'REFNR — Reference Number [referentia numerus]';
COMMENT ON COLUMN hr.pa2001.unfal IS 'UNFAL — Absent Due to Accident?';
COMMENT ON COLUMN hr.pa2001.sbg2 IS 'STKRV — Subtype for Sickness Tracking [subgenus]';
COMMENT ON COLUMN hr.pa2001.sbg3 IS 'STUND — Subtype for Accident Data [subgenus]';
COMMENT ON COLUMN hr.pa2001.ops_cpc IS 'PSARB — Work Capacity Percentage [opus capacitas]';
COMMENT ON COLUMN hr.pa2001.gin2 IS 'AINFT — Infotype That Maintains 2001 [genus informationis]';
COMMENT ON COLUMN hr.pa2001.sgn IS 'GENER — Generation Flag [signum]';
COMMENT ON COLUMN hr.pa2001.num2 IS 'HRSIF — Set Number of Hours [numerus]';
COMMENT ON COLUMN hr.pa2001.tbl_die IS 'ALLDF — Record Is for Full Day [tabula dies]';
COMMENT ON COLUMN hr.pa2001.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN hr.pa2001.logsys IS 'LOGSYS — Logical System';
COMMENT ON COLUMN hr.pa2001.rfr2 IS 'AWTYP — Reference Transaction [referentia]';
COMMENT ON COLUMN hr.pa2001.rfr_ndo IS 'AWREF — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN hr.pa2001.rfr3 IS 'AWORG — Reference Organizational Units [referentia]';
COMMENT ON COLUMN hr.pa2001.doc_tmp IS 'DOCSY — Logical System for Document (Personnel Time) [documentum tempus]';
COMMENT ON COLUMN hr.pa2001.ndo_tmp IS 'DOCNR — Document Number for Time Data [numerus documenti tempus]';
COMMENT ON COLUMN hr.pa2001.gen IS 'PAYTY — Payroll Type [genus]';
COMMENT ON COLUMN hr.pa2001.payid IS 'PAYID — Payroll Identifier';
COMMENT ON COLUMN hr.pa2001.sol_die IS 'BONDT — Off-Cycle Payroll Payment Date [solutio dies]';
COMMENT ON COLUMN hr.pa2001.csa2 IS 'OCRSN — Reason for Off-Cycle Payroll [causa]';
COMMENT ON COLUMN hr.pa2001.fin_die IS 'SPPE1 — End Date for Continued Pay [finis dies]';
COMMENT ON COLUMN hr.pa2001.fin_die2 IS 'SPPE2 — End Date for Continued Pay [finis dies]';
COMMENT ON COLUMN hr.pa2001.fin_die3 IS 'SPPE3 — End Date for Continued Pay [finis dies]';
COMMENT ON COLUMN hr.pa2001.idx5 IS 'SPPIN — Indicator for Manual Modifications [index]';
COMMENT ON COLUMN hr.pa2001.sta_nts IS 'ZKMKT — Status of Sickness Notification [status nuntius]';
COMMENT ON COLUMN hr.pa2001.gen2 IS 'FAPRS — Evaluation Type for Attendances/Absences [genus]';
COMMENT ON COLUMN hr.pa2001.tdlangu IS 'TDLANGU — Definition Set for IDs';
COMMENT ON COLUMN hr.pa2001.tdsubla IS 'TDSUBLA — Definition Subset for IDs';
COMMENT ON COLUMN hr.pa2001.tmp_gen IS 'TDTYPE — Time Data ID Type [tempus genus]';
COMMENT ON COLUMN hr.pa2001.die_idx2 IS 'NXDFL — Next Day Indicator [dies index]';

CREATE TABLE IF NOT EXISTS hr.pa2002 (
  cli char(3),
  nps varchar(8),
  sbg varchar(4),
  obi varchar(2),
  obx_idx_tbl varchar(1),
  fin_die_pra date,
  ini_die_pra date,
  num_gin_tbl varchar(3),
  mut date,
  nom_psn_mut varchar(12),
  tbl_sgn varchar(1),
  txt_gin varchar(1),
  rfr varchar(1),
  cnf varchar(1),
  gin varchar(2),
  csa varchar(2),
  cmp varchar(1),
  cmp2 varchar(1),
  cmp3 varchar(1),
  cmp4 varchar(1),
  cmp5 varchar(2),
  cmp6 varchar(2),
  val varchar(4),
  ini_tmp time,
  fin_tmp time,
  die_idx varchar(1),
  pra_abs_gen varchar(4),
  pra_abs numeric(6,2),
  abrtg numeric(6,2),
  abrst numeric(7,2),
  kaltg numeric(6,2),
  pra numeric(7,2),
  sal_gen varchar(4),
  aes_sol numeric(13,2),
  idx varchar(1),
  gen varchar(1),
  cts varchar(8),
  grd varchar(2),
  num varchar(2),
  idx2 varchar(4),
  obi_gen varchar(2),
  mnu varchar(8),
  sgn varchar(1),
  ndo varchar(8),
  num2 varchar(1),
  tbl_die varchar(1),
  cvm varchar(5),
  logsys varchar(10),
  rfr2 varchar(5),
  rfr_ndo varchar(10),
  rfr3 varchar(10),
  doc_tmp varchar(10),
  ndo_tmp varchar(20),
  ops_trb_are varchar(4),
  gen2 varchar(2),
  tdlangu varchar(10),
  tdsubla varchar(3),
  tmp_gen varchar(4),
  kepau varchar(1),
  expau varchar(1),
  ini time,
  fin time,
  per numeric(4,2),
  per2 numeric(4,2),
  ini2 time,
  fin2 time,
  per3 numeric(4,2),
  per4 numeric(4,2),
  die_idx2 varchar(1),
  CONSTRAINT pa2002_pk PRIMARY KEY (cli, nps, sbg, obi, obx_idx_tbl, fin_die_pra, ini_die_pra, num_gin_tbl)
);
COMMENT ON TABLE hr.pa2002 IS 'PA2002 — HR Time Record: Infotype 2002 (Attendances) — the other of the two time-evaluation input infotypes (alongside PA2001 Absences) that pair with the already-defined AFRU confirmations: attendance type (AWART), start/end time and break periods, days and hours counted for attendance/payroll purposes, overtime compensation type, wage type and valuation basis for differential payment, and external document linkage, keyed by personnel number under the same validity-interval pattern as PA0001 Organizational Assignment. This infotype is personal data — it records an identifiable employee''s actual worked';
COMMENT ON COLUMN hr.pa2002.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN hr.pa2002.nps IS 'PERNR — Personnel Number [numerus personae]';
COMMENT ON COLUMN hr.pa2002.sbg IS 'SUBTY — Subtype [subgenus]';
COMMENT ON COLUMN hr.pa2002.obi IS 'OBJPS — Object Identification [obiectum]';
COMMENT ON COLUMN hr.pa2002.obx_idx_tbl IS 'SPRPS — Lock Indicator for HR Master Data Record [obex index tabula]';
COMMENT ON COLUMN hr.pa2002.fin_die_pra IS 'ENDDA — End Date — validity interval end for this attendance record [finis dies praesentia]';
COMMENT ON COLUMN hr.pa2002.ini_die_pra IS 'BEGDA — Start Date — validity interval start for this attendance record [initium dies praesentia]';
COMMENT ON COLUMN hr.pa2002.num_gin_tbl IS 'SEQNR — Number of Infotype Record with Same Key [numerus genus informationis tabula]';
COMMENT ON COLUMN hr.pa2002.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.pa2002.nom_psn_mut IS 'UNAME — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN hr.pa2002.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.pa2002.txt_gin IS 'ITXEX — Text Exists for Infotype [textus genus informationis]';
COMMENT ON COLUMN hr.pa2002.rfr IS 'REFEX — Reference Fields Exist (Primary/Secondary Costs) [referentia]';
COMMENT ON COLUMN hr.pa2002.cnf IS 'ORDEX — Confirmation Fields Exist [confirmatio]';
COMMENT ON COLUMN hr.pa2002.gin IS 'ITBLD — Infotype Screen Control [genus informationis]';
COMMENT ON COLUMN hr.pa2002.csa IS 'PREAS — Reason for Changing Master Data [causa]';
COMMENT ON COLUMN hr.pa2002.cmp IS 'FLAG1 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa2002.cmp2 IS 'FLAG2 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa2002.cmp3 IS 'FLAG3 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa2002.cmp4 IS 'FLAG4 — Reserved Field/Unused Field [campus]';
COMMENT ON COLUMN hr.pa2002.cmp5 IS 'RESE1 — Reserved Field/Unused Field of Length 2 [campus]';
COMMENT ON COLUMN hr.pa2002.cmp6 IS 'RESE2 — Reserved Field/Unused Field of Length 2 [campus]';
COMMENT ON COLUMN hr.pa2002.val IS 'GRPVL — Grouping Value for Personnel Assignments [valor]';
COMMENT ON COLUMN hr.pa2002.ini_tmp IS 'BEGUZ — Start Time [initium tempus]';
COMMENT ON COLUMN hr.pa2002.fin_tmp IS 'ENDUZ — End Time [finis tempus]';
COMMENT ON COLUMN hr.pa2002.die_idx IS 'VTKEN — Previous Day Indicator [dies index]';
COMMENT ON COLUMN hr.pa2002.pra_abs_gen IS 'AWART — Attendance or Absence Type [praesentia absentia genus]';
COMMENT ON COLUMN hr.pa2002.pra_abs IS 'ABWTG — Attendance and Absence Days [praesentia absentia]';
COMMENT ON COLUMN hr.pa2002.abrtg IS 'ABRTG — Payroll Days';
COMMENT ON COLUMN hr.pa2002.abrst IS 'ABRST — Payroll Hours';
COMMENT ON COLUMN hr.pa2002.kaltg IS 'KALTG — Calendar Days';
COMMENT ON COLUMN hr.pa2002.pra IS 'STDAZ — Attendance Hours [praesentia]';
COMMENT ON COLUMN hr.pa2002.sal_gen IS 'LGART — Wage Type [salarium genus]';
COMMENT ON COLUMN hr.pa2002.aes_sol IS 'BWGRL — Valuation Basis for Different Payment [aestimatio solutio]';
COMMENT ON COLUMN hr.pa2002.idx IS 'AUFKZ — Extra Pay Indicator [index]';
COMMENT ON COLUMN hr.pa2002.gen IS 'VERSL — Overtime Compensation Type [genus]';
COMMENT ON COLUMN hr.pa2002.cts IS 'TRFGR — Pay Scale Group [coetus]';
COMMENT ON COLUMN hr.pa2002.grd IS 'TRFST — Pay Scale Level [gradus]';
COMMENT ON COLUMN hr.pa2002.num IS 'PRAKN — Premium Number [numerus]';
COMMENT ON COLUMN hr.pa2002.idx2 IS 'PRAKZ — Premium Indicator [index]';
COMMENT ON COLUMN hr.pa2002.obi_gen IS 'OTYPE — Object Type [obiectum genus]';
COMMENT ON COLUMN hr.pa2002.mnu IS 'PLANS — Position [munus]';
COMMENT ON COLUMN hr.pa2002.sgn IS 'GENER — Generation Flag [signum]';
COMMENT ON COLUMN hr.pa2002.ndo IS 'EXBEL — External Document Number [numerus documenti]';
COMMENT ON COLUMN hr.pa2002.num2 IS 'HRSIF — Set Number of Hours [numerus]';
COMMENT ON COLUMN hr.pa2002.tbl_die IS 'ALLDF — Record Is for Full Day [tabula dies]';
COMMENT ON COLUMN hr.pa2002.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN hr.pa2002.logsys IS 'LOGSYS — Logical System';
COMMENT ON COLUMN hr.pa2002.rfr2 IS 'AWTYP — Reference Transaction [referentia]';
COMMENT ON COLUMN hr.pa2002.rfr_ndo IS 'AWREF — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN hr.pa2002.rfr3 IS 'AWORG — Reference Organizational Units [referentia]';
COMMENT ON COLUMN hr.pa2002.doc_tmp IS 'DOCSY — Logical System for Document (Personnel Time) [documentum tempus]';
COMMENT ON COLUMN hr.pa2002.ndo_tmp IS 'DOCNR — Document Number for Time Data [numerus documenti tempus]';
COMMENT ON COLUMN hr.pa2002.ops_trb_are IS 'WTART — Work Tax Area [opus tributum area]';
COMMENT ON COLUMN hr.pa2002.gen2 IS 'FAPRS — Evaluation Type for Attendances/Absences [genus]';
COMMENT ON COLUMN hr.pa2002.tdlangu IS 'TDLANGU — Definition Set for IDs';
COMMENT ON COLUMN hr.pa2002.tdsubla IS 'TDSUBLA — Definition Subset for IDs';
COMMENT ON COLUMN hr.pa2002.tmp_gen IS 'TDTYPE — Time Data ID Type [tempus genus]';
COMMENT ON COLUMN hr.pa2002.kepau IS 'KEPAU — No Break';
COMMENT ON COLUMN hr.pa2002.expau IS 'EXPAU — Breaks Specified Explicitly';
COMMENT ON COLUMN hr.pa2002.ini IS 'PBEG1 — Start of Break [initium]';
COMMENT ON COLUMN hr.pa2002.fin IS 'PEND1 — End of Break [finis]';
COMMENT ON COLUMN hr.pa2002.per IS 'PBEZ1 — Paid Break Period [periodus]';
COMMENT ON COLUMN hr.pa2002.per2 IS 'PUNB1 — Unpaid Break Period [periodus]';
COMMENT ON COLUMN hr.pa2002.ini2 IS 'PBEG2 — Start of Break [initium]';
COMMENT ON COLUMN hr.pa2002.fin2 IS 'PEND2 — End of Break [finis]';
COMMENT ON COLUMN hr.pa2002.per3 IS 'PBEZ2 — Paid Break Period [periodus]';
COMMENT ON COLUMN hr.pa2002.per4 IS 'PUNB2 — Unpaid Break Period [periodus]';
COMMENT ON COLUMN hr.pa2002.die_idx2 IS 'NXDFL — Next Day Indicator [dies index]';

CREATE TABLE IF NOT EXISTS hr.pcl1 (
  cli char(3),
  are_glm varchar(2),
  clv_nps_tbl varchar(40),
  cmp_clv integer,
  tbl_sgn varchar(1),
  mut date,
  usr_nom varchar(12),
  nom_glm_tbl varchar(8),
  vrs_glm varchar(2),
  glm_are smallint,
  glm_cmp_spc bytea,
  CONSTRAINT pcl1_pk PRIMARY KEY (cli, are_glm, clv_nps_tbl, cmp_clv)
);
COMMENT ON TABLE hr.pcl1 IS 'PCL1 — HR Cluster 1 — a generic HR cluster-database table. Its payload (CLUSTD) is stored as compressed, opaque cluster data addressed by a relation-ID/key/cluster-number combination (RELID/SRTFD/SRTF2/CLUSTR), not as readable columns: SAP writes structured ABAP internal tables into this raw LRAW field via the IMPORT/EXPORT cluster mechanism, and the field contents cannot be interpreted without an ABAP program performing the corresponding IMPORT. A mirror of this table can capture the key fields and the CLUSTD blob as an opaque byte value, but it cannot field-decode the payload — there is no field-le';
COMMENT ON COLUMN hr.pcl1.cli IS 'CLIENT — Client [cliens]';
COMMENT ON COLUMN hr.pcl1.are_glm IS 'RELID — Area Identification on Import/Export Database PCL1 — identifies which logical cluster relation (application) this row''s blob belongs to [area glomus]';
COMMENT ON COLUMN hr.pcl1.clv_nps_tbl IS 'SRTFD — PCLx Key — the business key (e.g. personnel number plus sub-identifiers) for the clustered record [clavis numerus personae tabula]';
COMMENT ON COLUMN hr.pcl1.cmp_clv IS 'SRTF2 — Sort Field for PCLx (Duplicate Key) [campus clavis]';
COMMENT ON COLUMN hr.pcl1.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.pcl1.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.pcl1.usr_nom IS 'UNAME — User Name [usor nomen]';
COMMENT ON COLUMN hr.pcl1.nom_glm_tbl IS 'PGMID — ABAP: Program Name — the program that wrote this cluster record [nomen glomus tabula]';
COMMENT ON COLUMN hr.pcl1.vrs_glm IS 'VERSN — Version in Cluster Files [versio glomus]';
COMMENT ON COLUMN hr.pcl1.glm_are IS 'CLUSTR — Cluster for PCLx — the cluster-ID sub-selector within the RELID area [glomus area]';
COMMENT ON COLUMN hr.pcl1.glm_cmp_spc IS 'CLUSTD — Compressed cluster payload (opaque raw bytes) — NOT field-decodable without ABAP IMPORT against SAP''s cluster structure definitions; a mirror can only store this as a binary blob keyed by RELID/SRTFD/SRTF2/CLUSTR, never as individual readable fields [glomus campus speculum]';

CREATE TABLE IF NOT EXISTS hr.pcl2 (
  cli char(3),
  are_glm varchar(2),
  clv_nps_per varchar(40),
  cmp_clv integer,
  tbl_sgn varchar(1),
  mut date,
  usr_nom varchar(12),
  nom_glm_tbl varchar(8),
  vrs_glm varchar(2),
  glm_are smallint,
  glm_opr_efc bytea,
  CONSTRAINT pcl2_pk PRIMARY KEY (cli, are_glm, clv_nps_per, cmp_clv)
);
COMMENT ON TABLE hr.pcl2 IS 'PCL2 — HR Cluster 2 — the payroll results cluster database table (e.g. relation IDs such as RD for domestic payroll results). Its payload (CLUSTD) is stored as compressed, opaque cluster data addressed by a relation-ID/key/cluster-number combination (RELID/SRTFD/SRTF2/CLUSTR), not as readable columns: SAP writes a structured payroll-results internal table into this raw LRAW field via the IMPORT/EXPORT cluster mechanism, and the field contents cannot be interpreted without an ABAP program performing the corresponding IMPORT against the relevant cluster structure (e.g. PCL2''s payroll results cluster). ';
COMMENT ON COLUMN hr.pcl2.cli IS 'CLIENT — Client [cliens]';
COMMENT ON COLUMN hr.pcl2.are_glm IS 'RELID — Area Identification on Import/Export Database PCL2 — identifies which logical cluster relation (e.g. domestic payroll results) this row''s blob belongs to [area glomus]';
COMMENT ON COLUMN hr.pcl2.clv_nps_per IS 'SRTFD — PCLx Key — the business key (typically personnel number plus payroll period identifiers) for the clustered record [clavis numerus personae periodus]';
COMMENT ON COLUMN hr.pcl2.cmp_clv IS 'SRTF2 — Sort Field for PCLx (Duplicate Key) [campus clavis]';
COMMENT ON COLUMN hr.pcl2.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.pcl2.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.pcl2.usr_nom IS 'UNAME — User Name [usor nomen]';
COMMENT ON COLUMN hr.pcl2.nom_glm_tbl IS 'PGMID — ABAP: Program Name — the program (typically a payroll driver) that wrote this cluster record [nomen glomus tabula]';
COMMENT ON COLUMN hr.pcl2.vrs_glm IS 'VERSN — Version in Cluster Files [versio glomus]';
COMMENT ON COLUMN hr.pcl2.glm_are IS 'CLUSTR — Cluster for PCLx — the cluster-ID sub-selector within the RELID area (e.g. the specific payroll results cluster) [glomus area]';
COMMENT ON COLUMN hr.pcl2.glm_opr_efc IS 'CLUSTD — Compressed cluster payload (opaque raw bytes) — this is where an employee''s payroll result (wage types, amounts, tax and deduction detail) actually lives, but it is NOT field-decodable without ABAP IMPORT against SAP''s payroll-results cluster structure; a mirror can only store this as a binary blob keyed by RELID/SRTFD/SRTF2/CLUSTR, never as individual readable fields [glomus operarius effectus]';

CREATE TABLE IF NOT EXISTS hr.pcl3 (
  cli char(3),
  are_idx_glm varchar(2),
  clv_nps_tmp varchar(40),
  cmp_clv integer,
  tbl_sgn varchar(1),
  mut date,
  usr_nom varchar(12),
  nom_tmp_glm varchar(8),
  vrs_glm varchar(2),
  glm_are_tmp smallint,
  glm_opr_tmp bytea,
  CONSTRAINT pcl3_pk PRIMARY KEY (cli, are_idx_glm, clv_nps_tmp, cmp_clv)
);
COMMENT ON TABLE hr.pcl3 IS 'PCL3 — HR Cluster 3 — the time-management cluster database table (e.g. time-evaluation results and time-transfer clusters). Its payload (CLUSTD) is stored as compressed, opaque cluster data addressed by a relation-ID/key/cluster-number combination (RELID/SRTFD/SRTF2/CLUSTR), not as readable columns: SAP writes a structured time-evaluation internal table into this raw LRAW field via the IMPORT/EXPORT cluster mechanism, and the field contents cannot be interpreted without an ABAP program performing the corresponding IMPORT against the relevant cluster structure. A mirror of this table can capture the k';
COMMENT ON COLUMN hr.pcl3.cli IS 'CLIENT — Client [cliens]';
COMMENT ON COLUMN hr.pcl3.are_idx_glm IS 'RELID — Area Indicator on Import/Export Database PCL3 — identifies which logical cluster relation (e.g. time-evaluation results) this row''s blob belongs to [area index glomus]';
COMMENT ON COLUMN hr.pcl3.clv_nps_tmp IS 'SRTFD — PCLx Key — the business key (typically personnel number plus time-evaluation period identifiers) for the clustered record [clavis numerus personae tempus]';
COMMENT ON COLUMN hr.pcl3.cmp_clv IS 'SRTF2 — Sort Field for PCLx (Duplicate Key) [campus clavis]';
COMMENT ON COLUMN hr.pcl3.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.pcl3.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.pcl3.usr_nom IS 'UNAME — User Name [usor nomen]';
COMMENT ON COLUMN hr.pcl3.nom_tmp_glm IS 'PGMID — ABAP: Program Name — the program (typically the time evaluation driver, RPTIME00) that wrote this cluster record [nomen tempus glomus]';
COMMENT ON COLUMN hr.pcl3.vrs_glm IS 'VERSN — Version in Cluster Files [versio glomus]';
COMMENT ON COLUMN hr.pcl3.glm_are_tmp IS 'CLUSTR — Cluster for PCLx — the cluster-ID sub-selector within the RELID area (e.g. the specific time-evaluation results cluster) [glomus area tempus]';
COMMENT ON COLUMN hr.pcl3.glm_opr_tmp IS 'CLUSTD — Compressed cluster payload (opaque raw bytes) — this is where an employee''s evaluated time data (time pairs, generated quotas, balances) actually lives, but it is NOT field-decodable without ABAP IMPORT against SAP''s time-evaluation cluster structure; a mirror can only store this as a binary blob keyed by RELID/SRTFD/SRTF2/CLUSTR, never as individual readable fields [glomus operarius tempus]';

CREATE TABLE IF NOT EXISTS hr.pcl4 (
  cli char(3),
  are_glm_trb varchar(2),
  clv_nps_trb varchar(40),
  cmp_clv integer,
  tbl_sgn varchar(1),
  mut date,
  usr_nom varchar(12),
  nom_trb_glm varchar(8),
  vrs_glm varchar(2),
  glm_are_trb smallint,
  glm_opr_trb bytea,
  CONSTRAINT pcl4_pk PRIMARY KEY (cli, are_glm_trb, clv_nps_trb, cmp_clv)
);
COMMENT ON TABLE hr.pcl4 IS 'PCL4 — HR Cluster 4 — the tax-reporting and year-end cluster database table (e.g. legal/statutory reporting clusters). Its payload (CLUSTD) is stored as compressed, opaque cluster data addressed by a relation-ID/key/cluster-number combination (RELID/SRTFD/SRTF2/CLUSTR), not as readable columns: SAP writes a structured tax/legal-reporting internal table into this raw LRAW field via the IMPORT/EXPORT cluster mechanism, and the field contents cannot be interpreted without an ABAP program performing the corresponding IMPORT against the relevant cluster structure. A mirror of this table can capture the ke';
COMMENT ON COLUMN hr.pcl4.cli IS 'CLIENT — Client [cliens]';
COMMENT ON COLUMN hr.pcl4.are_glm_trb IS 'RELID — Area ID in Import/Export Database PCL4 — identifies which logical cluster relation (e.g. tax/statutory reporting) this row''s blob belongs to [area glomus tributum]';
COMMENT ON COLUMN hr.pcl4.clv_nps_trb IS 'SRTFD — PCLx Key — the business key (typically personnel number plus tax-year/reporting-period identifiers) for the clustered record [clavis numerus personae tributum]';
COMMENT ON COLUMN hr.pcl4.cmp_clv IS 'SRTF2 — Sort Field for PCLx (Duplicate Key) [campus clavis]';
COMMENT ON COLUMN hr.pcl4.tbl_sgn IS 'HISTO — Historical Record Flag [tabula signum]';
COMMENT ON COLUMN hr.pcl4.mut IS 'AEDTM — Changed On [mutatus]';
COMMENT ON COLUMN hr.pcl4.usr_nom IS 'UNAME — User Name [usor nomen]';
COMMENT ON COLUMN hr.pcl4.nom_trb_glm IS 'PGMID — ABAP: Program Name — the program (typically a legal/tax reporting driver) that wrote this cluster record [nomen tributum glomus]';
COMMENT ON COLUMN hr.pcl4.vrs_glm IS 'VERSN — Version in Cluster Files [versio glomus]';
COMMENT ON COLUMN hr.pcl4.glm_are_trb IS 'CLUSTR — Cluster for PCLx — the cluster-ID sub-selector within the RELID area (e.g. the specific tax-reporting cluster) [glomus area tributum]';
COMMENT ON COLUMN hr.pcl4.glm_opr_trb IS 'CLUSTD — Compressed cluster payload (opaque raw bytes) — this is where an employee''s tax/statutory-reporting data actually lives, but it is NOT field-decodable without ABAP IMPORT against SAP''s tax-reporting cluster structure; a mirror can only store this as a binary blob keyed by RELID/SRTFD/SRTF2/CLUSTR, never as individual readable fields [glomus operarius tributum]';

