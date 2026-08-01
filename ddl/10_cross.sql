-- EVE Datasphere Sovereign — PostgreSQL materialisation
-- Generated 2026-08-01T02:17:52Z by scripts/emit_postgres.py. Do not hand-edit; regenerate.
-- Column names are the canonical Latin layer (EgD-LATIN-001). The legacy SAP field name
-- is preserved in COMMENT ON COLUMN and in egd_catalog.field_map, and is the join key.
-- Mirror, never cannibalise. Pour le bien-etre du peuple.

-- module CROSS

CREATE TABLE IF NOT EXISTS cross_app.adr2 (
  cli char(3),
  dml_num varchar(10),
  psn_num varchar(10),
  vla_die_ems date,
  ord_num varchar(3),
  ptr_tel_num varchar(3),
  nrm_dml_gen varchar(1),
  sgn_num varchar(1),
  dml_gen varchar(1),
  tel_cod_num varchar(30),
  tel varchar(10),
  num_cod varchar(30),
  tel_num varchar(30),
  idx_tel varchar(1),
  idx_tel2 varchar(1),
  vla varchar(14),
  vld varchar(14),
  CONSTRAINT adr2_pk PRIMARY KEY (cli, dml_num, psn_num, vla_die_ems, ord_num)
);
COMMENT ON TABLE cross_app.adr2 IS 'ADR2 — Telephone Numbers (Business Address Services) — the per-communication-type child of ADRC holding phone numbers for a given ADDRNUMBER, one of the sibling tables (with ADR3 fax, ADR6 e-mail) that ADRC''s DEFLT_COMM/FLAGCOMM2 flags point at. SAP''s real ADR2 carries all its fields; this definition carries the table complete, as it is a small check/detail table.';
COMMENT ON COLUMN cross_app.adr2.cli IS 'CLIENT — Client [cliens]';
COMMENT ON COLUMN cross_app.adr2.dml_num IS 'ADDRNUMBER — Address number [domicilium numerus]';
COMMENT ON COLUMN cross_app.adr2.psn_num IS 'PERSNUMBER — Person number [persona numerus]';
COMMENT ON COLUMN cross_app.adr2.vla_die_ems IS 'DATE_FROM — Valid-from date - in current Release only 00010101 possible [validus ab dies emissio]';
COMMENT ON COLUMN cross_app.adr2.ord_num IS 'CONSNUMBER — Sequence Number [ordo numerus]';
COMMENT ON COLUMN cross_app.adr2.ptr_tel_num IS 'COUNTRY — Country for telephone/fax number [patria telephonum numerus]';
COMMENT ON COLUMN cross_app.adr2.nrm_dml_gen IS 'FLGDEFAULT — Standard Sender Address in this Communication Type [norma domicilium genus]';
COMMENT ON COLUMN cross_app.adr2.sgn_num IS 'FLG_NOUSE — Flag: This Communication Number is Not Used [signum numerus]';
COMMENT ON COLUMN cross_app.adr2.dml_gen IS 'HOME_FLAG — Recipient address in this communication type (mail sys.grp) [domicilium genus]';
COMMENT ON COLUMN cross_app.adr2.tel_cod_num IS 'TEL_NUMBER — Telephone no.: dialling code+number [telephonum codex numerus]';
COMMENT ON COLUMN cross_app.adr2.tel IS 'TEL_EXTENS — Telephone no.: Extension [telephonum]';
COMMENT ON COLUMN cross_app.adr2.num_cod IS 'TELNR_LONG — Complete number: dialling code+number+extension [numerus codex]';
COMMENT ON COLUMN cross_app.adr2.tel_num IS 'TELNR_CALL — Telephone number for determining caller [telephonum numerus]';
COMMENT ON COLUMN cross_app.adr2.idx_tel IS 'DFT_RECEIV — Indicator: Telephone is SMS-Enabled [index telephonum]';
COMMENT ON COLUMN cross_app.adr2.idx_tel2 IS 'R3_USER — Indicator: Telephone is a Mobile Telephone [index telephonum]';
COMMENT ON COLUMN cross_app.adr2.vla IS 'VALID_FROM — Communication Data: Valid From (YYYYMMDDHHMMSS) [validus ab]';
COMMENT ON COLUMN cross_app.adr2.vld IS 'VALID_TO — Communication Data: Valid To (YYYYMMDDHHMMSS) [validus ad]';

CREATE TABLE IF NOT EXISTS cross_app.adr3 (
  cli char(3),
  dml_num varchar(10),
  psn_num varchar(10),
  vla_die_ems date,
  ord_num varchar(3),
  ptr_tel_num varchar(3),
  nrm_dml_gen varchar(1),
  sgn_num varchar(1),
  dml_gen varchar(1),
  num_cod varchar(30),
  fax_extens varchar(10),
  num_cod2 varchar(30),
  num varchar(30),
  cts varchar(1),
  sgn_nrm_num varchar(1),
  sgn varchar(1),
  vla varchar(14),
  vld varchar(14),
  CONSTRAINT adr3_pk PRIMARY KEY (cli, dml_num, psn_num, vla_die_ems, ord_num)
);
COMMENT ON TABLE cross_app.adr3 IS 'ADR3 — Fax Numbers (Business Address Services) — the per-communication-type child of ADRC holding fax numbers for a given ADDRNUMBER, sibling to ADR2 (telephone) and ADR6 (e-mail), pointed at by ADRC''s FLAGCOMM3 flag. SAP''s real ADR3 carries all its fields; this definition carries the table complete, as it is a small check/detail table.';
COMMENT ON COLUMN cross_app.adr3.cli IS 'CLIENT — Client [cliens]';
COMMENT ON COLUMN cross_app.adr3.dml_num IS 'ADDRNUMBER — Address number [domicilium numerus]';
COMMENT ON COLUMN cross_app.adr3.psn_num IS 'PERSNUMBER — Person number [persona numerus]';
COMMENT ON COLUMN cross_app.adr3.vla_die_ems IS 'DATE_FROM — Valid-from date - in current Release only 00010101 possible [validus ab dies emissio]';
COMMENT ON COLUMN cross_app.adr3.ord_num IS 'CONSNUMBER — Sequence Number [ordo numerus]';
COMMENT ON COLUMN cross_app.adr3.ptr_tel_num IS 'COUNTRY — Country for telephone/fax number [patria telephonum numerus]';
COMMENT ON COLUMN cross_app.adr3.nrm_dml_gen IS 'FLGDEFAULT — Standard Sender Address in this Communication Type [norma domicilium genus]';
COMMENT ON COLUMN cross_app.adr3.sgn_num IS 'FLG_NOUSE — Flag: This Communication Number is Not Used [signum numerus]';
COMMENT ON COLUMN cross_app.adr3.dml_gen IS 'HOME_FLAG — Recipient address in this communication type (mail sys.grp) [domicilium genus]';
COMMENT ON COLUMN cross_app.adr3.num_cod IS 'FAX_NUMBER — Fax number: dialling code+number [numerus codex]';
COMMENT ON COLUMN cross_app.adr3.fax_extens IS 'FAX_EXTENS — Fax no.: Extension';
COMMENT ON COLUMN cross_app.adr3.num_cod2 IS 'FAXNR_LONG — Complete number: dialling code+number+extension [numerus codex]';
COMMENT ON COLUMN cross_app.adr3.num IS 'FAXNR_CALL — Fax number for finding sender [numerus]';
COMMENT ON COLUMN cross_app.adr3.cts IS 'FAX_GROUP — Fax group (G3, G4, ...) [coetus]';
COMMENT ON COLUMN cross_app.adr3.sgn_nrm_num IS 'DFT_RECEIV — Flag: Recipient is standard recipient for this number [signum norma numerus]';
COMMENT ON COLUMN cross_app.adr3.sgn IS 'R3_USER — Flag: Connected to an SAP System [signum]';
COMMENT ON COLUMN cross_app.adr3.vla IS 'VALID_FROM — Communication Data: Valid From (YYYYMMDDHHMMSS) [validus ab]';
COMMENT ON COLUMN cross_app.adr3.vld IS 'VALID_TO — Communication Data: Valid To (YYYYMMDDHHMMSS) [validus ad]';

CREATE TABLE IF NOT EXISTS cross_app.adr6 (
  cli char(3),
  dml_num varchar(10),
  psn_num varchar(10),
  vla_die_ems date,
  ord_num varchar(3),
  sgn_dml varchar(1),
  sgn_num varchar(1),
  dml_gen varchar(1),
  dml varchar(241),
  dml_cmp varchar(20),
  sgn_nrm_dml varchar(1),
  sgn varchar(1),
  encode varchar(1),
  sgn2 varchar(1),
  vla varchar(14),
  vld varchar(14),
  CONSTRAINT adr6_pk PRIMARY KEY (cli, dml_num, psn_num, vla_die_ems, ord_num)
);
COMMENT ON TABLE cross_app.adr6 IS 'ADR6 — E-Mail Addresses (Business Address Services) — the per-communication-type child of ADRC holding e-mail (SMTP) addresses for a given ADDRNUMBER, sibling to ADR2 (telephone) and ADR3 (fax), pointed at by ADRC''s FLAGCOMM6 flag. This is the table an ESG or interaction-record column extending contact-channel data would attach alongside, without altering ADRC itself. SAP''s real ADR6 carries all its fields; this definition carries the table complete, as it is a small check/detail table.';
COMMENT ON COLUMN cross_app.adr6.cli IS 'CLIENT — Client [cliens]';
COMMENT ON COLUMN cross_app.adr6.dml_num IS 'ADDRNUMBER — Address number [domicilium numerus]';
COMMENT ON COLUMN cross_app.adr6.psn_num IS 'PERSNUMBER — Person number [persona numerus]';
COMMENT ON COLUMN cross_app.adr6.vla_die_ems IS 'DATE_FROM — Valid-from date - in current Release only 00010101 possible [validus ab dies emissio]';
COMMENT ON COLUMN cross_app.adr6.ord_num IS 'CONSNUMBER — Sequence Number [ordo numerus]';
COMMENT ON COLUMN cross_app.adr6.sgn_dml IS 'FLGDEFAULT — Flag: this address is the default address [signum domicilium]';
COMMENT ON COLUMN cross_app.adr6.sgn_num IS 'FLG_NOUSE — Flag: This Communication Number is Not Used [signum numerus]';
COMMENT ON COLUMN cross_app.adr6.dml_gen IS 'HOME_FLAG — Recipient address in this communication type (mail sys.grp) [domicilium genus]';
COMMENT ON COLUMN cross_app.adr6.dml IS 'SMTP_ADDR — E-Mail Address [domicilium]';
COMMENT ON COLUMN cross_app.adr6.dml_cmp IS 'SMTP_SRCH — E-Mail Address Search Field [domicilium campus]';
COMMENT ON COLUMN cross_app.adr6.sgn_nrm_dml IS 'DFT_RECEIV — Flag: Recipient is standard recipient for this address [signum norma domicilium]';
COMMENT ON COLUMN cross_app.adr6.sgn IS 'R3_USER — Flag: Connected to an SAP System [signum]';
COMMENT ON COLUMN cross_app.adr6.encode IS 'ENCODE — Desired Data Coding (E-Mail)';
COMMENT ON COLUMN cross_app.adr6.sgn2 IS 'TNEF — Flag: Receiver can receive TNEF coding via SMTP [signum]';
COMMENT ON COLUMN cross_app.adr6.vla IS 'VALID_FROM — Communication Data: Valid From (YYYYMMDDHHMMSS) [validus ab]';
COMMENT ON COLUMN cross_app.adr6.vld IS 'VALID_TO — Communication Data: Valid To (YYYYMMDDHHMMSS) [validus ad]';

CREATE TABLE IF NOT EXISTS cross_app.adrc (
  cli char(3),
  dml_num_clv varchar(10),
  vla_die_ems date,
  vrs varchar(1),
  vld_die_ems date,
  frm_dml_clv varchar(4),
  nom varchar(40),
  nom2 varchar(40),
  nom3 varchar(40),
  nom4 varchar(40),
  nom_cmp_frm varchar(50),
  nom5 varchar(40),
  urb varchar(40),
  city2 varchar(40),
  urb_cod varchar(10),
  po_box varchar(10),
  street varchar(60),
  num varchar(10),
  str_suppl1 varchar(40),
  location varchar(40),
  num_cod varchar(20),
  ptr_clv varchar(3),
  lng_clv char(1),
  reg varchar(3),
  dml_cts_clv varchar(4),
  sort1 varchar(20),
  sort2 varchar(20),
  clv_dml_cnl varchar(3),
  pri_tel_cod varchar(30),
  pri_cod_num varchar(30),
  sgn_tel_num varchar(1),
  sgn_num varchar(1),
  idx_dml varchar(1),
  dml_ztm varchar(6),
  trb varchar(15),
  dml bytea,
  sta_dml varchar(1),
  CONSTRAINT adrc_pk PRIMARY KEY (cli, dml_num_clv, vla_die_ems, vrs)
);
COMMENT ON TABLE cross_app.adrc IS 'ADRC — Addresses (Business Address Services) — the central address table every ADRNR/ADDRNUMBER field in the model resolves to. ADRC holds the postal name, street, city, region, country, and default-communication-method data for every business partner, customer, vendor, company code, plant, and personnel address in the system; ADR2 (telephone), ADR3 (fax), and ADR6 (e-mail) are its per-communication-type child tables, all keyed on ADDRNUMBER back to this header. SAP''s real ADRC carries roughly 95 fields covering city/street-file validation, PO-box handling, and township/county extensions; this defini';
COMMENT ON COLUMN cross_app.adrc.cli IS 'CLIENT — Client [cliens]';
COMMENT ON COLUMN cross_app.adrc.dml_num_clv IS 'ADDRNUMBER — Address number — the key every ADRNR field elsewhere in the model points to [domicilium numerus clavis]';
COMMENT ON COLUMN cross_app.adrc.vla_die_ems IS 'DATE_FROM — Valid-from date - in current Release only 00010101 possible [validus ab dies emissio]';
COMMENT ON COLUMN cross_app.adrc.vrs IS 'NATION — Version ID for International Addresses [versio]';
COMMENT ON COLUMN cross_app.adrc.vld_die_ems IS 'DATE_TO — Valid-to date - in current Release only 99991231 possible [validus ad dies emissio]';
COMMENT ON COLUMN cross_app.adrc.frm_dml_clv IS 'TITLE — Form-of-Address Key [forma domicilium clavis]';
COMMENT ON COLUMN cross_app.adrc.nom IS 'NAME1 — Name 1 [nomen]';
COMMENT ON COLUMN cross_app.adrc.nom2 IS 'NAME2 — Name 2 [nomen]';
COMMENT ON COLUMN cross_app.adrc.nom3 IS 'NAME3 — Name 3 [nomen]';
COMMENT ON COLUMN cross_app.adrc.nom4 IS 'NAME4 — Name 4 [nomen]';
COMMENT ON COLUMN cross_app.adrc.nom_cmp_frm IS 'NAME_TEXT — Converted name field (with form of address) [nomen campus forma]';
COMMENT ON COLUMN cross_app.adrc.nom5 IS 'NAME_CO — c/o name [nomen]';
COMMENT ON COLUMN cross_app.adrc.urb IS 'CITY1 — City [urbs]';
COMMENT ON COLUMN cross_app.adrc.city2 IS 'CITY2 — District';
COMMENT ON COLUMN cross_app.adrc.urb_cod IS 'POST_CODE1 — City postal code [urbs codex]';
COMMENT ON COLUMN cross_app.adrc.po_box IS 'PO_BOX — PO Box';
COMMENT ON COLUMN cross_app.adrc.street IS 'STREET — Street';
COMMENT ON COLUMN cross_app.adrc.num IS 'HOUSE_NUM1 — House Number [numerus]';
COMMENT ON COLUMN cross_app.adrc.str_suppl1 IS 'STR_SUPPL1 — Street 2';
COMMENT ON COLUMN cross_app.adrc.location IS 'LOCATION — Street 5';
COMMENT ON COLUMN cross_app.adrc.num_cod IS 'BUILDING — Building (Number or Code) [numerus codex]';
COMMENT ON COLUMN cross_app.adrc.ptr_clv IS 'COUNTRY — Country Key [patria clavis]';
COMMENT ON COLUMN cross_app.adrc.lng_clv IS 'LANGU — Language Key [lingua clavis]';
COMMENT ON COLUMN cross_app.adrc.reg IS 'REGION — Region (State, Province, County) [regio]';
COMMENT ON COLUMN cross_app.adrc.dml_cts_clv IS 'ADDR_GROUP — Address Group (Key) (Business Address Services) [domicilium coetus clavis]';
COMMENT ON COLUMN cross_app.adrc.sort1 IS 'SORT1 — Search Term 1';
COMMENT ON COLUMN cross_app.adrc.sort2 IS 'SORT2 — Search Term 2';
COMMENT ON COLUMN cross_app.adrc.clv_dml_cnl IS 'DEFLT_COMM — Communication Method (Key) (Business Address Services) — which of ADR2/ADR3/ADR6 etc. is the default channel [clavis domicilium canalis]';
COMMENT ON COLUMN cross_app.adrc.pri_tel_cod IS 'TEL_NUMBER — First telephone no.: dialling code+number [primus telephonum codex]';
COMMENT ON COLUMN cross_app.adrc.pri_cod_num IS 'FAX_NUMBER — First fax no.: dialling code+number [primus codex numerus]';
COMMENT ON COLUMN cross_app.adrc.sgn_tel_num IS 'FLAGCOMM2 — Flag: Telephone number(s) maintained — points at ADR2 [signum telephonum numerus]';
COMMENT ON COLUMN cross_app.adrc.sgn_num IS 'FLAGCOMM3 — Flag: Fax number(s) maintained — points at ADR3 [signum numerus]';
COMMENT ON COLUMN cross_app.adrc.idx_dml IS 'FLAGCOMM6 — Indicator: E-Mail Address(es) Maintained — points at ADR6 [index domicilium]';
COMMENT ON COLUMN cross_app.adrc.dml_ztm IS 'TIME_ZONE — Address time zone [domicilium zona temporis]';
COMMENT ON COLUMN cross_app.adrc.trb IS 'TAXJURCODE — Tax Jurisdiction [tributum]';
COMMENT ON COLUMN cross_app.adrc.dml IS 'ADRC_UUID — UUID Used in the Address [domicilium]';
COMMENT ON COLUMN cross_app.adrc.sta_dml IS 'ADRC_ERR_STATUS — Error Status of Address [status domicilium]';

