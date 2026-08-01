-- EVE Datasphere Sovereign — PostgreSQL materialisation
-- Generated 2026-08-01T02:17:52Z by scripts/emit_postgres.py. Do not hand-edit; regenerate.
-- Column names are the canonical Latin layer (EgD-LATIN-001). The legacy SAP field name
-- is preserved in COMMENT ON COLUMN and in egd_catalog.field_map, and is the join key.
-- Mirror, never cannibalise. Pour le bien-etre du peuple.

-- module BW

CREATE TABLE IF NOT EXISTS bw.rsdcube (
  infocube varchar(30),
  obi_vrs varchar(1),
  obi_sta varchar(3),
  ems varchar(6),
  tmp_ult_obi numeric(15,0),
  psn varchar(12),
  bwappl varchar(10),
  vrs varchar(1),
  sgn varchar(1),
  infoarea varchar(30),
  tmp varchar(30),
  bctcomp varchar(10),
  grd varchar(30),
  gen_grd varchar(4),
  gen varchar(1),
  sbg varchar(1),
  nom_cls varchar(30),
  nom varchar(64),
  basiccube varchar(30),
  tmp2 varchar(1),
  sor varchar(10),
  isource varchar(30),
  idx_sor varchar(1),
  nom_cls2 varchar(30),
  sgn_cub varchar(1),
  sta varchar(1),
  gen2 varchar(1),
  tmp3 varchar(30),
  val varchar(10),
  val2 varchar(10),
  num integer,
  mgn_ctg varchar(2),
  cls varchar(5),
  mgn_ctg2 varchar(2),
  cls2 varchar(5),
  stt varchar(1),
  bwstatwhm varchar(1),
  sta2 varchar(1),
  autorollupfl varchar(1),
  autocomprfl varchar(1),
  mgn_ctg3 varchar(2),
  cls3 varchar(5),
  mgn_ctg4 varchar(2),
  cls_tbl varchar(5),
  readmode varchar(1),
  cachemode varchar(1),
  per integer,
  nlreadmode varchar(1),
  ult_mut varchar(12),
  tmp_frm numeric(15,0),
  CONSTRAINT rsdcube_pk PRIMARY KEY (infocube, obi_vrs)
);
COMMENT ON TABLE bw.rsdcube IS 'RSDCUBE — Directory of InfoCubes / InfoProvider — the BW metadata catalog row for every InfoCube and generic InfoProvider, keyed by InfoCube technical name (INFOCUBE) and object version (OBJVERS). Carries the InfoArea assignment, the Business-Content namespace/release stamp (BWAPPL/CONTREL/CONTTIMESTMP, distinguishing SAP-delivered from customer-created InfoCubes), the InfoProvider type/subtype (CUBETYPE/CUBESUBTYPE: BasicCube, Aggregate, RemoteCube, VirtualProvider, HANA-model-backed, etc.), the higher-level provider link (SUPERPROV/SUPERTLOGO) for MultiProviders and aggregates, real-time/direct-update';
COMMENT ON COLUMN bw.rsdcube.infocube IS 'INFOCUBE — InfoCube';
COMMENT ON COLUMN bw.rsdcube.obi_vrs IS 'OBJVERS — Object version [obiectum versio]';
COMMENT ON COLUMN bw.rsdcube.obi_sta IS 'OBJSTAT — Object Status [obiectum status]';
COMMENT ON COLUMN bw.rsdcube.ems IS 'CONTREL — Content release [emissio]';
COMMENT ON COLUMN bw.rsdcube.tmp_ult_obi IS 'CONTTIMESTMP — Content time stamp: Last modification to the object by SAP [tempus ultimus obiectum]';
COMMENT ON COLUMN bw.rsdcube.psn IS 'OWNER — Owner (Person Responsible) [persona]';
COMMENT ON COLUMN bw.rsdcube.bwappl IS 'BWAPPL — BW Application (Namespace)';
COMMENT ON COLUMN bw.rsdcube.vrs IS 'ACTIVFL — Active and revised version do not agree [versio]';
COMMENT ON COLUMN bw.rsdcube.sgn IS 'PROTECFL — Flag: Protected InfoObject, no changes allowed [signum]';
COMMENT ON COLUMN bw.rsdcube.infoarea IS 'INFOAREA — InfoArea';
COMMENT ON COLUMN bw.rsdcube.tmp IS 'NCUMTIM — Ref. Time-Char. for Non-cums [tempus]';
COMMENT ON COLUMN bw.rsdcube.bctcomp IS 'BCTCOMP — Obsolete - do not translate';
COMMENT ON COLUMN bw.rsdcube.grd IS 'SUPERPROV — Higher-Level InfoProvider [gradus]';
COMMENT ON COLUMN bw.rsdcube.gen_grd IS 'SUPERTLOGO — TLOGO Type of Higher-Level Provider [genus gradus]';
COMMENT ON COLUMN bw.rsdcube.gen IS 'CUBETYPE — InfoProvider Type [genus]';
COMMENT ON COLUMN bw.rsdcube.sbg IS 'CUBESUBTYPE — InfoProvider Subtype [subgenus]';
COMMENT ON COLUMN bw.rsdcube.nom_cls IS 'FUNCNAME — Name of Function Module/Class/SAP HANA Model [nomen classis]';
COMMENT ON COLUMN bw.rsdcube.nom IS 'HDBMODNM — SAP HANA Model Name [nomen]';
COMMENT ON COLUMN bw.rsdcube.basiccube IS 'BASICCUBE — BasicCube for Aggregate';
COMMENT ON COLUMN bw.rsdcube.tmp2 IS 'TRANSACT — Real Time / Direct Update [tempus]';
COMMENT ON COLUMN bw.rsdcube.sor IS 'SLOGSYS — Source system [systema originis]';
COMMENT ON COLUMN bw.rsdcube.isource IS 'ISOURCE — InfoSource';
COMMENT ON COLUMN bw.rsdcube.idx_sor IS 'UNIQUE_SOURCE — Indicator: Unique Source System [index systema originis]';
COMMENT ON COLUMN bw.rsdcube.nom_cls2 IS 'WRITECLASNM — Name of Class for Write Interface [nomen classis]';
COMMENT ON COLUMN bw.rsdcube.sgn_cub IS 'MOLAPFL — Flag: with MOLAP cube [signum cubus]';
COMMENT ON COLUMN bw.rsdcube.sta IS 'BIA_STATUS — RSD: BW Accelerator Status of InfoCube (BWA Indexes) [status]';
COMMENT ON COLUMN bw.rsdcube.gen2 IS 'PARTMODE — Partitioning Type [genus]';
COMMENT ON COLUMN bw.rsdcube.tmp3 IS 'PARTTIM — Partitioning time char. [tempus]';
COMMENT ON COLUMN bw.rsdcube.val IS 'PARTVL_FROM — Lower limit (partitioning value) [valor]';
COMMENT ON COLUMN bw.rsdcube.val2 IS 'PARTVL_TO — Upper Limit (Partitioning Value) [valor]';
COMMENT ON COLUMN bw.rsdcube.num IS 'PARTMAXCNT — Maximum number of partitions [numerus]';
COMMENT ON COLUMN bw.rsdcube.mgn_ctg IS 'DIMESIZCAT — BW: Size Category for Dimension Tables [magnitudo categoria]';
COMMENT ON COLUMN bw.rsdcube.cls IS 'DIMEDATCLS — BW: Data class for dimension tables [classis]';
COMMENT ON COLUMN bw.rsdcube.mgn_ctg2 IS 'CUBESIZCAT — BW: Size Category for InfoCube (Fact) Tables [magnitudo categoria]';
COMMENT ON COLUMN bw.rsdcube.cls2 IS 'CUBEDATCLS — BW: Data class for InfoCube (fact) tables [classis]';
COMMENT ON COLUMN bw.rsdcube.stt IS 'BWSTATISTICS — Boolean (BW statistics active for this InfoProvider) [statistica]';
COMMENT ON COLUMN bw.rsdcube.bwstatwhm IS 'BWSTATWHM — Boolean';
COMMENT ON COLUMN bw.rsdcube.sta2 IS 'AUTOQUALOKFL — Set Quality Status to ''OK'' Automatically [status]';
COMMENT ON COLUMN bw.rsdcube.autorollupfl IS 'AUTOROLLUPFL — Roll up data in the aggregate automatically';
COMMENT ON COLUMN bw.rsdcube.autocomprfl IS 'AUTOCOMPRFL — Compress Automatically After Roll-Up (or After Load)';
COMMENT ON COLUMN bw.rsdcube.mgn_ctg3 IS 'ADIMSIZCAT — BW: Size Category for Aggregate Dimension Tables [magnitudo categoria]';
COMMENT ON COLUMN bw.rsdcube.cls3 IS 'ADIMDATCLS — BW: Data class for aggregate dimension tables [classis]';
COMMENT ON COLUMN bw.rsdcube.mgn_ctg4 IS 'AGGRSIZCAT — BW: Size Category for Aggregate (Fact) Tables [magnitudo categoria]';
COMMENT ON COLUMN bw.rsdcube.cls_tbl IS 'AGGRDATCLS — BW: Default Data Class for Aggregate (Fact) Table [classis tabula]';
COMMENT ON COLUMN bw.rsdcube.readmode IS 'READMODE — Read Mode';
COMMENT ON COLUMN bw.rsdcube.cachemode IS 'CACHEMODE — Cache Mode';
COMMENT ON COLUMN bw.rsdcube.per IS 'CACHEDELAY — Cache Validity Period in Seconds [periodus]';
COMMENT ON COLUMN bw.rsdcube.nlreadmode IS 'NLREADMODE — Read Modus for Near-Line Storage';
COMMENT ON COLUMN bw.rsdcube.ult_mut IS 'TSTPNM — Last changed by [ultimus mutatus]';
COMMENT ON COLUMN bw.rsdcube.tmp_frm IS 'TIMESTMP — UTC Time Stamp in Short Form (YYYYMMDDhhmmss) [tempus forma]';

