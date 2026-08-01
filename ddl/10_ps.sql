-- EVE Datasphere Sovereign — PostgreSQL materialisation
-- Generated 2026-08-01T02:19:53Z by scripts/emit_postgres.py. Do not hand-edit; regenerate.
-- Column names are the canonical Latin layer (EgD-LATIN-001). The legacy SAP field name
-- is preserved in COMMENT ON COLUMN and in egd_catalog.field_map, and is the join key.
-- Mirror, never cannibalise. Pour le bien-etre du peuple.

-- module PS

CREATE TABLE IF NOT EXISTS ps.nast (
  cli char(3),
  kappl varchar(2),
  obi_clv varchar(30),
  gen varchar(4),
  lng char(1),
  scs varchar(10),
  scs_psn varchar(2),
  die_sta_tbl date,
  tmp_sta_tbl time,
  dml_num varchar(10),
  nacha varchar(1),
  num numeric(2,0),
  tmp varchar(1),
  die date,
  tmp2 time,
  tmp3 time,
  manue varchar(1),
  die2 date,
  tmp4 time,
  die3 date,
  usr_nom varchar(12),
  sta varchar(1),
  aktiv varchar(1),
  tcode varchar(4),
  ldest varchar(4),
  nom varchar(6),
  dsuf1 varchar(4),
  dsuf2 varchar(12),
  dimme varchar(1),
  ems varchar(1),
  num2 varchar(31),
  num3 varchar(30),
  num4 varchar(30),
  sgn varchar(1),
  repet varchar(1),
  obi_clv2 varchar(70),
  txt varchar(4),
  lng_clv char(1),
  die4 varchar(8),
  tmp5 varchar(6),
  snddr varchar(1),
  dml_gen_psn varchar(1),
  sta2 varchar(1),
  prifb varchar(1),
  nauto varchar(1),
  nom2 varchar(12),
  nom3 varchar(12),
  tdocover varchar(1),
  dsc varchar(68),
  tdautority varchar(12),
  tdarmod varchar(1),
  num5 varchar(10),
  num6 varchar(12),
  dml_num2 varchar(12),
  event varchar(32),
  sta3 varchar(20),
  sta4 varchar(20),
  sta5 varchar(20),
  obi_gen varchar(10),
  tmp6 varchar(3),
  ptr_clv varchar(3),
  CONSTRAINT nast_pk PRIMARY KEY (cli, kappl, obi_clv, gen, lng, scs, scs_psn)
);
COMMENT ON TABLE ps.nast IS 'NAST — Message Status — the cross-application output/message-control table (NAST is technically owned by SAP Basis/cross-application message determination, not PS-specific, but is landed under this lane because it is the table that records output/print/EDI/fax status for PS objects such as project and WBS-element correspondence): one row per determined message (KAPPL application, OBJKY object key, KSCHL message/condition type, KSCHL+SPRAS+PARNR+PARVW partner routing) carrying the transmission medium (NACHA), dispatch timing (VSZTP/VSDAT/VSURA/VSURB), processing status (VSTAT) and processing date/time';
COMMENT ON COLUMN ps.nast.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN ps.nast.kappl IS 'KAPPL — Application for message conditions';
COMMENT ON COLUMN ps.nast.obi_clv IS 'OBJKY — Object key [obiectum clavis]';
COMMENT ON COLUMN ps.nast.gen IS 'KSCHL — Message type [genus]';
COMMENT ON COLUMN ps.nast.lng IS 'SPRAS — Message language [lingua]';
COMMENT ON COLUMN ps.nast.scs IS 'PARNR — Message partner [socius]';
COMMENT ON COLUMN ps.nast.scs_psn IS 'PARVW — Partner function (for example SH for ship-to party) [socius persona]';
COMMENT ON COLUMN ps.nast.die_sta_tbl IS 'ERDAT — Date on which status record was created [dies status tabula]';
COMMENT ON COLUMN ps.nast.tmp_sta_tbl IS 'ERUHR — Time at which status record was created [tempus status tabula]';
COMMENT ON COLUMN ps.nast.dml_num IS 'ADRNR — Address number [domicilium numerus]';
COMMENT ON COLUMN ps.nast.nacha IS 'NACHA — Message transmission medium';
COMMENT ON COLUMN ps.nast.num IS 'ANZAL — Number of messages (original + copies) [numerus]';
COMMENT ON COLUMN ps.nast.tmp IS 'VSZTP — Dispatch time [tempus]';
COMMENT ON COLUMN ps.nast.die IS 'VSDAT — Requested date for sending message [dies]';
COMMENT ON COLUMN ps.nast.tmp2 IS 'VSURA — Requested time for sending message (from) [tempus]';
COMMENT ON COLUMN ps.nast.tmp3 IS 'VSURB — Requested time for sending message (to) [tempus]';
COMMENT ON COLUMN ps.nast.manue IS 'MANUE — Message processed manually';
COMMENT ON COLUMN ps.nast.die2 IS 'DATVR — Processing date [dies]';
COMMENT ON COLUMN ps.nast.tmp4 IS 'UHRVR — Processing time [tempus]';
COMMENT ON COLUMN ps.nast.die3 IS 'DATRE — Date of the expected response to a message [dies]';
COMMENT ON COLUMN ps.nast.usr_nom IS 'USNAM — User name [usor nomen]';
COMMENT ON COLUMN ps.nast.sta IS 'VSTAT — Processing status of message [status]';
COMMENT ON COLUMN ps.nast.aktiv IS 'AKTIV — Active';
COMMENT ON COLUMN ps.nast.tcode IS 'TCODE — Communication strategy';
COMMENT ON COLUMN ps.nast.ldest IS 'LDEST — Spool: Output device';
COMMENT ON COLUMN ps.nast.nom IS 'DSNAM — Spool request: Name [nomen]';
COMMENT ON COLUMN ps.nast.dsuf1 IS 'DSUF1 — Spool request: Suffix 1';
COMMENT ON COLUMN ps.nast.dsuf2 IS 'DSUF2 — Spool request: Suffix 2';
COMMENT ON COLUMN ps.nast.dimme IS 'DIMME — Print immediately';
COMMENT ON COLUMN ps.nast.ems IS 'DELET — Release after output [emissio]';
COMMENT ON COLUMN ps.nast.num2 IS 'TELFX — Fax number [numerus]';
COMMENT ON COLUMN ps.nast.num3 IS 'TELX1 — Telex number [numerus]';
COMMENT ON COLUMN ps.nast.num4 IS 'TELTX — Teletex number [numerus]';
COMMENT ON COLUMN ps.nast.sgn IS 'AENDE — Change message flag [signum]';
COMMENT ON COLUMN ps.nast.repet IS 'REPET — Repeatability of message';
COMMENT ON COLUMN ps.nast.obi_clv2 IS 'TDNAME — Object key (long) [obiectum clavis]';
COMMENT ON COLUMN ps.nast.txt IS 'TDID — Text ID [textus]';
COMMENT ON COLUMN ps.nast.lng_clv IS 'TDSPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN ps.nast.die4 IS 'EDIKEY — Dunning Date (Used in Retail) [dies]';
COMMENT ON COLUMN ps.nast.tmp5 IS 'EDITRANS — Dunning Time (Used in Retail) [tempus]';
COMMENT ON COLUMN ps.nast.snddr IS 'SNDDR — Send: As disregard';
COMMENT ON COLUMN ps.nast.dml_gen_psn IS 'SNDBC — Address type (1=Organization, 2=Person, 3=Contact person) [domicilium genus persona]';
COMMENT ON COLUMN ps.nast.sta2 IS 'FORFB — Requested Status [status]';
COMMENT ON COLUMN ps.nast.prifb IS 'PRIFB — Setting for Which Statuses Are Reported by Mail';
COMMENT ON COLUMN ps.nast.nauto IS 'NAUTO — Message determined via conditions';
COMMENT ON COLUMN ps.nast.nom2 IS 'TDRECEIVER — Spool Recipient Name [nomen]';
COMMENT ON COLUMN ps.nast.nom3 IS 'TDDIVISION — Spool Department Name [nomen]';
COMMENT ON COLUMN ps.nast.tdocover IS 'TDOCOVER — Print: SAP cover page';
COMMENT ON COLUMN ps.nast.dsc IS 'TDCOVTITLE — Spool Description [descriptio]';
COMMENT ON COLUMN ps.nast.tdautority IS 'TDAUTORITY — Print: Authorization';
COMMENT ON COLUMN ps.nast.tdarmod IS 'TDARMOD — Print: Archiving mode';
COMMENT ON COLUMN ps.nast.num5 IS 'OPTARCNR — Archive number for optical archives [numerus]';
COMMENT ON COLUMN ps.nast.num6 IS 'CMFPNR — Error management number [numerus]';
COMMENT ON COLUMN ps.nast.dml_num2 IS 'USRNAM — WFMC: Address number, 12 characters [domicilium numerus]';
COMMENT ON COLUMN ps.nast.event IS 'EVENT — Event';
COMMENT ON COLUMN ps.nast.sta3 IS 'SORT1 — Sort criteria for message status records [status]';
COMMENT ON COLUMN ps.nast.sta4 IS 'SORT2 — Sort criteria for message status records [status]';
COMMENT ON COLUMN ps.nast.sta5 IS 'SORT3 — Sort criteria for message status records [status]';
COMMENT ON COLUMN ps.nast.obi_gen IS 'OBJTYPE — Object type [obiectum genus]';
COMMENT ON COLUMN ps.nast.tmp6 IS 'TDSCHEDULE — Send time request [tempus]';
COMMENT ON COLUMN ps.nast.ptr_clv IS 'TLAND — Country Key [patria clavis]';