CREATE TABLE IF NOT EXISTS cross_app.ausp (
  cli char(3),
  clv_obi varchar(50),
  not_ varchar(10),
  not_val_nmr varchar(3),
  idx_obi_cls varchar(1),
  cls_gen varchar(3),
  nmr varchar(4),
  not_val varchar(30),
  atflv double precision,
  uni_msu varchar(3),
  val double precision,
  uni_msu2 varchar(3),
  cod_val varchar(1),
  attlv double precision,
  attlb double precision,
  idx varchar(1),
  atinc double precision,
  ataut varchar(1),
  num varchar(12),
  vla_die date,
  idx2 varchar(1),
  not_num_usr varchar(10),
  nmr2 varchar(3),
  cmp varchar(4),
  gen_val varchar(1),
  CONSTRAINT ausp_pk PRIMARY KEY (cli, clv_obi, not_, not_val_nmr, idx_obi_cls, cls_gen, nmr)
);
COMMENT ON TABLE cross_app.ausp IS 'AUSP — Characteristic Values — the actual characteristic-value assignments against a classified object (OBJEK), the table that carries a class''s data onto an object instance. Each row assigns one characteristic (ATINN, resolving to CABN) and one value (ATWRT, or the numeric ATFLV/ATFLB range) to an object; combined with CAWN for predefined value texts and KLAH/CABN for the class/characteristic definitions, this is the operative layer of SAP''s classification-based extension mechanism — where ESG and interaction-record attributes attach without touching the object''s own standard table. SAP''s real AUSP ';
COMMENT ON COLUMN cross_app.ausp.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN cross_app.ausp.clv_obi IS 'OBJEK — Key of object to be classified [clavis obiectum]';
COMMENT ON COLUMN cross_app.ausp.not_ IS 'ATINN — Internal characteristic — resolves to CABN [nota]';
COMMENT ON COLUMN cross_app.ausp.not_val_nmr IS 'ATZHL — Characteristic value counter [nota valor numerator]';
COMMENT ON COLUMN cross_app.ausp.idx_obi_cls IS 'MAFID — Indicator: Object/Class [index obiectum classis]';
COMMENT ON COLUMN cross_app.ausp.cls_gen IS 'KLART — Class Type [classis genus]';
COMMENT ON COLUMN cross_app.ausp.nmr IS 'ADZHL — Internal counter for archiving objects via engin. chg. mgmt [numerator]';
COMMENT ON COLUMN cross_app.ausp.not_val IS 'ATWRT — Characteristic Value [nota valor]';
COMMENT ON COLUMN cross_app.ausp.atflv IS 'ATFLV — Internal floating point from';
COMMENT ON COLUMN cross_app.ausp.uni_msu IS 'ATAWE — Unit of Measurement [unitas mensuratio]';
COMMENT ON COLUMN cross_app.ausp.val IS 'ATFLB — Internal floating point value to [valor]';
COMMENT ON COLUMN cross_app.ausp.uni_msu2 IS 'ATAW1 — Unit of Measurement [unitas mensuratio]';
COMMENT ON COLUMN cross_app.ausp.cod_val IS 'ATCOD — Code for value dependency [codex valor]';
COMMENT ON COLUMN cross_app.ausp.attlv IS 'ATTLV — Tolerance from';
COMMENT ON COLUMN cross_app.ausp.attlb IS 'ATTLB — Tolerance to';
COMMENT ON COLUMN cross_app.ausp.idx IS 'ATPRZ — Indicator: Tolerance Shown as a Percentage [index]';
COMMENT ON COLUMN cross_app.ausp.atinc IS 'ATINC — Increment Within a Specified Interval';
COMMENT ON COLUMN cross_app.ausp.ataut IS 'ATAUT — Classification: Author';
COMMENT ON COLUMN cross_app.ausp.num IS 'AENNR — Change Number [numerus]';
COMMENT ON COLUMN cross_app.ausp.vla_die IS 'DATUV — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN cross_app.ausp.idx2 IS 'LKENZ — Deletion Indicator [index]';
COMMENT ON COLUMN cross_app.ausp.not_num_usr IS 'ATIMB — Characteristic Number of User-Defined Data Type [nota numerus usor]';
COMMENT ON COLUMN cross_app.ausp.nmr2 IS 'ATZIS — Instance counter [numerator]';
COMMENT ON COLUMN cross_app.ausp.cmp IS 'ATSRT — Sort field for AUSP char. values [campus]';
COMMENT ON COLUMN cross_app.ausp.gen_val IS 'ATVGLART — Comparison Type for Char. Value: " " .. "7": Incl./Excl. [genus valor]';

CREATE TABLE IF NOT EXISTS cross_app.cabn (
  cli char(3),
  not_clv_rfr varchar(10),
  nmr varchar(4),
  not_nom_clv varchar(30),
  obi varchar(2),
  gen_not varchar(4),
  num smallint,
  num2 smallint,
  val varchar(1),
  atkle varchar(1),
  nom varchar(5),
  cts varchar(10),
  aterf varchar(1),
  val2 varchar(1),
  not_ varchar(1),
  lng varchar(1),
  uni_msu varchar(3),
  atdim smallint,
  atint varchar(1),
  atuns varchar(1),
  tbl_nom_cmp varchar(30),
  cmp_nom_tbl varchar(30),
  tpb_tbl_val varchar(30),
  sta_not varchar(1),
  vla_die date,
  num3 varchar(12),
  idx varchar(1),
  cls_num_not varchar(10),
  ofc varchar(4),
  CONSTRAINT cabn_pk PRIMARY KEY (cli, not_clv_rfr, nmr)
);
COMMENT ON TABLE cross_app.cabn IS 'CABN — Characteristic — the master definition of a classification characteristic (name, data type, length, decimals, unit, value-entry rules), the row ATINN in AUSP and CAWN resolves to. CABN defines what a characteristic is and how its values are validated; CAWN carries its predefined value texts, AUSP carries its actual assignments to objects. This is the definitional layer of the classification extension mechanism that lets ESG and interaction-record attributes be declared without modifying any standard table structure. SAP''s real CABN carries roughly 68 fields, most of them display/formatting and';
COMMENT ON COLUMN cross_app.cabn.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN cross_app.cabn.not_clv_rfr IS 'ATINN — Internal characteristic — the key AUSP and CAWN reference [nota clavis referentia]';
COMMENT ON COLUMN cross_app.cabn.nmr IS 'ADZHL — Internal counter for archiving objects via engin. chg. mgmt [numerator]';
COMMENT ON COLUMN cross_app.cabn.not_nom_clv IS 'ATNAM — Characteristic Name — the external, human-visible characteristic key [nota nomen clavis]';
COMMENT ON COLUMN cross_app.cabn.obi IS 'ATIDN — Object identification [obiectum]';
COMMENT ON COLUMN cross_app.cabn.gen_not IS 'ATFOR — Data type of characteristic [genus nota]';
COMMENT ON COLUMN cross_app.cabn.num IS 'ANZST — Number of Characters [numerus]';
COMMENT ON COLUMN cross_app.cabn.num2 IS 'ANZDZ — Number of Decimal Places [numerus]';
COMMENT ON COLUMN cross_app.cabn.val IS 'ATVOR — Value with Plus or Minus Sign [valor]';
COMMENT ON COLUMN cross_app.cabn.atkle IS 'ATKLE — Case Sensitive';
COMMENT ON COLUMN cross_app.cabn.nom IS 'ATKON — Name of Conversion Routine [nomen]';
COMMENT ON COLUMN cross_app.cabn.cts IS 'ATKLA — Chars Group [coetus]';
COMMENT ON COLUMN cross_app.cabn.aterf IS 'ATERF — Entry Required';
COMMENT ON COLUMN cross_app.cabn.val2 IS 'ATEIN — Single value [valor]';
COMMENT ON COLUMN cross_app.cabn.not_ IS 'ATAME — Multilingual characteristic [nota]';
COMMENT ON COLUMN cross_app.cabn.lng IS 'ATWME — Values in more than one language [lingua]';
COMMENT ON COLUMN cross_app.cabn.uni_msu IS 'MSEHI — Unit of Measurement [unitas mensuratio]';
COMMENT ON COLUMN cross_app.cabn.atdim IS 'ATDIM — Exponent display';
COMMENT ON COLUMN cross_app.cabn.atint IS 'ATINT — Interval Values Allowed';
COMMENT ON COLUMN cross_app.cabn.atuns IS 'ATUNS — Entry Required in Configuration';
COMMENT ON COLUMN cross_app.cabn.tbl_nom_cmp IS 'ATTAB — Table Name — for characteristics referencing an existing table field [tabula nomen campus]';
COMMENT ON COLUMN cross_app.cabn.cmp_nom_tbl IS 'ATFEL — Field Name — for characteristics referencing an existing table field [campus nomen tabula]';
COMMENT ON COLUMN cross_app.cabn.tpb_tbl_val IS 'ATPRT — Check table — for characteristics with an SAP check-table value list [tabula probationis tabula valor]';
COMMENT ON COLUMN cross_app.cabn.sta_not IS 'ATMST — Status of a characteristic [status nota]';
COMMENT ON COLUMN cross_app.cabn.vla_die IS 'DATUV — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN cross_app.cabn.num3 IS 'AENNR — Change Number [numerus]';
COMMENT ON COLUMN cross_app.cabn.idx IS 'LKENZ — Deletion Indicator [index]';
COMMENT ON COLUMN cross_app.cabn.cls_num_not IS 'CLINT — Internal Class Number — links a characteristic back to its class header [classis numerus nota]';
COMMENT ON COLUMN cross_app.cabn.ofc IS 'WERKS — Plant [officina]';

CREATE TABLE IF NOT EXISTS cross_app.cawn (
  cli char(3),
  not_ varchar(10),
  nmr varchar(4),
  nmr2 varchar(4),
  not_val varchar(30),
  atflv double precision,
  val double precision,
  cod_val varchar(1),
  val2 varchar(1),
  uni_msu varchar(3),
  uni_msu2 varchar(3),
  obi varchar(2),
  lng_clv_not char(1),
  num_txt varchar(4),
  vla_die date,
  sta varchar(12),
  num varchar(12),
  idx varchar(1),
  gdo varchar(3),
  ndo varchar(25),
  doc_vrs varchar(2),
  doc varchar(3),
  nmr_val_hir varchar(4),
  idx2 varchar(1),
  attlv double precision,
  attlb double precision,
  idx3 varchar(1),
  atinc double precision,
  cns varchar(1),
  CONSTRAINT cawn_pk PRIMARY KEY (cli, not_, nmr, nmr2)
);
COMMENT ON TABLE cross_app.cawn IS 'CAWN — Characteristic values — the predefined/allowed-value list for a characteristic defined in CABN, including value texts, floating-point ranges, and tolerances. Where AUSP records what value was actually assigned to an object, CAWN records what values were legal to assign in the first place. SAP''s real CAWN carries all its fields; this definition carries the table complete.';
COMMENT ON COLUMN cross_app.cawn.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN cross_app.cawn.not_ IS 'ATINN — Internal characteristic — resolves to CABN [nota]';
COMMENT ON COLUMN cross_app.cawn.nmr IS 'ATZHL — Int counter [numerator]';
COMMENT ON COLUMN cross_app.cawn.nmr2 IS 'ADZHL — Internal counter for archiving objects via engin. chg. mgmt [numerator]';
COMMENT ON COLUMN cross_app.cawn.not_val IS 'ATWRT — Characteristic Value [nota valor]';
COMMENT ON COLUMN cross_app.cawn.atflv IS 'ATFLV — Internal floating point from';
COMMENT ON COLUMN cross_app.cawn.val IS 'ATFLB — Internal floating point value to [valor]';
COMMENT ON COLUMN cross_app.cawn.cod_val IS 'ATCOD — Code for value dependency [codex valor]';
COMMENT ON COLUMN cross_app.cawn.val2 IS 'ATSTD — Default value [valor]';
COMMENT ON COLUMN cross_app.cawn.uni_msu IS 'ATAWE — Unit of Measurement [unitas mensuratio]';
COMMENT ON COLUMN cross_app.cawn.uni_msu2 IS 'ATAW1 — Unit of Measurement [unitas mensuratio]';
COMMENT ON COLUMN cross_app.cawn.obi IS 'ATIDN — Object identification [obiectum]';
COMMENT ON COLUMN cross_app.cawn.lng_clv_not IS 'SPRAS — Language Key — the language for this characteristic value''s text (ties to CAWNT) [lingua clavis nota]';
COMMENT ON COLUMN cross_app.cawn.num_txt IS 'TXTNR — Number of Related Text [numerus textus]';
COMMENT ON COLUMN cross_app.cawn.vla_die IS 'DATUV — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN cross_app.cawn.sta IS 'TECHV — Technical status from [status]';
COMMENT ON COLUMN cross_app.cawn.num IS 'AENNR — Change Number [numerus]';
COMMENT ON COLUMN cross_app.cawn.idx IS 'LKENZ — Deletion Indicator [index]';
COMMENT ON COLUMN cross_app.cawn.gdo IS 'DOKAR — Document Type [genus documenti]';
COMMENT ON COLUMN cross_app.cawn.ndo IS 'DOKNR — Document number [numerus documenti]';
COMMENT ON COLUMN cross_app.cawn.doc_vrs IS 'DOKVR — Document Version [documentum versio]';
COMMENT ON COLUMN cross_app.cawn.doc IS 'DOKTL — Document Part [documentum]';
COMMENT ON COLUMN cross_app.cawn.nmr_val_hir IS 'ATZHH — Int. counter for value hierarchy [numerator valor hierarchia]';
COMMENT ON COLUMN cross_app.cawn.idx2 IS 'ATWHI — Indicator that Subordinate Values Exist [index]';
COMMENT ON COLUMN cross_app.cawn.attlv IS 'ATTLV — Tolerance from';
COMMENT ON COLUMN cross_app.cawn.attlb IS 'ATTLB — Tolerance to';
COMMENT ON COLUMN cross_app.cawn.idx3 IS 'ATPRZ — Indicator: Tolerance Shown as a Percentage [index]';
COMMENT ON COLUMN cross_app.cawn.atinc IS 'ATINC — Increment Within a Specified Interval';
COMMENT ON COLUMN cross_app.cawn.cns IS 'ATVPL — Relevant to Planning [consilium]';