CREATE TABLE IF NOT EXISTS bw.rsdiobj (
  iobjnm varchar(30),
  obi_vrs varchar(1),
  gen varchar(3),
  obi_sta varchar(3),
  ems varchar(6),
  tmp_ult_obi numeric(15,0),
  psn varchar(12),
  bwappl varchar(10),
  vrs varchar(1),
  sgn varchar(1),
  privatefl varchar(1),
  cmp_nom_tbl varchar(30),
  atronlyfl varchar(1),
  bctcomp varchar(10),
  not_ varchar(1),
  ult_mut varchar(12),
  tmp_frm numeric(15,0),
  org_obi varchar(1),
  CONSTRAINT rsdiobj_pk PRIMARY KEY (iobjnm, obi_vrs)
);
COMMENT ON TABLE bw.rsdiobj IS 'RSDIOBJ — Directory of all InfoObjects — the BW metadata catalog row for every InfoObject (characteristic, key figure, unit, time characteristic, etc.) defined in the system, keyed by InfoObject technical name (IOBJNM) and object version (OBJVERS, since BW versions metadata as active ''A'' vs. modified ''M'' /delivered ''D''). Carries the InfoObject type (IOBJTP), object/activation status (OBJSTAT), the SAP namespace/content-release stamp (BWAPPL, CONTREL, CONTTIMESTMP) that distinguishes SAP-delivered Business Content InfoObjects (the /BI0/* namespace) from customer-created ones, ownership and change-trackin';
COMMENT ON COLUMN bw.rsdiobj.iobjnm IS 'IOBJNM — InfoObject';
COMMENT ON COLUMN bw.rsdiobj.obi_vrs IS 'OBJVERS — Object version [obiectum versio]';
COMMENT ON COLUMN bw.rsdiobj.gen IS 'IOBJTP — Type of an InfoObject [genus]';
COMMENT ON COLUMN bw.rsdiobj.obi_sta IS 'OBJSTAT — Object Status [obiectum status]';
COMMENT ON COLUMN bw.rsdiobj.ems IS 'CONTREL — Content release [emissio]';
COMMENT ON COLUMN bw.rsdiobj.tmp_ult_obi IS 'CONTTIMESTMP — Content time stamp: Last modification to the object by SAP [tempus ultimus obiectum]';
COMMENT ON COLUMN bw.rsdiobj.psn IS 'OWNER — Owner (Person Responsible) [persona]';
COMMENT ON COLUMN bw.rsdiobj.bwappl IS 'BWAPPL — BW Application (Namespace)';
COMMENT ON COLUMN bw.rsdiobj.vrs IS 'ACTIVFL — Active and revised version do not agree [versio]';
COMMENT ON COLUMN bw.rsdiobj.sgn IS 'PROTECFL — Checkbox (Flag: Protected InfoObject, no changes allowed) [signum]';
COMMENT ON COLUMN bw.rsdiobj.privatefl IS 'PRIVATEFL — InfoObject is Private';
COMMENT ON COLUMN bw.rsdiobj.cmp_nom_tbl IS 'FIELDNM — Field Name InfoObject In Structures (Not in database table) [campus nomen tabula]';
COMMENT ON COLUMN bw.rsdiobj.atronlyfl IS 'ATRONLYFL — InfoObject is Exclusively an Attribute (Not Used in ICs)';
COMMENT ON COLUMN bw.rsdiobj.bctcomp IS 'BCTCOMP — Obsolete - do not translate';
COMMENT ON COLUMN bw.rsdiobj.not_ IS 'BDSFL — Characteristic is allowed as attribute of documents [nota]';
COMMENT ON COLUMN bw.rsdiobj.ult_mut IS 'TSTPNM — Last changed by [ultimus mutatus]';
COMMENT ON COLUMN bw.rsdiobj.tmp_frm IS 'TIMESTMP — UTC Time Stamp in Short Form (YYYYMMDDhhmmss) [tempus forma]';
COMMENT ON COLUMN bw.rsdiobj.org_obi IS 'ORIGIN — Origin of Object [origo obiectum]';