CREATE TABLE IF NOT EXISTS ps.prhi (
  cli char(3),
  eop varchar(8),
  num_prp varchar(8),
  num_eop varchar(8),
  num_eop2 varchar(8),
  num_mnu varchar(8),
  num_mnu2 varchar(8),
  CONSTRAINT prhi_pk PRIMARY KEY (cli, eop)
);
COMMENT ON TABLE ps.prhi IS 'PRHI — Work Breakdown Structure, Edges (Hierarchy Pointer) — the linked-list structure that encodes the WBS hierarchy for a project: for every WBS element (POSNR) it records its parent project (PSPHI) plus its superior element (UP), first subordinate (DOWN), and left/right sibling pointers within the tree. PRPS carries the WBS element as a flat master-data row with a level number (STUFE) but does not itself encode traversal order; PRHI is the table SAP''s hierarchy-walk function modules (e.g. GET_PROJECT_HIERARCHY) actually read to reconstruct parent/child/sibling order. Every UP/DOWN/LEFT/RIGHT point';
COMMENT ON COLUMN ps.prhi.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN ps.prhi.eop IS 'POSNR — WBS Element [elementum operis]';
COMMENT ON COLUMN ps.prhi.num_prp IS 'PSPHI — Current number of the appropriate project [numerus propositum]';
COMMENT ON COLUMN ps.prhi.num_eop IS 'UP — Number of the superior WBS element [numerus elementum operis]';
COMMENT ON COLUMN ps.prhi.num_eop2 IS 'DOWN — Number of the 1st subordinate WBS element [numerus elementum operis]';
COMMENT ON COLUMN ps.prhi.num_mnu IS 'LEFT — Number of the left adjacent position in the WBS [numerus munus]';
COMMENT ON COLUMN ps.prhi.num_mnu2 IS 'RIGHT — Number of the right adjacent position in the WBS [numerus munus]';