CREATE TABLE IF NOT EXISTS cross_app.cdhdr (
  cli char(3),
  obi_cls_gen varchar(15),
  obi_val_clv varchar(90),
  doc_num_clv varchar(10),
  usr_nom_psn varchar(12),
  die_dmu date,
  tmp_mut time,
  tcode varchar(20),
  num varchar(12),
  num_doc_cre varchar(10),
  sgn varchar(1),
  obi_gen varchar(1),
  lng_clv char(1),
  cmp varchar(3),
  CONSTRAINT cdhdr_pk PRIMARY KEY (cli, obi_cls_gen, obi_val_clv, doc_num_clv)
);
COMMENT ON TABLE cross_app.cdhdr IS 'CDHDR — Change document header — the audit-trail record the ledger''s provenance claim depends on: who changed what business object, in which transaction, and when. Every change captured by SAP''s change-document service writes one CDHDR row per change session, with the field-level detail in CDPOS underneath it. SAP''s real CDHDR carries all its fields; this definition carries the table complete.';
COMMENT ON COLUMN cross_app.cdhdr.cli IS 'MANDANT — Client [cliens]';
COMMENT ON COLUMN cross_app.cdhdr.obi_cls_gen IS 'OBJECTCLAS — Object class — groups the business object type being audited [obiectum classis genus]';
COMMENT ON COLUMN cross_app.cdhdr.obi_val_clv IS 'OBJECTID — Object value — the key of the changed business object instance [obiectum valor clavis]';
COMMENT ON COLUMN cross_app.cdhdr.doc_num_clv IS 'CHANGENR — Document change number — the key CDPOS items join back on [documentum numerus clavis]';
COMMENT ON COLUMN cross_app.cdhdr.usr_nom_psn IS 'USERNAME — User name of the person responsible in change document [usor nomen persona]';
COMMENT ON COLUMN cross_app.cdhdr.die_dmu IS 'UDATE — Creation date of the change document [dies documentum mutationis]';
COMMENT ON COLUMN cross_app.cdhdr.tmp_mut IS 'UTIME — Time changed [tempus mutatus]';
COMMENT ON COLUMN cross_app.cdhdr.tcode IS 'TCODE — Transaction in which a change was made';
COMMENT ON COLUMN cross_app.cdhdr.num IS 'PLANCHNGNR — Planned change number [numerus]';
COMMENT ON COLUMN cross_app.cdhdr.num_doc_cre IS 'ACT_CHNGNO — Change number of the document created by this change [numerus documentum creatus]';
COMMENT ON COLUMN cross_app.cdhdr.sgn IS 'WAS_PLANND — Flag that changes were generated from planned changes [signum]';
COMMENT ON COLUMN cross_app.cdhdr.obi_gen IS 'CHANGE_IND — Application object change type (U, I, E, D) [obiectum genus]';
COMMENT ON COLUMN cross_app.cdhdr.lng_clv IS 'LANGU — Language Key [lingua clavis]';
COMMENT ON COLUMN cross_app.cdhdr.cmp IS 'VERSION — 3-Byte field [campus]';

CREATE TABLE IF NOT EXISTS cross_app.cdpos (
  cli char(3),
  obi_cls varchar(15),
  obi_val varchar(90),
  doc_num varchar(10),
  tbl_nom_mut varchar(30),
  mut_tbl_clv varchar(70),
  cmp_nom_mut varchar(30),
  gen varchar(1),
  sgn_txt varchar(1),
  uni_val varchar(3),
  uni_val2 varchar(3),
  mon_val varchar(5),
  mon_val2 varchar(5),
  mut_cmp varchar(254),
  mut_cmp2 varchar(254),
  CONSTRAINT cdpos_pk PRIMARY KEY (cli, obi_cls, obi_val, doc_num, tbl_nom_mut, mut_tbl_clv, cmp_nom_mut)
);
COMMENT ON TABLE cross_app.cdpos IS 'CDPOS — Change document items — the field-level detail under CDHDR, one row per changed field per change document: old value, new value, unit/currency context. This is where the audit trail actually shows what changed, not just that something changed. SAP''s real CDPOS carries all its fields; this definition carries the table complete.';
COMMENT ON COLUMN cross_app.cdpos.cli IS 'MANDANT — Client [cliens]';
COMMENT ON COLUMN cross_app.cdpos.obi_cls IS 'OBJECTCLAS — Object class [obiectum classis]';
COMMENT ON COLUMN cross_app.cdpos.obi_val IS 'OBJECTID — Object value [obiectum valor]';
COMMENT ON COLUMN cross_app.cdpos.doc_num IS 'CHANGENR — Document change number — joins back to CDHDR [documentum numerus]';
COMMENT ON COLUMN cross_app.cdpos.tbl_nom_mut IS 'TABNAME — Table Name — the changed table [tabula nomen mutatus]';
COMMENT ON COLUMN cross_app.cdpos.mut_tbl_clv IS 'TABKEY — Changed table record key [mutatus tabula clavis]';
COMMENT ON COLUMN cross_app.cdpos.cmp_nom_mut IS 'FNAME — Field Name — the changed field [campus nomen mutatus]';
COMMENT ON COLUMN cross_app.cdpos.gen IS 'CHNGIND — Change Type (U, I, S, D) [genus]';
COMMENT ON COLUMN cross_app.cdpos.sgn_txt IS 'TEXT_CASE — Flag: X=Text change [signum textus]';
COMMENT ON COLUMN cross_app.cdpos.uni_val IS 'UNIT_OLD — Change documents, unit referenced (old value) [unitas valor]';
COMMENT ON COLUMN cross_app.cdpos.uni_val2 IS 'UNIT_NEW — Change documents, unit referenced (new value) [unitas valor]';
COMMENT ON COLUMN cross_app.cdpos.mon_val IS 'CUKY_OLD — Change documents, referenced currency (old value) [moneta valor]';
COMMENT ON COLUMN cross_app.cdpos.mon_val2 IS 'CUKY_NEW — Change documents, referenced currency (new value) [moneta valor]';
COMMENT ON COLUMN cross_app.cdpos.mut_cmp IS 'VALUE_NEW — New contents of changed field [mutatus campus]';
COMMENT ON COLUMN cross_app.cdpos.mut_cmp2 IS 'VALUE_OLD — Old contents of changed field [mutatus campus]';

CREATE TABLE IF NOT EXISTS cross_app.dd01l (
  dmi_nom varchar(30),
  sta_obi varchar(1),
  vrs varchar(4),
  gen varchar(4),
  leng varchar(6),
  outputlen varchar(6),
  num varchar(6),
  lowercase varchar(1),
  sgn varchar(1),
  sgn_lng varchar(1),
  dmi varchar(1),
  val_tbl_tpb varchar(30),
  convexit varchar(5),
  mask varchar(20),
  masklen varchar(4),
  sgn2 varchar(1),
  cls varchar(4),
  gen2 varchar(2),
  ult_mut varchar(12),
  die_ult date,
  ult_mut2 time,
  lng char(1),
  sgn3 varchar(1),
  CONSTRAINT dd01l_pk PRIMARY KEY (dmi_nom)
);
COMMENT ON TABLE cross_app.dd01l IS 'DD01L — Domains — the ABAP Dictionary''s atomic value-type registry: for every domain, its base datatype, length, decimals, case sensitivity, sign, conversion exit, and (via VALEXI/ENTITYTAB) whether it is bound to fixed values or a value table. DD01L is where a field''s technical contract — what characters, what length, what range — is actually defined before any data element or table field inherits it. This is the metadata backbone layer: it is what lets the sovereign mirror validate itself. A crosswalk claim about a field''s permissible values or format is not something the mirror has to trust from do';
COMMENT ON COLUMN cross_app.dd01l.dmi_nom IS 'DOMNAME — Domain name [dominium nomen]';
COMMENT ON COLUMN cross_app.dd01l.sta_obi IS 'AS4LOCAL — Activation Status of a Repository Object [status obiectum]';
COMMENT ON COLUMN cross_app.dd01l.vrs IS 'AS4VERS — Version of the entry (not used) [versio]';
COMMENT ON COLUMN cross_app.dd01l.gen IS 'DATATYPE — Data Type in ABAP Dictionary [genus]';
COMMENT ON COLUMN cross_app.dd01l.leng IS 'LENG — Length (No. of Characters)';
COMMENT ON COLUMN cross_app.dd01l.outputlen IS 'OUTPUTLEN — Output Length';
COMMENT ON COLUMN cross_app.dd01l.num IS 'DECIMALS — Number of Decimal Places [numerus]';
COMMENT ON COLUMN cross_app.dd01l.lowercase IS 'LOWERCASE — Lowercase letters allowed/not allowed';
COMMENT ON COLUMN cross_app.dd01l.sgn IS 'SIGNFLAG — Flag for sign in numerical fields [signum]';
COMMENT ON COLUMN cross_app.dd01l.sgn_lng IS 'LANGFLAG — Flag for language-dependent values (not used) [signum lingua]';
COMMENT ON COLUMN cross_app.dd01l.dmi IS 'VALEXI — Existence of fixed values — set when the domain has entries in DD07L [dominium]';
COMMENT ON COLUMN cross_app.dd01l.val_tbl_tpb IS 'ENTITYTAB — Value table — the check table proposed for fields built on this domain [valor tabula tabula probationis]';
COMMENT ON COLUMN cross_app.dd01l.convexit IS 'CONVEXIT — Conversion Routine — the function-module suffix applied on input/output';
COMMENT ON COLUMN cross_app.dd01l.mask IS 'MASK — Template (not used)';
COMMENT ON COLUMN cross_app.dd01l.masklen IS 'MASKLEN — Template length (not used)';
COMMENT ON COLUMN cross_app.dd01l.sgn2 IS 'ACTFLAG — Activation flag [signum]';
COMMENT ON COLUMN cross_app.dd01l.cls IS 'APPLCLASS — Application class for DD objects (not used) [classis]';
COMMENT ON COLUMN cross_app.dd01l.gen2 IS 'AUTHCLASS — Activation type [genus]';
COMMENT ON COLUMN cross_app.dd01l.ult_mut IS 'AS4USER — Last Changed by [ultimus mutatus]';
COMMENT ON COLUMN cross_app.dd01l.die_ult IS 'AS4DATE — Date of Last Change [dies ultimus]';
COMMENT ON COLUMN cross_app.dd01l.ult_mut2 IS 'AS4TIME — Last changed at [ultimus mutatus]';
COMMENT ON COLUMN cross_app.dd01l.lng IS 'DOMMASTER — Original Language in Repository objects [lingua]';
COMMENT ON COLUMN cross_app.dd01l.sgn3 IS 'DOMGLOBAL — Flag for private DD objects (not used) [signum]';

CREATE TABLE IF NOT EXISTS cross_app.dd01t (
  dmi_nom varchar(30),
  lng_clv char(1),
  sta_obi varchar(1),
  vrs varchar(4),
  dsc varchar(60),
  CONSTRAINT dd01t_pk PRIMARY KEY (dmi_nom, lng_clv)
);
COMMENT ON TABLE cross_app.dd01t IS 'DD01T — Domain texts — the language-dependent short description for every domain in DD01L. Small text-carrier table, carried complete. It matters to the sovereign mirror for the same reason all *T tables matter here: a crosswalk claim that cites a domain by name is only as verifiable as the label the customer''s own dictionary attaches to it, and DD01T is that label, keyed by language so the mirror can validate in the customer''s working language rather than assume English.';
COMMENT ON COLUMN cross_app.dd01t.dmi_nom IS 'DOMNAME — Domain name [dominium nomen]';
COMMENT ON COLUMN cross_app.dd01t.lng_clv IS 'DDLANGUAGE — Language Key [lingua clavis]';
COMMENT ON COLUMN cross_app.dd01t.sta_obi IS 'AS4LOCAL — Activation Status of a Repository Object [status obiectum]';
COMMENT ON COLUMN cross_app.dd01t.vrs IS 'AS4VERS — Version of the entry (not used) [versio]';
COMMENT ON COLUMN cross_app.dd01t.dsc IS 'DDTEXT — Short Description of Repository Objects [descriptio]';