CREATE TABLE IF NOT EXISTS bw.rsdodso (
  obi varchar(30),
  obi_vrs varchar(1),
  ems varchar(6),
  tmp_ult_obi numeric(15,0),
  psn varchar(12),
  bwappl varchar(10),
  infoarea varchar(30),
  bctcomp varchar(10),
  grd varchar(30),
  gen_grd varchar(4),
  tmp varchar(30),
  obi_cns varchar(1),
  obi_tbl_vis varchar(1),
  sta varchar(1),
  autocomprfl varchar(1),
  sgn varchar(1),
  bexfl varchar(1),
  gen_obi varchar(1),
  obi2 varchar(1),
  deltacheck varchar(1),
  rfr_qnt varchar(30),
  obi3 varchar(1),
  obi4 varchar(1),
  mgn_ctg varchar(2),
  gen varchar(5),
  mgn_ctg_ord varchar(2),
  cls_ord varchar(5),
  insertonly varchar(1),
  key_not_unique varchar(1),
  ult_mut varchar(12),
  tmp_frm numeric(15,0),
  bwstatistics varchar(1),
  bwstatwhm varchar(1),
  vrs varchar(2),
  readmode varchar(1),
  cachemode varchar(1),
  per integer,
  nlreadmode varchar(1),
  noparallelqdef varchar(1),
  kidsel varchar(1),
  idx varchar(1),
  cmp_idx varchar(1),
  trexops varchar(1),
  clv varchar(1),
  gen2 varchar(1),
  tmp2 varchar(30),
  val varchar(10),
  val2 varchar(10),
  obi_sgn varchar(1),
  CONSTRAINT rsdodso_pk PRIMARY KEY (obi, obi_vrs)
);
COMMENT ON TABLE bw.rsdodso IS 'RSDODSO — Directory of all DataStores — the BW metadata catalog row for every DataStore Object (DSO, formerly ODS object), keyed by DSO technical name (ODSOBJECT) and object version (OBJVERS). Carries the InfoArea assignment, Business-Content namespace/release stamp (BWAPPL/CONTREL/CONTTIMESTMP, distinguishing SAP-delivered from customer-created DSOs), the DSO type (ODSOTYPE: standard, write-optimized, direct-update), activation/processing automation flags (AUTOACTIVATEFL, AUTOPROCESSFL), SAP HANA-optimization and delta-consistency flags, and the size-category/data-class settings for the active-data and';
COMMENT ON COLUMN bw.rsdodso.obi IS 'ODSOBJECT — DataStore Object [obiectum]';
COMMENT ON COLUMN bw.rsdodso.obi_vrs IS 'OBJVERS — Object version [obiectum versio]';
COMMENT ON COLUMN bw.rsdodso.ems IS 'CONTREL — Content release [emissio]';
COMMENT ON COLUMN bw.rsdodso.tmp_ult_obi IS 'CONTTIMESTMP — Content time stamp: Last modification to the object by SAP [tempus ultimus obiectum]';
COMMENT ON COLUMN bw.rsdodso.psn IS 'OWNER — Owner (Person Responsible) [persona]';
COMMENT ON COLUMN bw.rsdodso.bwappl IS 'BWAPPL — BW Application (Namespace)';
COMMENT ON COLUMN bw.rsdodso.infoarea IS 'INFOAREA — InfoArea';
COMMENT ON COLUMN bw.rsdodso.bctcomp IS 'BCTCOMP — Obsolete - do not translate';
COMMENT ON COLUMN bw.rsdodso.grd IS 'SUPERPROV — Higher-Level InfoProvider [gradus]';
COMMENT ON COLUMN bw.rsdodso.gen_grd IS 'SUPERTLOGO — TLOGO Type of Higher-Level Provider [genus gradus]';
COMMENT ON COLUMN bw.rsdodso.tmp IS 'NCUMTIM — Ref. Time-Char. for Non-cums [tempus]';
COMMENT ON COLUMN bw.rsdodso.obi_cns IS 'PLANNING_MODE — DataStore Object: Mode for Use as Planning DSO [obiectum consilium]';
COMMENT ON COLUMN bw.rsdodso.obi_tbl_vis IS 'ACTVIEWGEN — DataStore Object: Active Table Database View to be Generated [obiectum tabula visus]';
COMMENT ON COLUMN bw.rsdodso.sta IS 'AUTOQUALOKFL — Set Quality Status to ''OK'' Automatically [status]';
COMMENT ON COLUMN bw.rsdodso.autocomprfl IS 'AUTOCOMPRFL — Compress Automatically After Roll-Up (or After Load)';
COMMENT ON COLUMN bw.rsdodso.sgn IS 'NOEDSFL — Flag: Do Not Generate Export DataSource [signum]';
COMMENT ON COLUMN bw.rsdodso.bexfl IS 'BEXFL — SID Generation';
COMMENT ON COLUMN bw.rsdodso.gen_obi IS 'ODSOTYPE — Type of DataStore Object [genus obiectum]';
COMMENT ON COLUMN bw.rsdodso.obi2 IS 'IMOFL — DataStore Object: SAP HANA-Optimized [obiectum]';
COMMENT ON COLUMN bw.rsdodso.deltacheck IS 'DELTACHECK — Delta Consistency Check for DataStore';
COMMENT ON COLUMN bw.rsdodso.rfr_qnt IS 'UOM_IOBJNM — Reference InfoObject for Quantity Conversion [referentia quantitas]';
COMMENT ON COLUMN bw.rsdodso.obi3 IS 'AUTOACTIVATEFL — Activate DataStore Object Data Automatically [obiectum]';
COMMENT ON COLUMN bw.rsdodso.obi4 IS 'AUTOPROCESSFL — Update Data from DataStore Object Automatically [obiectum]';
COMMENT ON COLUMN bw.rsdodso.mgn_ctg IS 'ODSASIZCAT — Size Category for DS Tables of Active Records [magnitudo categoria]';
COMMENT ON COLUMN bw.rsdodso.gen IS 'ODSADATCLS — Data Type for DataStore Tables of Active Records [genus]';
COMMENT ON COLUMN bw.rsdodso.mgn_ctg_ord IS 'ODSMSIZCAT — Size Category for DS Activation Queue [magnitudo categoria ordo expectantium]';
COMMENT ON COLUMN bw.rsdodso.cls_ord IS 'ODSMDATCLS — Data Class for DS Activation Queue [classis ordo expectantium]';
COMMENT ON COLUMN bw.rsdodso.insertonly IS 'INSERTONLY — Overwriting data records not permitted';
COMMENT ON COLUMN bw.rsdodso.key_not_unique IS 'KEY_NOT_UNIQUE — Allow Duplicate Data Records';
COMMENT ON COLUMN bw.rsdodso.ult_mut IS 'TSTPNM — Last changed by [ultimus mutatus]';
COMMENT ON COLUMN bw.rsdodso.tmp_frm IS 'TIMESTMP — UTC Time Stamp in Short Form (YYYYMMDDhhmmss) [tempus forma]';
COMMENT ON COLUMN bw.rsdodso.bwstatistics IS 'BWSTATISTICS — Boolean';
COMMENT ON COLUMN bw.rsdodso.bwstatwhm IS 'BWSTATWHM — Boolean';
COMMENT ON COLUMN bw.rsdodso.vrs IS 'QPROPVERS — Conversion Version Query Properties [versio]';
COMMENT ON COLUMN bw.rsdodso.readmode IS 'READMODE — Read Mode';
COMMENT ON COLUMN bw.rsdodso.cachemode IS 'CACHEMODE — Cache Mode';
COMMENT ON COLUMN bw.rsdodso.per IS 'CACHEDELAY — Cache Validity Period in Seconds [periodus]';
COMMENT ON COLUMN bw.rsdodso.nlreadmode IS 'NLREADMODE — Read Modus for Near-Line Storage';
COMMENT ON COLUMN bw.rsdodso.noparallelqdef IS 'NOPARALLELQDEF — no parallel processing';
COMMENT ON COLUMN bw.rsdodso.kidsel IS 'KIDSEL — Use Selection of Structure Elements';
COMMENT ON COLUMN bw.rsdodso.idx IS 'CACHEUSEREXIT — Indicator: Do not Use Cache for this Report [index]';
COMMENT ON COLUMN bw.rsdodso.cmp_idx IS 'NOHPA — Obsolete Field (Do Not Use BWA Index) [campus index]';
COMMENT ON COLUMN bw.rsdodso.trexops IS 'TREXOPS — Operations in SAP HANA/BWA';
COMMENT ON COLUMN bw.rsdodso.clv IS 'PACKFLQDEF — Process key figure with high precision [clavis]';
COMMENT ON COLUMN bw.rsdodso.gen2 IS 'PARTMODE — Partitioning Type [genus]';
COMMENT ON COLUMN bw.rsdodso.tmp2 IS 'PARTTIM — Partitioning time char. [tempus]';
COMMENT ON COLUMN bw.rsdodso.val IS 'PARTVL_FROM — Lower limit (partitioning value) [valor]';
COMMENT ON COLUMN bw.rsdodso.val2 IS 'PARTVL_TO — Upper Limit (Partitioning Value) [valor]';
COMMENT ON COLUMN bw.rsdodso.obi_sgn IS 'MPPFL — DataStore Object: Flag for Massively Parallel Processing [obiectum signum]';