CREATE TABLE IF NOT EXISTS ps.proj (
  cli char(3),
  prp varchar(8),
  prp2 varchar(24),
  dsc_txt varchar(40),
  obi_num varchar(22),
  nom_psn_cre varchar(12),
  die_tbl_cre date,
  nom_psn_mut varchar(12),
  die_obi_ult date,
  eop varchar(24),
  val_eop_prp varchar(1),
  sta_prp varchar(8),
  sta_eop varchar(8),
  num_psn_prp varchar(8),
  nom_psn_prp varchar(25),
  num varchar(8),
  astna varchar(25),
  soc_prp varchar(4),
  ang_prp varchar(4),
  amd_prp varchar(4),
  clu varchar(10),
  mon_prp varchar(5),
  ret_asg varchar(1),
  idx_act varchar(1),
  prp_ini_die date,
  prp_fin_die date,
  ofc varchar(4),
  clv varchar(2),
  cns_prp varchar(1),
  cns_prp_pvs varchar(1),
  tmp_uni varchar(3),
  idx_ret_cap varchar(1),
  ixp varchar(1),
  ret varchar(7),
  prp3 varchar(7),
  bprof varchar(6),
  lng_clv char(1),
  csm varchar(10),
  smp_obi varchar(12),
  die_ult_ret date,
  die_ult_ret2 date,
  clv_prp varchar(16),
  clv_prp2 varchar(16),
  clv2 varchar(16),
  clv_prp3 varchar(16),
  num_nrm_prp varchar(8),
  prp_cpa varchar(1),
  obi_cls varchar(2),
  eop2 varchar(1),
  trb varchar(15),
  usu_prp_mnd varchar(7),
  scprf varchar(12),
  imprf varchar(6),
  sol_cns varchar(6),
  clv3 varchar(6),
  dsc_txt2 varchar(40),
  cns varchar(6),
  idx_cns varchar(1),
  idx varchar(1),
  idx_prp varchar(1),
  aes_cpa varchar(1),
  smprf varchar(7),
  idx_act2 varchar(1),
  idx2 varchar(1),
  dtb varchar(6),
  loc varchar(10),
  logsystem varchar(10),
  idx_prp2 varchar(1),
  scs varchar(4),
  afn varchar(16),
  ovd varchar(4),
  cds varchar(2),
  dvs varchar(2),
  pos varchar(8),
  grd varchar(2),
  prp_num varchar(24),
  vname varchar(6),
  idx3 varchar(2),
  gen varchar(3),
  obi_gen varchar(4),
  cls varchar(3),
  jibsa varchar(5),
  schtyp varchar(1),
  pvs_ini_die date,
  pvs_fin_die date,
  idx4 varchar(4),
  sta smallint,
  CONSTRAINT proj_pk PRIMARY KEY (cli, prp)
);
COMMENT ON TABLE ps.proj IS 'PROJ — Project definition — the root master-data object for a SAP Project System project: one row per project (PSPID external ID / PSPNR internal number), carrying the organizational assignment (company code, business area, controlling area, profit center, plant), the profile stack that drives WBS/network/budget/planning behavior, responsible-person and applicant data, planned/forecast overall dates, and status-profile links. Every WBS element in PRPS carries a PSPHI foreign key back to this table''s PSPNR, so PROJ is the header a whole WBS tree (PRPS/PRHI/PRTE/PRTX) hangs off. SAP''s real PROJ table c';
COMMENT ON COLUMN ps.proj.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN ps.proj.prp IS 'PSPNR — Project definition (internal) [propositum]';
COMMENT ON COLUMN ps.proj.prp2 IS 'PSPID — Project Definition [propositum]';
COMMENT ON COLUMN ps.proj.dsc_txt IS 'POST1 — PS: Short description (1st text line) [descriptio textus]';
COMMENT ON COLUMN ps.proj.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN ps.proj.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN ps.proj.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN ps.proj.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN ps.proj.die_obi_ult IS 'AEDAT — Date on which object was last changed [dies obiectum ultimus]';
COMMENT ON COLUMN ps.proj.eop IS 'KIMSK — Selection mask for WBS element short IDs [elementum operis]';
COMMENT ON COLUMN ps.proj.val_eop_prp IS 'AUTOD — Automatic value transfer from WBS element to project def. [valor elementum operis propositum]';
COMMENT ON COLUMN ps.proj.sta_prp IS 'STSPD — Status profile for project definition [status propositum]';
COMMENT ON COLUMN ps.proj.sta_eop IS 'STSPR — Status profile for WBS element [status elementum operis]';
COMMENT ON COLUMN ps.proj.num_psn_prp IS 'VERNR — Number of the responsible person (project manager) [numerus persona propositum]';
COMMENT ON COLUMN ps.proj.nom_psn_prp IS 'VERNA — Name of responsible person (Project manager) [nomen persona propositum]';
COMMENT ON COLUMN ps.proj.num IS 'ASTNR — Applicant number [numerus]';
COMMENT ON COLUMN ps.proj.astna IS 'ASTNA — Applicant';
COMMENT ON COLUMN ps.proj.soc_prp IS 'VBUKR — Company code for the project [codex societatis propositum]';
COMMENT ON COLUMN ps.proj.ang_prp IS 'VGSBR — Business area for the project [area negotii propositum]';
COMMENT ON COLUMN ps.proj.amd_prp IS 'VKOKR — Controlling area for the project [area moderationis propositum]';
COMMENT ON COLUMN ps.proj.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN ps.proj.mon_prp IS 'PWHIE — WBS currency (project definition) [moneta propositum]';
COMMENT ON COLUMN ps.proj.ret_asg IS 'ZUORD — Network assignment [rete assignatio]';
COMMENT ON COLUMN ps.proj.idx_act IS 'TRMEQ — Indicator: WBS dates detailed by activity dates [index actio]';
COMMENT ON COLUMN ps.proj.prp_ini_die IS 'PLFAZ — Project planned start date [propositum initium dies]';
COMMENT ON COLUMN ps.proj.prp_fin_die IS 'PLSEZ — Project planned finish date [propositum finis dies]';
COMMENT ON COLUMN ps.proj.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN ps.proj.clv IS 'KALID — Factory calendar key [clavis]';
COMMENT ON COLUMN ps.proj.cns_prp IS 'VGPLF — Planning method for project basic dates [consilium propositum]';
COMMENT ON COLUMN ps.proj.cns_prp_pvs IS 'EWPLF — Planning method for project forecast dates [consilium propositum praevisio]';
COMMENT ON COLUMN ps.proj.tmp_uni IS 'ZTEHT — Time unit in time scheduling [tempus unitas]';
COMMENT ON COLUMN ps.proj.idx_ret_cap IS 'NZANZ — Indicator: Network header visible to end user [index rete caput]';
COMMENT ON COLUMN ps.proj.ixp IS 'PLNAW — Application of the task list [index pensorum]';
COMMENT ON COLUMN ps.proj.ret IS 'VPROF — Network profile [rete]';
COMMENT ON COLUMN ps.proj.prp3 IS 'PROFL — Project Profile [propositum]';
COMMENT ON COLUMN ps.proj.bprof IS 'BPROF — Budget Profile';
COMMENT ON COLUMN ps.proj.lng_clv IS 'TXTSP — Language Key [lingua clavis]';
COMMENT ON COLUMN ps.proj.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN ps.proj.smp_obi IS 'KTRG — Cost Object [sumptus obiectum]';
COMMENT ON COLUMN ps.proj.die_ult_ret IS 'AEDTE — Date of last scheduling of the overall network (basic dates) [dies ultimus rete]';
COMMENT ON COLUMN ps.proj.die_ult_ret2 IS 'AEDTP — Date of last scheduling of the overall network (forecast) [dies ultimus rete]';
COMMENT ON COLUMN ps.proj.clv_prp IS 'BERST — Authorization key for project master data [clavis propositum]';
COMMENT ON COLUMN ps.proj.clv_prp2 IS 'BERTR — Authorization key for project dates (WBS) [clavis propositum]';
COMMENT ON COLUMN ps.proj.clv2 IS 'BERKO — Authorization key for costs and revenues [clavis]';
COMMENT ON COLUMN ps.proj.clv_prp3 IS 'BERBU — Authorization key for project budget [clavis propositum]';
COMMENT ON COLUMN ps.proj.num_nrm_prp IS 'SPSNR — Current number for standard project [numerus norma propositum]';
COMMENT ON COLUMN ps.proj.prp_cpa IS 'BESTA — Project stock [propositum copia]';
COMMENT ON COLUMN ps.proj.obi_cls IS 'SCOPE — Object Class [obiectum classis]';
COMMENT ON COLUMN ps.proj.eop2 IS 'XSTAT — Statistical WBS element [elementum operis]';
COMMENT ON COLUMN ps.proj.trb IS 'TXJCD — Tax Jurisdiction [tributum]';
COMMENT ON COLUMN ps.proj.usu_prp_mnd IS 'ZSCHM — Interest Profile for Project/Order Interest Calculation [usura propositum mandatum]';
COMMENT ON COLUMN ps.proj.scprf IS 'SCPRF — Profile for WBS scheduling';
COMMENT ON COLUMN ps.proj.imprf IS 'IMPRF — Investment measure profile';
COMMENT ON COLUMN ps.proj.sol_cns IS 'FMPRF — Payment plan profile [solutio consilium]';
COMMENT ON COLUMN ps.proj.clv3 IS 'ABGSL — Results Analysis Key [clavis]';
COMMENT ON COLUMN ps.proj.dsc_txt2 IS 'POSTU — PS: Short description (1st text line) in all caps [descriptio textus]';
COMMENT ON COLUMN ps.proj.cns IS 'PPROF — Planning profile [consilium]';
COMMENT ON COLUMN ps.proj.idx_cns IS 'PLINT — Indicator for Integrated Planning [index consilium]';
COMMENT ON COLUMN ps.proj.idx IS 'LOEVM — Deletion Indicator [index]';
COMMENT ON COLUMN ps.proj.idx_prp IS 'INACT — Indicator: Project definition inactive [index propositum]';
COMMENT ON COLUMN ps.proj.aes_cpa IS 'KZBWS — Valuation of Special Stock [aestimatio copia]';
COMMENT ON COLUMN ps.proj.smprf IS 'SMPRF — Simulation profile';
COMMENT ON COLUMN ps.proj.idx_act2 IS 'FLGVRG — Indicator: Bottom-up calculation with activity dates [index actio]';
COMMENT ON COLUMN ps.proj.idx2 IS 'GRTOP — Indicator: Automatic requirements grouping [index]';
COMMENT ON COLUMN ps.proj.dtb IS 'PGPRF — Distribution profile [distributio]';
COMMENT ON COLUMN ps.proj.loc IS 'STORT — Location [locus]';
COMMENT ON COLUMN ps.proj.logsystem IS 'LOGSYSTEM — Logical System';
COMMENT ON COLUMN ps.proj.idx_prp2 IS 'KZERB — Indicator: Project summarization via master data charact. [index propositum]';
COMMENT ON COLUMN ps.proj.scs IS 'PARGR — Partner Determination Procedure [socius]';
COMMENT ON COLUMN ps.proj.afn IS 'FUNC_AREA — Functional Area [area functionis]';
COMMENT ON COLUMN ps.proj.ovd IS 'VKORG — Sales Organization [organizatio venditionis]';
COMMENT ON COLUMN ps.proj.cds IS 'VTWEG — Distribution Channel [canalis distributionis]';
COMMENT ON COLUMN ps.proj.dvs IS 'SPART — Division [divisio]';
COMMENT ON COLUMN ps.proj.pos IS 'DPPPROF — Dynamic Item Processor Profile [positio]';
COMMENT ON COLUMN ps.proj.grd IS 'VPKSTU — Node level [gradus]';
COMMENT ON COLUMN ps.proj.prp_num IS 'PSPID_EDIT — Project Number (External) Edited [propositum numerus]';
COMMENT ON COLUMN ps.proj.vname IS 'VNAME — Joint Venture';
COMMENT ON COLUMN ps.proj.idx3 IS 'RECID — Recovery Indicator [index]';
COMMENT ON COLUMN ps.proj.gen IS 'ETYPE — Equity type [genus]';
COMMENT ON COLUMN ps.proj.obi_gen IS 'OTYPE — Joint Venture Object Type [obiectum genus]';
COMMENT ON COLUMN ps.proj.cls IS 'JIBCL — JIB/JIBE Class [classis]';
COMMENT ON COLUMN ps.proj.jibsa IS 'JIBSA — JIB/JIBE Subclass A';
COMMENT ON COLUMN ps.proj.schtyp IS 'SCHTYP — Scheduling scenario';
COMMENT ON COLUMN ps.proj.pvs_ini_die IS 'SPROG — Forecast start date of project definition [praevisio initium dies]';
COMMENT ON COLUMN ps.proj.pvs_fin_die IS 'EPROG — Forecast finish date for project definition [praevisio finis dies]';
COMMENT ON COLUMN ps.proj.idx4 IS 'FERC_IND — Regulatory indicator [index]';
COMMENT ON COLUMN ps.proj.sta IS 'PROJ_STATUS — Status Combination [status]';