CREATE TABLE IF NOT EXISTS cross_app.dd02l (
  tbl_nom varchar(30),
  sta_obi varchar(1),
  vrs varchar(4),
  tbl_ctg_vis varchar(8),
  nom_tbl varchar(30),
  datmin varchar(10),
  datmax varchar(10),
  num varchar(10),
  sgn_cli varchar(1),
  sgn varchar(1),
  cmp_idx varchar(1),
  lng varchar(1),
  sgn2 varchar(1),
  cls varchar(4),
  gen varchar(2),
  ult_mut varchar(12),
  die_ult date,
  ult_mut2 time,
  lng2 char(1),
  sgn_cur_nrm varchar(1),
  trd_cls_emp varchar(1),
  reservetab varchar(4),
  sgn3 varchar(1),
  prozpuff varchar(3),
  vis_gen varchar(1),
  cur_sta_vis varchar(1),
  idx_tbl varchar(1),
  axq_tbl varchar(1),
  CONSTRAINT dd02l_pk PRIMARY KEY (tbl_nom)
);
COMMENT ON TABLE cross_app.dd02l IS 'DD02L — SAP Tables — the master registry of every table and structure in the ABAP Dictionary: its category (transparent, pooled, cluster, structure, view), delivery class, buffering behavior, and activation state. DD02L is the anchor every other DD0xL table''s TABNAME field checks against, and it is the single most load-bearing table in this lane: the sovereign mirror''s whole validation posture rests on being able to ask ''does this table actually exist in the customer''s system, and what kind of object is it'' against DD02L rather than against a crosswalk author''s assumption. SAP''s real DD02L carries rou';
COMMENT ON COLUMN cross_app.dd02l.tbl_nom IS 'TABNAME — Table Name [tabula nomen]';
COMMENT ON COLUMN cross_app.dd02l.sta_obi IS 'AS4LOCAL — Activation Status of a Repository Object [status obiectum]';
COMMENT ON COLUMN cross_app.dd02l.vrs IS 'AS4VERS — Version of the entry (not used) [versio]';
COMMENT ON COLUMN cross_app.dd02l.tbl_ctg_vis IS 'TABCLASS — Table category — e.g. TRANSP (transparent), VIEW, INTTAB (structure), CLUSTER, POOL [tabula categoria visus]';
COMMENT ON COLUMN cross_app.dd02l.nom_tbl IS 'SQLTAB — Name of an SQL table or an appended table [nomen tabula]';
COMMENT ON COLUMN cross_app.dd02l.datmin IS 'DATMIN — Minimum no. of entries';
COMMENT ON COLUMN cross_app.dd02l.datmax IS 'DATMAX — Maximum no. of entries';
COMMENT ON COLUMN cross_app.dd02l.num IS 'DATAVG — Average number of entries [numerus]';
COMMENT ON COLUMN cross_app.dd02l.sgn_cli IS 'CLIDEP — Flag indicating client-specific entries [signum cliens]';
COMMENT ON COLUMN cross_app.dd02l.sgn IS 'BUFFERED — Buffering flag [signum]';
COMMENT ON COLUMN cross_app.dd02l.cmp_idx IS 'COMPRFLAG — Field compression indicator [campus index]';
COMMENT ON COLUMN cross_app.dd02l.lng IS 'LANGDEP — Language dependency [lingua]';
COMMENT ON COLUMN cross_app.dd02l.sgn2 IS 'ACTFLAG — Activation flag [signum]';
COMMENT ON COLUMN cross_app.dd02l.cls IS 'APPLCLASS — Application class for DD objects (not used) [classis]';
COMMENT ON COLUMN cross_app.dd02l.gen IS 'AUTHCLASS — Activation type [genus]';
COMMENT ON COLUMN cross_app.dd02l.ult_mut IS 'AS4USER — Last Changed by [ultimus mutatus]';
COMMENT ON COLUMN cross_app.dd02l.die_ult IS 'AS4DATE — Date of Last Change [dies ultimus]';
COMMENT ON COLUMN cross_app.dd02l.ult_mut2 IS 'AS4TIME — Last changed at [ultimus mutatus]';
COMMENT ON COLUMN cross_app.dd02l.lng2 IS 'MASTERLANG — Original Language in Repository objects [lingua]';
COMMENT ON COLUMN cross_app.dd02l.sgn_cur_nrm IS 'MAINFLAG — Flag if Maintenance with Standard Tools is allowed [signum curatio norma]';
COMMENT ON COLUMN cross_app.dd02l.trd_cls_emp IS 'CONTFLAG — Delivery class — controls who may add/change data (SAP, customer, both) [traditio classis emptor]';
COMMENT ON COLUMN cross_app.dd02l.reservetab IS 'RESERVETAB — SDIC: Reserve for tables';
COMMENT ON COLUMN cross_app.dd02l.sgn3 IS 'GLOBALFLAG — Flag for private DD objects (not used) [signum]';
COMMENT ON COLUMN cross_app.dd02l.prozpuff IS 'PROZPUFF — Percentage for buffers';
COMMENT ON COLUMN cross_app.dd02l.vis_gen IS 'VIEWCLASS — View Type [visus genus]';
COMMENT ON COLUMN cross_app.dd02l.cur_sta_vis IS 'VIEWGRANT — Maintenance status (modification authorization) for view data [curatio status visus]';
COMMENT ON COLUMN cross_app.dd02l.idx_tbl IS 'MULTIPLEX — Indicator whether multiplexing is possible for a table [index tabula]';
COMMENT ON COLUMN cross_app.dd02l.axq_tbl IS 'SHLPEXI — Search help attachment to table exists [auxilium quaerendi tabula]';

CREATE TABLE IF NOT EXISTS cross_app.dd02t (
  tbl_nom varchar(30),
  lng_clv char(1),
  sta_obi varchar(1),
  vrs varchar(4),
  dsc varchar(60),
  CONSTRAINT dd02t_pk PRIMARY KEY (tbl_nom, lng_clv)
);
COMMENT ON TABLE cross_app.dd02t IS 'DD02T — SAP Table Texts — the language-dependent short description for every table registered in DD02L. Small text-carrier table, carried complete. Gives the mirror the human-readable label behind a TABNAME so a validated crosswalk claim can be reported back in the customer''s own terms, not just as a technical table code.';
COMMENT ON COLUMN cross_app.dd02t.tbl_nom IS 'TABNAME — Table Name [tabula nomen]';
COMMENT ON COLUMN cross_app.dd02t.lng_clv IS 'DDLANGUAGE — Language Key [lingua clavis]';
COMMENT ON COLUMN cross_app.dd02t.sta_obi IS 'AS4LOCAL — Activation Status of a Repository Object [status obiectum]';
COMMENT ON COLUMN cross_app.dd02t.vrs IS 'AS4VERS — Version of the entry (not used) [versio]';
COMMENT ON COLUMN cross_app.dd02t.dsc IS 'DDTEXT — Short Description of Repository Objects [descriptio]';

CREATE TABLE IF NOT EXISTS cross_app.dd03l (
  tbl_nom varchar(30),
  cmp_nom varchar(30),
  sta_obi varchar(1),
  vrs varchar(4),
  mnu_cmp_tbl varchar(4),
  clv_cmp_tbl varchar(1),
  sgn_cmp varchar(1),
  edt_dmi_cmp varchar(30),
  tpb_nom_cvx varchar(30),
  adminfield varchar(1),
  gen varchar(1),
  intlen varchar(6),
  tbl_rfr_cmp varchar(30),
  nom_tbl varchar(30),
  rfr_cmp_mon varchar(30),
  conrout varchar(10),
  idx_cmp varchar(1),
  gen2 varchar(4),
  leng varchar(6),
  num varchar(6),
  dmi_nom varchar(30),
  org varchar(1),
  sgn_tbl varchar(1),
  depth varchar(2),
  cmn_gen varchar(1),
  gen_obi varchar(1),
  idx_lng_cmp varchar(1),
  CONSTRAINT dd03l_pk PRIMARY KEY (tbl_nom, cmp_nom)
);
COMMENT ON TABLE cross_app.dd03l IS 'DD03L — Table Fields — the field-level definition of every table in the ABAP Dictionary: field name, position, key flag, data element, check table, ABAP datatype, length, decimals, and domain. DD03L is the single most consequential table for this mirror''s purpose: every crosswalk claim this model makes about a field''s name, type, length, or foreign-key target is, at bottom, a claim that should reconcile against a DD03L row in the customer''s own system. This is what lets the sovereign mirror validate itself rather than trust a hand-maintained spec — the field list here is not an SAP topic, it is the me';
COMMENT ON COLUMN cross_app.dd03l.tbl_nom IS 'TABNAME — Table Name [tabula nomen]';
COMMENT ON COLUMN cross_app.dd03l.cmp_nom IS 'FIELDNAME — Field Name [campus nomen]';
COMMENT ON COLUMN cross_app.dd03l.sta_obi IS 'AS4LOCAL — Activation Status of a Repository Object [status obiectum]';
COMMENT ON COLUMN cross_app.dd03l.vrs IS 'AS4VERS — Version of the entry (not used) [versio]';
COMMENT ON COLUMN cross_app.dd03l.mnu_cmp_tbl IS 'POSITION — Position of the field in the table [munus campus tabula]';
COMMENT ON COLUMN cross_app.dd03l.clv_cmp_tbl IS 'KEYFLAG — Identifies a key field of a table [clavis campus tabula]';
COMMENT ON COLUMN cross_app.dd03l.sgn_cmp IS 'MANDATORY — Flag: Field is required (not blank) [signum campus]';
COMMENT ON COLUMN cross_app.dd03l.edt_dmi_cmp IS 'ROLLNAME — Data element (semantic domain) assigned to this field [elementum datorum dominium campus]';
COMMENT ON COLUMN cross_app.dd03l.tpb_nom_cvx IS 'CHECKTABLE — Check table name of the foreign key [tabula probationis nomen clavis externa]';
COMMENT ON COLUMN cross_app.dd03l.adminfield IS 'ADMINFIELD — Nesting depth for includes';
COMMENT ON COLUMN cross_app.dd03l.gen IS 'INTTYPE — ABAP data type (C,D,N,...) [genus]';
COMMENT ON COLUMN cross_app.dd03l.intlen IS 'INTLEN — Internal Length in Bytes';
COMMENT ON COLUMN cross_app.dd03l.tbl_rfr_cmp IS 'REFTABLE — Table for reference field — used for currency/quantity fields'' unit reference [tabula referentia campus]';
COMMENT ON COLUMN cross_app.dd03l.nom_tbl IS 'PRECFIELD — Name of included table [nomen tabula]';
COMMENT ON COLUMN cross_app.dd03l.rfr_cmp_mon IS 'REFFIELD — Reference field for currency and quantity fields [referentia campus moneta]';
COMMENT ON COLUMN cross_app.dd03l.conrout IS 'CONROUT — Check or generating module for fields';
COMMENT ON COLUMN cross_app.dd03l.idx_cmp IS 'NOTNULL — Indicator that NOT NULL is forced for this field [index campus]';
COMMENT ON COLUMN cross_app.dd03l.gen2 IS 'DATATYPE — Data Type in ABAP Dictionary [genus]';
COMMENT ON COLUMN cross_app.dd03l.leng IS 'LENG — Length (No. of Characters)';
COMMENT ON COLUMN cross_app.dd03l.num IS 'DECIMALS — Number of Decimal Places [numerus]';
COMMENT ON COLUMN cross_app.dd03l.dmi_nom IS 'DOMNAME — Domain name [dominium nomen]';
COMMENT ON COLUMN cross_app.dd03l.org IS 'SHLPORIGIN — Origin of an Input Help [origo]';
COMMENT ON COLUMN cross_app.dd03l.sgn_tbl IS 'TABLETYPE — DD: Flag if it is a table [signum tabula]';
COMMENT ON COLUMN cross_app.dd03l.depth IS 'DEPTH — DD: Depth for structured types';
COMMENT ON COLUMN cross_app.dd03l.cmn_gen IS 'COMPTYPE — DD: Component Type [componens genus]';
COMMENT ON COLUMN cross_app.dd03l.gen_obi IS 'REFTYPE — Type of Object Referenced [genus obiectum]';
COMMENT ON COLUMN cross_app.dd03l.idx_lng_cmp IS 'LANGUFLAG — DD: Indicator for a Language Field [index lingua campus]';

CREATE TABLE IF NOT EXISTS cross_app.dd03t (
  tbl_nom varchar(30),
  lng_clv char(1),
  cmp_nom varchar(30),
  sta_obi varchar(1),
  dsc varchar(60),
  CONSTRAINT dd03t_pk PRIMARY KEY (tbl_nom, lng_clv, cmp_nom)
);
COMMENT ON TABLE cross_app.dd03t IS 'DD03T — Texts for fields (language dependent) — the language-dependent short description for every table field registered in DD03L. Small text-carrier table, carried complete. Lets the mirror surface a validated field-level crosswalk claim with the customer''s own field label, in the customer''s own working language, rather than a bare technical field name.';
COMMENT ON COLUMN cross_app.dd03t.tbl_nom IS 'TABNAME — Table Name [tabula nomen]';
COMMENT ON COLUMN cross_app.dd03t.lng_clv IS 'DDLANGUAGE — Language Key [lingua clavis]';
COMMENT ON COLUMN cross_app.dd03t.cmp_nom IS 'FIELDNAME — Field Name [campus nomen]';
COMMENT ON COLUMN cross_app.dd03t.sta_obi IS 'AS4LOCAL — Activation Status of a Repository Object [status obiectum]';
COMMENT ON COLUMN cross_app.dd03t.dsc IS 'DDTEXT — Short Description of Repository Objects [descriptio]';

CREATE TABLE IF NOT EXISTS cross_app.dd04l (
  edt_dmi varchar(30),
  sta_obi varchar(1),
  vrs varchar(4),
  dmi_nom_edt varchar(30),
  routputlen varchar(6),
  memoryid varchar(20),
  idx varchar(1),
  headlen varchar(2),
  cmp varchar(2),
  cmp2 varchar(2),
  cmp3 varchar(2),
  sgn varchar(1),
  cls varchar(4),
  gen varchar(2),
  ult_mut varchar(12),
  die_ult date,
  ult_mut2 time,
  lng char(1),
  reservedte varchar(4),
  sgn2 varchar(1),
  nom_axq varchar(30),
  nom_axq2 varchar(30),
  nom_edt varchar(30),
  gen2 varchar(4),
  leng varchar(6),
  num varchar(6),
  outputlen varchar(6),
  lowercase varchar(1),
  sgn3 varchar(1),
  convexit varchar(5),
  valexi varchar(1),
  val_tbl varchar(30),
  ctg_gen varchar(1),
  gen_obi varchar(1),
  CONSTRAINT dd04l_pk PRIMARY KEY (edt_dmi)
);
COMMENT ON TABLE cross_app.dd04l IS 'DD04L — Data elements — the semantic layer between a domain (DD01L, pure datatype) and a table field (DD03L, physical placement): each data element binds a domain to field labels (short/medium/long/heading text), a set/get parameter ID, and optionally a search help. DD04L is where SAP''s business meaning for a field actually lives — ''this is a Company Code'' rather than ''this is a 4-character string'' — and it is the layer the mirror uses to check that a crosswalk''s claimed business semantics for a field match what the customer''s own dictionary declares, not just that the datatypes are compatible. SAP''s ';
COMMENT ON COLUMN cross_app.dd04l.edt_dmi IS 'ROLLNAME — Data element (semantic domain) [elementum datorum dominium]';
COMMENT ON COLUMN cross_app.dd04l.sta_obi IS 'AS4LOCAL — Activation Status of a Repository Object [status obiectum]';
COMMENT ON COLUMN cross_app.dd04l.vrs IS 'AS4VERS — Version of the entry (not used) [versio]';
COMMENT ON COLUMN cross_app.dd04l.dmi_nom_edt IS 'DOMNAME — Domain name — the domain this data element is built on [dominium nomen elementum datorum]';
COMMENT ON COLUMN cross_app.dd04l.routputlen IS 'ROUTPUTLEN — Length (No. of Characters)';
COMMENT ON COLUMN cross_app.dd04l.memoryid IS 'MEMORYID — Set/Get parameter ID';
COMMENT ON COLUMN cross_app.dd04l.idx IS 'LOGFLAG — Indicator for writing change documents [index]';
COMMENT ON COLUMN cross_app.dd04l.headlen IS 'HEADLEN — Maximum length of heading';
COMMENT ON COLUMN cross_app.dd04l.cmp IS 'SCRLEN1 — Max. length for short field label [campus]';
COMMENT ON COLUMN cross_app.dd04l.cmp2 IS 'SCRLEN2 — Max. length for medium field label [campus]';
COMMENT ON COLUMN cross_app.dd04l.cmp3 IS 'SCRLEN3 — Max. length for long field label [campus]';
COMMENT ON COLUMN cross_app.dd04l.sgn IS 'ACTFLAG — Activation flag [signum]';
COMMENT ON COLUMN cross_app.dd04l.cls IS 'APPLCLASS — Application class for DD objects (not used) [classis]';
COMMENT ON COLUMN cross_app.dd04l.gen IS 'AUTHCLASS — Activation type [genus]';
COMMENT ON COLUMN cross_app.dd04l.ult_mut IS 'AS4USER — Last Changed by [ultimus mutatus]';
COMMENT ON COLUMN cross_app.dd04l.die_ult IS 'AS4DATE — Date of Last Change [dies ultimus]';
COMMENT ON COLUMN cross_app.dd04l.ult_mut2 IS 'AS4TIME — Last changed at [ultimus mutatus]';
COMMENT ON COLUMN cross_app.dd04l.lng IS 'DTELMASTER — Original Language in Repository objects [lingua]';
COMMENT ON COLUMN cross_app.dd04l.reservedte IS 'RESERVEDTE — SDIC: Reserve for data elements (not used)';
COMMENT ON COLUMN cross_app.dd04l.sgn2 IS 'DTELGLOBAL — Flag for private DD objects (not used) [signum]';
COMMENT ON COLUMN cross_app.dd04l.nom_axq IS 'SHLPNAME — Name of a Search Help [nomen auxilium quaerendi]';
COMMENT ON COLUMN cross_app.dd04l.nom_axq2 IS 'SHLPFIELD — Name of a search help parameter [nomen auxilium quaerendi]';
COMMENT ON COLUMN cross_app.dd04l.nom_edt IS 'DEFFDNAME — Default name for components using the data element [nomen elementum datorum]';
COMMENT ON COLUMN cross_app.dd04l.gen2 IS 'DATATYPE — Data Type in ABAP Dictionary [genus]';
COMMENT ON COLUMN cross_app.dd04l.leng IS 'LENG — Length (No. of Characters)';
COMMENT ON COLUMN cross_app.dd04l.num IS 'DECIMALS — Number of Decimal Places [numerus]';
COMMENT ON COLUMN cross_app.dd04l.outputlen IS 'OUTPUTLEN — Output Length';
COMMENT ON COLUMN cross_app.dd04l.lowercase IS 'LOWERCASE — Lowercase letters allowed/not allowed';
COMMENT ON COLUMN cross_app.dd04l.sgn3 IS 'SIGNFLAG — Flag for sign in numerical fields [signum]';
COMMENT ON COLUMN cross_app.dd04l.convexit IS 'CONVEXIT — Conversion Routine';
COMMENT ON COLUMN cross_app.dd04l.valexi IS 'VALEXI — Existence of fixed values';
COMMENT ON COLUMN cross_app.dd04l.val_tbl IS 'ENTITYTAB — Value table [valor tabula]';
COMMENT ON COLUMN cross_app.dd04l.ctg_gen IS 'REFKIND — Category of Dictionary Type [categoria genus]';
COMMENT ON COLUMN cross_app.dd04l.gen_obi IS 'REFTYPE — Type of Object Referenced [genus obiectum]';