CREATE TABLE IF NOT EXISTS bw.rsmonfact (
  num varchar(30),
  num2 varchar(6),
  tmp_frm numeric(15,0),
  num3 integer,
  num4 integer,
  num5 integer,
  num6 integer,
  num7 integer,
  num8 integer,
  num9 integer,
  num10 integer,
  num11 integer,
  num12 varchar(10),
  ic_id varchar(10),
  gen varchar(1),
  num13 varchar(16),
  mess_id varchar(10),
  rscaller varchar(2),
  idx varchar(1),
  CONSTRAINT rsmonfact_pk PRIMARY KEY (num, num2)
);
COMMENT ON TABLE bw.rsmonfact IS 'RSMONFACT — Fact table monitor — the request-monitor status table for InfoCube data loads: one row per request (RNR, the technical request ID also seen as 0REQUID in query/InfoCube data) and data packet (DP_NR) posted into an InfoCube''s fact table, carrying the record counts at each stage of the update pipeline (selected, sent, converted, updated, inserted, errored, not-updated, and routed-to-ODS) plus the number of cubes the packet was posted to (ANZ_CUBES), the target InfoCube''s internal ID (IC_ID), the packet-source type (IDOC_ODS_TYP) and IDoc number for IDoc-based loads, and a message/caller referenc';
COMMENT ON COLUMN bw.rsmonfact.num IS 'RNR — Request number for the data transfer [numerus]';
COMMENT ON COLUMN bw.rsmonfact.num2 IS 'DP_NR — Data packet number [numerus]';
COMMENT ON COLUMN bw.rsmonfact.tmp_frm IS 'TIMESTAMP — UTC Time Stamp in Short Form (YYYYMMDDhhmmss) [tempus forma]';
COMMENT ON COLUMN bw.rsmonfact.num3 IS 'REQ_SELECT — Number of Selected Data Records (Absolute) [numerus]';
COMMENT ON COLUMN bw.rsmonfact.num4 IS 'REQ_SEND — Number of Sent Data Records (Absolute) [numerus]';
COMMENT ON COLUMN bw.rsmonfact.num5 IS 'REQ_CONV_SUM — Number of Converted Data Records (Absolute) [numerus]';
COMMENT ON COLUMN bw.rsmonfact.num6 IS 'REQ_FORT_SUM — Number of Data Records Passed On (Absolute) [numerus]';
COMMENT ON COLUMN bw.rsmonfact.num7 IS 'REQ_UPDATE_SUM — Number of Updated Data Records (Absolute) [numerus]';
COMMENT ON COLUMN bw.rsmonfact.num8 IS 'REQ_INSERT_SUM — Number of Inserted Data Records (Absolute) [numerus]';
COMMENT ON COLUMN bw.rsmonfact.num9 IS 'REQ_ERROR_SUM — Number of Erroneous Data Records (Absolute) [numerus]';
COMMENT ON COLUMN bw.rsmonfact.num10 IS 'REQ_NOTUPD_SUM — Number of Data Records Not Updated (Absolute) [numerus]';
COMMENT ON COLUMN bw.rsmonfact.num11 IS 'REQ_ODS — Number of Data Records Routed to the ODS (Absolute) [numerus]';
COMMENT ON COLUMN bw.rsmonfact.num12 IS 'ANZ_CUBES — Number of InfoCubes the data packet was posted to [numerus]';
COMMENT ON COLUMN bw.rsmonfact.ic_id IS 'IC_ID — InfoCube ID';
COMMENT ON COLUMN bw.rsmonfact.gen IS 'IDOC_ODS_TYP — Data packet type (IDoc, ODS, old method ...) [genus]';
COMMENT ON COLUMN bw.rsmonfact.num13 IS 'IDOCNUM — IDoc number [numerus]';
COMMENT ON COLUMN bw.rsmonfact.mess_id IS 'MESS_ID — Message ID';
COMMENT ON COLUMN bw.rsmonfact.rscaller IS 'RSCALLER — Caller';
COMMENT ON COLUMN bw.rsmonfact.idx IS 'ERRORFLAG — Single-Character Indicator [index]';