CREATE TABLE IF NOT EXISTS ps.prps (
  cli char(3),
  eop_num_cmp varchar(8),
  ops_elm_eop varchar(24),
  dsc_txt varchar(40),
  obi_num varchar(22),
  num_prp varchar(8),
  eop varchar(16),
  nom_psn_cre varchar(12),
  die_tbl_cre date,
  nom_psn_mut varchar(12),
  die_obi_ult date,
  num_psn_prp varchar(8),
  nom_psn_prp varchar(25),
  num varchar(8),
  astna varchar(25),
  soc_eop varchar(4),
  ang_eop varchar(4),
  amd_eop varchar(4),
  clu varchar(10),
  prp_gen varchar(2),
  grd_prp_hir smallint,
  idx_cns_elm varchar(1),
  idx_rat_asg varchar(1),
  idx_fac_elm varchar(1),
  rlt_ret_act varchar(1),
  ret_asg varchar(1),
  idx_act varchar(1),
  cnd_tbl varchar(1),
  kappl varchar(2),
  kalsm varchar(6),
  clv varchar(6),
  clv2 varchar(6),
  amd_csm varchar(4),
  csm varchar(10),
  amd_csm2 varchar(4),
  csm2 varchar(10),
  clv3 varchar(2),
  pri varchar(1),
  inm_num varchar(18),
  lcf varchar(30),
  eop_mon varchar(5),
  ofc varchar(4),
  lng_clv char(1),
  clv_usr varchar(7),
  csm3 varchar(10),
  smp_obi varchar(12),
  clv_prp varchar(16),
  clv_prp2 varchar(16),
  clv4 varchar(16),
  clv_prp3 varchar(16),
  idx_eop_prp varchar(1),
  prp_pos_num varchar(8),
  obi_cls varchar(2),
  eop2 varchar(1),
  trb varchar(15),
  usu_prp_mnd varchar(7),
  imprf varchar(6),
  pnd numeric(8,0),
  num2 varchar(12),
  prp_ops varchar(12),
  dsc_txt2 varchar(40),
  idx_cns varchar(1),
  idx varchar(1),
  aes_cpa varchar(1),
  fac_cns_num varchar(10),
  die date,
  csa varchar(2),
  isize varchar(2),
  csa2 varchar(5),
  soc varchar(4),
  idx_eop varchar(1),
  dtb varchar(6),
  logsystem varchar(10),
  loc varchar(10),
  afn varchar(16),
  klvar varchar(4),
  smp_num varchar(12),
  mat_num varchar(18),
  vname varchar(6),
  idx2 varchar(2),
  gen varchar(3),
  obi_gen varchar(4),
  cls varchar(3),
  jibsa varchar(5),
  idx3 varchar(4),
  sta smallint,
  CONSTRAINT prps_pk PRIMARY KEY (cli, eop_num_cmp)
);
COMMENT ON TABLE ps.prps IS 'PRPS — WBS (Work Breakdown Structure) Element Master Data — one row per WBS element (PSPNR), the cost object that appears on ACDOCA as PS_PSP_PNR. Tie explicitly: fi/tables/ACDOCA.yaml carries a PS_PSP_PNR field with check_table PRPS and a foreign_keys entry resolving PS_PSP_PNR -> PRPS.PSPNR — every Universal Journal line item account-assigned to a WBS element resolves back to exactly one row in this table. PRPS carries the external WBS identifier (POSID) and short text, the parent project link (PSPHI -> PROJ.PSPNR), hierarchy level (STUFE), organizational assignment (company code, business area, co';
COMMENT ON COLUMN ps.prps.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN ps.prps.eop_num_cmp IS 'PSPNR — WBS Element (internal number) — this is the field ACDOCA''s PS_PSP_PNR resolves to [elementum operis numerus campus]';
COMMENT ON COLUMN ps.prps.ops_elm_eop IS 'POSID — Work Breakdown Structure Element (WBS Element) — external identifier [opus elementum elementum operis]';
COMMENT ON COLUMN ps.prps.dsc_txt IS 'POST1 — PS: Short description (1st text line) [descriptio textus]';
COMMENT ON COLUMN ps.prps.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN ps.prps.num_prp IS 'PSPHI — Current number of the appropriate project [numerus propositum]';
COMMENT ON COLUMN ps.prps.eop IS 'POSKI — WBS element short identification [elementum operis]';
COMMENT ON COLUMN ps.prps.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN ps.prps.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN ps.prps.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN ps.prps.die_obi_ult IS 'AEDAT — Date on which object was last changed [dies obiectum ultimus]';
COMMENT ON COLUMN ps.prps.num_psn_prp IS 'VERNR — Number of the responsible person (project manager) [numerus persona propositum]';
COMMENT ON COLUMN ps.prps.nom_psn_prp IS 'VERNA — Name of responsible person (Project manager) [nomen persona propositum]';
COMMENT ON COLUMN ps.prps.num IS 'ASTNR — Applicant number [numerus]';
COMMENT ON COLUMN ps.prps.astna IS 'ASTNA — Applicant';
COMMENT ON COLUMN ps.prps.soc_eop IS 'PBUKR — Company code for WBS element [codex societatis elementum operis]';
COMMENT ON COLUMN ps.prps.ang_eop IS 'PGSBR — Business area for WBS element [area negotii elementum operis]';
COMMENT ON COLUMN ps.prps.amd_eop IS 'PKOKR — Controlling area for WBS element [area moderationis elementum operis]';
COMMENT ON COLUMN ps.prps.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN ps.prps.prp_gen IS 'PRART — Project type [propositum genus]';
COMMENT ON COLUMN ps.prps.grd_prp_hir IS 'STUFE — Level in Project Hierarchy [gradus propositum hierarchia]';
COMMENT ON COLUMN ps.prps.idx_cns_elm IS 'PLAKZ — Indicator: Planning element [index consilium elementum]';
COMMENT ON COLUMN ps.prps.idx_rat_asg IS 'BELKZ — Indicator: Account assignment element [index ratio assignatio]';
COMMENT ON COLUMN ps.prps.idx_fac_elm IS 'FAKKZ — Indicator: Billing element [index factura elementum]';
COMMENT ON COLUMN ps.prps.rlt_ret_act IS 'NPFAZ — Relationship of network activity to production order [relatio rete actio]';
COMMENT ON COLUMN ps.prps.ret_asg IS 'ZUORD — Network assignment [rete assignatio]';
COMMENT ON COLUMN ps.prps.idx_act IS 'TRMEQ — Indicator: WBS dates detailed by activity dates [index actio]';
COMMENT ON COLUMN ps.prps.cnd_tbl IS 'KVEWE — Usage of the condition table [condicio tabula]';
COMMENT ON COLUMN ps.prps.kappl IS 'KAPPL — Application';
COMMENT ON COLUMN ps.prps.kalsm IS 'KALSM — Costing Sheet';
COMMENT ON COLUMN ps.prps.clv IS 'ZSCHL — Overhead key [clavis]';
COMMENT ON COLUMN ps.prps.clv2 IS 'ABGSL — Results Analysis Key [clavis]';
COMMENT ON COLUMN ps.prps.amd_csm IS 'AKOKR — Controlling area of requesting cost center [area moderationis centrum sumptus]';
COMMENT ON COLUMN ps.prps.csm IS 'AKSTL — Requesting cost center [centrum sumptus]';
COMMENT ON COLUMN ps.prps.amd_csm2 IS 'FKOKR — Controlling area of responsible cost center [area moderationis centrum sumptus]';
COMMENT ON COLUMN ps.prps.csm2 IS 'FKSTL — Responsible cost center [centrum sumptus]';
COMMENT ON COLUMN ps.prps.clv3 IS 'FABKL — Factory calendar key [clavis]';
COMMENT ON COLUMN ps.prps.pri IS 'PSPRI — Priority [prioritas]';
COMMENT ON COLUMN ps.prps.inm_num IS 'EQUNR — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN ps.prps.lcf IS 'TPLNR — Functional Location [locus functionalis]';
COMMENT ON COLUMN ps.prps.eop_mon IS 'PWPOS — WBS element currency [elementum operis moneta]';
COMMENT ON COLUMN ps.prps.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN ps.prps.lng_clv IS 'TXTSP — Language Key [lingua clavis]';
COMMENT ON COLUMN ps.prps.clv_usr IS 'SLWID — Key word ID for user-defined fields [clavis usor]';
COMMENT ON COLUMN ps.prps.csm3 IS 'KOSTL — Cost center to which costs are actually posted [centrum sumptus]';
COMMENT ON COLUMN ps.prps.smp_obi IS 'KTRG — Cost Object [sumptus obiectum]';
COMMENT ON COLUMN ps.prps.clv_prp IS 'BERST — Authorization key for project master data [clavis propositum]';
COMMENT ON COLUMN ps.prps.clv_prp2 IS 'BERTR — Authorization key for project dates (WBS) [clavis propositum]';
COMMENT ON COLUMN ps.prps.clv4 IS 'BERKO — Authorization key for costs and revenues [clavis]';
COMMENT ON COLUMN ps.prps.clv_prp3 IS 'BERBU — Authorization key for project budget [clavis propositum]';
COMMENT ON COLUMN ps.prps.idx_eop_prp IS 'CLASF — Indicator: WBS element used in project summarization [index elementum operis propositum]';
COMMENT ON COLUMN ps.prps.prp_pos_num IS 'SPSNR — Std WBS: Internal project item number (w/exit on ID) [propositum positio numerus]';
COMMENT ON COLUMN ps.prps.obi_cls IS 'SCOPE — Object Class [obiectum classis]';
COMMENT ON COLUMN ps.prps.eop2 IS 'XSTAT — Statistical WBS element [elementum operis]';
COMMENT ON COLUMN ps.prps.trb IS 'TXJCD — Tax Jurisdiction [tributum]';
COMMENT ON COLUMN ps.prps.usu_prp_mnd IS 'ZSCHM — Interest Profile for Project/Order Interest Calculation [usura propositum mandatum]';
COMMENT ON COLUMN ps.prps.imprf IS 'IMPRF — Investment measure profile';
COMMENT ON COLUMN ps.prps.pnd IS 'EVGEW — Aggregation weight for POC (PS progress) [pondus]';
COMMENT ON COLUMN ps.prps.num2 IS 'AENNR — Change Number [numerus]';
COMMENT ON COLUMN ps.prps.prp_ops IS 'SUBPR — Sub-project in work breakdown structure [propositum opus]';
COMMENT ON COLUMN ps.prps.dsc_txt2 IS 'POSTU — PS: Short description (1st text line) in all caps [descriptio textus]';
COMMENT ON COLUMN ps.prps.idx_cns IS 'PLINT — Indicator for Integrated Planning [index consilium]';
COMMENT ON COLUMN ps.prps.idx IS 'LOEVM — Deletion Indicator [index]';
COMMENT ON COLUMN ps.prps.aes_cpa IS 'KZBWS — Valuation of Special Stock [aestimatio copia]';
COMMENT ON COLUMN ps.prps.fac_cns_num IS 'FPLNR — Billing plan number / invoicing plan number [factura consilium numerus]';
COMMENT ON COLUMN ps.prps.die IS 'TADAT — Technically complete date [dies]';
COMMENT ON COLUMN ps.prps.csa IS 'IZWEK — Reason for investment [causa]';
COMMENT ON COLUMN ps.prps.isize IS 'ISIZE — Scale of investment objects';
COMMENT ON COLUMN ps.prps.csa2 IS 'IUMKZ — Reason for environmental investment [causa]';
COMMENT ON COLUMN ps.prps.soc IS 'ABUKR — Requesting company code [codex societatis]';
COMMENT ON COLUMN ps.prps.idx_eop IS 'GRPKZ — Indicator: Grouping WBS element [index elementum operis]';
COMMENT ON COLUMN ps.prps.dtb IS 'PGPRF — Distribution profile [distributio]';
COMMENT ON COLUMN ps.prps.logsystem IS 'LOGSYSTEM — Logical System';
COMMENT ON COLUMN ps.prps.loc IS 'STORT — Location [locus]';
COMMENT ON COLUMN ps.prps.afn IS 'FUNC_AREA — Functional Area [area functionis]';
COMMENT ON COLUMN ps.prps.klvar IS 'KLVAR — Costing Variant';
COMMENT ON COLUMN ps.prps.smp_num IS 'KALNR — Cost Estimate Number for Cost Est. w/o Qty Structure [sumptus numerus]';
COMMENT ON COLUMN ps.prps.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN ps.prps.vname IS 'VNAME — Joint Venture';
COMMENT ON COLUMN ps.prps.idx2 IS 'RECID — Recovery Indicator [index]';
COMMENT ON COLUMN ps.prps.gen IS 'ETYPE — Equity type [genus]';
COMMENT ON COLUMN ps.prps.obi_gen IS 'OTYPE — Joint Venture Object Type [obiectum genus]';
COMMENT ON COLUMN ps.prps.cls IS 'JIBCL — JIB/JIBE Class [classis]';
COMMENT ON COLUMN ps.prps.jibsa IS 'JIBSA — JIB/JIBE Subclass A';
COMMENT ON COLUMN ps.prps.idx3 IS 'FERC_IND — Regulatory indicator [index]';
COMMENT ON COLUMN ps.prps.sta IS 'PRPS_STATUS — Status Combination [status]';