CREATE TABLE IF NOT EXISTS cross_app.dd04t (
  edt_dmi varchar(30),
  lng_clv char(1),
  sta_obi varchar(1),
  vrs varchar(4),
  dsc varchar(60),
  reptext varchar(55),
  cmp varchar(10),
  cmp2 varchar(20),
  cmp3 varchar(40),
  CONSTRAINT dd04t_pk PRIMARY KEY (edt_dmi, lng_clv)
);
COMMENT ON TABLE cross_app.dd04t IS 'DD04T — Data element texts — the language-dependent short/heading/short-medium-long field labels for every data element in DD04L. Small text-carrier table, carried complete. This is the source the mirror checks when a crosswalk claims a specific business label (e.g. ''Company Code'') for a field: DD04T holds SAP''s own field-label texts, per language, so the label claim is checkable rather than assumed.';
COMMENT ON COLUMN cross_app.dd04t.edt_dmi IS 'ROLLNAME — Data element (semantic domain) [elementum datorum dominium]';
COMMENT ON COLUMN cross_app.dd04t.lng_clv IS 'DDLANGUAGE — Language Key [lingua clavis]';
COMMENT ON COLUMN cross_app.dd04t.sta_obi IS 'AS4LOCAL — Activation Status of a Repository Object [status obiectum]';
COMMENT ON COLUMN cross_app.dd04t.vrs IS 'AS4VERS — Version of the entry (not used) [versio]';
COMMENT ON COLUMN cross_app.dd04t.dsc IS 'DDTEXT — Short Description of Repository Objects [descriptio]';
COMMENT ON COLUMN cross_app.dd04t.reptext IS 'REPTEXT — Heading';
COMMENT ON COLUMN cross_app.dd04t.cmp IS 'SCRTEXT_S — Short Field Label [campus]';
COMMENT ON COLUMN cross_app.dd04t.cmp2 IS 'SCRTEXT_M — Medium Field Label [campus]';
COMMENT ON COLUMN cross_app.dd04t.cmp3 IS 'SCRTEXT_L — Long Field Label [campus]';

CREATE TABLE IF NOT EXISTS cross_app.dd07l (
  dmi_nom varchar(30),
  sta_obi varchar(1),
  dmi_val_clv varchar(4),
  vrs varchar(4),
  val varchar(10),
  domvalue_h varchar(10),
  val2 varchar(1),
  CONSTRAINT dd07l_pk PRIMARY KEY (dmi_nom, sta_obi, dmi_val_clv)
);
COMMENT ON TABLE cross_app.dd07l IS 'DD07L — Values for the domains — the fixed-value list (single values and value ranges) attached to a domain in DD01L when VALEXI is set. This is the table the mirror checks a crosswalk''s claimed enumeration against: if a crosswalk asserts that a status field only ever takes certain codes, DD07L is where that claim gets settled against the customer''s own configured domain values rather than an assumption baked into the crosswalk. Table carried complete.';
COMMENT ON COLUMN cross_app.dd07l.dmi_nom IS 'DOMNAME — Domain name [dominium nomen]';
COMMENT ON COLUMN cross_app.dd07l.sta_obi IS 'AS4LOCAL — Activation Status of a Repository Object [status obiectum]';
COMMENT ON COLUMN cross_app.dd07l.dmi_val_clv IS 'VALPOS — Domain value key [dominium valor clavis]';
COMMENT ON COLUMN cross_app.dd07l.vrs IS 'AS4VERS — Version of the entry (not used) [versio]';
COMMENT ON COLUMN cross_app.dd07l.val IS 'DOMVALUE_L — Values for Domains: Single Value / Upper Limit [valor]';
COMMENT ON COLUMN cross_app.dd07l.domvalue_h IS 'DOMVALUE_H — Values for domains, upper limit';
COMMENT ON COLUMN cross_app.dd07l.val2 IS 'APPVAL — DD: Defines whether value of appender belongs to append [valor]';

CREATE TABLE IF NOT EXISTS cross_app.dd08l (
  tbl_nom varchar(30),
  nom_cmp varchar(30),
  sta_obi varchar(1),
  vrs varchar(4),
  tpb_nom_cvx varchar(30),
  frkart varchar(4),
  clasfield varchar(30),
  cmp_rlt_gen varchar(10),
  rlt_fns varchar(2),
  rlt varchar(2),
  checkflag varchar(1),
  are_cls varchar(20),
  num_cvx varchar(3),
  sgn_cvx varchar(1),
  CONSTRAINT dd08l_pk PRIMARY KEY (tbl_nom, nom_cmp, sta_obi)
);
COMMENT ON TABLE cross_app.dd08l IS 'DD08L — Relationship definitions — the ABAP Dictionary''s foreign-key registry: for every checked field on every table, which check table it points to, the cardinality of that relationship, and the error message raised on violation. DD08L is what turns a crosswalk''s asserted foreign-key relationship (''this field points to that check table'') into a checkable fact: the mirror can confirm the relationship actually exists in the customer''s own dictionary, with the customer''s own cardinality and check semantics, rather than accept it as declared. Table carried complete — this is exactly the kind of small, h';
COMMENT ON COLUMN cross_app.dd08l.tbl_nom IS 'TABNAME — Table Name [tabula nomen]';
COMMENT ON COLUMN cross_app.dd08l.nom_cmp IS 'FIELDNAME — Name of the field to be checked [nomen campus]';
COMMENT ON COLUMN cross_app.dd08l.sta_obi IS 'AS4LOCAL — Activation Status of a Repository Object [status obiectum]';
COMMENT ON COLUMN cross_app.dd08l.vrs IS 'AS4VERS — Version of the entry (not used) [versio]';
COMMENT ON COLUMN cross_app.dd08l.tpb_nom_cvx IS 'CHECKTABLE — Check table name of the foreign key [tabula probationis nomen clavis externa]';
COMMENT ON COLUMN cross_app.dd08l.frkart IS 'FRKART — Dependency factor for semantic foreign keys';
COMMENT ON COLUMN cross_app.dd08l.clasfield IS 'CLASFIELD — Internal classification of foreign keys: partial, etc.';
COMMENT ON COLUMN cross_app.dd08l.cmp_rlt_gen IS 'CLASVALUE — Values for classification field of CLAS relationship type [campus relatio genus]';
COMMENT ON COLUMN cross_app.dd08l.rlt_fns IS 'CARDLEFT — Cardinality of a relationship (left/source side) [relatio fons]';
COMMENT ON COLUMN cross_app.dd08l.rlt IS 'CARD — Cardinality of a relationship [relatio]';
COMMENT ON COLUMN cross_app.dd08l.checkflag IS 'CHECKFLAG — No check in Screen Painter';
COMMENT ON COLUMN cross_app.dd08l.are_cls IS 'ARBGB — Application Area — message class for the FK violation message [area classis]';
COMMENT ON COLUMN cross_app.dd08l.num_cvx IS 'MSGNR — Message number — the error message raised on foreign-key violation [numerus clavis externa]';
COMMENT ON COLUMN cross_app.dd08l.sgn_cvx IS 'NOINHERIT — DD: Flag whether inheritance is switched off for the foreign key [signum clavis externa]';

CREATE TABLE IF NOT EXISTS cross_app.dd09l (
  tbl_nom varchar(30),
  sta_obi varchar(1),
  vrs varchar(4),
  mgn_ctg varchar(2),
  cls varchar(5),
  gen_idx varchar(1),
  clv varchar(3),
  protokoll varchar(1),
  sgn_grp varchar(1),
  ult_mut varchar(12),
  die_ult date,
  ult_mut2 time,
  tbl varchar(1),
  cmp varchar(1),
  sgn_tbl varchar(1),
  sgn varchar(1),
  idx varchar(1),
  javaonly varchar(1),
  roworcolst varchar(1),
  CONSTRAINT dd09l_pk PRIMARY KEY (tbl_nom, sta_obi)
);
COMMENT ON TABLE cross_app.dd09l IS 'DD09L — Technical settings of tables — the physical/storage configuration for each table registered in DD02L: data class, size category, buffering type, generic-buffer key-field count, change logging, and row/column store designation. This is not semantic metadata like DD01L/DD03L/DD04L; it is operational metadata the mirror uses to sanity-check crosswalk assumptions about a table''s runtime behavior — e.g. whether a table is buffered (and therefore may show stale reads to certain report paths) or whether change logging is active (and therefore audit trail claims are checkable). Table carried complete.';
COMMENT ON COLUMN cross_app.dd09l.tbl_nom IS 'TABNAME — Table Name [tabula nomen]';
COMMENT ON COLUMN cross_app.dd09l.sta_obi IS 'AS4LOCAL — Activation Status of a Repository Object [status obiectum]';
COMMENT ON COLUMN cross_app.dd09l.vrs IS 'AS4VERS — Version of the entry (not used) [versio]';
COMMENT ON COLUMN cross_app.dd09l.mgn_ctg IS 'TABKAT — Size category [magnitudo categoria]';
COMMENT ON COLUMN cross_app.dd09l.cls IS 'TABART — Data class in technical settings [classis]';
COMMENT ON COLUMN cross_app.dd09l.gen_idx IS 'PUFFERUNG — Buffering type indicator [genus index]';
COMMENT ON COLUMN cross_app.dd09l.clv IS 'SCHFELDANZ — No. of key fields for generic buffers [clavis]';
COMMENT ON COLUMN cross_app.dd09l.protokoll IS 'PROTOKOLL — Log Data Changes';
COMMENT ON COLUMN cross_app.dd09l.sgn_grp IS 'SPEICHPUFF — Flag for the storage type in the buffer [signum genus repositionis]';
COMMENT ON COLUMN cross_app.dd09l.ult_mut IS 'AS4USER — Last Changed by [ultimus mutatus]';
COMMENT ON COLUMN cross_app.dd09l.die_ult IS 'AS4DATE — Date of Last Change [dies ultimus]';
COMMENT ON COLUMN cross_app.dd09l.ult_mut2 IS 'AS4TIME — Last changed at [ultimus mutatus]';
COMMENT ON COLUMN cross_app.dd09l.tbl IS 'TRANSPFLAG — Convert to transparent table or maintain transparency [tabula]';
COMMENT ON COLUMN cross_app.dd09l.cmp IS 'RESERVE — Reserved field in the ABAP Dictionary [campus]';
COMMENT ON COLUMN cross_app.dd09l.sgn_tbl IS 'UEBERSETZ — Flag whether table is relevant for translation [signum tabula]';
COMMENT ON COLUMN cross_app.dd09l.sgn IS 'ACTFLAG — Activation flag [signum]';
COMMENT ON COLUMN cross_app.dd09l.idx IS 'BUFALLOW — Indicator for buffering allowed/not allowed [index]';
COMMENT ON COLUMN cross_app.dd09l.javaonly IS 'JAVAONLY — Write access only with JAVA';
COMMENT ON COLUMN cross_app.dd09l.roworcolst IS 'ROWORCOLST — For distinction between Row or Column Store';

CREATE TABLE IF NOT EXISTS cross_app.dd12l (
  tbl_nom varchar(30),
  idx_tbl varchar(3),
  sta_obi varchar(1),
  vrs varchar(4),
  gen varchar(2),
  sgn varchar(1),
  ult_mut varchar(12),
  die_ult date,
  ult_mut2 time,
  sgn2 varchar(1),
  idx varchar(18),
  sta_idx varchar(1),
  dbinclexcl varchar(1),
  dbsyssel1 varchar(3),
  dbsyssel2 varchar(3),
  dbsyssel3 varchar(3),
  dbsyssel4 varchar(3),
  sgn_idx varchar(1),
  txt_idx varchar(1),
  CONSTRAINT dd12l_pk PRIMARY KEY (tbl_nom, idx_tbl, sta_obi)
);
COMMENT ON TABLE cross_app.dd12l IS 'DD12L — Secondary indexes, header — the registry of every secondary (non-primary) database index defined on a table, including uniqueness and per-database-system inclusion/exclusion. This matters to the sovereign mirror because a crosswalk''s claim that a field or field combination is uniquely identifying, or that a lookup is index-supported, is checkable against DD12L rather than inferred from query behavior — the mirror can confirm the customer''s own system actually defines that index instead of trusting a performance assumption. Table carried complete.';
COMMENT ON COLUMN cross_app.dd12l.tbl_nom IS 'SQLTAB — Table Name [tabula nomen]';
COMMENT ON COLUMN cross_app.dd12l.idx_tbl IS 'INDEXNAME — Unique Index ID in a Table [index tabula]';
COMMENT ON COLUMN cross_app.dd12l.sta_obi IS 'AS4LOCAL — Activation Status of a Repository Object [status obiectum]';
COMMENT ON COLUMN cross_app.dd12l.vrs IS 'AS4VERS — Version of the entry (not used) [versio]';
COMMENT ON COLUMN cross_app.dd12l.gen IS 'AUTHCLASS — Activation type [genus]';
COMMENT ON COLUMN cross_app.dd12l.sgn IS 'UNIQUEFLAG — Flag for UNIQUE indexes [signum]';
COMMENT ON COLUMN cross_app.dd12l.ult_mut IS 'AS4USER — Last Changed by [ultimus mutatus]';
COMMENT ON COLUMN cross_app.dd12l.die_ult IS 'AS4DATE — Date of Last Change [dies ultimus]';
COMMENT ON COLUMN cross_app.dd12l.ult_mut2 IS 'AS4TIME — Last changed at [ultimus mutatus]';
COMMENT ON COLUMN cross_app.dd12l.sgn2 IS 'ACTFLAG — Activation flag [signum]';
COMMENT ON COLUMN cross_app.dd12l.idx IS 'DBINDEX — Database index [index]';
COMMENT ON COLUMN cross_app.dd12l.sta_idx IS 'DBSTATE — Status of index on the database [status index]';
COMMENT ON COLUMN cross_app.dd12l.dbinclexcl IS 'DBINCLEXCL — List of DB systems used as list of inclusions/exclusions';
COMMENT ON COLUMN cross_app.dd12l.dbsyssel1 IS 'DBSYSSEL1 — Choose a database system for DB-specific indexes';
COMMENT ON COLUMN cross_app.dd12l.dbsyssel2 IS 'DBSYSSEL2 — Choose a database system for DB-specific indexes';
COMMENT ON COLUMN cross_app.dd12l.dbsyssel3 IS 'DBSYSSEL3 — Choose a database system for DB-specific indexes';
COMMENT ON COLUMN cross_app.dd12l.dbsyssel4 IS 'DBSYSSEL4 — Choose a database system for DB-specific indexes';
COMMENT ON COLUMN cross_app.dd12l.sgn_idx IS 'ISEXTIND — DD: Flag if index is extension index [signum index]';
COMMENT ON COLUMN cross_app.dd12l.txt_idx IS 'FULL_TEXT — DD: Full Text Index [textus index]';

CREATE TABLE IF NOT EXISTS cross_app.dd25l (
  nom_tbl_vis varchar(30),
  sta_obi varchar(1),
  vrs varchar(4),
  gen_vis_obi varchar(1),
  cls varchar(4),
  gen varchar(2),
  sgn varchar(1),
  tbl_vis_obx varchar(30),
  ult_mut varchar(12),
  die_ult date,
  ult_mut2 time,
  vis_gen varchar(1),
  sgn2 varchar(1),
  lng char(1),
  trd_cls varchar(1),
  cur_sta_vis varchar(1),
  sgn_cur_nrm varchar(1),
  lcn_cur_clv varchar(1),
  nom_vis varchar(250),
  CONSTRAINT dd25l_pk PRIMARY KEY (nom_tbl_vis)
);
COMMENT ON TABLE cross_app.dd25l IS 'DD25L — Aggregate Header (Views, MC Objects, Lock Objects) — the header registry for database views, maintenance/help views, matchcode objects, and lock objects: view name, aggregate type, view class, root table, and maintenance authorization. Together with DD08L and DD12L this is part of the mirror''s structural-truth layer: when a crosswalk claims that a reporting field actually comes from a view joining several base tables, DD25L is where that view''s existence, type, and root table are checkable rather than assumed. SAP''s real DD25L carries close to 30 fields including several housekeeping/authoriza';
COMMENT ON COLUMN cross_app.dd25l.nom_tbl_vis IS 'VIEWNAME — Name of SAP table view [nomen tabula visus]';
COMMENT ON COLUMN cross_app.dd25l.sta_obi IS 'AS4LOCAL — Activation Status of a Repository Object [status obiectum]';
COMMENT ON COLUMN cross_app.dd25l.vrs IS 'AS4VERS — Version of the entry (not used) [versio]';
COMMENT ON COLUMN cross_app.dd25l.gen_vis_obi IS 'AGGTYPE — Aggregate Type — distinguishes database view, help view, matchcode object, lock object [genus visus obiectum]';
COMMENT ON COLUMN cross_app.dd25l.cls IS 'APPLCLASS — Application class for DD objects (not used) [classis]';
COMMENT ON COLUMN cross_app.dd25l.gen IS 'AUTHCLASS — Activation type [genus]';
COMMENT ON COLUMN cross_app.dd25l.sgn IS 'READONLY — Read-Only Flag for Views (old) [signum]';
COMMENT ON COLUMN cross_app.dd25l.tbl_vis_obx IS 'ROOTTAB — Primary table of an aggregate — the base table the view/matchcode/lock object is built on [tabula visus obex]';
COMMENT ON COLUMN cross_app.dd25l.ult_mut IS 'AS4USER — Last Changed by [ultimus mutatus]';
COMMENT ON COLUMN cross_app.dd25l.die_ult IS 'AS4DATE — Date of Last Change [dies ultimus]';
COMMENT ON COLUMN cross_app.dd25l.ult_mut2 IS 'AS4TIME — Last changed at [ultimus mutatus]';
COMMENT ON COLUMN cross_app.dd25l.vis_gen IS 'VIEWCLASS — View Type [visus genus]';
COMMENT ON COLUMN cross_app.dd25l.sgn2 IS 'ACTFLAG — Activation flag [signum]';
COMMENT ON COLUMN cross_app.dd25l.lng IS 'MASTERLANG — Original Language in Repository objects [lingua]';
COMMENT ON COLUMN cross_app.dd25l.trd_cls IS 'CUSTOMAUTH — Delivery class [traditio classis]';
COMMENT ON COLUMN cross_app.dd25l.cur_sta_vis IS 'VIEWGRANT — Maintenance status (modification authorization) for view data [curatio status visus]';
COMMENT ON COLUMN cross_app.dd25l.sgn_cur_nrm IS 'GLOBALFLAG — Flag if Maintenance with Standard Tools is allowed [signum curatio norma]';
COMMENT ON COLUMN cross_app.dd25l.lcn_cur_clv IS 'MANKEY — Permit manual maintenance of key attribute [licentia curatio clavis]';
COMMENT ON COLUMN cross_app.dd25l.nom_vis IS 'DBREFNAME — DD: Name of View on Database [nomen visus]';

CREATE TABLE IF NOT EXISTS cross_app.dd30l (
  nom_axq varchar(30),
  sta_obi varchar(1),
  sgn_axq varchar(1),
  elemexi varchar(1),
  sgn_axq2 varchar(1),
  sgn_axq_cmp varchar(1),
  axq_tbl_vis varchar(30),
  ctg_axq varchar(1),
  txt_tbl varchar(30),
  axq varchar(30),
  clv_axq varchar(1),
  gen varchar(1),
  sgn varchar(1),
  ult_mut varchar(12),
  die_ult date,
  ult_mut2 time,
  autosuggest varchar(1),
  txt varchar(1),
  val_txt numeric(2,1),
  CONSTRAINT dd30l_pk PRIMARY KEY (nom_axq)
);
COMMENT ON TABLE cross_app.dd30l IS 'DD30L — Search helps — the header registry for elementary and collective search helps (F4 value-help definitions): selection method, selection method type, exit module, hotkey, and dialog behavior. Search helps are frequently where a crosswalk''s implicit business rule about ''what values are valid here'' is actually enforced at data-entry time in the source system, so DD30L lets the mirror check whether a claimed value-help constraint genuinely exists in the customer''s dictionary, and what selection method actually backs it, rather than inferring intent from the field''s domain alone. SAP''s real DD30L ca';
COMMENT ON COLUMN cross_app.dd30l.nom_axq IS 'SHLPNAME — Name of a Search Help [nomen auxilium quaerendi]';
COMMENT ON COLUMN cross_app.dd30l.sta_obi IS 'AS4LOCAL — Activation Status of a Repository Object [status obiectum]';
COMMENT ON COLUMN cross_app.dd30l.sgn_axq IS 'ISSIMPLE — Flag if a search help is an elementary search help [signum auxilium quaerendi]';
COMMENT ON COLUMN cross_app.dd30l.elemexi IS 'ELEMEXI — Existence of included search helps';
COMMENT ON COLUMN cross_app.dd30l.sgn_axq2 IS 'NOFIELDS — Flag if a search help has fields [signum auxilium quaerendi]';
COMMENT ON COLUMN cross_app.dd30l.sgn_axq_cmp IS 'ATTACHEXI — Flag if search help field assignment exists for search help [signum auxilium quaerendi campus]';
COMMENT ON COLUMN cross_app.dd30l.axq_tbl_vis IS 'SELMETHOD — Selection method of an elementary search help — the table or view the help reads from [auxilium quaerendi tabula visus]';
COMMENT ON COLUMN cross_app.dd30l.ctg_axq IS 'SELMTYPE — Category of selection method of an elementary search help [categoria auxilium quaerendi]';
COMMENT ON COLUMN cross_app.dd30l.txt_tbl IS 'TEXTTAB — Text table for selection method [textus tabula]';
COMMENT ON COLUMN cross_app.dd30l.axq IS 'SELMEXIT — Search help exit — the function module invoked at runtime [auxilium quaerendi]';
COMMENT ON COLUMN cross_app.dd30l.clv_axq IS 'HOTKEY — Hot key for a search help [clavis auxilium quaerendi]';
COMMENT ON COLUMN cross_app.dd30l.gen IS 'DIALOGTYPE — Dialog type [genus]';
COMMENT ON COLUMN cross_app.dd30l.sgn IS 'ACTFLAG — Activation flag [signum]';
COMMENT ON COLUMN cross_app.dd30l.ult_mut IS 'AS4USER — Last Changed by [ultimus mutatus]';
COMMENT ON COLUMN cross_app.dd30l.die_ult IS 'AS4DATE — Date of Last Change [dies ultimus]';
COMMENT ON COLUMN cross_app.dd30l.ult_mut2 IS 'AS4TIME — Last changed at [ultimus mutatus]';
COMMENT ON COLUMN cross_app.dd30l.autosuggest IS 'AUTOSUGGEST — Proposal Search for Input Fields';
COMMENT ON COLUMN cross_app.dd30l.txt IS 'FUZZY_SEARCH — Full Text Fuzzy Search [textus]';
COMMENT ON COLUMN cross_app.dd30l.val_txt IS 'FUZZY_SIMILARITY — Accuracy Value for Error-Tolerant Full Text Search [valor textus]';

CREATE TABLE IF NOT EXISTS cross_app.dd40l (
  nom_tbl_gen varchar(30),
  sta_obi varchar(1),
  obi varchar(4),
  nom_gen_tbl varchar(30),
  ctg_gen varchar(1),
  gen varchar(4),
  leng varchar(6),
  num varchar(6),
  tbl varchar(1),
  clv_tbl varchar(1),
  clv_ctg_tbl varchar(1),
  num_clv_tbl varchar(4),
  tbl_gen varchar(1),
  typelen varchar(6),
  ult_mut varchar(12),
  die_ult date,
  ult_mut2 time,
  ctg_tbl_gen varchar(1),
  gen2 varchar(30),
  gen_obi varchar(1),
  num_tbl varchar(5),
  obi2 varchar(1),
  clv_tbl_gen varchar(30),
  tbl_gen2 varchar(1),
  CONSTRAINT dd40l_pk PRIMARY KEY (nom_tbl_gen)
);
COMMENT ON TABLE cross_app.dd40l IS 'DD40L — Table Types (internal tables defined in the ABAP Dictionary) — the DD''s table-type header registry: row type, row kind, key definition and category, generic-type flag, and access mode for internal-table types, completing the dictionary layer already defined here (DD01L through DD30L). Client-independent, like the rest of the DD0xL/DD1xL/DD2xL/DD3xL family.';
COMMENT ON COLUMN cross_app.dd40l.nom_tbl_gen IS 'TYPENAME — Name of table type [nomen tabula genus]';
COMMENT ON COLUMN cross_app.dd40l.sta_obi IS 'AS4LOCAL — Activation Status of a Repository Object [status obiectum]';
COMMENT ON COLUMN cross_app.dd40l.obi IS 'ACTFLAG — Actions to be executed for a dependent DD object [obiectum]';
COMMENT ON COLUMN cross_app.dd40l.nom_gen_tbl IS 'ROWTYPE — Name of row type for table types [nomen genus tabula]';
COMMENT ON COLUMN cross_app.dd40l.ctg_gen IS 'ROWKIND — Category of Dictionary Type [categoria genus]';
COMMENT ON COLUMN cross_app.dd40l.gen IS 'DATATYPE — Data Type in ABAP Dictionary [genus]';
COMMENT ON COLUMN cross_app.dd40l.leng IS 'LENG — Length (No. of Characters)';
COMMENT ON COLUMN cross_app.dd40l.num IS 'DECIMALS — Number of Decimal Places [numerus]';
COMMENT ON COLUMN cross_app.dd40l.tbl IS 'ACCESSMODE — Access modes for table types [tabula]';
COMMENT ON COLUMN cross_app.dd40l.clv_tbl IS 'KEYDEF — Key definition for table types [clavis tabula]';
COMMENT ON COLUMN cross_app.dd40l.clv_ctg_tbl IS 'KEYKIND — Key category for table types [clavis categoria tabula]';
COMMENT ON COLUMN cross_app.dd40l.num_clv_tbl IS 'KEYFDCOUNT — Number of key fields of a table type [numerus clavis tabula]';
COMMENT ON COLUMN cross_app.dd40l.tbl_gen IS 'GENERIC — Generic table type [tabula genus]';
COMMENT ON COLUMN cross_app.dd40l.typelen IS 'TYPELEN — Length (No. of Characters)';
COMMENT ON COLUMN cross_app.dd40l.ult_mut IS 'AS4USER — Last Changed by [ultimus mutatus]';
COMMENT ON COLUMN cross_app.dd40l.die_ult IS 'AS4DATE — Date of Last Change [dies ultimus]';
COMMENT ON COLUMN cross_app.dd40l.ult_mut2 IS 'AS4TIME — Last changed at [ultimus mutatus]';
COMMENT ON COLUMN cross_app.dd40l.ctg_tbl_gen IS 'TTYPKIND — Category of table type (range or general table type) [categoria tabula genus]';
COMMENT ON COLUMN cross_app.dd40l.gen2 IS 'RANGE_CTYP — Elem. type of LOW and HIGH components of a Ranges type [genus]';
COMMENT ON COLUMN cross_app.dd40l.gen_obi IS 'REFTYPE — Type of Object Referenced [genus obiectum]';
COMMENT ON COLUMN cross_app.dd40l.num_tbl IS 'OCCURS — Initial Line Number for Table Types [numerus tabula]';
COMMENT ON COLUMN cross_app.dd40l.obi2 IS 'PROXYTYPE — DD: Is a generated proxy object [obiectum]';
COMMENT ON COLUMN cross_app.dd40l.clv_tbl_gen IS 'ALIAS — Alias for Primary Key of a Table Type (Optional) [clavis tabula genus]';
COMMENT ON COLUMN cross_app.dd40l.tbl_gen2 IS 'FURTHERSECKEY — Additional Secondary Keys of a Table Type [tabula genus]';

CREATE TABLE IF NOT EXISTS cross_app.jest (
  cli char(3),
  obi_num_clv varchar(22),
  obi_sta_clv varchar(5),
  idx_sta varchar(1),
  num varchar(3),
  CONSTRAINT jest_pk PRIMARY KEY (cli, obi_num_clv, obi_sta_clv)
);
COMMENT ON TABLE cross_app.jest IS 'JEST — Individual Object Status — the active/inactive system and user status assignments for a general status-management object (keyed by OBJNR, the same object-number key used across PM/PP/QM order and notification headers). One row per status per object; TJ02 supplies the system-status text, TJ03 the object-type metadata, and JSTO carries the status-profile assignment per object. SAP''s real JEST carries all its fields; this definition carries the table complete.';
COMMENT ON COLUMN cross_app.jest.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN cross_app.jest.obi_num_clv IS 'OBJNR — Object number — the general object-number key shared with JSTO and order/notification headers across modules [obiectum numerus clavis]';
COMMENT ON COLUMN cross_app.jest.obi_sta_clv IS 'STAT — Object status — key into TJ02 (system status) or TJ30 (user status) [obiectum status clavis]';
COMMENT ON COLUMN cross_app.jest.idx_sta IS 'INACT — Indicator: Status Is Inactive [index status]';
COMMENT ON COLUMN cross_app.jest.num IS 'CHGNR — Change number [numerus]';