CREATE TABLE IF NOT EXISTS ps.prte (
  cli char(3),
  eop varchar(8),
  num_prp varchar(8),
  eop_ini_die date,
  ini_die_eop date,
  acl_ini_die date,
  eop_fin_die date,
  fin_die_eop date,
  acl_fin_die date,
  mra_eop numeric(5,1),
  mra_eop2 numeric(5,1),
  acl_mra_eop numeric(5,1),
  uni_mra_acl varchar(3),
  uni_mra_eop varchar(3),
  uni_mra_eop2 varchar(3),
  idx varchar(1),
  idx2 varchar(1),
  idx_pvs varchar(1),
  idx3 varchar(1),
  idx_acl varchar(1),
  idx_acl2 varchar(1),
  ini_die date,
  fin_die date,
  ini_die_pvs date,
  fin_die_pvs date,
  acl_ini_die2 date,
  acl_fin_die2 date,
  ini_die2 date,
  fin_die2 date,
  ini_die_pvs2 date,
  fin_die_pvs2 date,
  CONSTRAINT prte_pk PRIMARY KEY (cli, eop)
);
COMMENT ON TABLE ps.prte IS 'PRTE — Scheduling Data for Project Item — one row per WBS element (POSNR, resolving to PRPS-PSPNR, under project PSPHI resolving to PROJ) carrying the full basic/forecast/actual date triad (start, finish, duration and unit for each) plus the derived earliest/latest scheduled start and finish dates and the manual-override/activity-derived indicator flags that the PS scheduling engine (network scheduling roll-up to WBS) writes back after each scheduling run. This is the date-bearing counterpart to PRPS: PRPS carries the WBS master record and status, PRTE carries when that WBS element is actually schedu';
COMMENT ON COLUMN ps.prte.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN ps.prte.eop IS 'POSNR — WBS Element [elementum operis]';
COMMENT ON COLUMN ps.prte.num_prp IS 'PSPHI — Current number of the appropriate project [numerus propositum]';
COMMENT ON COLUMN ps.prte.eop_ini_die IS 'PSTRT — WBS element: Basic start date [elementum operis initium dies]';
COMMENT ON COLUMN ps.prte.ini_die_eop IS 'ESTRT — Forecasted start date of the WBS element [initium dies elementum operis]';
COMMENT ON COLUMN ps.prte.acl_ini_die IS 'ISTRT — Actual start date for the WBS element [actualis initium dies]';
COMMENT ON COLUMN ps.prte.eop_fin_die IS 'PENDE — WBS element: Basic finish date [elementum operis finis dies]';
COMMENT ON COLUMN ps.prte.fin_die_eop IS 'EENDE — Forecasted finish date of the WBS element [finis dies elementum operis]';
COMMENT ON COLUMN ps.prte.acl_fin_die IS 'IENDE — Actual finish date of the WBS element [actualis finis dies]';
COMMENT ON COLUMN ps.prte.mra_eop IS 'PDAUR — Length (duration) of the basic dates in the WBS element [mora elementum operis]';
COMMENT ON COLUMN ps.prte.mra_eop2 IS 'EDAUR — Forecasted length (duration) of the WBS element [mora elementum operis]';
COMMENT ON COLUMN ps.prte.acl_mra_eop IS 'IDAUR — Actual length (duration) of the WBS element [actualis mora elementum operis]';
COMMENT ON COLUMN ps.prte.uni_mra_acl IS 'IEINH — Unit for duration of actual WBS element dates [unitas mora actualis]';
COMMENT ON COLUMN ps.prte.uni_mra_eop IS 'EEINH — Unit for duration of WBS element planned dates [unitas mora elementum operis]';
COMMENT ON COLUMN ps.prte.uni_mra_eop2 IS 'PEINH — Unit for duration of basic WBS element dates [unitas mora elementum operis]';
COMMENT ON COLUMN ps.prte.idx IS 'FLGVG — Indicator: There are activities for the WBS elements [index]';
COMMENT ON COLUMN ps.prte.idx2 IS 'FLGEW — Indicator: Expected dates from the activities [index]';
COMMENT ON COLUMN ps.prte.idx_pvs IS 'FLGEM — Indicator: Forecast dates set manually [index praevisio]';
COMMENT ON COLUMN ps.prte.idx3 IS 'FLGVM — Indicator: Basic dates set manually [index]';
COMMENT ON COLUMN ps.prte.idx_acl IS 'FLGIM — Indicator: Actual dates set manually [index actualis]';
COMMENT ON COLUMN ps.prte.idx_acl2 IS 'FLGVI — Indicator: Actual dates from the activities [index actualis]';
COMMENT ON COLUMN ps.prte.ini_die IS 'PSTRM — Earliest scheduled start date (Basic) [initium dies]';
COMMENT ON COLUMN ps.prte.fin_die IS 'PETRM — Latest scheduled finish date (Basic) [finis dies]';
COMMENT ON COLUMN ps.prte.ini_die_pvs IS 'ESTRM — Scheduled start date (Forecast) [initium dies praevisio]';
COMMENT ON COLUMN ps.prte.fin_die_pvs IS 'EETRM — Latest scheduled finish date (Forecast) [finis dies praevisio]';
COMMENT ON COLUMN ps.prte.acl_ini_die2 IS 'VISTR — Tentative actual start date for WBS element [actualis initium dies]';
COMMENT ON COLUMN ps.prte.acl_fin_die2 IS 'VIEND — Tentative actual finish date for WBS element [actualis finis dies]';
COMMENT ON COLUMN ps.prte.ini_die2 IS 'PSTRS — Latest scheduled start date (Basic) [initium dies]';
COMMENT ON COLUMN ps.prte.fin_die2 IS 'PETRF — Earliest scheduled finish date (Basic) [finis dies]';
COMMENT ON COLUMN ps.prte.ini_die_pvs2 IS 'ESTRS — Latest scheduled start date (Forecast) [initium dies praevisio]';
COMMENT ON COLUMN ps.prte.fin_die_pvs2 IS 'EETRF — Earliest scheduled finish date (Forecast) [finis dies praevisio]';