CREATE TABLE IF NOT EXISTS cross_app.jsto (
  cli char(3),
  obi_num_clv varchar(22),
  obi_ctg varchar(3),
  sta varchar(8),
  idx varchar(1),
  num varchar(3),
  CONSTRAINT jsto_pk PRIMARY KEY (cli, obi_num_clv)
);
COMMENT ON TABLE cross_app.jsto IS 'JSTO — Status object information — the header record linking a general object number (OBJNR) to its object category (TJ03) and status profile (TJ20), and flagging whether change documents are active for its status transitions. JEST holds the individual status flags for the same OBJNR; JSTO is the one-row-per-object anchor above it. SAP''s real JSTO carries all its fields; this definition carries the table complete.';
COMMENT ON COLUMN cross_app.jsto.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN cross_app.jsto.obi_num_clv IS 'OBJNR — Object number — shared key with JEST [obiectum numerus clavis]';
COMMENT ON COLUMN cross_app.jsto.obi_ctg IS 'OBTYP — Object Category — links to TJ03 [obiectum categoria]';
COMMENT ON COLUMN cross_app.jsto.sta IS 'STSMA — Status Profile [status]';
COMMENT ON COLUMN cross_app.jsto.idx IS 'CHGKZ — Indicator: Change documents are active [index]';
COMMENT ON COLUMN cross_app.jsto.num IS 'CHGNR — Change number [numerus]';

CREATE TABLE IF NOT EXISTS cross_app.klah (
  cli char(3),
  cls_num_clv varchar(10),
  cls_gen varchar(3),
  cls_num varchar(18),
  cls_sta varchar(1),
  cls_cts varchar(10),
  cts varchar(3),
  cts2 varchar(3),
  nom_psn_cre varchar(12),
  die_tbl_cre date,
  nom_psn_mut varchar(12),
  mut date,
  vla_die date,
  vld_die date,
  num varchar(5),
  ndo varchar(25),
  gdo varchar(3),
  doc varchar(3),
  doc_vrs varchar(2),
  dvs varchar(2),
  tbl_cls_not varchar(20),
  men varchar(3),
  cls varchar(1),
  CONSTRAINT klah_pk PRIMARY KEY (cli, cls_num_clv)
);
COMMENT ON TABLE cross_app.klah IS 'KLAH — Class Header Data — the class master of SAP''s classification system, the extension mechanism SAP itself sanctions for attaching arbitrary characteristics (CABN/CAWN) to any object without altering the object''s own standard fields. This matters directly for this model: ESG attributes and interaction-record metadata that don''t belong on a standard master table are intended to attach here, at the classification edge, rather than through custom fields bolted onto core tables. KLAH holds one row per class (CLASS/CLINT), its type (KLART, via TCLA), status (STATU, via TCLU), and characteristics-table';
COMMENT ON COLUMN cross_app.klah.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN cross_app.klah.cls_num_clv IS 'CLINT — Internal Class Number — the technical key AUSP and CABN reference [classis numerus clavis]';
COMMENT ON COLUMN cross_app.klah.cls_gen IS 'KLART — Class Type [classis genus]';
COMMENT ON COLUMN cross_app.klah.cls_num IS 'CLASS — Class number — the external, human-visible class identifier [classis numerus]';
COMMENT ON COLUMN cross_app.klah.cls_sta IS 'STATU — Class status [classis status]';
COMMENT ON COLUMN cross_app.klah.cls_cts IS 'KLAGR — Class Group [classis coetus]';
COMMENT ON COLUMN cross_app.klah.cts IS 'BGRSE — Authorization group for finding objects [coetus]';
COMMENT ON COLUMN cross_app.klah.cts2 IS 'BGRKL — Classification authorization group [coetus]';
COMMENT ON COLUMN cross_app.klah.nom_psn_cre IS 'ANAME — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN cross_app.klah.die_tbl_cre IS 'ADATU — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN cross_app.klah.nom_psn_mut IS 'VNAME — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN cross_app.klah.mut IS 'VDATU — Changed On [mutatus]';
COMMENT ON COLUMN cross_app.klah.vla_die IS 'VONDT — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN cross_app.klah.vld_die IS 'BISDT — Valid-to date [validus ad dies]';
COMMENT ON COLUMN cross_app.klah.num IS 'ANZUO — Number of Assignments [numerus]';
COMMENT ON COLUMN cross_app.klah.ndo IS 'DOKNR — Document number [numerus documenti]';
COMMENT ON COLUMN cross_app.klah.gdo IS 'DOKAR — Document Type [genus documenti]';
COMMENT ON COLUMN cross_app.klah.doc IS 'DOKTL — Document Part [documentum]';
COMMENT ON COLUMN cross_app.klah.doc_vrs IS 'DOKVR — Document Version [documentum versio]';
COMMENT ON COLUMN cross_app.klah.dvs IS 'SPART — Division [divisio]';
COMMENT ON COLUMN cross_app.klah.tbl_cls_not IS 'LEIST — Characteristics table — the table holding the class''s characteristic assignments [tabula classis nota]';
COMMENT ON COLUMN cross_app.klah.men IS 'MEINS — Base Unit of Measure [mensura]';
COMMENT ON COLUMN cross_app.klah.cls IS 'LOCLA — Local class [classis]';

CREATE TABLE IF NOT EXISTS cross_app.onr00 (
  cli char(3),
  obi_num varchar(22),
  CONSTRAINT onr00_pk PRIMARY KEY (cli, obi_num)
);
COMMENT ON TABLE cross_app.onr00 IS 'ONR00 — General Object Number — the number-range object that issues OBJNR values consumed by CO objects (AUFK-OBJNR, COSS/COSP-OBJNR) to tie a cost object into the Controlling object-number namespace. Referenced heavily by the CO tables already defined in this repository.';
COMMENT ON COLUMN cross_app.onr00.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN cross_app.onr00.obi_num IS 'OBJNR — Object number [obiectum numerus]';

CREATE TABLE IF NOT EXISTS cross_app.t000 (
  cli char(3),
  cli_nom varchar(25),
  urb varchar(25),
  nrm_mon_cli varchar(5),
  dml varchar(10),
  cli_prd varchar(1),
  cli2 varchar(1),
  cli_obi varchar(1),
  idx_cli varchar(1),
  ccnocascad varchar(1),
  cli3 varchar(1),
  ccorigcont varchar(1),
  ccimaildis varchar(1),
  obx_cli varchar(1),
  nom_psn_mut varchar(12),
  die_ult date,
  logsys varchar(10),
  CONSTRAINT t000_pk PRIMARY KEY (cli)
);
COMMENT ON TABLE cross_app.t000 IS 'T000 — Clients — the root of the SAP client hierarchy (MANDT) that every table in this repository keys on as its first field. One row per client (production, test, sandbox).';
COMMENT ON COLUMN cross_app.t000.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN cross_app.t000.cli_nom IS 'MTEXT — Client Name [cliens nomen]';
COMMENT ON COLUMN cross_app.t000.urb IS 'ORT01 — City [urbs]';
COMMENT ON COLUMN cross_app.t000.nrm_mon_cli IS 'MWAER — Standard Currency Throughout Client [norma moneta cliens]';
COMMENT ON COLUMN cross_app.t000.dml IS 'ADRNR — Address (business address services) [domicilium]';
COMMENT ON COLUMN cross_app.t000.cli_prd IS 'CCCATEGORY — Role of client (production, test, ...) [cliens productio]';
COMMENT ON COLUMN cross_app.t000.cli2 IS 'CCCORACTIV — Change and transport for client-specific objects [cliens]';
COMMENT ON COLUMN cross_app.t000.cli_obi IS 'CCNOCLIIND — Client-independent object changes [cliens obiectum]';
COMMENT ON COLUMN cross_app.t000.idx_cli IS 'CCCOPYLOCK — Indicator: Client Copy or Comparison Is Running [index cliens]';
COMMENT ON COLUMN cross_app.t000.ccnocascad IS 'CCNOCASCAD — Protection against SAP upgrade / cascading changes';
COMMENT ON COLUMN cross_app.t000.cli3 IS 'CCSOFTLOCK — Client Locked due to Client Copy [cliens]';
COMMENT ON COLUMN cross_app.t000.ccorigcont IS 'CCORIGCONT — Restriction of original access';
COMMENT ON COLUMN cross_app.t000.ccimaildis IS 'CCIMAILDIS — No Internet mail and fax connections';
COMMENT ON COLUMN cross_app.t000.obx_cli IS 'CCTEMPLOCK — Temporary lock due to a client copy process [obex cliens]';
COMMENT ON COLUMN cross_app.t000.nom_psn_mut IS 'CHANGEUSER — Name of the person who changed the object [nomen persona mutatus]';
COMMENT ON COLUMN cross_app.t000.die_ult IS 'CHANGEDATE — Date of Last Change [dies ultimus]';
COMMENT ON COLUMN cross_app.t000.logsys IS 'LOGSYS — Logical system';

CREATE TABLE IF NOT EXISTS cross_app.t001 (
  cli char(3),
  soc varchar(4),
  nom_soc varchar(25),
  urb varchar(25),
  ptr_clv varchar(3),
  cvm_soc_mon varchar(5),
  lng_clv char(1),
  tbr varchar(4),
  anf varchar(2),
  soc_sng varchar(6),
  are varchar(4),
  afd varchar(4),
  ptr varchar(3),
  vdt_emt_trb varchar(2),
  idx_ang varchar(1),
  soc2 varchar(1),
  dml varchar(10),
  idx_smp_vdt varchar(1),
  CONSTRAINT t001_pk PRIMARY KEY (cli, soc)
);
COMMENT ON TABLE cross_app.t001 IS 'T001 — Company Codes — the organizational-unit master every FI table''s BUKRS field checks against. SAP''s real T001 carries roughly 90 configuration-control fields (posting-period variants, workflow variants, tax-procedure links); this definition carries the core identity, currency, and cross-module linkage fields that a dealer tie-out actually consumes, not the full configuration surface. Accuracy over padding: fields listed below are real T001 fields confirmed against source, not the entire table.';
COMMENT ON COLUMN cross_app.t001.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN cross_app.t001.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN cross_app.t001.nom_soc IS 'BUTXT — Name of Company Code or Company [nomen codex societatis]';
COMMENT ON COLUMN cross_app.t001.urb IS 'ORT01 — City [urbs]';
COMMENT ON COLUMN cross_app.t001.ptr_clv IS 'LAND1 — Country Key [patria clavis]';
COMMENT ON COLUMN cross_app.t001.cvm_soc_mon IS 'WAERS — Currency Key — the company code''s local/reporting currency [clavis monetae codex societatis moneta]';
COMMENT ON COLUMN cross_app.t001.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN cross_app.t001.tbr IS 'KTOPL — Chart of Accounts [tabula rationum]';
COMMENT ON COLUMN cross_app.t001.anf IS 'PERIV — Fiscal Year Variant [annus fiscalis]';
COMMENT ON COLUMN cross_app.t001.soc_sng IS 'RCOMP — Company ID (used for consolidation, trading-partner elimination) [societas socius negotiationis]';
COMMENT ON COLUMN cross_app.t001.are IS 'FIKRS — Financial Management Area [area]';
COMMENT ON COLUMN cross_app.t001.afd IS 'KKBER — Credit control area [area fidei]';
COMMENT ON COLUMN cross_app.t001.ptr IS 'MREGL — Country for Calculating Days in Arrears [patria]';
COMMENT ON COLUMN cross_app.t001.vdt_emt_trb IS 'UMKRS — Sales/Purchase Tax Group [venditio emptio tributum]';
COMMENT ON COLUMN cross_app.t001.idx_ang IS 'XGSBER — Indicator: Business area financial statements [index area negotii]';
COMMENT ON COLUMN cross_app.t001.soc2 IS 'XSKFN — Company code to be reorganized [codex societatis]';
COMMENT ON COLUMN cross_app.t001.dml IS 'ADRNR — Address (business address services) [domicilium]';
COMMENT ON COLUMN cross_app.t001.idx_smp_vdt IS 'XKKBI — Indicator: Update Cost of Sales Accounting [index sumptus venditio]';

CREATE TABLE IF NOT EXISTS cross_app.t002 (
  lng_clv_val char(1),
  lng varchar(1),
  lng2 varchar(1),
  lng_cod varchar(2),
  CONSTRAINT t002_pk PRIMARY KEY (lng_clv_val)
);
COMMENT ON TABLE cross_app.t002 IS 'T002 — Language Keys (Component BC-I18) — the master list of SAP language keys, the check table nearly every SPRAS field across every module already defined in this repository resolves against (ADRC.LANGU, T001.SPRAS, CABN/CAWN''s language handling, TCURT.SPRAS, and dozens more). Language key descriptions are stored separately in T002T. SAP''s real T002 carries all its fields; this definition carries the table complete.';
COMMENT ON COLUMN cross_app.t002.lng_clv_val IS 'SPRAS — Language Key — the value every SPRAS field in the model checks against [lingua clavis valor]';
COMMENT ON COLUMN cross_app.t002.lng IS 'LASPEZ — Language specifications [lingua]';
COMMENT ON COLUMN cross_app.t002.lng2 IS 'LAHQ — Degree of Translation of Language [lingua]';
COMMENT ON COLUMN cross_app.t002.lng_cod IS 'LAISO — 2-Character SAP Language Code [lingua codex]';

CREATE TABLE IF NOT EXISTS cross_app.t005 (
  cli char(3),
  ptr_clv_val varchar(3),
  vhc_ptr_clv varchar(3),
  cod varchar(2),
  clv varchar(3),
  lng_clv_ptr char(1),
  ptr_vrs_sgn varchar(1),
  nrm_nom varchar(2),
  ptr_cod varchar(2),
  ptr_cod2 varchar(3),
  ptr_cod3 varchar(3),
  idx_mbr varchar(1),
  rag_num varchar(2),
  arg_num varchar(2),
  num varchar(2),
  landd varchar(3),
  tax varchar(6),
  ptr_clv varchar(3),
  die varchar(1),
  cvm_idx_mon varchar(5),
  cvm_mon varchar(5),
  ptr_mon varchar(5),
  rpm_gen_ptr varchar(4),
  ptm_aes varchar(4),
  reg_ptr varchar(8),
  ptr varchar(2),
  CONSTRAINT t005_pk PRIMARY KEY (cli, ptr_clv_val)
);
COMMENT ON TABLE cross_app.t005 IS 'T005 — Countries — the master check table nearly every LAND1/COUNTRY field across every module in this repository resolves against (ADRC.COUNTRY, T001.LAND1, ADR2/ADR3.COUNTRY, and dozens more). Carries per-country validation rules for postal codes, bank data, VAT numbers, and tax jurisdiction, plus the country''s own currency and language defaults. SAP''s real T005 carries roughly 60 fields, most of them field-length/validation-rule pairs for bank and tax-number formats; this definition carries the full key, ISO-code, currency, language, and EU/tax-relevant identity fields — the set any address, tax, ';
COMMENT ON COLUMN cross_app.t005.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN cross_app.t005.ptr_clv_val IS 'LAND1 — Country Key — the value every LAND1/COUNTRY field in the model checks against [patria clavis valor]';
COMMENT ON COLUMN cross_app.t005.vhc_ptr_clv IS 'LANDK — Vehicle country key [vehiculum patria clavis]';
COMMENT ON COLUMN cross_app.t005.cod IS 'LNPLZ — Postal code length [codex]';
COMMENT ON COLUMN cross_app.t005.clv IS 'ADDRS — Formatting routine key for printing addresses [clavis]';
COMMENT ON COLUMN cross_app.t005.lng_clv_ptr IS 'SPRAS — Language Key — the country''s default language [lingua clavis patria]';
COMMENT ON COLUMN cross_app.t005.ptr_vrs_sgn IS 'XLAND — Country version flag [patria versio signum]';
COMMENT ON COLUMN cross_app.t005.nrm_nom IS 'NMFMT — Standard name format [norma nomen]';
COMMENT ON COLUMN cross_app.t005.ptr_cod IS 'INTCA — Country ISO code (2-char) [patria codex]';
COMMENT ON COLUMN cross_app.t005.ptr_cod2 IS 'INTCA3 — ISO country code 3 char [patria codex]';
COMMENT ON COLUMN cross_app.t005.ptr_cod3 IS 'INTCN3 — ISO Country Code Numeric 3-Characters [patria codex]';
COMMENT ON COLUMN cross_app.t005.idx_mbr IS 'XEGLD — Indicator: European Union Member? [index membrum]';
COMMENT ON COLUMN cross_app.t005.rag_num IS 'LNBKN — Bank account number length [ratio argentariae numerus]';
COMMENT ON COLUMN cross_app.t005.arg_num IS 'LNBLZ — Bank number length [argentaria numerus]';
COMMENT ON COLUMN cross_app.t005.num IS 'UINLN — VAT registration number length [numerus]';
COMMENT ON COLUMN cross_app.t005.landd IS 'LANDD — DUEVO: Nationality';
COMMENT ON COLUMN cross_app.t005.tax IS 'KALSM — Procedure (Pricing, Output Control, Acct. Det., Costing,...) [taxatio]';
COMMENT ON COLUMN cross_app.t005.ptr_clv IS 'LANDA — Alternative Country Key [patria clavis]';
COMMENT ON COLUMN cross_app.t005.die IS 'DATFM — Date Format [dies]';
COMMENT ON COLUMN cross_app.t005.cvm_idx_mon IS 'CURIN — Currency Key of the Index-Based Currency [clavis monetae index moneta]';
COMMENT ON COLUMN cross_app.t005.cvm_mon IS 'CURHA — Currency Key of the Hard Currency [clavis monetae moneta]';
COMMENT ON COLUMN cross_app.t005.ptr_mon IS 'WAERS — Country currency [patria moneta]';
COMMENT ON COLUMN cross_app.t005.rpm_gen_ptr IS 'KURST — Exchange Rate Type for Translation into Country Currency [ratio permutationis genus patria]';
COMMENT ON COLUMN cross_app.t005.ptm_aes IS 'AFAPL — Chart of depreciaton for asset valuation [patrimonium aestimatio]';
COMMENT ON COLUMN cross_app.t005.reg_ptr IS 'SUREG — Super region per country [regio patria]';
COMMENT ON COLUMN cross_app.t005.ptr IS 'LANDGRP_VP — Country grouping for shipping schedule [patria]';