CREATE TABLE IF NOT EXISTS ps.prtx (
  cli char(3),
  obi_gen varchar(1),
  eop varchar(8),
  txt_num varchar(12),
  CONSTRAINT prtx_pk PRIMARY KEY (cli, obi_gen, eop, txt_num)
);
COMMENT ON TABLE ps.prtx IS 'PRTX — PS Texts (WBS) — the key/pointer table for WBS element long texts: for a given WBS element (PRPSPNR, resolving to PRPS-PSPNR) and object type (PROBTYP), it holds the internal text-number key (PRTXTKY) used to look up the actual SAPscript/STXL text via READ_TEXT (TDID=''LTXT'', OBJECT=''PMS'', NAME derived from the WBS element''s object number). PRTX itself carries no text content — it is the join key between a WBS element and its long-text object; the text body lives in the standard text-cluster tables (STXH/STXL) outside this table.';
COMMENT ON COLUMN ps.prtx.cli IS 'PRMANDT — Client [cliens]';
COMMENT ON COLUMN ps.prtx.obi_gen IS 'PROBTYP — Object type, projects [obiectum genus]';
COMMENT ON COLUMN ps.prtx.eop IS 'PRPSPNR — WBS Element [elementum operis]';
COMMENT ON COLUMN ps.prtx.txt_num IS 'PRTXTKY — Internal text number (12-character) [textus numerus]';