CREATE TABLE IF NOT EXISTS cross_app.t006 (
  cli char(3),
  uni_msu varchar(3),
  idx_uni_msu varchar(1),
  uni_msu2 varchar(1),
  andec smallint,
  msu_uni varchar(1),
  val_idx varchar(1),
  idx_uni varchar(1),
  idx_uni2 varchar(1),
  clv varchar(6),
  uni integer,
  uni2 integer,
  uni3 smallint,
  uni4 numeric(9,6),
  expon smallint,
  num smallint,
  cod_uni_msu varchar(3),
  cmp_cod varchar(1),
  temp_value double precision,
  uni5 varchar(3),
  uni_msu3 varchar(1),
  val double precision,
  uni6 varchar(3),
  CONSTRAINT t006_pk PRIMARY KEY (cli, uni_msu)
);
COMMENT ON TABLE cross_app.t006 IS 'T006 — Units of Measurement — the most heavily-referenced check table in this repository (221 field-level references across MM/PM/PP/QM/SD tables already defined, per a repository-wide grep on 2026-07-30). Added even though it was not named in the original request, because it clears the single largest concentration of dangling check-table references in the schema, ahead of any other candidate by more than 2x.';
COMMENT ON COLUMN cross_app.t006.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN cross_app.t006.uni_msu IS 'MSEHI — Unit of Measurement [unitas mensuratio]';
COMMENT ON COLUMN cross_app.t006.idx_uni_msu IS 'KZEX3 — 3-char indicator for external unit of measurement [index unitas mensuratio]';
COMMENT ON COLUMN cross_app.t006.uni_msu2 IS 'KZEX6 — 6-char. ID for external unit of measurement [unitas mensuratio]';
COMMENT ON COLUMN cross_app.t006.andec IS 'ANDEC — No. of decimal places to which rounding should be performed';
COMMENT ON COLUMN cross_app.t006.msu_uni IS 'KZKEH — Commercial measurement unit ID [mensuratio unitas]';
COMMENT ON COLUMN cross_app.t006.val_idx IS 'KZWOB — Value-based commitment indicator [valor index]';
COMMENT ON COLUMN cross_app.t006.idx_uni IS 'KZ1EH — Indicator (1) unit [index unitas]';
COMMENT ON COLUMN cross_app.t006.idx_uni2 IS 'KZ2EH — Indicator (2) unit [index unitas]';
COMMENT ON COLUMN cross_app.t006.clv IS 'DIMID — Dimension key [clavis]';
COMMENT ON COLUMN cross_app.t006.uni IS 'ZAEHL — Numerator for conversion to SI unit [unitas]';
COMMENT ON COLUMN cross_app.t006.uni2 IS 'NENNR — Denominator for conversion into SI unit [unitas]';
COMMENT ON COLUMN cross_app.t006.uni3 IS 'EXP10 — Base ten exponent for conversion to SI unit [unitas]';
COMMENT ON COLUMN cross_app.t006.uni4 IS 'ADDKO — Additive constant for conversion to SI unit [unitas]';
COMMENT ON COLUMN cross_app.t006.expon IS 'EXPON — Base ten exponent for floating-point display';
COMMENT ON COLUMN cross_app.t006.num IS 'DECAN — Number of decimal places for number display [numerus]';
COMMENT ON COLUMN cross_app.t006.cod_uni_msu IS 'ISOCODE — ISO code for unit of measurement [codex unitas mensuratio]';
COMMENT ON COLUMN cross_app.t006.cmp_cod IS 'PRIMARY — Selection field for conversion from ISO code to internal code [campus codex]';
COMMENT ON COLUMN cross_app.t006.temp_value IS 'TEMP_VALUE — Temperature';
COMMENT ON COLUMN cross_app.t006.uni5 IS 'TEMP_UNIT — Temperature unit [unitas]';
COMMENT ON COLUMN cross_app.t006.uni_msu3 IS 'FAMUNIT — Unit of measurement family [unitas mensuratio]';
COMMENT ON COLUMN cross_app.t006.val IS 'PRESS_VAL — Pressure Value [valor]';
COMMENT ON COLUMN cross_app.t006.uni6 IS 'PRESS_UNIT — Unit of Pressure [unitas]';

CREATE TABLE IF NOT EXISTS cross_app.t006a (
  cli char(3),
  lng_clv char(1),
  uni_msu_clv varchar(3),
  uni_msu varchar(3),
  uni_msu2 varchar(6),
  uni_msu_txt varchar(10),
  uni_msu_txt2 varchar(30),
  CONSTRAINT t006a_pk PRIMARY KEY (cli, lng_clv, uni_msu_clv)
);
COMMENT ON TABLE cross_app.t006a IS 'T006A — Assign Internal to Language-Dependent Unit — the language-dependent text table for T006 units of measurement: given an internal unit (MSEHI) and a language (SPRAS), returns the commercial 3-character external unit, technical 6-character external unit, and the short/long display texts. This is the text table T006 itself lacks — T006 carries the unit''s conversion factors and flags, T006A carries what a human or a printed document actually sees. SAP''s real T006A carries all its fields; this definition carries the table complete.';
COMMENT ON COLUMN cross_app.t006a.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN cross_app.t006a.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN cross_app.t006a.uni_msu_clv IS 'MSEHI — Unit of Measurement — the internal unit key resolving to T006 [unitas mensuratio clavis]';
COMMENT ON COLUMN cross_app.t006a.uni_msu IS 'MSEH3 — External Unit of Measurement in Commercial Format (3-Char.) [unitas mensuratio]';
COMMENT ON COLUMN cross_app.t006a.uni_msu2 IS 'MSEH6 — External Unit of Measurement in Technical Format (6-Char.) [unitas mensuratio]';
COMMENT ON COLUMN cross_app.t006a.uni_msu_txt IS 'MSEHT — Unit of Measurement Text (Maximum 10 Characters) [unitas mensuratio textus]';
COMMENT ON COLUMN cross_app.t006a.uni_msu_txt2 IS 'MSEHL — Unit of Measurement Text (Maximum 30 Characters) [unitas mensuratio textus]';

CREATE TABLE IF NOT EXISTS cross_app.tcurc (
  cli char(3),
  cvm varchar(5),
  mon_cod varchar(3),
  clv varchar(3),
  die_mon date,
  mon_cod2 varchar(1),
  CONSTRAINT tcurc_pk PRIMARY KEY (cli, cvm)
);
COMMENT ON TABLE cross_app.tcurc IS 'TCURC — Currency Codes — the currency master that WAERS/PSWSL/HWAER fields across every FI table (BSEG, BSID, BSAD, BSIK, BSAK, ACDOCA) check against. One of the two most-referenced check tables in this repository.';
COMMENT ON COLUMN cross_app.tcurc.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN cross_app.tcurc.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN cross_app.tcurc.mon_cod IS 'ISOCD — ISO currency code [moneta codex]';
COMMENT ON COLUMN cross_app.tcurc.clv IS 'ALTWR — Alternative key for currencies [clavis]';
COMMENT ON COLUMN cross_app.tcurc.die_mon IS 'GDATU — Date until which the currency is valid [dies moneta]';
COMMENT ON COLUMN cross_app.tcurc.mon_cod2 IS 'XPRIMARY — Primary SAP Currency Code for ISO Code [moneta codex]';

CREATE TABLE IF NOT EXISTS cross_app.tcurr (
  cli char(3),
  rpm_gen varchar(4),
  mon varchar(5),
  mon2 varchar(5),
  die_rpm varchar(8),
  rpm numeric(9,5),
  mon3 numeric(9,0),
  mon4 numeric(9,0),
  CONSTRAINT tcurr_pk PRIMARY KEY (cli, rpm_gen, mon, mon2, die_rpm)
);
COMMENT ON TABLE cross_app.tcurr IS 'TCURR — Exchange Rates — the from-currency/to-currency conversion rate table used to translate document-currency amounts (WRBTR) into local-currency amounts (DMBTR) across FI postings. Only meaningful once TCURC exists.';
COMMENT ON COLUMN cross_app.tcurr.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN cross_app.tcurr.rpm_gen IS 'KURST — Exchange Rate Type [ratio permutationis genus]';
COMMENT ON COLUMN cross_app.tcurr.mon IS 'FCURR — From currency [moneta]';
COMMENT ON COLUMN cross_app.tcurr.mon2 IS 'TCURR — To-currency [moneta]';
COMMENT ON COLUMN cross_app.tcurr.die_rpm IS 'GDATU — Date As of Which the Exchange Rate Is Effective [dies ratio permutationis]';
COMMENT ON COLUMN cross_app.tcurr.rpm IS 'UKURS — Exchange Rate [ratio permutationis]';
COMMENT ON COLUMN cross_app.tcurr.mon3 IS 'FFACT — Ratio for the "From" Currency Units [moneta]';
COMMENT ON COLUMN cross_app.tcurr.mon4 IS 'TFACT — Ratio for the "To" Currency Units [moneta]';

CREATE TABLE IF NOT EXISTS cross_app.tcurt (
  cli char(3),
  lng_clv char(1),
  cvm varchar(5),
  txt varchar(40),
  txt2 varchar(15),
  CONSTRAINT tcurt_pk PRIMARY KEY (cli, lng_clv, cvm)
);
COMMENT ON TABLE cross_app.tcurt IS 'TCURT — Currency Code Names — the language-dependent short and long text for each currency key in TCURC, the table WAERS-typed fields'' display text resolves through once a currency check-table hit is confirmed against TCURC itself. SAP''s real TCURT carries all its fields; this definition carries the table complete.';
COMMENT ON COLUMN cross_app.tcurt.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN cross_app.tcurt.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN cross_app.tcurt.cvm IS 'WAERS — Currency Key — resolves to TCURC [clavis monetae]';
COMMENT ON COLUMN cross_app.tcurt.txt IS 'LTEXT — Long Text [textus]';
COMMENT ON COLUMN cross_app.tcurt.txt2 IS 'KTEXT — Short text [textus]';

CREATE TABLE IF NOT EXISTS cross_app.tcurx (
  cvm varchar(5),
  num smallint,
  CONSTRAINT tcurx_pk PRIMARY KEY (cvm)
);
COMMENT ON TABLE cross_app.tcurx IS 'TCURX — Decimal Places in Currencies — the exception table listing currencies whose decimal-place count differs from the two-decimal default (e.g. JPY has 0, KWD has 3). Needed to correctly interpret DMBTR/WRBTR magnitude on any non-USD dealer entity.';
COMMENT ON COLUMN cross_app.tcurx.cvm IS 'CURRKEY — Currency Key [clavis monetae]';
COMMENT ON COLUMN cross_app.tcurx.num IS 'CURRDEC — Number of decimal places [numerus]';

CREATE TABLE IF NOT EXISTS cross_app.tj02 (
  sta varchar(5),
  sta_sgn varchar(1),
  sta_sgn2 varchar(1),
  CONSTRAINT tj02_pk PRIMARY KEY (sta)
);
COMMENT ON TABLE cross_app.tj02 IS 'TJ02 — System status — the text and behavior-flag table for SAP''s standard system statuses (e.g. CRTD Created, REL Released, TECO Technically Completed), the values JEST.STAT resolves to for system (as opposed to user) statuses. SAP''s real TJ02 carries all its fields; this definition carries the table complete. Note: leanx.eu lists this table without a client (MANDT) field or language key, consistent with TJ02 being a cross-client, single-language system table — language-dependent status short/long text is carried in TJ02T, not modeled in this wave.';
COMMENT ON COLUMN cross_app.tj02.sta IS 'ISTAT — System status [status]';
COMMENT ON COLUMN cross_app.tj02.sta_sgn IS 'NODIS — ''Do not display status'' flag [status signum]';
COMMENT ON COLUMN cross_app.tj02.sta_sgn2 IS 'SETONLY — ''Status can only be set'' flag [status signum]';

CREATE TABLE IF NOT EXISTS cross_app.tj03 (
  obi_ctg varchar(3),
  agsubscr varchar(40),
  nrsubscr varchar(4),
  idx_sta varchar(1),
  sgn_sta varchar(1),
  num varchar(3),
  num_usr varchar(3),
  nom varchar(30),
  obi varchar(30),
  CONSTRAINT tj03_pk PRIMARY KEY (obi_ctg)
);
COMMENT ON TABLE cross_app.tj03 IS 'TJ03 — Object types — the master list of general-status-management object categories (the values JSTO.OBTYP resolves to), one row per object type registered with status management, carrying its screen include, status-count limits, and callback function modules. SAP''s real TJ03 carries all its fields; this definition carries the table complete.';
COMMENT ON COLUMN cross_app.tj03.obi_ctg IS 'OBTYP — Object Category [obiectum categoria]';
COMMENT ON COLUMN cross_app.tj03.agsubscr IS 'AGSUBSCR — Module pool for Include screen';
COMMENT ON COLUMN cross_app.tj03.nrsubscr IS 'NRSUBSCR — No. of include screens';
COMMENT ON COLUMN cross_app.tj03.idx_sta IS 'NOSMA — Indicator: No Status Profile [index status]';
COMMENT ON COLUMN cross_app.tj03.sgn_sta IS 'SVEXT — Flag: External status management [signum status]';
COMMENT ON COLUMN cross_app.tj03.num IS 'SNUMB — Maximum number of system statuses [numerus]';
COMMENT ON COLUMN cross_app.tj03.num_usr IS 'ANUMB — Maximum number of user statuses [numerus usor]';
COMMENT ON COLUMN cross_app.tj03.nom IS 'FNAME — Function name [nomen]';
COMMENT ON COLUMN cross_app.tj03.obi IS 'OBJINFO — Callback for Object Information [obiectum]';

