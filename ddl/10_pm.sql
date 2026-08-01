-- EVE Datasphere Sovereign — PostgreSQL materialisation
-- Generated 2026-08-01T02:17:52Z by scripts/emit_postgres.py. Do not hand-edit; regenerate.
-- Column names are the canonical Latin layer (EgD-LATIN-001). The legacy SAP field name
-- is preserved in COMMENT ON COLUMN and in egd_catalog.field_map, and is the join key.
-- Mirror, never cannibalise. Pour le bien-etre du peuple.

-- module PM

CREATE TABLE IF NOT EXISTS pm.affh (
  cli char(3),
  itn_num_mnd varchar(10),
  pos_nmr_prd varchar(8),
  idx varchar(1),
  idx2 varchar(1),
  die_tbl_cre date,
  usr_cre_tbl varchar(12),
  mut date,
  nom_psn_mut varchar(12),
  obi_sbs varchar(2),
  obi_sbs2 varchar(8),
  ixp_gen varchar(1),
  clv_ixp_cts varchar(8),
  pos_nmr_prd2 varchar(8),
  nmr varchar(8),
  obi_ixp varchar(1),
  nmr2 varchar(8),
  pos_num_prd varchar(4),
  obi_num varchar(22),
  clv_prd varchar(4),
  idx3 varchar(1),
  rfr_die_ini varchar(2),
  ini_prd_sbs numeric(5,0),
  uni_ini_sbs varchar(3),
  rfr_die_fin varchar(2),
  fin_prd_sbs numeric(5,0),
  uni_fin_prd varchar(3),
  ini_die date,
  fin_die date,
  ini_die2 date,
  fin_die2 date,
  acl_ini_die date,
  acl_fin_die date,
  mra double precision,
  tmp_uni_mra varchar(3),
  qnt_uni_prd varchar(3),
  nrm_val_qnt numeric(9,3),
  tot_qnt_prd numeric(9,3),
  qnt_prd_sbs numeric(9,3),
  qnt_prd_sbs2 numeric(9,3),
  qnt_prd numeric(9,3),
  tot_qnt varchar(6),
  val_uni_prd varchar(3),
  nrm_val_prd numeric(9,3),
  tot_val_prd numeric(9,3),
  acl_val_prd numeric(9,3),
  val_prd_sbs numeric(9,3),
  tot_val varchar(6),
  lng_clv char(1),
  nrm_txt_clv varchar(7),
  pri_txt_prd varchar(40),
  idx4 varchar(1),
  obi varchar(1),
  num varchar(12),
  CONSTRAINT affh_pk PRIMARY KEY (cli, itn_num_mnd, pos_nmr_prd)
);
COMMENT ON TABLE pm.affh IS 'AFFH — PRT assignment data for the work order — assigns production resources/tools (PRTs) to maintenance-order operations: usage windows, planned/confirmed/remaining quantities and usage values, and the CIM-resource (work center/PRT master) reference. Links AFVC operations to the resources they consume during execution.';
COMMENT ON COLUMN pm.affh.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.affh.itn_num_mnd IS 'AUFPL — Routing number of operations in the order [itinerarium numerus mandatum]';
COMMENT ON COLUMN pm.affh.pos_nmr_prd IS 'PZLFH — Item counter for production resources/tools [positio numerator productio]';
COMMENT ON COLUMN pm.affh.idx IS 'LOEKZ — Deletion Indicator [index]';
COMMENT ON COLUMN pm.affh.idx2 IS 'PARKZ — Indicator: inactive changes [index]';
COMMENT ON COLUMN pm.affh.die_tbl_cre IS 'DATUI — Date record created on [dies tabula creatus]';
COMMENT ON COLUMN pm.affh.usr_cre_tbl IS 'USERI — User who created record [usor creatus tabula]';
COMMENT ON COLUMN pm.affh.mut IS 'DATUC — Changed On [mutatus]';
COMMENT ON COLUMN pm.affh.nom_psn_mut IS 'USERC — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pm.affh.obi_sbs IS 'OBJTY — Object types of the CIM resource [obiectum subsidium]';
COMMENT ON COLUMN pm.affh.obi_sbs2 IS 'OBJID — Object ID of the resource [obiectum subsidium]';
COMMENT ON COLUMN pm.affh.ixp_gen IS 'PLNTY_KEY — Task List Type [index pensorum genus]';
COMMENT ON COLUMN pm.affh.clv_ixp_cts IS 'PLNNR_KEY — Key for Task List Group [clavis index pensorum coetus]';
COMMENT ON COLUMN pm.affh.pos_nmr_prd2 IS 'PZLFH_KEY — Item counter for production resources/tools [positio numerator productio]';
COMMENT ON COLUMN pm.affh.nmr IS 'ZAEHL_KEY — Internal counter [numerator]';
COMMENT ON COLUMN pm.affh.obi_ixp IS 'OBJCT — Object of a task list [obiectum index pensorum]';
COMMENT ON COLUMN pm.affh.nmr2 IS 'APLZL — Internal counter [numerator]';
COMMENT ON COLUMN pm.affh.pos_num_prd IS 'PSNFH — Item Number for Production Resource/Tool [positio numerus productio]';
COMMENT ON COLUMN pm.affh.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN pm.affh.clv_prd IS 'STEUF — Control key for management of production resources/tools [clavis productio]';
COMMENT ON COLUMN pm.affh.idx3 IS 'KZKBL — Indicator: Create load records for prod. resources/tools [index]';
COMMENT ON COLUMN pm.affh.rfr_die_ini IS 'BZOFFB — Reference date to start of production resource/tool usage [referentia dies initium]';
COMMENT ON COLUMN pm.affh.ini_prd_sbs IS 'OFFSTB — Offset to start of production resource/tool usage [initium productio subsidium]';
COMMENT ON COLUMN pm.affh.uni_ini_sbs IS 'EHOFFB — Offset unit for start of prod. resource/tool usage [unitas initium subsidium]';
COMMENT ON COLUMN pm.affh.rfr_die_fin IS 'BZOFFE — Reference date for end of production resource/tool usage [referentia dies finis]';
COMMENT ON COLUMN pm.affh.fin_prd_sbs IS 'OFFSTE — Offset to finish of production resource/tool usage [finis productio subsidium]';
COMMENT ON COLUMN pm.affh.uni_fin_prd IS 'EHOFFE — Offset unit for end of production resource/tool usage [unitas finis productio]';
COMMENT ON COLUMN pm.affh.ini_die IS 'FSFHD — Earliest scheduled start (date) for PRT usage [initium dies]';
COMMENT ON COLUMN pm.affh.fin_die IS 'FEFHD — Earliest scheduled finish (date) of PRT usage [finis dies]';
COMMENT ON COLUMN pm.affh.ini_die2 IS 'SSFHD — Latest scheduled start (date) for PRT usage [initium dies]';
COMMENT ON COLUMN pm.affh.fin_die2 IS 'SEFHD — Latest scheduled finish (date) of PRT usage [finis dies]';
COMMENT ON COLUMN pm.affh.acl_ini_die IS 'ISFHD — Actual start (date) of PRT usage [actualis initium dies]';
COMMENT ON COLUMN pm.affh.acl_fin_die IS 'IEFHD — Actual finish (date) of PRT usage [actualis finis dies]';
COMMENT ON COLUMN pm.affh.mra IS 'DAUFL — Duration of PRT usage [mora]';
COMMENT ON COLUMN pm.affh.tmp_uni_mra IS 'DAUEH — Time unit for duration of PRT usage [tempus unitas mora]';
COMMENT ON COLUMN pm.affh.qnt_uni_prd IS 'MGEINH — Quantity unit of production resource/tool [quantitas unitas productio]';
COMMENT ON COLUMN pm.affh.nrm_val_qnt IS 'MGVGW — Standard value for the PRT quantity [norma valor quantitas]';
COMMENT ON COLUMN pm.affh.tot_qnt_prd IS 'MGSOL — Total planned quantity of production resource/tool [summa totalis quantitas productio]';
COMMENT ON COLUMN pm.affh.qnt_prd_sbs IS 'MGIST — Confirmed quantity of production resource/tool [quantitas productio subsidium]';
COMMENT ON COLUMN pm.affh.qnt_prd_sbs2 IS 'MGRST — Remaining quantity of the production resource/tool [quantitas productio subsidium]';
COMMENT ON COLUMN pm.affh.qnt_prd IS 'MGAUS — Quantity of checked-out production resources/tools [quantitas productio]';
COMMENT ON COLUMN pm.affh.tot_qnt IS 'MGFORM — Formula for calculating the total quantity of PRT [summa totalis quantitas]';
COMMENT ON COLUMN pm.affh.val_uni_prd IS 'EWEINH — Usage value unit of the production resource/tool [valor unitas productio]';
COMMENT ON COLUMN pm.affh.nrm_val_prd IS 'EWVGW — Standard usage value for production resources/tools [norma valor productio]';
COMMENT ON COLUMN pm.affh.tot_val_prd IS 'EWSOL — Total planned usage value of production resource/tool [summa totalis valor productio]';
COMMENT ON COLUMN pm.affh.acl_val_prd IS 'EWIST — Actual usage value for production resource/tool [actualis valor productio]';
COMMENT ON COLUMN pm.affh.val_prd_sbs IS 'EWRST — Remaining usage value of the production resource/tool [valor productio subsidium]';
COMMENT ON COLUMN pm.affh.tot_val IS 'EWFORM — Formula for calculating the total usage value of PRT [summa totalis valor]';
COMMENT ON COLUMN pm.affh.lng_clv IS 'TXTSP — Language Key [lingua clavis]';
COMMENT ON COLUMN pm.affh.nrm_txt_clv IS 'KTSCH — Standard text key for production resources/tools [norma textus clavis]';
COMMENT ON COLUMN pm.affh.pri_txt_prd IS 'TXTZ1 — First line of text for production resources/tools [primus textus productio]';
COMMENT ON COLUMN pm.affh.idx4 IS 'OBJTYPE — Change indicator [index]';
COMMENT ON COLUMN pm.affh.obi IS 'CH_PROC — Process that has lead to the change of an object [obiectum]';
COMMENT ON COLUMN pm.affh.num IS 'AENNR — Change Number [numerus]';

CREATE TABLE IF NOT EXISTS pm.afft (
  cli char(3),
  itn_num_mnd varchar(10),
  nmr_mnd varchar(8),
  num varchar(8),
  num2 varchar(8),
  ixp_gen varchar(1),
  clv_ixp_cts varchar(8),
  num_ixp varchar(8),
  num3 varchar(8),
  num4 varchar(8),
  nmr varchar(8),
  num5 varchar(4),
  obi_gen_ctg varchar(2),
  ctg varchar(8),
  dsc varchar(40),
  gen varchar(1),
  num6 varchar(4),
  num7 varchar(12),
  CONSTRAINT afft_pk PRIMARY KEY (cli, itn_num_mnd, nmr_mnd, num, num2)
);
COMMENT ON TABLE pm.afft IS 'AFFT — Order — process instructions. Carries process-instruction category and text for an order operation''s PI-Sheet steps (process industry / PP-PI heritage reused by maintenance orders that carry process instructions). Small, complete table.';
COMMENT ON COLUMN pm.afft.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.afft.itn_num_mnd IS 'AUFPL — Routing number of operations in the order [itinerarium numerus mandatum]';
COMMENT ON COLUMN pm.afft.nmr_mnd IS 'APLZL — General counter for order [numerator mandatum]';
COMMENT ON COLUMN pm.afft.num IS 'APHZL — Internal Sub-Calculation Number [numerus]';
COMMENT ON COLUMN pm.afft.num2 IS 'AFTZL — Internal process instruction number [numerus]';
COMMENT ON COLUMN pm.afft.ixp_gen IS 'PLNTY — Task List Type [index pensorum genus]';
COMMENT ON COLUMN pm.afft.clv_ixp_cts IS 'PLNNR — Key for Task List Group [clavis index pensorum coetus]';
COMMENT ON COLUMN pm.afft.num_ixp IS 'PLNKN — Number of the task list node [numerus index pensorum]';
COMMENT ON COLUMN pm.afft.num3 IS 'PLNPH — Internal Sub-Calculation Number [numerus]';
COMMENT ON COLUMN pm.afft.num4 IS 'PLNFT — Internal process instruction number [numerus]';
COMMENT ON COLUMN pm.afft.nmr IS 'ZAEHL — Internal counter [numerator]';
COMMENT ON COLUMN pm.afft.num5 IS 'FTRNR — Line Number of Process Instruction [numerus]';
COMMENT ON COLUMN pm.afft.obi_gen_ctg IS 'CSTYP — Object type: proc.message category or proc. instr. category [obiectum genus categoria]';
COMMENT ON COLUMN pm.afft.ctg IS 'COSTR — Process instruction category [categoria]';
COMMENT ON COLUMN pm.afft.dsc IS 'CSKTX — Short description of process instruction [descriptio]';
COMMENT ON COLUMN pm.afft.gen IS 'FTTYP — Type of process instruction [genus]';
COMMENT ON COLUMN pm.afft.num6 IS 'FTRNI — Line Number of Process Instruction [numerus]';
COMMENT ON COLUMN pm.afft.num7 IS 'AENNR — Change Number [numerus]';

CREATE TABLE IF NOT EXISTS pm.affv (
  cli char(3),
  itn_num_mnd varchar(10),
  nmr_mnd varchar(8),
  num varchar(8),
  num2 varchar(8),
  not_val_num varchar(8),
  ixp_gen varchar(1),
  clv_ixp_cts varchar(8),
  num_ixp varchar(8),
  num3 varchar(8),
  num4 varchar(8),
  not_val_num2 varchar(8),
  nmr varchar(8),
  num_not varchar(4),
  not_ varchar(10),
  nmr2 varchar(4),
  not_val varchar(30),
  atflv double precision,
  val double precision,
  cod_val varchar(1),
  uni varchar(3),
  uni2 varchar(3),
  gen_not varchar(4),
  idx_not_val varchar(1),
  lng_clv char(1),
  num5 varchar(12),
  CONSTRAINT affv_pk PRIMARY KEY (cli, itn_num_mnd, nmr_mnd, num, num2, not_val_num)
);
COMMENT ON TABLE pm.affv IS 'AFFV — Order — process instruction values. Holds the characteristic/characteristic-value pairs recorded against a process instruction on an order operation (AFVC), including numeric range and unit — the results captured when a process instruction is executed. Small, complete table.';
COMMENT ON COLUMN pm.affv.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.affv.itn_num_mnd IS 'AUFPL — Routing number of operations in the order [itinerarium numerus mandatum]';
COMMENT ON COLUMN pm.affv.nmr_mnd IS 'APLZL — General counter for order [numerator mandatum]';
COMMENT ON COLUMN pm.affv.num IS 'APHZL — Internal Sub-Calculation Number [numerus]';
COMMENT ON COLUMN pm.affv.num2 IS 'AFTZL — Internal process instruction number [numerus]';
COMMENT ON COLUMN pm.affv.not_val_num IS 'AFVZL — Internal PI characteristic/characteristic value number [nota valor numerus]';
COMMENT ON COLUMN pm.affv.ixp_gen IS 'PLNTY — Task List Type [index pensorum genus]';
COMMENT ON COLUMN pm.affv.clv_ixp_cts IS 'PLNNR — Key for Task List Group [clavis index pensorum coetus]';
COMMENT ON COLUMN pm.affv.num_ixp IS 'PLNKN — Number of the task list node [numerus index pensorum]';
COMMENT ON COLUMN pm.affv.num3 IS 'PLNPH — Internal Sub-Calculation Number [numerus]';
COMMENT ON COLUMN pm.affv.num4 IS 'PLNFT — Internal process instruction number [numerus]';
COMMENT ON COLUMN pm.affv.not_val_num2 IS 'PLNFV — Internal PI characteristic/characteristic value number [nota valor numerus]';
COMMENT ON COLUMN pm.affv.nmr IS 'ZAEHL — Internal counter [numerator]';
COMMENT ON COLUMN pm.affv.num_not IS 'FVLNR — Line Number of Process Instruction Characteristic [numerus nota]';
COMMENT ON COLUMN pm.affv.not_ IS 'ATINN — Internal characteristic [nota]';
COMMENT ON COLUMN pm.affv.nmr2 IS 'ATZHL — Int counter [numerator]';
COMMENT ON COLUMN pm.affv.not_val IS 'ATWRT — Characteristic Value [nota valor]';
COMMENT ON COLUMN pm.affv.atflv IS 'ATFLV — Internal floating point from';
COMMENT ON COLUMN pm.affv.val IS 'ATFLB — Internal floating point value to [valor]';
COMMENT ON COLUMN pm.affv.cod_val IS 'ATCOD — Code for value dependency [codex valor]';
COMMENT ON COLUMN pm.affv.uni IS 'ATAWE — Alternative unit [unitas]';
COMMENT ON COLUMN pm.affv.uni2 IS 'ATAW1 — Alternative unit [unitas]';
COMMENT ON COLUMN pm.affv.gen_not IS 'ATFOR — Data type of characteristic [genus nota]';
COMMENT ON COLUMN pm.affv.idx_not_val IS 'WRTKZ — Indicator: Characteristic value assigned [index nota valor]';
COMMENT ON COLUMN pm.affv.lng_clv IS 'TXTSP — Language Key [lingua clavis]';
COMMENT ON COLUMN pm.affv.num5 IS 'AENNR — Change Number [numerus]';

CREATE TABLE IF NOT EXISTS pm.afih (
  cli char(3),
  mnd_num varchar(12),
  pri_gen varchar(2),
  pri varchar(1),
  inm_num varchar(18),
  bautl varchar(18),
  loc_rat_asg varchar(12),
  iloai varchar(1),
  cnd varchar(1),
  cur_cns_ofc varchar(4),
  ccs_emp_min varchar(3),
  ccs varchar(3),
  obi_gen_sto varchar(2),
  obi_sto varchar(8),
  emp_num varchar(10),
  nom_psn varchar(12),
  gauzt numeric(16,3),
  uni_mra varchar(3),
  die date,
  die2 date,
  tmp time,
  tmp2 time,
  nom_psn_isp varchar(12),
  die_isp date,
  ccu varchar(12),
  ccu_voc_num integer,
  cur_pos varchar(16),
  mnd_num2 varchar(12),
  obi_num integer,
  ofc_cur_emp varchar(8),
  mnd_rfr_die date,
  tmp_rfr_die time,
  cur varchar(1),
  cur_act_gen varchar(3),
  nts varchar(12),
  die3 date,
  mnd_ctg_idx varchar(1),
  cur_mnd_cns varchar(1),
  nsr varchar(18),
  mat_num varchar(18),
  deviceid varchar(40),
  ctg varchar(4),
  rfr_elm varchar(40),
  mnd_idx varchar(1),
  obi_num2 varchar(22),
  inm varchar(18),
  pos varchar(72),
  CONSTRAINT afih_pk PRIMARY KEY (cli, mnd_num, pri_gen, pri)
);
COMMENT ON TABLE pm.afih IS 'AFIH — Maintenance order header — the master record for a plant maintenance work order: equipment reference, planning plant, priority, dates, notification linkage.';
COMMENT ON COLUMN pm.afih.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.afih.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN pm.afih.pri_gen IS 'ARTPR — Priority Type [prioritas genus]';
COMMENT ON COLUMN pm.afih.pri IS 'PRIOK — Priority [prioritas]';
COMMENT ON COLUMN pm.afih.inm_num IS 'EQUNR — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN pm.afih.bautl IS 'BAUTL — Assembly';
COMMENT ON COLUMN pm.afih.loc_rat_asg IS 'ILOAN — Location and account assignment for technical object [locus ratio assignatio]';
COMMENT ON COLUMN pm.afih.iloai IS 'ILOAI — ILOA Individual';
COMMENT ON COLUMN pm.afih.cnd IS 'ANLZU — Syst.Condition [condicio]';
COMMENT ON COLUMN pm.afih.cur_cns_ofc IS 'IWERK — Maintenance Planning Plant [curatio consilium officina]';
COMMENT ON COLUMN pm.afih.ccs_emp_min IS 'INGPR — Planner Group for Customer Service and Plant Maintenance [coetus consiliorum emptor ministerium]';
COMMENT ON COLUMN pm.afih.ccs IS 'APGRP — Responsible planner group/department [coetus consiliorum]';
COMMENT ON COLUMN pm.afih.obi_gen_sto IS 'PM_OBJTY — Object Type of CIM Resources for Work Center [obiectum genus statio operis]';
COMMENT ON COLUMN pm.afih.obi_sto IS 'GEWRK — Object ID of the Work Center [obiectum statio operis]';
COMMENT ON COLUMN pm.afih.emp_num IS 'KUNUM — Customer Number [emptor numerus]';
COMMENT ON COLUMN pm.afih.nom_psn IS 'ANING — Name of Person Reponsible for System [nomen persona]';
COMMENT ON COLUMN pm.afih.gauzt IS 'GAUZT — Planned downtime in hours';
COMMENT ON COLUMN pm.afih.uni_mra IS 'GAUEH — Unit for Breakdown Duration [unitas mora]';
COMMENT ON COLUMN pm.afih.die IS 'ANLBD — Date until which the system is available [dies]';
COMMENT ON COLUMN pm.afih.die2 IS 'ANLVD — Date from which the system is available [dies]';
COMMENT ON COLUMN pm.afih.tmp IS 'ANLBZ — Time until which the system is available [tempus]';
COMMENT ON COLUMN pm.afih.tmp2 IS 'ANLVZ — Time from Which System is Available [tempus]';
COMMENT ON COLUMN pm.afih.nom_psn_isp IS 'INSPK — Name of Person Responsible for Technical Inspection [nomen persona inspectio]';
COMMENT ON COLUMN pm.afih.die_isp IS 'DATAN — Date of Technical Inspection [dies inspectio]';
COMMENT ON COLUMN pm.afih.ccu IS 'WARPL — Maintenance Plan [consilium curationis]';
COMMENT ON COLUMN pm.afih.ccu_voc_num IS 'ABNUM — Maintenance Plan Call Number [consilium curationis vocatio numerus]';
COMMENT ON COLUMN pm.afih.cur_pos IS 'WAPOS — Maintenance item [curatio positio]';
COMMENT ON COLUMN pm.afih.mnd_num2 IS 'LAUFN — Order number [mandatum numerus]';
COMMENT ON COLUMN pm.afih.obi_num IS 'OBKNR — Object list number [obiectum numerus]';
COMMENT ON COLUMN pm.afih.ofc_cur_emp IS 'REVNR — Revision for Plant Maintenance and Customer Service [officina curatio emptor]';
COMMENT ON COLUMN pm.afih.mnd_rfr_die IS 'ADDAT — PM Order: Reference Date [mandatum referentia dies]';
COMMENT ON COLUMN pm.afih.tmp_rfr_die IS 'ADUHR — Time of Reference Date [tempus referentia dies]';
COMMENT ON COLUMN pm.afih.cur IS 'IPHAS — Maintenance Processing Phase [curatio]';
COMMENT ON COLUMN pm.afih.cur_act_gen IS 'ILART — Maintenance activity type [curatio actio genus]';
COMMENT ON COLUMN pm.afih.nts IS 'QMNUM — Notification No [nuntius]';
COMMENT ON COLUMN pm.afih.die3 IS 'HISDA — PM request: History date [dies]';
COMMENT ON COLUMN pm.afih.mnd_ctg_idx IS 'AKKNZ — Order Category Indicator Plant Maintenance [mandatum categoria index]';
COMMENT ON COLUMN pm.afih.cur_mnd_cns IS 'PLKNZ — Maintenance order planning indicator [curatio mandatum consilium]';
COMMENT ON COLUMN pm.afih.nsr IS 'SERIALNR — Serial Number [numerus serialis]';
COMMENT ON COLUMN pm.afih.mat_num IS 'SERMAT — Material Number [materia numerus]';
COMMENT ON COLUMN pm.afih.deviceid IS 'DEVICEID — Additional Device Data';
COMMENT ON COLUMN pm.afih.ctg IS 'SCREENTY — Scenario or Subscreen Category [categoria]';
COMMENT ON COLUMN pm.afih.rfr_elm IS 'ADPSP — Reference Element PM/PS [referentia elementum]';
COMMENT ON COLUMN pm.afih.mnd_idx IS 'RSUPG — Upgrade Order Indicator [mandatum index]';
COMMENT ON COLUMN pm.afih.obi_num2 IS '/ISDFPS/OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN pm.afih.inm IS '/ISDFPS/MEQUI — Master Equipment [instrumentum]';
COMMENT ON COLUMN pm.afih.pos IS 'UII — Unique Item Identifier [positio]';

CREATE TABLE IF NOT EXISTS pm.afvv (
  cli char(3),
  itn_num_mnd varchar(10),
  nmr_mnd varchar(8),
  men_act_ope varchar(3),
  umren numeric(5,0),
  ixp numeric(5,0),
  qnt numeric(13,3),
  men_nrm_val varchar(3),
  nrm_val numeric(9,3),
  men_nrm_val2 varchar(3),
  nrm_val2 numeric(9,3),
  men_nrm_val3 varchar(3),
  nrm_val3 numeric(9,3),
  men_nrm_val4 varchar(3),
  nrm_val4 numeric(9,3),
  men_nrm_val5 varchar(3),
  nrm_val5 numeric(9,3),
  men_nrm_val6 varchar(3),
  nrm_val6 numeric(9,3),
  mra_act numeric(5,1),
  mra_uni varchar(3),
  ops_act numeric(7,1),
  uni_ops varchar(3),
  ope_qnt numeric(13,3),
  ope numeric(13,3),
  tot numeric(13,3),
  tot_qnt numeric(13,3),
  mnd_men numeric(13,3),
  acl_ops numeric(13,3),
  tot_qnt2 numeric(13,3),
  ini_die date,
  fin_die date,
  ini_die2 date,
  fin_die2 date,
  acl_ope_ini date,
  acl_fin_ope date,
  acl_ini_die date,
  acl_ini_tmp time,
  acl_fin_die date,
  acl_fin_tmp time,
  pvs_fin_die date,
  pvs_fin_tmp time,
  ord_tmp double precision,
  tmp double precision,
  tmp2 double precision,
  abrue double precision,
  tmp3 double precision,
  tmp4 double precision,
  CONSTRAINT afvv_pk PRIMARY KEY (cli, itn_num_mnd, nmr_mnd)
);
COMMENT ON TABLE pm.afvv IS 'AFVV — DB structure of the quantities/dates/values in the operation — one row per order operation (AUFPL/APLZL) carrying standard-value quantities, scheduled and actual execution/setup/teardown dates and times, work, and confirmation quantities that drive PM order operation costing and scheduling. SAP''s real table carries 190+ fields (six parallel standard-value slots, forecast/business-process variants, and PS-specific date sets); this definition is scoped to the key, the unit-of-measure/base-quantity fields, the six standard-value pairs, confirmed/scrap/work quantities, and the earliest/latest/actu';
COMMENT ON COLUMN pm.afvv.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.afvv.itn_num_mnd IS 'AUFPL — Routing number of operations in the order [itinerarium numerus mandatum]';
COMMENT ON COLUMN pm.afvv.nmr_mnd IS 'APLZL — General counter for order [numerator mandatum]';
COMMENT ON COLUMN pm.afvv.men_act_ope IS 'MEINH — Unit of Measure for Activity/Operation [mensura actio operatio]';
COMMENT ON COLUMN pm.afvv.umren IS 'UMREN — Denominator for converting rtg and op units of measure';
COMMENT ON COLUMN pm.afvv.ixp IS 'UMREZ — Numerator for converting task list and oper. un. of measure [index pensorum]';
COMMENT ON COLUMN pm.afvv.qnt IS 'BMSCH — Base Quantity [quantitas]';
COMMENT ON COLUMN pm.afvv.men_nrm_val IS 'VGE01 — Unit of measure for the standard value [mensura norma valor]';
COMMENT ON COLUMN pm.afvv.nrm_val IS 'VGW01 — Standard Value [norma valor]';
COMMENT ON COLUMN pm.afvv.men_nrm_val2 IS 'VGE02 — Unit of measure for the standard value [mensura norma valor]';
COMMENT ON COLUMN pm.afvv.nrm_val2 IS 'VGW02 — Standard Value [norma valor]';
COMMENT ON COLUMN pm.afvv.men_nrm_val3 IS 'VGE03 — Unit of measure for the standard value [mensura norma valor]';
COMMENT ON COLUMN pm.afvv.nrm_val3 IS 'VGW03 — Standard Value [norma valor]';
COMMENT ON COLUMN pm.afvv.men_nrm_val4 IS 'VGE04 — Unit of measure for the standard value [mensura norma valor]';
COMMENT ON COLUMN pm.afvv.nrm_val4 IS 'VGW04 — Standard Value [norma valor]';
COMMENT ON COLUMN pm.afvv.men_nrm_val5 IS 'VGE05 — Unit of measure for the standard value [mensura norma valor]';
COMMENT ON COLUMN pm.afvv.nrm_val5 IS 'VGW05 — Standard Value [norma valor]';
COMMENT ON COLUMN pm.afvv.men_nrm_val6 IS 'VGE06 — Unit of measure for the standard value [mensura norma valor]';
COMMENT ON COLUMN pm.afvv.nrm_val6 IS 'VGW06 — Standard Value [norma valor]';
COMMENT ON COLUMN pm.afvv.mra_act IS 'DAUNO — Normal duration of the activity [mora actio]';
COMMENT ON COLUMN pm.afvv.mra_uni IS 'DAUNE — Normal duration/unit [mora unitas]';
COMMENT ON COLUMN pm.afvv.ops_act IS 'ARBEI — Work involved in the activity [opus actio]';
COMMENT ON COLUMN pm.afvv.uni_ops IS 'ARBEH — Unit for work [unitas opus]';
COMMENT ON COLUMN pm.afvv.ope_qnt IS 'MGVRG — Operation Quantity [operatio quantitas]';
COMMENT ON COLUMN pm.afvv.ope IS 'ASVRG — Operation scrap [operatio]';
COMMENT ON COLUMN pm.afvv.tot IS 'LMNGA — Total Yield Confirmed [summa totalis]';
COMMENT ON COLUMN pm.afvv.tot_qnt IS 'XMNGA — Total scrap quantity confirmed [summa totalis quantitas]';
COMMENT ON COLUMN pm.afvv.mnd_men IS 'GMNGA — Confirmed yield in order unit of measure [mandatum mensura]';
COMMENT ON COLUMN pm.afvv.acl_ops IS 'ISMNW — Actual work [actualis opus]';
COMMENT ON COLUMN pm.afvv.tot_qnt2 IS 'RMNGA — Total confirmed rework quantity [summa totalis quantitas]';
COMMENT ON COLUMN pm.afvv.ini_die IS 'FSAVD — Earliest scheduled start: Execution (date) [initium dies]';
COMMENT ON COLUMN pm.afvv.fin_die IS 'FSEDD — Earliest scheduled finish: Execution (date) [finis dies]';
COMMENT ON COLUMN pm.afvv.ini_die2 IS 'SSAVD — Latest scheduled start: Execution (date) [initium dies]';
COMMENT ON COLUMN pm.afvv.fin_die2 IS 'SSEDD — Latest scheduled finish: Execution (date) [finis dies]';
COMMENT ON COLUMN pm.afvv.acl_ope_ini IS 'ISAVD — Actual operation start (date) [actualis operatio initium]';
COMMENT ON COLUMN pm.afvv.acl_fin_ope IS 'IEAVD — Actual finish of operation (date) [actualis finis operatio]';
COMMENT ON COLUMN pm.afvv.acl_ini_die IS 'ISDD — Actual start: Execution (date) [actualis initium dies]';
COMMENT ON COLUMN pm.afvv.acl_ini_tmp IS 'ISDZ — Actual start: Execution/setup (time) [actualis initium tempus]';
COMMENT ON COLUMN pm.afvv.acl_fin_die IS 'IEDD — Actual finish: Execution (date) [actualis finis dies]';
COMMENT ON COLUMN pm.afvv.acl_fin_tmp IS 'IEDZ — Actual finish: Execution (time) [actualis finis tempus]';
COMMENT ON COLUMN pm.afvv.pvs_fin_die IS 'PEDD — Forecast finish date of operation from confirmation [praevisio finis dies]';
COMMENT ON COLUMN pm.afvv.pvs_fin_tmp IS 'PEDZ — Forecast finish time of operation from confirmation [praevisio finis tempus]';
COMMENT ON COLUMN pm.afvv.ord_tmp IS 'WARTZ — Queue time used for scheduling [ordo expectantium tempus]';
COMMENT ON COLUMN pm.afvv.tmp IS 'RUEST — Setup time [tempus]';
COMMENT ON COLUMN pm.afvv.tmp2 IS 'BEARZ — Processing time [tempus]';
COMMENT ON COLUMN pm.afvv.abrue IS 'ABRUE — Teardown';
COMMENT ON COLUMN pm.afvv.tmp3 IS 'LIEGZ — Wait time used for scheduling [tempus]';
COMMENT ON COLUMN pm.afvv.tmp4 IS 'TRANZ — Move time used for scheduling [tempus]';

CREATE TABLE IF NOT EXISTS pm.eqbs (
  cli char(3),
  inm_num varchar(18),
  cpa_ctg varchar(2),
  ofc varchar(4),
  loc varchar(4),
  grx_num varchar(10),
  cpa_idx varchar(1),
  emp_num varchar(10),
  rat_num_ven varchar(10),
  vdt_mnd_num varchar(10),
  pos_num_vdt varchar(6),
  ops_elm_eop varchar(8),
  cpa_psn varchar(10),
  CONSTRAINT eqbs_pk PRIMARY KEY (cli, inm_num)
);
COMMENT ON TABLE pm.eqbs IS 'EQBS — Serial Number Stock Segment — the inventory-management stock segment (plant, storage location, batch, special-stock indicator) attached to a serialized equipment master (EQUI), linking a piece of serial-managed equipment to its MM stock position. Small, complete table.';
COMMENT ON COLUMN pm.eqbs.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.eqbs.inm_num IS 'EQUNR — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN pm.eqbs.cpa_ctg IS 'LBBSA — Stock Category [copia categoria]';
COMMENT ON COLUMN pm.eqbs.ofc IS 'B_WERK — Plant [officina]';
COMMENT ON COLUMN pm.eqbs.loc IS 'B_LAGER — Storage Location [locus repositionis]';
COMMENT ON COLUMN pm.eqbs.grx_num IS 'B_CHARGE — Batch Number [grex numerus]';
COMMENT ON COLUMN pm.eqbs.cpa_idx IS 'SOBKZ — Special Stock Indicator [copia index]';
COMMENT ON COLUMN pm.eqbs.emp_num IS 'KUNNR — Customer Number [emptor numerus]';
COMMENT ON COLUMN pm.eqbs.rat_num_ven IS 'LIFNR — Account Number of Vendor or Creditor [ratio numerus venditor]';
COMMENT ON COLUMN pm.eqbs.vdt_mnd_num IS 'KDAUF — Sales Order Number [venditio mandatum numerus]';
COMMENT ON COLUMN pm.eqbs.pos_num_vdt IS 'KDPOS — Item Number in Sales Order [positio numerus venditio]';
COMMENT ON COLUMN pm.eqbs.ops_elm_eop IS 'PS_PSP_PNR — Work Breakdown Structure Element (WBS Element) [opus elementum elementum operis]';
COMMENT ON COLUMN pm.eqbs.cpa_psn IS 'DISUB_OWNER — Owner of the stock (in case of third-party stocks) [copia persona]';

CREATE TABLE IF NOT EXISTS pm.eqkt (
  cli char(3),
  inm_num varchar(18),
  lng_clv char(1),
  dsc_obi varchar(40),
  txt_idx varchar(1),
  lng_idx_txt varchar(1),
  inm_dsc varchar(40),
  CONSTRAINT eqkt_pk PRIMARY KEY (cli, inm_num, lng_clv)
);
COMMENT ON TABLE pm.eqkt IS 'EQKT — Equipment short texts — multilingual descriptions of equipment records.';
COMMENT ON COLUMN pm.eqkt.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.eqkt.inm_num IS 'EQUNR — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN pm.eqkt.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN pm.eqkt.dsc_obi IS 'EQKTX — Description of technical object [descriptio obiectum]';
COMMENT ON COLUMN pm.eqkt.txt_idx IS 'KZLTX — Long Text Indicator [textus index]';
COMMENT ON COLUMN pm.eqkt.lng_idx_txt IS 'TXASP — Primary language indicator for text segment [lingua index textus]';
COMMENT ON COLUMN pm.eqkt.inm_dsc IS 'EQKTU — Equipment description in capital letters [instrumentum descriptio]';

CREATE TABLE IF NOT EXISTS pm.eqse (
  cli char(3),
  nsr varchar(10),
  mat_num varchar(18),
  nsr2 varchar(18),
  nom_psn_cre varchar(12),
  die_tbl_cre date,
  nom_psn_mut varchar(12),
  mut date,
  inm_num varchar(18),
  sta_nsr varchar(2),
  ofc varchar(4),
  loc varchar(4),
  grx_num varchar(10),
  emp_num varchar(10),
  vdt_dtb_ndo varchar(10),
  num_mtm_mat varchar(10),
  gdo varchar(2),
  nsr3 varchar(10),
  pos_num_nsr varchar(4),
  mat_num2 varchar(18),
  idx_nsr varchar(1),
  obi_num varchar(22),
  CONSTRAINT eqse_pk PRIMARY KEY (cli, nsr)
);
COMMENT ON TABLE pm.eqse IS 'EQSE — Serial Number Records — the serial-number history/master table linking a material''s serial number (MATNR+SERNR) to the equipment master it generated (EQUNR), including creation/change audit fields, plant/storage location/batch/customer context at the time of serialization, and a self-referencing history pointer (HEQSNR) to prior serial-number records. Small, complete table.';
COMMENT ON COLUMN pm.eqse.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.eqse.nsr IS 'EQSNR — Internal serial number [numerus serialis]';
COMMENT ON COLUMN pm.eqse.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN pm.eqse.nsr2 IS 'SERNR — Serial number [numerus serialis]';
COMMENT ON COLUMN pm.eqse.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN pm.eqse.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN pm.eqse.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pm.eqse.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pm.eqse.inm_num IS 'EQUNR — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN pm.eqse.sta_nsr IS 'STATUS — Status of the serial number [status numerus serialis]';
COMMENT ON COLUMN pm.eqse.ofc IS 'WERK — Plant [officina]';
COMMENT ON COLUMN pm.eqse.loc IS 'LAGER — Storage Location [locus repositionis]';
COMMENT ON COLUMN pm.eqse.grx_num IS 'CHARGE — Batch Number [grex numerus]';
COMMENT ON COLUMN pm.eqse.emp_num IS 'KUNDE — Customer Number [emptor numerus]';
COMMENT ON COLUMN pm.eqse.vdt_dtb_ndo IS 'SDBELN — Sales and Distribution Document Number [venditio distributio numerus documenti]';
COMMENT ON COLUMN pm.eqse.num_mtm_mat IS 'WABELN — Number of Goods Movement (Material Document) [numerus motus mercium materia]';
COMMENT ON COLUMN pm.eqse.gdo IS 'BLART — Document Type [genus documenti]';
COMMENT ON COLUMN pm.eqse.nsr3 IS 'HEQSNR — History: Internal serial number [numerus serialis]';
COMMENT ON COLUMN pm.eqse.pos_num_nsr IS 'HSNPOS — History: Item number of the serial number in the document [positio numerus numerus serialis]';
COMMENT ON COLUMN pm.eqse.mat_num2 IS 'HMATNR — History: Material Number [materia numerus]';
COMMENT ON COLUMN pm.eqse.idx_nsr IS 'REVLV — Indicator: Reversed serial number history [index numerus serialis]';
COMMENT ON COLUMN pm.eqse.obi_num IS 'OBJNR — Object number [obiectum numerus]';

CREATE TABLE IF NOT EXISTS pm.equi (
  cli char(3),
  inm_num varchar(18),
  die_tbl_cre date,
  nom_psn_cre varchar(12),
  lng_inm char(1),
  mut date,
  nom_psn_mut varchar(12),
  obi_cts varchar(4),
  inm_ctg varchar(1),
  gen_obi varchar(10),
  lvorm varchar(1),
  num varchar(25),
  mgn varchar(18),
  pnd_obi numeric(13,3),
  uni_pnd varchar(3),
  die date,
  val numeric(13,2),
  cvm varchar(5),
  ven_num varchar(10),
  die2 date,
  die3 date,
  inm_val numeric(13,2),
  ptm varchar(30),
  ptr varchar(3),
  num2 varchar(30),
  nsr varchar(30),
  num3 varchar(20),
  ann varchar(4),
  mns varchar(2),
  idx_ixp varchar(1),
  pri_trd_die date,
  ini_die_obi date,
  nsr2 varchar(18),
  die4 varchar(3),
  die_vdt_dtb date,
  die5 date,
  eqber varchar(30),
  cmp varchar(9),
  obi_num varchar(22),
  num4 varchar(18),
  obi_num2 varchar(18),
  krfkz varchar(1),
  mat varchar(18),
  mat_num varchar(18),
  nsr3 varchar(18),
  ofc varchar(4),
  loc varchar(4),
  grx_num varchar(10),
  emp_nsr varchar(10),
  ccu varchar(12),
  pms varchar(12),
  grd varchar(2),
  num5 varchar(20),
  org_cts_cmp varchar(1),
  inm varchar(1),
  inm2 varchar(1),
  s_konfi varchar(1),
  vdt_inm varchar(1),
  ctg_prd varchar(1),
  idx varchar(1),
  s_isu varchar(1),
  s_eqbs varchar(1),
  idx_gvh_obi varchar(1),
  cpa varchar(1),
  dvs varchar(2),
  die_seg_clv varchar(22),
  die_seg varchar(10),
  mat_num2 varchar(18),
  inm_ptm varchar(1),
  s_cc varchar(1),
  die_ult_mtm date,
  pos varchar(72),
  gen varchar(10),
  ofc2 varchar(4),
  vic_gen varchar(10),
  vic_adn_gen varchar(2),
  eqlb_duty varchar(1),
  eqlb_hide varchar(1),
  CONSTRAINT equi_pk PRIMARY KEY (cli, inm_num)
);
COMMENT ON TABLE pm.equi IS 'EQUI — Equipment master data — individual business object maintained independently. Reactor pumps, valves, sensors, fleet units.';
COMMENT ON COLUMN pm.equi.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.equi.inm_num IS 'EQUNR — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN pm.equi.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN pm.equi.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN pm.equi.lng_inm IS 'EQASP — Language in Which the Piece of Equipment was Entered [lingua instrumentum]';
COMMENT ON COLUMN pm.equi.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pm.equi.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pm.equi.obi_cts IS 'BEGRU — Technical object authorization group [obiectum coetus]';
COMMENT ON COLUMN pm.equi.inm_ctg IS 'EQTYP — Equipment category [instrumentum categoria]';
COMMENT ON COLUMN pm.equi.gen_obi IS 'EQART — Type of Technical Object [genus obiectum]';
COMMENT ON COLUMN pm.equi.lvorm IS 'LVORM — SAP Development Reserve: Format CHAR, Length 1';
COMMENT ON COLUMN pm.equi.num IS 'INVNR — Inventory number [numerus]';
COMMENT ON COLUMN pm.equi.mgn IS 'GROES — Size/dimension [magnitudo]';
COMMENT ON COLUMN pm.equi.pnd_obi IS 'BRGEW — Weight of object [pondus obiectum]';
COMMENT ON COLUMN pm.equi.uni_pnd IS 'GEWEI — Unit of weight [unitas pondus]';
COMMENT ON COLUMN pm.equi.die IS 'ANSDT — Acquisition date [dies]';
COMMENT ON COLUMN pm.equi.val IS 'ANSWT — Acquisition Value [valor]';
COMMENT ON COLUMN pm.equi.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN pm.equi.ven_num IS 'ELIEF — Vendor number [venditor numerus]';
COMMENT ON COLUMN pm.equi.die2 IS 'GWLEN — Date on which the warranty ends [dies]';
COMMENT ON COLUMN pm.equi.die3 IS 'GWLDT — Warranty Date [dies]';
COMMENT ON COLUMN pm.equi.inm_val IS 'WDBWT — Equipment replacement value [instrumentum valor]';
COMMENT ON COLUMN pm.equi.ptm IS 'HERST — Manufacturer of asset [patrimonium]';
COMMENT ON COLUMN pm.equi.ptr IS 'HERLD — Country of manufacture [patria]';
COMMENT ON COLUMN pm.equi.num2 IS 'HZEIN — Manufacturer drawing number [numerus]';
COMMENT ON COLUMN pm.equi.nsr IS 'SERGE — Manufacturer serial number [numerus serialis]';
COMMENT ON COLUMN pm.equi.num3 IS 'TYPBZ — Manufacturer model number [numerus]';
COMMENT ON COLUMN pm.equi.ann IS 'BAUJJ — Year of construction [annus]';
COMMENT ON COLUMN pm.equi.mns IS 'BAUMM — Month of construction [mensis]';
COMMENT ON COLUMN pm.equi.idx_ixp IS 'APLKZ — Indicator: Task List Exists [index index pensorum]';
COMMENT ON COLUMN pm.equi.pri_trd_die IS 'AULDT — First delivery date of the equipment [primus traditio dies]';
COMMENT ON COLUMN pm.equi.ini_die_obi IS 'INBDT — Start-up Date of the Technical Object [initium dies obiectum]';
COMMENT ON COLUMN pm.equi.nsr2 IS 'GERNR — Serial Number [numerus serialis]';
COMMENT ON COLUMN pm.equi.die4 IS 'EQLFN — Consecutive numbering of EquipUsagePeriods on same day [dies]';
COMMENT ON COLUMN pm.equi.die_vdt_dtb IS 'GWLDV — Warranty date for Sales and Distribution [dies venditio distributio]';
COMMENT ON COLUMN pm.equi.die5 IS 'EQDAT — Date, intended for SAP internal use [dies]';
COMMENT ON COLUMN pm.equi.eqber IS 'EQBER — Technical information, intended for SAP internal use';
COMMENT ON COLUMN pm.equi.cmp IS 'EQNUM — Numerical field, intended for SAP internal use [campus]';
COMMENT ON COLUMN pm.equi.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN pm.equi.num4 IS 'EQSNR — EQSE Number [numerus]';
COMMENT ON COLUMN pm.equi.obi_num2 IS 'CUOBJ — Configuration (internal object number) [obiectum numerus]';
COMMENT ON COLUMN pm.equi.krfkz IS 'KRFKZ — Referenced Configuration';
COMMENT ON COLUMN pm.equi.mat IS 'KMATN — Configurable Material [materia]';
COMMENT ON COLUMN pm.equi.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN pm.equi.nsr3 IS 'SERNR — Serial Number [numerus serialis]';
COMMENT ON COLUMN pm.equi.ofc IS 'WERK — Plant [officina]';
COMMENT ON COLUMN pm.equi.loc IS 'LAGER — Storage Location [locus repositionis]';
COMMENT ON COLUMN pm.equi.grx_num IS 'CHARGE — Batch Number [grex numerus]';
COMMENT ON COLUMN pm.equi.emp_nsr IS 'KUNDE — Customer to Whom Serial Number was Delivered [emptor numerus serialis]';
COMMENT ON COLUMN pm.equi.ccu IS 'WARPL — Maintenance Plan [consilium curationis]';
COMMENT ON COLUMN pm.equi.pms IS 'IMRC_POINT — Measuring Point [punctum mensurae]';
COMMENT ON COLUMN pm.equi.grd IS 'REVLV — Revision Level [gradus]';
COMMENT ON COLUMN pm.equi.num5 IS 'MGANR — Master warranty number [numerus]';
COMMENT ON COLUMN pm.equi.org_cts_cmp IS 'BEGRUI — Data origin for authorization group field [origo coetus campus]';
COMMENT ON COLUMN pm.equi.inm IS 'S_EQUI — Equipment data exists [instrumentum]';
COMMENT ON COLUMN pm.equi.inm2 IS 'S_SERIAL — Serial data when maintaining equipment [instrumentum]';
COMMENT ON COLUMN pm.equi.s_konfi IS 'S_KONFI — Configuration supported';
COMMENT ON COLUMN pm.equi.vdt_inm IS 'S_SALE — Sales equipment [venditio instrumentum]';
COMMENT ON COLUMN pm.equi.ctg_prd IS 'S_FHM — Equip. category relevant to production resources and tools [categoria productio]';
COMMENT ON COLUMN pm.equi.idx IS 'S_ELSE — Indicator: Other Data Active [index]';
COMMENT ON COLUMN pm.equi.s_isu IS 'S_ISU — IS-U data';
COMMENT ON COLUMN pm.equi.s_eqbs IS 'S_EQBS — EQSI Exists';
COMMENT ON COLUMN pm.equi.idx_gvh_obi IS 'S_FLEET — Indicator: Fleet object active [index grex vehiculorum obiectum]';
COMMENT ON COLUMN pm.equi.cpa IS 'BSTVP — Stock Check for Serial Numbers [copia]';
COMMENT ON COLUMN pm.equi.dvs IS 'SPARTE — Division [divisio]';
COMMENT ON COLUMN pm.equi.die_seg_clv IS 'HANDLE — SAP Development Reserve: Integration of Date Segment (Key) [dies segmentum clavis]';
COMMENT ON COLUMN pm.equi.die_seg IS 'TSEGTP — SAP Development Reserve: Integration Date Segment (Template) [dies segmentum]';
COMMENT ON COLUMN pm.equi.mat_num2 IS 'EMATN — Material Number Corresponding to Manufacturer Part Number [materia numerus]';
COMMENT ON COLUMN pm.equi.inm_ptm IS 'ACT_CHANGE_AA — Change Equipment Master when Changing Asset [instrumentum patrimonium]';
COMMENT ON COLUMN pm.equi.s_cc IS 'S_CC — Configuration Control Data';
COMMENT ON COLUMN pm.equi.die_ult_mtm IS 'DATLWB — Date of Last Goods Movement [dies ultimus motus mercium]';
COMMENT ON COLUMN pm.equi.pos IS 'UII — Unique Item Identifier [positio]';
COMMENT ON COLUMN pm.equi.gen IS 'IUID_TYPE — Structure Type of UII [genus]';
COMMENT ON COLUMN pm.equi.ofc2 IS 'UII_PLANT — Plant Responsible for UII [officina]';
COMMENT ON COLUMN pm.equi.vic_gen IS 'EQUI_SRTYPE — Shift Report Type [vicis genus]';
COMMENT ON COLUMN pm.equi.vic_adn_gen IS 'EQUI_SNTYPE — Shift Note Type [vicis adnotatio genus]';
COMMENT ON COLUMN pm.equi.eqlb_duty IS 'EQLB_DUTY — Logbook Duty';
COMMENT ON COLUMN pm.equi.eqlb_hide IS 'EQLB_HIDE — Hide Logbook Display';

CREATE TABLE IF NOT EXISTS pm.equz (
  cli char(3),
  inm_num varchar(18),
  vld_die date,
  die varchar(3),
  num_die varchar(3),
  die_tbl_cre date,
  nom_psn_cre varchar(12),
  mut date,
  nom_psn_mut varchar(12),
  inm_per_tmp time,
  estai varchar(1),
  estae varchar(4),
  stnam varchar(12),
  lvorm varchar(1),
  vla_die date,
  cur_cns_ofc varchar(4),
  org_idx varchar(1),
  gen_mat_obi varchar(18),
  num varchar(30),
  inm varchar(18),
  inm_mnu varchar(4),
  ccs_emp_min varchar(3),
  org_idx2 varchar(1),
  obi_gen_sto varchar(2),
  obi_sto varchar(8),
  org_idx3 varchar(1),
  num2 varchar(25),
  org_idx4 varchar(1),
  loc_rat_asg varchar(12),
  emp_num varchar(10),
  fin_emp_num varchar(10),
  kund3 varchar(10),
  inm_lcn_num varchar(20),
  rbnr varchar(9),
  die2 date,
  ezber varchar(30),
  cmp varchar(9),
  org_idx5 varchar(1),
  doc varchar(10),
  ddc_doc date,
  pvs_focus bytea,
  ppeguid bytea,
  nrm varchar(12),
  funcid varchar(40),
  idx varchar(1),
  sgn varchar(1),
  CONSTRAINT equz_pk PRIMARY KEY (cli, inm_num, vld_die, die)
);
COMMENT ON TABLE pm.equz IS 'EQUZ — Equipment time segments — validity windows and time-dependent segments of the equipment record.';
COMMENT ON COLUMN pm.equz.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.equz.inm_num IS 'EQUNR — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN pm.equz.vld_die IS 'DATBI — Valid To Date [validus ad dies]';
COMMENT ON COLUMN pm.equz.die IS 'EQLFN — Consecutive numbering of EquipUsagePeriods on same day [dies]';
COMMENT ON COLUMN pm.equz.num_die IS 'EQUZN — Number of next EquipUsagePeriod on same day [numerus dies]';
COMMENT ON COLUMN pm.equz.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN pm.equz.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN pm.equz.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pm.equz.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pm.equz.inm_per_tmp IS 'TIMBI — Equipment usage period time stamp [instrumentum periodus tempus]';
COMMENT ON COLUMN pm.equz.estai IS 'ESTAI — SAP Development Reserve: Format CHAR, Length 1';
COMMENT ON COLUMN pm.equz.estae IS 'ESTAE — SAP Development Reserve: Format CHAR, Length 4';
COMMENT ON COLUMN pm.equz.stnam IS 'STNAM — SAP Development Reserve: Format CHAR, Length 12';
COMMENT ON COLUMN pm.equz.lvorm IS 'LVORM — SAP Development Reserve: Format CHAR, Length 1';
COMMENT ON COLUMN pm.equz.vla_die IS 'DATAB — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN pm.equz.cur_cns_ofc IS 'IWERK — Maintenance Planning Plant [curatio consilium officina]';
COMMENT ON COLUMN pm.equz.org_idx IS 'IWERKI — Data origin indicator [origo index]';
COMMENT ON COLUMN pm.equz.gen_mat_obi IS 'SUBMT — Construction type material of the object [genus materia obiectum]';
COMMENT ON COLUMN pm.equz.num IS 'MAPAR — Manufacturer part number [numerus]';
COMMENT ON COLUMN pm.equz.inm IS 'HEQUI — Superordinate Equipment [instrumentum]';
COMMENT ON COLUMN pm.equz.inm_mnu IS 'HEQNR — Equipment position at InstallLoc (Superior Equip./FunctLoc) [instrumentum munus]';
COMMENT ON COLUMN pm.equz.ccs_emp_min IS 'INGRP — Planner Group for Customer Service and Plant Maintenance [coetus consiliorum emptor ministerium]';
COMMENT ON COLUMN pm.equz.org_idx2 IS 'INGRPI — Data origin indicator [origo index]';
COMMENT ON COLUMN pm.equz.obi_gen_sto IS 'PM_OBJTY — Object Type of CIM Resources for Work Center [obiectum genus statio operis]';
COMMENT ON COLUMN pm.equz.obi_sto IS 'GEWRK — Object ID of the Work Center [obiectum statio operis]';
COMMENT ON COLUMN pm.equz.org_idx3 IS 'GEWRKI — Data origin indicator [origo index]';
COMMENT ON COLUMN pm.equz.num2 IS 'TIDNR — Technical identification number [numerus]';
COMMENT ON COLUMN pm.equz.org_idx4 IS 'TIDNRI — Data origin indicator [origo index]';
COMMENT ON COLUMN pm.equz.loc_rat_asg IS 'ILOAN — Location and account assignment for technical object [locus ratio assignatio]';
COMMENT ON COLUMN pm.equz.emp_num IS 'KUND1 — Customer number [emptor numerus]';
COMMENT ON COLUMN pm.equz.fin_emp_num IS 'KUND2 — End customer number [finis emptor numerus]';
COMMENT ON COLUMN pm.equz.kund3 IS 'KUND3 — Operator';
COMMENT ON COLUMN pm.equz.inm_lcn_num IS 'LIZNR — Equipment license number [instrumentum licentia numerus]';
COMMENT ON COLUMN pm.equz.rbnr IS 'RBNR — Catalog Profile';
COMMENT ON COLUMN pm.equz.die2 IS 'EZDAT — Date, intended for SAP internal use [dies]';
COMMENT ON COLUMN pm.equz.ezber IS 'EZBER — Technical information, intended for SAP internal use';
COMMENT ON COLUMN pm.equz.cmp IS 'EZNUM — Numerical field, intended for SAP internal use [campus]';
COMMENT ON COLUMN pm.equz.org_idx5 IS 'RBNR_I — Data origin indicator [origo index]';
COMMENT ON COLUMN pm.equz.doc IS 'IBLNR — Physical Inventory Document [documentum]';
COMMENT ON COLUMN pm.equz.ddc_doc IS 'BLDAT — Document Date in Document [dies documenti documentum]';
COMMENT ON COLUMN pm.equz.pvs_focus IS 'PVS_FOCUS — Internal Identification for PVS Objects';
COMMENT ON COLUMN pm.equz.ppeguid IS 'PPEGUID — Internal Identification for PVS Objects';
COMMENT ON COLUMN pm.equz.nrm IS 'TECHS — Parameter Variant/Standard Variant [norma]';
COMMENT ON COLUMN pm.equz.funcid IS 'FUNCID — Function Identifier';
COMMENT ON COLUMN pm.equz.idx IS 'FRCFIT — Indicator: Forced Installation/Dismantling [index]';
COMMENT ON COLUMN pm.equz.sgn IS 'FRCRMV — Force Dismantling Flag [signum]';

CREATE TABLE IF NOT EXISTS pm.fleet (
  cli char(3),
  obi_num varchar(22),
  gvh_obi_gen varchar(4),
  gvh_ctg varchar(4),
  vhc_num varchar(18),
  vhc_num2 varchar(24),
  num varchar(24),
  lcn_num varchar(15),
  exp_die_lcn date,
  gvh_obi numeric(9,3),
  gvh_obi2 numeric(9,3),
  gvh_obi3 numeric(9,3),
  uni_msu varchar(3),
  pri_num varchar(2),
  die_ult_nmr date,
  tmp_nmr numeric(9,3),
  tmp_nmr2 numeric(9,3),
  num2 varchar(2),
  num3 varchar(3),
  num4 varchar(20),
  clv_num varchar(10),
  gvh_obi4 varchar(4),
  gvh_obi_gen2 varchar(4),
  gvh_obi5 numeric(9,3),
  uni_msu2 varchar(3),
  gvh_obi_num varchar(2),
  gvh_obi_cpc numeric(9,3),
  uni_msu3 varchar(3),
  gvh_obi_nsr varchar(20),
  gvh_obi_gen3 varchar(4),
  gvh_obi_gen4 varchar(4),
  gvh_obi_gen5 varchar(4),
  gvh_obi_grs numeric(9,3),
  gvh_obi_pnd numeric(9,3),
  uni_msu4 varchar(3),
  gvh_obi6 numeric(9,3),
  gvh_obi7 numeric(9,3),
  gvh_obi8 numeric(9,3),
  uni_msu5 varchar(3),
  gvh_obi_vlm numeric(9,3),
  uni_msu6 varchar(3),
  gvh_obi_num2 varchar(2),
  gvh_obi9 numeric(9,3),
  uni_msu7 varchar(3),
  gvh_obi10 numeric(9,3),
  gvh_obi_mtm numeric(9,3),
  idx varchar(1),
  CONSTRAINT fleet_pk PRIMARY KEY (cli, obi_num)
);
COMMENT ON TABLE pm.fleet IS 'FLEET — Fleet Attributes — the vehicle master extension to the general equipment/object master (keyed on OBJNR), carrying VIN/chassis number, licence plate and its expiry, dimensions, engine and fuel type, odometer/hour-meter replacement readings, load capacity, and speed limits. This is the table a logistics or dealer digital twin keys on: it is the only PM table that carries licence-plate, VIN-equivalent (FLEET_VIN/CHASSIS_NUM), fuel-type, and odometer (REPLA_ODOM) fields, making it the natural join point between a maintenance-order/equipment record and an external vehicle/telematics or dealer syste';
COMMENT ON COLUMN pm.fleet.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.fleet.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN pm.fleet.gvh_obi_gen IS 'OBJECT_GRP — Fleet Object: Object type group [grex vehiculorum obiectum genus]';
COMMENT ON COLUMN pm.fleet.gvh_ctg IS 'FLEET_CAT — Fleet Category [grex vehiculorum categoria]';
COMMENT ON COLUMN pm.fleet.vhc_num IS 'FLEET_NUM — Vehicle Number [vehiculum numerus]';
COMMENT ON COLUMN pm.fleet.vhc_num2 IS 'FLEET_VIN — Vehicle Identification Number [vehiculum numerus]';
COMMENT ON COLUMN pm.fleet.num IS 'CHASSIS_NUM — Chassis Number [numerus]';
COMMENT ON COLUMN pm.fleet.lcn_num IS 'LICENSE_NUM — License Plate Number [licentia numerus]';
COMMENT ON COLUMN pm.fleet.exp_die_lcn IS 'EXPIRY_DATE — Expiry date of license plate [expiratio dies licentia]';
COMMENT ON COLUMN pm.fleet.gvh_obi IS 'FLEET_HGT — Fleet Object: Height [grex vehiculorum obiectum]';
COMMENT ON COLUMN pm.fleet.gvh_obi2 IS 'FLEET_WID — Fleet Object: Width [grex vehiculorum obiectum]';
COMMENT ON COLUMN pm.fleet.gvh_obi3 IS 'FLEET_LEN — Fleet Object: Length [grex vehiculorum obiectum]';
COMMENT ON COLUMN pm.fleet.uni_msu IS 'DIM_UNIT — Unit of Measurement [unitas mensuratio]';
COMMENT ON COLUMN pm.fleet.pri_num IS 'PRI_CALC — Priority Number of PM Calculation [prioritas numerus]';
COMMENT ON COLUMN pm.fleet.die_ult_nmr IS 'REPLA_DATE — Date of Last Counter Replacement [dies ultimus numerator]';
COMMENT ON COLUMN pm.fleet.tmp_nmr IS 'REPLA_ODOM — Odometer Reading at Time of Counter Replacement [tempus numerator]';
COMMENT ON COLUMN pm.fleet.tmp_nmr2 IS 'REPLA_OPH — Operating Hours at Time of Counter Replacement [tempus numerator]';
COMMENT ON COLUMN pm.fleet.num2 IS 'NUM_AXLE — Number of Axles [numerus]';
COMMENT ON COLUMN pm.fleet.num3 IS 'MAX_OCCUPANTS — Maximum Number of Occupants [numerus]';
COMMENT ON COLUMN pm.fleet.num4 IS 'CARD_NUM — Fuel Card Number [numerus]';
COMMENT ON COLUMN pm.fleet.clv_num IS 'KEY_NUM — Key Number [clavis numerus]';
COMMENT ON COLUMN pm.fleet.gvh_obi4 IS 'FLEET_USE — Fleet Object: Usage [grex vehiculorum obiectum]';
COMMENT ON COLUMN pm.fleet.gvh_obi_gen2 IS 'ENGINE_TYPE — Fleet Object: Engine Type [grex vehiculorum obiectum genus]';
COMMENT ON COLUMN pm.fleet.gvh_obi5 IS 'ENGINE_POWER — Fleet Object: Engine power [grex vehiculorum obiectum]';
COMMENT ON COLUMN pm.fleet.uni_msu2 IS 'UNIT_POWER — Unit of Measurement [unitas mensuratio]';
COMMENT ON COLUMN pm.fleet.gvh_obi_num IS 'ENGINE_CYL — Fleet Object: Number of engine cylinders [grex vehiculorum obiectum numerus]';
COMMENT ON COLUMN pm.fleet.gvh_obi_cpc IS 'ENGINE_CAP — Fleet Object: Engine capacity [grex vehiculorum obiectum capacitas]';
COMMENT ON COLUMN pm.fleet.uni_msu3 IS 'UNIT_CAP — Unit of Measurement [unitas mensuratio]';
COMMENT ON COLUMN pm.fleet.gvh_obi_nsr IS 'ENGINE_SNR — Fleet Object: Engine Serial Number [grex vehiculorum obiectum numerus serialis]';
COMMENT ON COLUMN pm.fleet.gvh_obi_gen3 IS 'FUEL_PRI — Fleet Object: Fuel Type [grex vehiculorum obiectum genus]';
COMMENT ON COLUMN pm.fleet.gvh_obi_gen4 IS 'FUEL_SEC — Fleet Object: Fuel Type [grex vehiculorum obiectum genus]';
COMMENT ON COLUMN pm.fleet.gvh_obi_gen5 IS 'OIL_TYPE — Fleet Object: Fuel Type [grex vehiculorum obiectum genus]';
COMMENT ON COLUMN pm.fleet.gvh_obi_grs IS 'GROSS_WGT — Fleet Object: Gross weight [grex vehiculorum obiectum crassus]';
COMMENT ON COLUMN pm.fleet.gvh_obi_pnd IS 'LOAD_WGT — Fleet Object: Load weight [grex vehiculorum obiectum pondus]';
COMMENT ON COLUMN pm.fleet.uni_msu4 IS 'WGT_UNIT — Unit of Measurement [unitas mensuratio]';
COMMENT ON COLUMN pm.fleet.gvh_obi6 IS 'LOAD_HGT — Fleet Object: Load height [grex vehiculorum obiectum]';
COMMENT ON COLUMN pm.fleet.gvh_obi7 IS 'LOAD_WID — Fleet Object: Load width [grex vehiculorum obiectum]';
COMMENT ON COLUMN pm.fleet.gvh_obi8 IS 'LOAD_LEN — Fleet Object: Load length [grex vehiculorum obiectum]';
COMMENT ON COLUMN pm.fleet.uni_msu5 IS 'LOAD_DIM_UNIT — Unit of Measurement [unitas mensuratio]';
COMMENT ON COLUMN pm.fleet.gvh_obi_vlm IS 'LOAD_VOL — Fleet Object: Load volume [grex vehiculorum obiectum volumen]';
COMMENT ON COLUMN pm.fleet.uni_msu6 IS 'VOL_UNIT — Unit of Measurement [unitas mensuratio]';
COMMENT ON COLUMN pm.fleet.gvh_obi_num2 IS 'NO_COMPART — Fleet Object: Number of compartments [grex vehiculorum obiectum numerus]';
COMMENT ON COLUMN pm.fleet.gvh_obi9 IS 'SPEED_MAX — Fleet Object: Maximum speed [grex vehiculorum obiectum]';
COMMENT ON COLUMN pm.fleet.uni_msu7 IS 'SPEED_UNIT — Unit of Measurement [unitas mensuratio]';
COMMENT ON COLUMN pm.fleet.gvh_obi10 IS 'CONSUMP_TOL — Fleet object: Consumption tolerance [grex vehiculorum obiectum]';
COMMENT ON COLUMN pm.fleet.gvh_obi_mtm IS 'CONSUMP_MOVE — Fleet object: Consumption movement [grex vehiculorum obiectum motus]';
COMMENT ON COLUMN pm.fleet.idx IS 'IS_SI_UNIT — Indicator: fields with units of measure use the SI system [index]';

CREATE TABLE IF NOT EXISTS pm.iflot (
  cli char(3),
  lcf varchar(30),
  lng_obi char(1),
  lcf_idx varchar(5),
  lcf_ctg varchar(1),
  lcf2 varchar(30),
  die_obi_cre date,
  nom_usr_cre varchar(12),
  die_obi_ult date,
  nom_usr_ult varchar(12),
  ini_die_obi date,
  obi_cts varchar(4),
  rfr_lcf varchar(30),
  pstae varchar(4),
  stnam varchar(12),
  lvorm varchar(1),
  gen_mat_obi varchar(18),
  org_gen_cmp varchar(1),
  num varchar(30),
  mapari varchar(1),
  inm_lcf varchar(1),
  org_cmp varchar(1),
  inm_lcf2 varchar(1),
  org_cts_cmp varchar(1),
  cur_cns_ofc varchar(4),
  org_cns_ofc varchar(1),
  ccs_emp_min varchar(3),
  org_cur_ccs varchar(1),
  obi_gen_sto varchar(2),
  obi_sto varchar(8),
  org_cmp_sto varchar(1),
  rbnr varchar(9),
  org_cur_cmp varchar(1),
  loc_rat_asg varchar(12),
  obi_num varchar(22),
  mnu_obi varchar(4),
  obi_ctg varchar(1),
  prems varchar(10),
  gen_obi varchar(10),
  num2 varchar(25),
  mgn varchar(18),
  grs_pnd numeric(13,3),
  pnd_uni varchar(3),
  val numeric(13,2),
  cvm varchar(5),
  die date,
  ptm varchar(30),
  ptr varchar(3),
  ann varchar(4),
  mns varchar(2),
  num3 varchar(20),
  mat_num varchar(18),
  nsr varchar(30),
  die_seg_clv varchar(22),
  die_seg varchar(10),
  fllb_duty varchar(1),
  fllb_hide varchar(1),
  vic_gen_obi varchar(10),
  nts_gen_vic varchar(2),
  CONSTRAINT iflot_pk PRIMARY KEY (cli, lcf)
);
COMMENT ON TABLE pm.iflot IS 'IFLOT — Functional Location — hierarchical installation location for technical objects. Reactor building, subsystem, position in the plant tree.';
COMMENT ON COLUMN pm.iflot.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.iflot.lcf IS 'TPLNR — Functional Location [locus functionalis]';
COMMENT ON COLUMN pm.iflot.lng_obi IS 'MLANG — Primary language for object texts [lingua obiectum]';
COMMENT ON COLUMN pm.iflot.lcf_idx IS 'TPLKZ — Functional location structure indicator [locus functionalis index]';
COMMENT ON COLUMN pm.iflot.lcf_ctg IS 'FLTYP — Functional location category [locus functionalis categoria]';
COMMENT ON COLUMN pm.iflot.lcf2 IS 'TPLMA — Superior functional location [locus functionalis]';
COMMENT ON COLUMN pm.iflot.die_obi_cre IS 'ERDAT — Date on which the object was created [dies obiectum creatus]';
COMMENT ON COLUMN pm.iflot.nom_usr_cre IS 'ERNAM — Name of User Who Created the Object [nomen usor creatus]';
COMMENT ON COLUMN pm.iflot.die_obi_ult IS 'AEDAT — Date on which the object was last changed [dies obiectum ultimus]';
COMMENT ON COLUMN pm.iflot.nom_usr_ult IS 'AENAM — Name of the user who last changed the object [nomen usor ultimus]';
COMMENT ON COLUMN pm.iflot.ini_die_obi IS 'DATAB — Start-up Date of the Technical Object [initium dies obiectum]';
COMMENT ON COLUMN pm.iflot.obi_cts IS 'BEGRU — Technical object authorization group [obiectum coetus]';
COMMENT ON COLUMN pm.iflot.rfr_lcf IS 'TRPNR — Reference functional location [referentia locus functionalis]';
COMMENT ON COLUMN pm.iflot.pstae IS 'PSTAE — SAP Development reserve: Format CHAR, length 4';
COMMENT ON COLUMN pm.iflot.stnam IS 'STNAM — SAP Development Reserve: Format CHAR, Length 12';
COMMENT ON COLUMN pm.iflot.lvorm IS 'LVORM — SAP Development Reserve: Format CHAR, Length 1';
COMMENT ON COLUMN pm.iflot.gen_mat_obi IS 'SUBMT — Construction type material of the object [genus materia obiectum]';
COMMENT ON COLUMN pm.iflot.org_gen_cmp IS 'SUBMTI — Data origin for construction type field [origo genus campus]';
COMMENT ON COLUMN pm.iflot.num IS 'MAPAR — Manufacturer part number [numerus]';
COMMENT ON COLUMN pm.iflot.mapari IS 'MAPARI — SAP Development Reserve: Format CHAR, Length 1';
COMMENT ON COLUMN pm.iflot.inm_lcf IS 'IEQUI — Installation of equipment allowed at the functional location [instrumentum locus functionalis]';
COMMENT ON COLUMN pm.iflot.org_cmp IS 'IEQUII — Data origin for equip. inst. allowed field [origo campus]';
COMMENT ON COLUMN pm.iflot.inm_lcf2 IS 'EINZL — Single equipment installation at functional location [instrumentum locus functionalis]';
COMMENT ON COLUMN pm.iflot.org_cts_cmp IS 'EINZLI — Data origin for authorization group field [origo coetus campus]';
COMMENT ON COLUMN pm.iflot.cur_cns_ofc IS 'IWERK — Maintenance Planning Plant [curatio consilium officina]';
COMMENT ON COLUMN pm.iflot.org_cns_ofc IS 'IWERKI — Data origin for planning plant field [origo consilium officina]';
COMMENT ON COLUMN pm.iflot.ccs_emp_min IS 'INGRP — Planner Group for Customer Service and Plant Maintenance [coetus consiliorum emptor ministerium]';
COMMENT ON COLUMN pm.iflot.org_cur_ccs IS 'INGRPI — Data origin for maintenance planner group field [origo curatio coetus consiliorum]';
COMMENT ON COLUMN pm.iflot.obi_gen_sto IS 'PM_OBJTY — Object Type of CIM Resources for Work Center [obiectum genus statio operis]';
COMMENT ON COLUMN pm.iflot.obi_sto IS 'LGWID — Object ID of the Work Center [obiectum statio operis]';
COMMENT ON COLUMN pm.iflot.org_cmp_sto IS 'LGWIDI — Data Origin for the Field ''Work Center'' [origo campus statio operis]';
COMMENT ON COLUMN pm.iflot.rbnr IS 'RBNR — Catalog Profile';
COMMENT ON COLUMN pm.iflot.org_cur_cmp IS 'RBNR_I — Data origin for maintenance catalog field [origo curatio campus]';
COMMENT ON COLUMN pm.iflot.loc_rat_asg IS 'ILOAN — Location and account assignment for technical object [locus ratio assignatio]';
COMMENT ON COLUMN pm.iflot.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN pm.iflot.mnu_obi IS 'POSNR — Position in superior technical object [munus obiectum]';
COMMENT ON COLUMN pm.iflot.obi_ctg IS 'ISTYP — Object category for Industry Solutions (IS) [obiectum categoria]';
COMMENT ON COLUMN pm.iflot.prems IS 'PREMS — Premise';
COMMENT ON COLUMN pm.iflot.gen_obi IS 'EQART — Type of Technical Object [genus obiectum]';
COMMENT ON COLUMN pm.iflot.num2 IS 'INVNR — Inventory number [numerus]';
COMMENT ON COLUMN pm.iflot.mgn IS 'GROES — Size/dimension [magnitudo]';
COMMENT ON COLUMN pm.iflot.grs_pnd IS 'BRGEW — Gross Weight [crassus pondus]';
COMMENT ON COLUMN pm.iflot.pnd_uni IS 'GEWEI — Weight Unit [pondus unitas]';
COMMENT ON COLUMN pm.iflot.val IS 'ANSWT — Acquisition Value [valor]';
COMMENT ON COLUMN pm.iflot.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN pm.iflot.die IS 'ANSDT — Acquisition date [dies]';
COMMENT ON COLUMN pm.iflot.ptm IS 'HERST — Manufacturer of asset [patrimonium]';
COMMENT ON COLUMN pm.iflot.ptr IS 'HERLD — Country of manufacture [patria]';
COMMENT ON COLUMN pm.iflot.ann IS 'BAUJJ — Year of construction [annus]';
COMMENT ON COLUMN pm.iflot.mns IS 'BAUMM — Month of construction [mensis]';
COMMENT ON COLUMN pm.iflot.num3 IS 'TYPBZ — Manufacturer model number [numerus]';
COMMENT ON COLUMN pm.iflot.mat_num IS 'EMATN — Material Number Corresponding to Manufacturer Part Number [materia numerus]';
COMMENT ON COLUMN pm.iflot.nsr IS 'SERGE — Manufacturer serial number [numerus serialis]';
COMMENT ON COLUMN pm.iflot.die_seg_clv IS 'HANDLE — SAP Development Reserve: Integration of Date Segment (Key) [dies segmentum clavis]';
COMMENT ON COLUMN pm.iflot.die_seg IS 'TSEGTP — SAP Development Reserve: Integration Date Segment (Template) [dies segmentum]';
COMMENT ON COLUMN pm.iflot.fllb_duty IS 'FLLB_DUTY — Logbook Duty';
COMMENT ON COLUMN pm.iflot.fllb_hide IS 'FLLB_HIDE — Hide Logbook Display';
COMMENT ON COLUMN pm.iflot.vic_gen_obi IS 'IFLOT_SRTYPE — Shift Report Type for Object [vicis genus obiectum]';
COMMENT ON COLUMN pm.iflot.nts_gen_vic IS 'IFLOT_SNTYPE — Notification Type for Shift Note for Object [nuntius genus vicis]';

CREATE TABLE IF NOT EXISTS pm.iflotx (
  cli char(3),
  lcf varchar(30),
  lng_clv char(1),
  dsc_lcf varchar(40),
  idx_txt varchar(1),
  lng_idx_txt varchar(1),
  dsc_lcf2 varchar(40),
  CONSTRAINT iflotx_pk PRIMARY KEY (cli, lcf, lng_clv)
);
COMMENT ON TABLE pm.iflotx IS 'IFLOTX — Functional Location short texts — multilingual descriptions of functional locations.';
COMMENT ON COLUMN pm.iflotx.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.iflotx.lcf IS 'TPLNR — Functional Location [locus functionalis]';
COMMENT ON COLUMN pm.iflotx.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN pm.iflotx.dsc_lcf IS 'PLTXT — Description of functional location [descriptio locus functionalis]';
COMMENT ON COLUMN pm.iflotx.idx_txt IS 'KZLTX — Indicator: Long text exists [index textus]';
COMMENT ON COLUMN pm.iflotx.lng_idx_txt IS 'KZMLA — Primary language indicator for text segment [lingua index textus]';
COMMENT ON COLUMN pm.iflotx.dsc_lcf2 IS 'PLTXU — Description of functional location in capital letters [descriptio locus functionalis]';

CREATE TABLE IF NOT EXISTS pm.ihgns (
  cli char(3),
  obi_num varchar(22),
  num varchar(8),
  num2 varchar(8),
  nom_psn_lcn varchar(12),
  nom_psn_lcn2 varchar(12),
  die_lcn date,
  tmp_lcn time,
  lcn_vla date,
  lcn_vld date,
  lcn_vla_tmp time,
  lcn_vld_tmp time,
  nom_psn_lcn3 varchar(12),
  die_lcn2 date,
  tmp_lcn2 time,
  idx_lcn_cnf varchar(1),
  idx_lcn varchar(1),
  nom_psn_lcn4 varchar(12),
  CONSTRAINT ihgns_pk PRIMARY KEY (cli, obi_num, num)
);
COMMENT ON TABLE pm.ihgns IS 'IHGNS — Permit Segment for Plant Maintenance — the approval/authorization workflow segment attached to a permit (via OBJNR+COUNTER), recording who requested, granted, and confirmed the safety permit and the associated valid-from/valid-to and confirmation timestamps. Works alongside IHSG (the object-related permit assignment) to drive the PM permit/safety-clearance process before maintenance work starts. Small, complete table.';
COMMENT ON COLUMN pm.ihgns.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.ihgns.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN pm.ihgns.num IS 'COUNTER — Sequential number [numerus]';
COMMENT ON COLUMN pm.ihgns.num2 IS 'COUNTERS — Sequential number [numerus]';
COMMENT ON COLUMN pm.ihgns.nom_psn_lcn IS 'GENPAUS — Name of person authorizing permit [nomen persona licentia]';
COMMENT ON COLUMN pm.ihgns.nom_psn_lcn2 IS 'GENNAME — Name of person requesting the permit [nomen persona licentia]';
COMMENT ON COLUMN pm.ihgns.die_lcn IS 'GENDATUM — Date of application for permit [dies licentia]';
COMMENT ON COLUMN pm.ihgns.tmp_lcn IS 'GENTIME — Time permit was applied for [tempus licentia]';
COMMENT ON COLUMN pm.ihgns.lcn_vla IS 'GENVDATE — Permit valid from [licentia validus ab]';
COMMENT ON COLUMN pm.ihgns.lcn_vld IS 'GENBDATE — Permit valid to [licentia validus ad]';
COMMENT ON COLUMN pm.ihgns.lcn_vla_tmp IS 'GENVTIME — Permit valid from (time) [licentia validus ab tempus]';
COMMENT ON COLUMN pm.ihgns.lcn_vld_tmp IS 'GENBTIME — Permit valid to (time) [licentia validus ad tempus]';
COMMENT ON COLUMN pm.ihgns.nom_psn_lcn3 IS 'GENINAME — Name of person confirming permit [nomen persona licentia]';
COMMENT ON COLUMN pm.ihgns.die_lcn2 IS 'GENIDATE — Date permit was confirmed [dies licentia]';
COMMENT ON COLUMN pm.ihgns.tmp_lcn2 IS 'GENITIME — Time permit was confirmed [tempus licentia]';
COMMENT ON COLUMN pm.ihgns.idx_lcn_cnf IS 'GENIAKT — Indicator: permit confirmation active [index licentia confirmatio]';
COMMENT ON COLUMN pm.ihgns.idx_lcn IS 'K_GENEHM — Indicator: permit granted [index licentia]';
COMMENT ON COLUMN pm.ihgns.nom_psn_lcn4 IS 'GENVNAME — Name of person who granted the permit [nomen persona licentia]';

CREATE TABLE IF NOT EXISTS pm.ihpa (
  cli char(3),
  obi_num varchar(22),
  scs varchar(2),
  nmr varchar(6),
  obi_ctg varchar(3),
  scs2 varchar(12),
  org_idx varchar(1),
  die_tbl_cre date,
  tmp_tbl time,
  nom_psn_cre varchar(12),
  mut date,
  tmp time,
  nom_psn_mut varchar(12),
  tbl varchar(1),
  dml_num varchar(10),
  ztm_scs varchar(6),
  CONSTRAINT ihpa_pk PRIMARY KEY (cli, obi_num, scs, nmr, obi_ctg, scs2)
);
COMMENT ON TABLE pm.ihpa IS 'IHPA — Plant Maintenance Partners — humans and organizations linked to a technical object. Foundation of the Layer-3 interaction record for equipment.';
COMMENT ON COLUMN pm.ihpa.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.ihpa.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN pm.ihpa.scs IS 'PARVW — Partner Function [socius]';
COMMENT ON COLUMN pm.ihpa.nmr IS 'COUNTER — Counter for differentiation 6-digit [numerator]';
COMMENT ON COLUMN pm.ihpa.obi_ctg IS 'OBTYP — Object Category [obiectum categoria]';
COMMENT ON COLUMN pm.ihpa.scs2 IS 'PARNR — Partner [socius]';
COMMENT ON COLUMN pm.ihpa.org_idx IS 'INHER — Data origin indicator [origo index]';
COMMENT ON COLUMN pm.ihpa.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN pm.ihpa.tmp_tbl IS 'ERZEIT — Time, at Which Record Was Added [tempus tabula]';
COMMENT ON COLUMN pm.ihpa.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN pm.ihpa.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pm.ihpa.tmp IS 'AEZEIT — Time of Change [tempus]';
COMMENT ON COLUMN pm.ihpa.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pm.ihpa.tbl IS 'KZLOESCH — Delete Data Record [tabula]';
COMMENT ON COLUMN pm.ihpa.dml_num IS 'ADRNR — Address number [domicilium numerus]';
COMMENT ON COLUMN pm.ihpa.ztm_scs IS 'TZONSP — Time Zone for Partner [zona temporis socius]';

CREATE TABLE IF NOT EXISTS pm.ihsg (
  cli char(3),
  obi_num varchar(22),
  num varchar(8),
  die_obi_cre date,
  nom_usr_cre varchar(12),
  die_obi_ult date,
  nom_usr_ult varchar(12),
  lcn_gen varchar(8),
  idx_lcn_mnd varchar(1),
  idx_lcn_ope varchar(1),
  idx_lcn varchar(1),
  idx_lcn2 varchar(1),
  idx_txt varchar(1),
  inm_num varchar(18),
  lcf varchar(30),
  mnd_num varchar(12),
  ope_act_num varchar(4),
  idx_obi_cls varchar(1),
  lng_clv char(1),
  idx_lcn_del varchar(1),
  idx_lcn3 varchar(1),
  idx_org_lcn varchar(1),
  obi_gen_cls varchar(2),
  sgn_grd varchar(1),
  ixp_gen varchar(1),
  clv_ixp_cts varchar(8),
  cts_nmr varchar(2),
  CONSTRAINT ihsg_pk PRIMARY KEY (cli, obi_num, num)
);
COMMENT ON TABLE pm.ihsg IS 'IHSG — Object-Related Permits in Plant Maintenance — assigns a permit type (PMSOG) to a technical object (equipment, functional location, order, or operation) with print/deletion control flags and the object-class discriminator, gating whether maintenance work on that object may proceed. Pairs with IHGNS which carries the permit''s authorization workflow detail. Small, complete table.';
COMMENT ON COLUMN pm.ihsg.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.ihsg.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN pm.ihsg.num IS 'COUNTER — Sequential number [numerus]';
COMMENT ON COLUMN pm.ihsg.die_obi_cre IS 'ERDAT — Date on which the object was created [dies obiectum creatus]';
COMMENT ON COLUMN pm.ihsg.nom_usr_cre IS 'ERNAM — Name of user who created the object [nomen usor creatus]';
COMMENT ON COLUMN pm.ihsg.die_obi_ult IS 'AEDAT — Date on which the object was last changed [dies obiectum ultimus]';
COMMENT ON COLUMN pm.ihsg.nom_usr_ult IS 'AENAM — Name of the user who last changed the object [nomen usor ultimus]';
COMMENT ON COLUMN pm.ihsg.lcn_gen IS 'PMSOG — Permit Type [licentia genus]';
COMMENT ON COLUMN pm.ihsg.idx_lcn_mnd IS 'K_AF — Indicator: permit to be printed with the order [index licentia mandatum]';
COMMENT ON COLUMN pm.ihsg.idx_lcn_ope IS 'K_AA — Indicator: permit to be printed with the operation [index licentia operatio]';
COMMENT ON COLUMN pm.ihsg.idx_lcn IS 'K_DRUCK — Indicator: permit was printed [index licentia]';
COMMENT ON COLUMN pm.ihsg.idx_lcn2 IS 'K_PRO — Indicator: permit relevant to protocol [index licentia]';
COMMENT ON COLUMN pm.ihsg.idx_txt IS 'KZLTX — Indicator: Long text exists [index textus]';
COMMENT ON COLUMN pm.ihsg.inm_num IS 'EQUNR — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN pm.ihsg.lcf IS 'TPLNR — Functional Location [locus functionalis]';
COMMENT ON COLUMN pm.ihsg.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN pm.ihsg.ope_act_num IS 'VORNR — Operation/Activity Number [operatio actio numerus]';
COMMENT ON COLUMN pm.ihsg.idx_obi_cls IS 'K_OBJEKT — Indicator: object class of the permit [index obiectum classis]';
COMMENT ON COLUMN pm.ihsg.lng_clv IS 'IHASP — Language Key [lingua clavis]';
COMMENT ON COLUMN pm.ihsg.idx_lcn_del IS 'K_NODEL — Indicator: permit may not be deleted [index licentia deletus]';
COMMENT ON COLUMN pm.ihsg.idx_lcn3 IS 'K_SKIP — Indicator: permit is skipped [index licentia]';
COMMENT ON COLUMN pm.ihsg.idx_org_lcn IS 'K_ORIGIN — Indicator: origin of the permit assignment [index origo licentia]';
COMMENT ON COLUMN pm.ihsg.obi_gen_cls IS 'CLASS — Object type/class [obiectum genus classis]';
COMMENT ON COLUMN pm.ihsg.sgn_grd IS 'LVORM — Deletion Flag for 2-Level Deletion Logic [signum gradus]';
COMMENT ON COLUMN pm.ihsg.ixp_gen IS 'PLNTY — Task List Type [index pensorum genus]';
COMMENT ON COLUMN pm.ihsg.clv_ixp_cts IS 'PLNNR — Key for Task List Group [clavis index pensorum coetus]';
COMMENT ON COLUMN pm.ihsg.cts_nmr IS 'PLNAL — Group Counter [coetus numerator]';

CREATE TABLE IF NOT EXISTS pm.iloa (
  cli char(3),
  loc_rat_asg varchar(12),
  lcf varchar(30),
  idx_obi varchar(1),
  org_idx_cmp varchar(1),
  cmp varchar(30),
  org_cmp varchar(1),
  cur_ofc varchar(4),
  org_cur_ofc varchar(1),
  loc_cur_obi varchar(10),
  org_loc_cmp varchar(1),
  msgrp varchar(8),
  org_num_cmp varchar(1),
  sof varchar(3),
  org_sof_cmp varchar(1),
  obi_sbs varchar(2),
  obi_sto varchar(8),
  org_sto_cmp varchar(1),
  ang varchar(4),
  org_ang_cmp varchar(1),
  amd varchar(4),
  org_amd_cmp varchar(1),
  csm varchar(10),
  org_csm_cmp varchar(1),
  ops_elm_eop varchar(8),
  org_eop_cmp varchar(1),
  soc varchar(4),
  org_soc_cmp varchar(1),
  ptm_num varchar(12),
  org_ptm varchar(1),
  ptm varchar(4),
  org_idx varchar(1),
  dgn_mnd_num varchar(12),
  org_dgn_mnd varchar(1),
  tsc_mnd varchar(12),
  org_tsc_mnd varchar(1),
  org_lcf_cmp varchar(1),
  ovd varchar(4),
  org_ovd_cmp varchar(1),
  cds varchar(2),
  org_cds_cmp varchar(1),
  dvs varchar(2),
  org_dvs_cmp varchar(1),
  dml_num varchar(10),
  org_dml_cmp varchar(1),
  obi_rfr_idx varchar(1),
  vdt varchar(4),
  vdt_cts varchar(3),
  CONSTRAINT iloa_pk PRIMARY KEY (cli, loc_rat_asg)
);
COMMENT ON TABLE pm.iloa IS 'ILOA — PM Object Location and Account Assignment — the accounting/organizational bridge from equipment/functional location to cost center, WBS, asset, business area.';
COMMENT ON COLUMN pm.iloa.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.iloa.loc_rat_asg IS 'ILOAN — Location and account assignment for technical object [locus ratio assignatio]';
COMMENT ON COLUMN pm.iloa.lcf IS 'TPLNR — Functional Location [locus functionalis]';
COMMENT ON COLUMN pm.iloa.idx_obi IS 'ABCKZ — ABC indicator for technical object [index obiectum]';
COMMENT ON COLUMN pm.iloa.org_idx_cmp IS 'ABCKZI — Data origin for ABC indicator field [origo index campus]';
COMMENT ON COLUMN pm.iloa.cmp IS 'EQFNR — Sort field [campus]';
COMMENT ON COLUMN pm.iloa.org_cmp IS 'EQFNRI — Data origin for sort field [origo campus]';
COMMENT ON COLUMN pm.iloa.cur_ofc IS 'SWERK — Maintenance plant [curatio officina]';
COMMENT ON COLUMN pm.iloa.org_cur_ofc IS 'SWERKI — Data origin for maintenance plant field [origo curatio officina]';
COMMENT ON COLUMN pm.iloa.loc_cur_obi IS 'STORT — Location of maintenance object [locus curatio obiectum]';
COMMENT ON COLUMN pm.iloa.org_loc_cmp IS 'STORTI — Data origin for location field [origo locus campus]';
COMMENT ON COLUMN pm.iloa.msgrp IS 'MSGRP — Room';
COMMENT ON COLUMN pm.iloa.org_num_cmp IS 'MSGRPI — Data origin for room number field [origo numerus campus]';
COMMENT ON COLUMN pm.iloa.sof IS 'BEBER — Plant section [sectio officinae]';
COMMENT ON COLUMN pm.iloa.org_sof_cmp IS 'BEBERI — Data origin for plant section field [origo sectio officinae campus]';
COMMENT ON COLUMN pm.iloa.obi_sbs IS 'CR_OBJTY — Object types of the CIM resource [obiectum subsidium]';
COMMENT ON COLUMN pm.iloa.obi_sto IS 'PPSID — Object ID of PP work center [obiectum statio operis]';
COMMENT ON COLUMN pm.iloa.org_sto_cmp IS 'PPSIDI — Data origin for PP work center field [origo statio operis campus]';
COMMENT ON COLUMN pm.iloa.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN pm.iloa.org_ang_cmp IS 'GSBERI — Data origin for business area field [origo area negotii campus]';
COMMENT ON COLUMN pm.iloa.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN pm.iloa.org_amd_cmp IS 'KOKRSI — Data origin for controlling area field [origo area moderationis campus]';
COMMENT ON COLUMN pm.iloa.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN pm.iloa.org_csm_cmp IS 'KOSTLI — Data origin for cost center field [origo centrum sumptus campus]';
COMMENT ON COLUMN pm.iloa.ops_elm_eop IS 'PROID — Work Breakdown Structure Element (WBS Element) [opus elementum elementum operis]';
COMMENT ON COLUMN pm.iloa.org_eop_cmp IS 'PROIDI — Data origin for WBS element field [origo elementum operis campus]';
COMMENT ON COLUMN pm.iloa.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN pm.iloa.org_soc_cmp IS 'BUKRSI — Data origin for company code field [origo codex societatis campus]';
COMMENT ON COLUMN pm.iloa.ptm_num IS 'ANLNR — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN pm.iloa.org_ptm IS 'ANLNRI — Data origin for asset main no./sub-no. fields [origo patrimonium]';
COMMENT ON COLUMN pm.iloa.ptm IS 'ANLUN — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN pm.iloa.org_idx IS 'ANLUNI — Data origin indicator [origo index]';
COMMENT ON COLUMN pm.iloa.dgn_mnd_num IS 'DAUFN — Standing order number [dignitas mandatum numerus]';
COMMENT ON COLUMN pm.iloa.org_dgn_mnd IS 'DAUFNI — Data origin of standing order number field [origo dignitas mandatum]';
COMMENT ON COLUMN pm.iloa.tsc_mnd IS 'AUFNR — Settlement order [transactio mandatum]';
COMMENT ON COLUMN pm.iloa.org_tsc_mnd IS 'AUFNRI — Data origin for settlement order field [origo transactio mandatum]';
COMMENT ON COLUMN pm.iloa.org_lcf_cmp IS 'TPLNRI — Data origin for functional location field [origo locus functionalis campus]';
COMMENT ON COLUMN pm.iloa.ovd IS 'VKORG — Sales Organization [organizatio venditionis]';
COMMENT ON COLUMN pm.iloa.org_ovd_cmp IS 'VKORGI — Data origin for sales organization field [origo organizatio venditionis campus]';
COMMENT ON COLUMN pm.iloa.cds IS 'VTWEG — Distribution Channel [canalis distributionis]';
COMMENT ON COLUMN pm.iloa.org_cds_cmp IS 'VTWEGI — Data origin of distribution channel field [origo canalis distributionis campus]';
COMMENT ON COLUMN pm.iloa.dvs IS 'SPART — Division [divisio]';
COMMENT ON COLUMN pm.iloa.org_dvs_cmp IS 'SPARTI — Data origin for division field [origo divisio campus]';
COMMENT ON COLUMN pm.iloa.dml_num IS 'ADRNR — Address number [domicilium numerus]';
COMMENT ON COLUMN pm.iloa.org_dml_cmp IS 'ADRNRI — Data origin for address field [origo domicilium campus]';
COMMENT ON COLUMN pm.iloa.obi_rfr_idx IS 'OWNER — Object reference indicator [obiectum referentia index]';
COMMENT ON COLUMN pm.iloa.vdt IS 'VKBUR — Sales Office [venditio]';
COMMENT ON COLUMN pm.iloa.vdt_cts IS 'VKGRP — Sales Group [venditio coetus]';

CREATE TABLE IF NOT EXISTS pm.imptt (
  cli char(3),
  pms varchar(12),
  obi_num_pms varchar(22),
  mnu_num_obi varchar(20),
  idx_mnu_num varchar(1),
  dsc_pms varchar(40),
  lng_clv char(1),
  idx_txt varchar(1),
  pms_ctg varchar(1),
  idx_rfr_pms varchar(1),
  die_obi_cre date,
  nom_usr_cre varchar(12),
  die_obi_ult date,
  nom_usr_ult varchar(12),
  obi_cts varchar(4),
  idx_pms varchar(1),
  sgn_grd varchar(1),
  pms2 varchar(18),
  rfr varchar(12),
  not_ varchar(10),
  idx_rfr_pms2 varchar(1),
  expon smallint,
  num smallint,
  pms_mta_val numeric(16,3),
  idx_num_cmp varchar(1),
  idx_mta_val varchar(1),
  txt_pms varchar(40),
  idx_txt_rfr varchar(1),
  msu_tot_nmr numeric(16,3),
  idx_num_cmp2 varchar(1),
  msu_tot_nmr2 numeric(16,3),
  idx_num_cmp3 varchar(1),
  msu_uni varchar(3),
  idx_pms_nmr varchar(1),
  idx_nmr varchar(1),
  idx_msu varchar(1),
  pms3 varchar(12),
  nmr_uni numeric(16,3),
  idx_num_cmp4 varchar(1),
  uni numeric(16,3),
  idx_num_cmp5 varchar(1),
  gen_msu_aes varchar(1),
  cod_cts_msu varchar(8),
  idx_cod_cts varchar(1),
  idx_aes_cod varchar(1),
  nmr varchar(1),
  idx_msu2 varchar(1),
  logsys varchar(10),
  tmp_frm numeric(15,0),
  CONSTRAINT imptt_pk PRIMARY KEY (cli, pms, obi_num_pms, mnu_num_obi)
);
COMMENT ON TABLE pm.imptt IS 'IMPTT — Measuring point master — the sensor key surface. Defines a measurement or counter location on a piece of equipment or functional location.';
COMMENT ON COLUMN pm.imptt.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.imptt.pms IS 'POINT — Measuring Point [punctum mensurae]';
COMMENT ON COLUMN pm.imptt.obi_num_pms IS 'MPOBJ — Object Number for the Measuring Point Object [obiectum numerus punctum mensurae]';
COMMENT ON COLUMN pm.imptt.mnu_num_obi IS 'PSORT — Position Number of the Object Measuring Point (Sort Field) [munus numerus obiectum]';
COMMENT ON COLUMN pm.imptt.idx_mnu_num IS 'PSORTR — Indicator: Position Number Comes From Reference MeasPoint [index munus numerus]';
COMMENT ON COLUMN pm.imptt.dsc_pms IS 'PTTXT — Description of Measuring Point [descriptio punctum mensurae]';
COMMENT ON COLUMN pm.imptt.lng_clv IS 'MLANG — Language Key [lingua clavis]';
COMMENT ON COLUMN pm.imptt.idx_txt IS 'KZLTX — Indicator: Long text exists [index textus]';
COMMENT ON COLUMN pm.imptt.pms_ctg IS 'MPTYP — Measuring Point Category [punctum mensurae categoria]';
COMMENT ON COLUMN pm.imptt.idx_rfr_pms IS 'IRFMP — Indicator: MeasPoint Is a Reference Measuring Point [index referentia punctum mensurae]';
COMMENT ON COLUMN pm.imptt.die_obi_cre IS 'ERDAT — Date on which the object was created [dies obiectum creatus]';
COMMENT ON COLUMN pm.imptt.nom_usr_cre IS 'ERNAM — Name of User Who Created the Object [nomen usor creatus]';
COMMENT ON COLUMN pm.imptt.die_obi_ult IS 'AEDAT — Date on which the object was last changed [dies obiectum ultimus]';
COMMENT ON COLUMN pm.imptt.nom_usr_ult IS 'AENAM — Name of the user who last changed the object [nomen usor ultimus]';
COMMENT ON COLUMN pm.imptt.obi_cts IS 'BEGRU — Technical object authorization group [obiectum coetus]';
COMMENT ON COLUMN pm.imptt.idx_pms IS 'INACT — Indicator: Measuring Point Inactive [index punctum mensurae]';
COMMENT ON COLUMN pm.imptt.sgn_grd IS 'LVORM — Deletion Flag for 2-Level Deletion Logic [signum gradus]';
COMMENT ON COLUMN pm.imptt.pms2 IS 'LOCAS — Assembly for Localization of Measuring Point [punctum mensurae]';
COMMENT ON COLUMN pm.imptt.rfr IS 'REFMP — Reference Meas.Pt [referentia]';
COMMENT ON COLUMN pm.imptt.not_ IS 'ATINN — Internal characteristic [nota]';
COMMENT ON COLUMN pm.imptt.idx_rfr_pms2 IS 'ATINNR — Indicator: Charac Comes From Reference Measuring Point [index referentia punctum mensurae]';
COMMENT ON COLUMN pm.imptt.expon IS 'EXPON — Power of Ten Exponent for Floating Point Display';
COMMENT ON COLUMN pm.imptt.num IS 'DECIM — Number of Decimal Places for Number Display [numerus]';
COMMENT ON COLUMN pm.imptt.pms_mta_val IS 'DESIR — Measuring Point Target Value [punctum mensurae meta valor]';
COMMENT ON COLUMN pm.imptt.idx_num_cmp IS 'DESIRI — Indicator: Associated Number Field Contains a Value [index numerus campus]';
COMMENT ON COLUMN pm.imptt.idx_mta_val IS 'DESIRR — Indicator: Target Value Comes From Reference Measuring Point [index meta valor]';
COMMENT ON COLUMN pm.imptt.txt_pms IS 'DSTXT — Aditional Short Text for Measuring Point [textus punctum mensurae]';
COMMENT ON COLUMN pm.imptt.idx_txt_rfr IS 'DSTXTR — Indicator: Additional Text Comes From Reference MeasPoint [index textus referentia]';
COMMENT ON COLUMN pm.imptt.msu_tot_nmr IS 'MRMIN — Lower Measurement Range Limit/Minimum Total Counter Reading [mensuratio summa totalis numerator]';
COMMENT ON COLUMN pm.imptt.idx_num_cmp2 IS 'MRMINI — Indicator: Associated Number Field Contains a Value [index numerus campus]';
COMMENT ON COLUMN pm.imptt.msu_tot_nmr2 IS 'MRMAX — Upper Measurement Range Limit/Maximum Total Counter Reading [mensuratio summa totalis numerator]';
COMMENT ON COLUMN pm.imptt.idx_num_cmp3 IS 'MRMAXI — Indicator: Associated Number Field Contains a Value [index numerus campus]';
COMMENT ON COLUMN pm.imptt.msu_uni IS 'MRNGU — Measurement Range Unit [mensuratio unitas]';
COMMENT ON COLUMN pm.imptt.idx_pms_nmr IS 'INDCT — Indicator to Show that Measuring Point Is a Counter [index punctum mensurae numerator]';
COMMENT ON COLUMN pm.imptt.idx_nmr IS 'INDRV — Indicator: Counter Runs Backwards [index numerator]';
COMMENT ON COLUMN pm.imptt.idx_msu IS 'INDTR — Indicator That Measurement Reading Transfer is Supported [index mensuratio]';
COMMENT ON COLUMN pm.imptt.pms3 IS 'TRANS — Measuring Point from Which Meas. Reading Was Transferred [punctum mensurae]';
COMMENT ON COLUMN pm.imptt.nmr_uni IS 'CJUMP — Counter Overflow Reading in SI Unit [numerator unitas]';
COMMENT ON COLUMN pm.imptt.idx_num_cmp4 IS 'CJUMPI — Indicator: Associated Number Field Contains a Value [index numerus campus]';
COMMENT ON COLUMN pm.imptt.uni IS 'PYEAR — Annual Estimate in SI Unit [unitas]';
COMMENT ON COLUMN pm.imptt.idx_num_cmp5 IS 'PYEARI — Indicator: Associated Number Field Contains a Value [index numerus campus]';
COMMENT ON COLUMN pm.imptt.gen_msu_aes IS 'CODCT — Catalog Type - Measurement Reading Valuation Code [genus mensuratio aestimatio]';
COMMENT ON COLUMN pm.imptt.cod_cts_msu IS 'CODGR — Code Group - Measurement Reading Valuation Code [codex coetus mensuratio]';
COMMENT ON COLUMN pm.imptt.idx_cod_cts IS 'CODGRR — Indicator: Code Group Comes From Reference Measuring Point [index codex coetus]';
COMMENT ON COLUMN pm.imptt.idx_aes_cod IS 'CDSUF — Indicator: Valuation Code Sufficient for Measurmnt. Document [index aestimatio codex]';
COMMENT ON COLUMN pm.imptt.nmr IS 'MODTR — Mode of Counter Reading Transfer [numerator]';
COMMENT ON COLUMN pm.imptt.idx_msu2 IS 'INDTRR — Indicator: Measurement Transfer Comes from Ref. Meas. Point [index mensuratio]';
COMMENT ON COLUMN pm.imptt.logsys IS 'LOGSYS — Logical System';
COMMENT ON COLUMN pm.imptt.tmp_frm IS 'LOGSYS_CHG — UTC Time Stamp in Short Form (YYYYMMDDhhmmss) [tempus forma]';

CREATE TABLE IF NOT EXISTS pm.imrg (
  cli char(3),
  msu_doc varchar(20),
  pms varchar(12),
  die_msu date,
  tmp_msu time,
  tmp varchar(11),
  idx_nmr_doc varchar(1),
  msu_doc_txt varchar(40),
  lng_clv char(1),
  idx_txt varchar(1),
  psn_msu varchar(12),
  die_obi_cre date,
  tmp_obi_cre time,
  nom_usr_cre varchar(12),
  die_obi_ult date,
  nom_usr_ult varchar(12),
  sgn_grd varchar(1),
  org_idx varchar(1),
  isp_num varchar(12),
  num_mnd_nmr varchar(8),
  nis_num varchar(4),
  detailerg varchar(8),
  fns_doc_msu varchar(20),
  sbs_obi_gen varchar(2),
  prd_sbs_obi varchar(8),
  obi_num_mnd varchar(22),
  idx_cre_pns varchar(1),
  msu_tot_nmr numeric(16,3),
  idx_num_cmp varchar(1),
  msu_uni numeric(16,3),
  idx_num_cmp2 varchar(1),
  uni_msu_doc varchar(3),
  nmr_uni numeric(16,3),
  idx_num_cmp3 varchar(1),
  nmr_uni2 numeric(16,3),
  idx_num_cmp4 varchar(1),
  idx_nmr varchar(1),
  idx_nmr2 varchar(1),
  idx_tot_nmr varchar(1),
  gen_msu_aes varchar(1),
  cod_cts_msu varchar(8),
  aes_cod varchar(4),
  vrs_num varchar(6),
  sta varchar(1),
  rvs_idx varchar(1),
  obi_num_mnd2 varchar(22),
  num_exm varchar(6),
  isp_efc_aes varchar(1),
  idx_doc_tmp varchar(1),
  die_ini date,
  tmp_ini time,
  tmp2 numeric(16,0),
  logsystem varchar(10),
  CONSTRAINT imrg_pk PRIMARY KEY (cli, msu_doc, pms)
);
COMMENT ON TABLE pm.imrg IS 'IMRG — Measurement document — individual sensor readings and counter values recorded against a measuring point (IMPTT). The raw observation stream.';
COMMENT ON COLUMN pm.imrg.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.imrg.msu_doc IS 'MDOCM — Measurement Document [mensuratio documentum]';
COMMENT ON COLUMN pm.imrg.pms IS 'POINT — Measuring Point [punctum mensurae]';
COMMENT ON COLUMN pm.imrg.die_msu IS 'IDATE — Date of the Measurement [dies mensuratio]';
COMMENT ON COLUMN pm.imrg.tmp_msu IS 'ITIME — Time of Measurement [tempus mensuratio]';
COMMENT ON COLUMN pm.imrg.tmp IS 'INVTS — Inverted Time Stamp: 99.999.999.999 - Seconds AD [tempus]';
COMMENT ON COLUMN pm.imrg.idx_nmr_doc IS 'CNTRG — Indicator: Counter Reading Document [index numerator documentum]';
COMMENT ON COLUMN pm.imrg.msu_doc_txt IS 'MDTXT — Measurement Document Text [mensuratio documentum textus]';
COMMENT ON COLUMN pm.imrg.lng_clv IS 'MLANG — Language Key [lingua clavis]';
COMMENT ON COLUMN pm.imrg.idx_txt IS 'KZLTX — Indicator: Long text exists [index textus]';
COMMENT ON COLUMN pm.imrg.psn_msu IS 'READR — Person who Took the Measurement Reading [persona mensuratio]';
COMMENT ON COLUMN pm.imrg.die_obi_cre IS 'ERDAT — Date on which the object was created [dies obiectum creatus]';
COMMENT ON COLUMN pm.imrg.tmp_obi_cre IS 'ERUHR — Time at which the object was created [tempus obiectum creatus]';
COMMENT ON COLUMN pm.imrg.nom_usr_cre IS 'ERNAM — Name of User Who Created the Object [nomen usor creatus]';
COMMENT ON COLUMN pm.imrg.die_obi_ult IS 'AEDAT — Date on which the object was last changed [dies obiectum ultimus]';
COMMENT ON COLUMN pm.imrg.nom_usr_ult IS 'AENAM — Name of the user who last changed the object [nomen usor ultimus]';
COMMENT ON COLUMN pm.imrg.sgn_grd IS 'LVORM — Deletion Flag for 1-Level Deletion Logic [signum gradus]';
COMMENT ON COLUMN pm.imrg.org_idx IS 'GENER — Origin Indicator [origo index]';
COMMENT ON COLUMN pm.imrg.isp_num IS 'PRUEFLOS — Inspection Lot Number [inspectio numerus]';
COMMENT ON COLUMN pm.imrg.num_mnd_nmr IS 'VORGLFNR — Current Node Number from Order Counter APLZL [numerus mandatum numerator]';
COMMENT ON COLUMN pm.imrg.nis_num IS 'MERKNR — Inspection Characteristic Number [nota inspectionis numerus]';
COMMENT ON COLUMN pm.imrg.detailerg IS 'DETAILERG — Development reserve: Format NUMC, length 8';
COMMENT ON COLUMN pm.imrg.fns_doc_msu IS 'ROOTD — Source Document for Measurement Reading Transfer [fons documentum mensuratio]';
COMMENT ON COLUMN pm.imrg.sbs_obi_gen IS 'TOLTY — CIM Resource Object Type for Production Resources/Tools [subsidium obiectum genus]';
COMMENT ON COLUMN pm.imrg.prd_sbs_obi IS 'TOLID — Production Resource/Tool Object ID [productio subsidium obiectum]';
COMMENT ON COLUMN pm.imrg.obi_num_mnd IS 'WOOBJ — Object Number of Order [obiectum numerus mandatum]';
COMMENT ON COLUMN pm.imrg.idx_cre_pns IS 'DOCAF — Indicator: MeasDoc. Created After Associated Task [index creatus pensum]';
COMMENT ON COLUMN pm.imrg.msu_tot_nmr IS 'READG — Measurement Reading/Total Counter Reading in SI Unit [mensuratio summa totalis numerator]';
COMMENT ON COLUMN pm.imrg.idx_num_cmp IS 'READGI — Indicator: Associated Number Field Contains a Value [index numerus campus]';
COMMENT ON COLUMN pm.imrg.msu_uni IS 'RECDV — Measurement Reading in Unit of Entry [mensuratio unitas]';
COMMENT ON COLUMN pm.imrg.idx_num_cmp2 IS 'RECDVI — Indicator: Associated Number Field Contains a Value [index numerus campus]';
COMMENT ON COLUMN pm.imrg.uni_msu_doc IS 'RECDU — Unit of Measurement for Document Entry [unitas mensuratio documentum]';
COMMENT ON COLUMN pm.imrg.nmr_uni IS 'CNTRR — Counter Reading in SI Unit [numerator unitas]';
COMMENT ON COLUMN pm.imrg.idx_num_cmp3 IS 'CNTRRI — Indicator: Associated Number Field Contains a Value [index numerus campus]';
COMMENT ON COLUMN pm.imrg.nmr_uni2 IS 'CDIFF — Counter Reading Difference in SI Unit [numerator unitas]';
COMMENT ON COLUMN pm.imrg.idx_num_cmp4 IS 'CDIFFI — Indicator: Associated Number Field Contains a Value [index numerus campus]';
COMMENT ON COLUMN pm.imrg.idx_nmr IS 'IDIFF — Indicator: Counter Reading Entered as Difference [index numerator]';
COMMENT ON COLUMN pm.imrg.idx_nmr2 IS 'EXCHG — Indicator: Counter Replaced [index numerator]';
COMMENT ON COLUMN pm.imrg.idx_tot_nmr IS 'TOTEX — Indicator: Total Counter Reading Set Externally [index summa totalis numerator]';
COMMENT ON COLUMN pm.imrg.gen_msu_aes IS 'CODCT — Catalog Type - Measurement Reading Valuation Code [genus mensuratio aestimatio]';
COMMENT ON COLUMN pm.imrg.cod_cts_msu IS 'CODGR — Code Group - Measurement Reading Valuation Code [codex coetus mensuratio]';
COMMENT ON COLUMN pm.imrg.aes_cod IS 'VLCOD — Valuation Code [aestimatio codex]';
COMMENT ON COLUMN pm.imrg.vrs_num IS 'CVERS — Version Number [versio numerus]';
COMMENT ON COLUMN pm.imrg.sta IS 'PREST — Processing Status [status]';
COMMENT ON COLUMN pm.imrg.rvs_idx IS 'CANCL — Reversal Indicator [reversio index]';
COMMENT ON COLUMN pm.imrg.obi_num_mnd2 IS 'WOOB1 — Object Number of Order Operation/Confirmation Counter etc. [obiectum numerus mandatum]';
COMMENT ON COLUMN pm.imrg.num_exm IS 'PROBENR — Number of the Partial Sample [numerus exemplum]';
COMMENT ON COLUMN pm.imrg.isp_efc_aes IS 'MBEWERTG — Inspection Result Valuation [inspectio effectus aestimatio]';
COMMENT ON COLUMN pm.imrg.idx_doc_tmp IS 'INTVL — Indicator that Document Refers to Time Interval [index documentum tempus]';
COMMENT ON COLUMN pm.imrg.die_ini IS 'IDAT1 — Date of Interval Start [dies initium]';
COMMENT ON COLUMN pm.imrg.tmp_ini IS 'ITIM1 — Time of Interval Start [tempus initium]';
COMMENT ON COLUMN pm.imrg.tmp2 IS 'TMSTP_BW — Time Stamp for BW Delta Extraction [tempus]';
COMMENT ON COLUMN pm.imrg.logsystem IS 'LOGSYSTEM — Logical System';

CREATE TABLE IF NOT EXISTS pm.irlot (
  cli char(3),
  rfr_lcf varchar(30),
  lng_clv char(1),
  lcf varchar(30),
  idx_rfr varchar(4),
  rfr_lcf2 varchar(30),
  die_obi_cre date,
  nom_usr_cre varchar(12),
  die_obi_ult date,
  nom_usr_ult varchar(12),
  obi_cts varchar(4),
  sgn_grd varchar(1),
  mat_num_obi varchar(18),
  idx varchar(1),
  inm_rfr_lcf varchar(18),
  idx_inm_lcf varchar(1),
  idx_inm_nsr varchar(1),
  idx_rfr_lcf varchar(1),
  cur_cns_ofc varchar(4),
  idx_cns_ofc varchar(1),
  ccs varchar(3),
  idx_ccs varchar(1),
  pm_objty varchar(2),
  sto varchar(8),
  idx_sto_lcf varchar(1),
  rbnr varchar(8),
  idx2 varchar(1),
  idx3 varchar(1),
  idx4 varchar(1),
  obi_num varchar(22),
  CONSTRAINT irlot_pk PRIMARY KEY (cli, rfr_lcf)
);
COMMENT ON TABLE pm.irlot IS 'IRLOT — Reference Functional Location (Table) — the reference-functional-location master used as a structure template that concrete functional locations (IFLOT) can inherit from, carrying its own equipment/material assignment, planning plant/planner group, and object-number linkage into status management. Small, complete table.';
COMMENT ON COLUMN pm.irlot.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.irlot.rfr_lcf IS 'TRPNR — Reference functional location [referentia locus functionalis]';
COMMENT ON COLUMN pm.irlot.lng_clv IS 'MLANG — Language Key [lingua clavis]';
COMMENT ON COLUMN pm.irlot.lcf IS 'TPLKZ — Edit mask for functional location labeling [locus functionalis]';
COMMENT ON COLUMN pm.irlot.idx_rfr IS 'RLTYP — Structure indicator for reference functional locations [index referentia]';
COMMENT ON COLUMN pm.irlot.rfr_lcf2 IS 'TRPMA — Superior reference functional location [referentia locus functionalis]';
COMMENT ON COLUMN pm.irlot.die_obi_cre IS 'ERDAT — Date on which the object was created [dies obiectum creatus]';
COMMENT ON COLUMN pm.irlot.nom_usr_cre IS 'ERNAM — Name of user who created the object [nomen usor creatus]';
COMMENT ON COLUMN pm.irlot.die_obi_ult IS 'AEDAT — Date on which the object was last changed [dies obiectum ultimus]';
COMMENT ON COLUMN pm.irlot.nom_usr_ult IS 'AENAM — Name of the user who last changed the object [nomen usor ultimus]';
COMMENT ON COLUMN pm.irlot.obi_cts IS 'BEGRU — Technical object authorization group [obiectum coetus]';
COMMENT ON COLUMN pm.irlot.sgn_grd IS 'LVORM — Deletion Flag for 2-Level Deletion Logic [signum gradus]';
COMMENT ON COLUMN pm.irlot.mat_num_obi IS 'SUBMT — Assembly (material number of the technical object) [materia numerus obiectum]';
COMMENT ON COLUMN pm.irlot.idx IS 'MAPAR — Assembly indicator [index]';
COMMENT ON COLUMN pm.irlot.inm_rfr_lcf IS 'IEQUI — Equipment installed at this reference functional location [instrumentum referentia locus functionalis]';
COMMENT ON COLUMN pm.irlot.idx_inm_lcf IS 'IEQUII — Indicator: Equipment installed at ref. functional location [index instrumentum locus functionalis]';
COMMENT ON COLUMN pm.irlot.idx_inm_nsr IS 'EINZL — Indicator: Single equipment/serial number for FL/assembly [index instrumentum numerus serialis]';
COMMENT ON COLUMN pm.irlot.idx_rfr_lcf IS 'EINZLI — Indicator: comes from reference functional location [index referentia locus functionalis]';
COMMENT ON COLUMN pm.irlot.cur_cns_ofc IS 'IWERK — Maintenance planning plant [curatio consilium officina]';
COMMENT ON COLUMN pm.irlot.idx_cns_ofc IS 'IWERKI — Indicator: planning plant comes from ref. functional loc. [index consilium officina]';
COMMENT ON COLUMN pm.irlot.ccs IS 'INGRP — Planner Group [coetus consiliorum]';
COMMENT ON COLUMN pm.irlot.idx_ccs IS 'INGRPI — Indicator: planner group comes from ref. functional loc. [index coetus consiliorum]';
COMMENT ON COLUMN pm.irlot.pm_objty IS 'PM_OBJTY — Distinguishes between PM and CS objects';
COMMENT ON COLUMN pm.irlot.sto IS 'LGWID — Work center ID [statio operis]';
COMMENT ON COLUMN pm.irlot.idx_sto_lcf IS 'LGWIDI — Indicator: work center comes from ref. functional location [index statio operis locus functionalis]';
COMMENT ON COLUMN pm.irlot.rbnr IS 'RBNR — Catalog profile';
COMMENT ON COLUMN pm.irlot.idx2 IS 'RBNR_I — Indicator: catalog profile comes from ref. functional loc. [index]';
COMMENT ON COLUMN pm.irlot.idx3 IS 'ABCKZ — ABC Indicator [index]';
COMMENT ON COLUMN pm.irlot.idx4 IS 'ABCKZI — Indicator: ABC indicator comes from ref. functional loc. [index]';
COMMENT ON COLUMN pm.irlot.obi_num IS 'OBJNR — Object number [obiectum numerus]';

CREATE TABLE IF NOT EXISTS pm.irlotx (
  cli char(3),
  rfr_lcf varchar(30),
  lng_clv char(1),
  dsc_obi varchar(40),
  idx_txt varchar(1),
  idx_txt_lng varchar(1),
  dsc varchar(40),
  CONSTRAINT irlotx_pk PRIMARY KEY (cli, rfr_lcf, lng_clv)
);
COMMENT ON TABLE pm.irlotx IS 'IRLOTX — Reference Functional Location: Short Texts — the language-dependent short-text table for IRLOT reference functional locations. Small, complete table.';
COMMENT ON COLUMN pm.irlotx.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.irlotx.rfr_lcf IS 'TRPNR — Reference functional location [referentia locus functionalis]';
COMMENT ON COLUMN pm.irlotx.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN pm.irlotx.dsc_obi IS 'PLTXT — Description of technical object [descriptio obiectum]';
COMMENT ON COLUMN pm.irlotx.idx_txt IS 'KZLTX — Indicator: Long text exists [index textus]';
COMMENT ON COLUMN pm.irlotx.idx_txt_lng IS 'KZMLA — Indicator: Text in more than one language [index textus lingua]';
COMMENT ON COLUMN pm.irlotx.dsc IS 'PLTXU — Description (Uppercase) [descriptio]';

CREATE TABLE IF NOT EXISTS pm.mcipmis (
  cli char(3),
  obi_num varchar(22),
  stt_mon varchar(5),
  cvm varchar(5),
  inm_num varchar(18),
  obi_cts varchar(4),
  inm_ctg varchar(1),
  inm_gen varchar(10),
  num varchar(25),
  die date,
  ven_num varchar(10),
  ptm varchar(30),
  nsr varchar(18),
  num2 varchar(20),
  nsr2 varchar(18),
  num_inm varchar(4),
  ann varchar(4),
  die_stt_tbl date,
  lcf varchar(30),
  lcf2 varchar(30),
  lcf_ctg varchar(1),
  lcf3 varchar(30),
  obi_cts_lcf varchar(4),
  rfr_lcf varchar(30),
  idx varchar(1),
  inm_lcf varchar(18),
  idx_inm_nsr varchar(1),
  sto varchar(8),
  pm_objty varchar(2),
  idx2 varchar(1),
  inm_cmp varchar(18),
  ofc varchar(4),
  loc varchar(10),
  cmp varchar(10),
  cur_cns_are varchar(4),
  ang varchar(4),
  amd varchar(4),
  csm varchar(10),
  soc varchar(4),
  ptm_num varchar(12),
  ptm2 varchar(4),
  mnd_num_inm varchar(12),
  obi_cls varchar(2),
  tmp_stt varchar(1),
  mat_num_obi varchar(18),
  mat_num varchar(18),
  CONSTRAINT mcipmis_pk PRIMARY KEY (cli, obi_num)
);
COMMENT ON TABLE pm.mcipmis IS 'MCIPMIS — PMIS: Master data characteristics for PMIS before image — the PM information-structure statistics table that snapshots equipment/functional-location master-data characteristics (type, manufacturer, serial number, install date, organizational assignment) at statistics-update time, feeding LIS/PMIS reporting on the object population before a change. Small, complete table.';
COMMENT ON COLUMN pm.mcipmis.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.mcipmis.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN pm.mcipmis.stt_mon IS 'STWAE — Statistics Currency [statistica moneta]';
COMMENT ON COLUMN pm.mcipmis.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN pm.mcipmis.inm_num IS 'EQUNR — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN pm.mcipmis.obi_cts IS 'BEGRU — Technical object authorization group [obiectum coetus]';
COMMENT ON COLUMN pm.mcipmis.inm_ctg IS 'EQTYP — Equipment category [instrumentum categoria]';
COMMENT ON COLUMN pm.mcipmis.inm_gen IS 'EQART — Equipment type [instrumentum genus]';
COMMENT ON COLUMN pm.mcipmis.num IS 'INVNR — Inventory number [numerus]';
COMMENT ON COLUMN pm.mcipmis.die IS 'ANSDT — Acquisition date [dies]';
COMMENT ON COLUMN pm.mcipmis.ven_num IS 'ELIEF — Vendor of manufacturer part number [venditor numerus]';
COMMENT ON COLUMN pm.mcipmis.ptm IS 'HERST — Manufacturer of Asset [patrimonium]';
COMMENT ON COLUMN pm.mcipmis.nsr IS 'SERGE — Manufacturer serial number [numerus serialis]';
COMMENT ON COLUMN pm.mcipmis.num2 IS 'TYPBZ — Manufacturer model number [numerus]';
COMMENT ON COLUMN pm.mcipmis.nsr2 IS 'GERNR — Serial number [numerus serialis]';
COMMENT ON COLUMN pm.mcipmis.num_inm IS 'EQLFN — Consecutive number for equipment [numerus instrumentum]';
COMMENT ON COLUMN pm.mcipmis.ann IS 'BAUJJ — Year of construction [annus]';
COMMENT ON COLUMN pm.mcipmis.die_stt_tbl IS 'SDATE — Date on which statistics record was updated [dies statistica tabula]';
COMMENT ON COLUMN pm.mcipmis.lcf IS 'TPLNR — Functional Location [locus functionalis]';
COMMENT ON COLUMN pm.mcipmis.lcf2 IS 'TPLKZ — Edit mask for functional location labeling [locus functionalis]';
COMMENT ON COLUMN pm.mcipmis.lcf_ctg IS 'FLTYP — Functional location category [locus functionalis categoria]';
COMMENT ON COLUMN pm.mcipmis.lcf3 IS 'TPLMA — Superior functional location [locus functionalis]';
COMMENT ON COLUMN pm.mcipmis.obi_cts_lcf IS 'PBEGRU — Technical object authorization group (functional location) [obiectum coetus locus functionalis]';
COMMENT ON COLUMN pm.mcipmis.rfr_lcf IS 'TRPNR — Reference functional location [referentia locus functionalis]';
COMMENT ON COLUMN pm.mcipmis.idx IS 'MAPAR — Assembly indicator [index]';
COMMENT ON COLUMN pm.mcipmis.inm_lcf IS 'IEQUI — Equipment installed at this functional location [instrumentum locus functionalis]';
COMMENT ON COLUMN pm.mcipmis.idx_inm_nsr IS 'EINZL — Indicator: single equipment/serial number for FL/assembly [index instrumentum numerus serialis]';
COMMENT ON COLUMN pm.mcipmis.sto IS 'LGWID — Work center ID [statio operis]';
COMMENT ON COLUMN pm.mcipmis.pm_objty IS 'PM_OBJTY — Distinguishes between PM and CS objects';
COMMENT ON COLUMN pm.mcipmis.idx2 IS 'ABCKZ — ABC Indicator [index]';
COMMENT ON COLUMN pm.mcipmis.inm_cmp IS 'EQFNR — Equipment sort field [instrumentum campus]';
COMMENT ON COLUMN pm.mcipmis.ofc IS 'SWERK — Plant [officina]';
COMMENT ON COLUMN pm.mcipmis.loc IS 'STORT — Location [locus]';
COMMENT ON COLUMN pm.mcipmis.cmp IS 'MSGRP — Sort field for master data messages [campus]';
COMMENT ON COLUMN pm.mcipmis.cur_cns_are IS 'BEBER — Maintenance planning area [curatio consilium area]';
COMMENT ON COLUMN pm.mcipmis.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN pm.mcipmis.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN pm.mcipmis.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN pm.mcipmis.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN pm.mcipmis.ptm_num IS 'ANLNR — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN pm.mcipmis.ptm2 IS 'ANLUN — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN pm.mcipmis.mnd_num_inm IS 'DAUFN — Order number (equipment origin/construction order) [mandatum numerus instrumentum]';
COMMENT ON COLUMN pm.mcipmis.obi_cls IS 'SKLSOB — Object class [obiectum classis]';
COMMENT ON COLUMN pm.mcipmis.tmp_stt IS 'ZEITP — Point in time (of statistics update) [tempus statistica]';
COMMENT ON COLUMN pm.mcipmis.mat_num_obi IS 'SUBMT — Assembly (material number of the technical object) [materia numerus obiectum]';
COMMENT ON COLUMN pm.mcipmis.mat_num IS 'MATNR — Material Number [materia numerus]';

CREATE TABLE IF NOT EXISTS pm.mhio (
  cli char(3),
  ccu varchar(12),
  voc_num varchar(4),
  pos_num_voc varchar(4),
  mnd_num varchar(12),
  die_voc_obi date,
  isp_num varchar(12),
  sta_voc_obi varchar(1),
  sta_cur_voc varchar(1),
  ini_die date,
  cmp varchar(10),
  nts_num varchar(12),
  tmp_voc_obi time,
  isp_num2 varchar(12),
  usr_ult_mut varchar(12),
  idx_voc_obi varchar(1),
  cur bytea,
  cur_num varchar(12),
  revision_no varchar(12),
  ofc varchar(4),
  CONSTRAINT mhio_pk PRIMARY KEY (cli, ccu, voc_num, pos_num_voc)
);
COMMENT ON TABLE pm.mhio IS 'MHIO — Call Object from Maintenance Order — the maintenance-plan call object created when a maintenance plan (MPLA) schedules and triggers an order, notification, or inspection lot. This is the scheduled-maintenance record''s execution link: it ties a plan cycle (WARPL+ABNUM+WPPOS) to the concrete order (AUFNR), notification (QMNUM), or inspection lot it generated, with the scheduled call date (GSTRP) and enqueue/status flags. Small, complete table.';
COMMENT ON COLUMN pm.mhio.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.mhio.ccu IS 'WARPL — Maintenance Plan [consilium curationis]';
COMMENT ON COLUMN pm.mhio.voc_num IS 'ABNUM — Call number [vocatio numerus]';
COMMENT ON COLUMN pm.mhio.pos_num_voc IS 'WPPOS — Item number of the call object [positio numerus vocatio]';
COMMENT ON COLUMN pm.mhio.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN pm.mhio.die_voc_obi IS 'ADDAT — Creation date of the call object [dies vocatio obiectum]';
COMMENT ON COLUMN pm.mhio.isp_num IS 'LBLNI — Inspection Lot Number [inspectio numerus]';
COMMENT ON COLUMN pm.mhio.sta_voc_obi IS 'TSENQ — Status of the call object: enqueued [status vocatio obiectum]';
COMMENT ON COLUMN pm.mhio.sta_cur_voc IS 'TSTAT — Processing status of the maintenance call [status curatio vocatio]';
COMMENT ON COLUMN pm.mhio.ini_die IS 'GSTRP — Scheduled start date [initium dies]';
COMMENT ON COLUMN pm.mhio.cmp IS 'SORTF — Sort field [campus]';
COMMENT ON COLUMN pm.mhio.nts_num IS 'QMNUM — Notification Number [nuntius numerus]';
COMMENT ON COLUMN pm.mhio.tmp_voc_obi IS 'ADTIME — Time when call object was created [tempus vocatio obiectum]';
COMMENT ON COLUMN pm.mhio.isp_num2 IS 'PRUEFLOS — Inspection Lot Number [inspectio numerus]';
COMMENT ON COLUMN pm.mhio.usr_ult_mut IS 'USERMOD — User who last changed the call object [usor ultimus mutatus]';
COMMENT ON COLUMN pm.mhio.idx_voc_obi IS 'IND_MPLA_API — Indicator: call object created/changed via maint. plan API [index vocatio obiectum]';
COMMENT ON COLUMN pm.mhio.cur IS 'DEMAND_ID — Maintenance demand: unique ID [curatio]';
COMMENT ON COLUMN pm.mhio.cur_num IS 'DEMAND_NO — Maintenance demand number [curatio numerus]';
COMMENT ON COLUMN pm.mhio.revision_no IS 'REVISION_NO — Revision';
COMMENT ON COLUMN pm.mhio.ofc IS 'REV_PLANT — Plant for Revisions [officina]';

CREATE TABLE IF NOT EXISTS pm.mhis (
  cli char(3),
  ccu varchar(12),
  voc_num varchar(4),
  num_tbl varchar(4),
  voc_die date,
  gen_cur_voc varchar(1),
  sta_tmp_cur varchar(1),
  ult_tmp date,
  tmp_ini numeric(5,2),
  uni varchar(3),
  die_cur_voc date,
  nom_psn_cur varchar(12),
  sfakt numeric(5,2),
  idx varchar(1),
  idx2 varchar(1),
  toler numeric(3,0),
  knnrm varchar(3),
  knprm numeric(3,0),
  voc_die2 date,
  tmp_voc time,
  mut_voc_die date,
  tmp_fin numeric(5,2),
  uni_fin varchar(3),
  idx3 varchar(1),
  idx_nmr varchar(1),
  tmp_cur_voc numeric(15,0),
  tmp_voc_cre numeric(15,0),
  tmp_voc_obi numeric(15,0),
  usr_voc_obi varchar(12),
  rfr_die date,
  sta_cur_voc varchar(1),
  tmp_ini_die numeric(5,2),
  ini_die date,
  num_tbl2 varchar(4),
  zykzt numeric(5,2),
  uni2 varchar(3),
  puffp numeric(5,2),
  puffn numeric(5,2),
  num_nmr varchar(4),
  num_nmr2 varchar(4),
  num_ult_nmr varchar(4),
  usr_ult_mut varchar(12),
  cur bytea,
  cur_num varchar(12),
  revision_no varchar(12),
  ofc varchar(4),
  idx_die varchar(1),
  adandor varchar(1),
  idx4 varchar(1),
  adcycle numeric(5,2),
  uni3 varchar(3),
  adoffset numeric(5,2),
  num_ult_nmr2 varchar(4),
  ini_tmp time,
  cnf_tmp time,
  idx_ord varchar(1),
  ini_die2 date,
  ini_tmp2 time,
  ini_die3 date,
  ini_tmp3 time,
  obi_rfr varchar(22),
  idx5 varchar(1),
  idx_mut_ccu varchar(1),
  die_tmp numeric(15,0),
  CONSTRAINT mhis_pk PRIMARY KEY (cli, ccu, voc_num, num_tbl)
);
COMMENT ON TABLE pm.mhis IS 'MHIS — Maintenance plan history — the scheduling-cycle history record for a maintenance plan (WARPL), carrying each cycle''s planned/actual call dates, tolerance and shift parameters, completion and confirmation timestamps, and (for time-based/strategy plans) the cycle sequence and offset-based scheduling parameters. Every call MHIO produces has one MHIS history row recording how and when the cycle counter advanced. SAP''s real table carries fields beyond the core scheduling set (extended AD*/ADEXT*/ADSYS* offset-scheduling fields); this definition carries the full key, all core cycle/date/tolerance fi';
COMMENT ON COLUMN pm.mhis.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.mhis.ccu IS 'WARPL — Maintenance Plan [consilium curationis]';
COMMENT ON COLUMN pm.mhis.voc_num IS 'ABNUM — Call number [vocatio numerus]';
COMMENT ON COLUMN pm.mhis.num_tbl IS 'ZAEHL — Sequential number of history record [numerus tabula]';
COMMENT ON COLUMN pm.mhis.voc_die IS 'NPLDA — Scheduled call date [vocatio dies]';
COMMENT ON COLUMN pm.mhis.gen_cur_voc IS 'TERMA — Type of maintenance call [genus curatio vocatio]';
COMMENT ON COLUMN pm.mhis.sta_tmp_cur IS 'STADT — Status of cycle at time of maintenance call [status tempus curatio]';
COMMENT ON COLUMN pm.mhis.ult_tmp IS 'LRMDT — Last time the cycle was completed [ultimus tempus]';
COMMENT ON COLUMN pm.mhis.tmp_ini IS 'OFFZE — Time factor for offset from cycle start [tempus initium]';
COMMENT ON COLUMN pm.mhis.uni IS 'OFFZO — Cycle unit for offset [unitas]';
COMMENT ON COLUMN pm.mhis.die_cur_voc IS 'ABRUD — Date on which maintenance call was completed [dies curatio vocatio]';
COMMENT ON COLUMN pm.mhis.nom_psn_cur IS 'ABRNA — Name of the person who completed the maintenance call [nomen persona curatio]';
COMMENT ON COLUMN pm.mhis.sfakt IS 'SFAKT — Cycle modification factor';
COMMENT ON COLUMN pm.mhis.idx IS 'TERMK — Indicator: cycle skipped [index]';
COMMENT ON COLUMN pm.mhis.idx2 IS 'VERSCH — Scheduling indicator [index]';
COMMENT ON COLUMN pm.mhis.toler IS 'TOLER — Cycle tolerance (as a percentage)';
COMMENT ON COLUMN pm.mhis.knnrm IS 'KNNRM — Cycle at maximum tolerance';
COMMENT ON COLUMN pm.mhis.knprm IS 'KNPRM — Cycle at maximum tolerance (percentage)';
COMMENT ON COLUMN pm.mhis.voc_die2 IS 'NPLDO — Scheduled call date (before rescheduling) [vocatio dies]';
COMMENT ON COLUMN pm.mhis.tmp_voc IS 'NPLDZ — Time of call [tempus vocatio]';
COMMENT ON COLUMN pm.mhis.mut_voc_die IS 'MANDA — Manually changed call date [mutatus vocatio dies]';
COMMENT ON COLUMN pm.mhis.tmp_fin IS 'OFFLE — Time factor for offset from cycle end [tempus finis]';
COMMENT ON COLUMN pm.mhis.uni_fin IS 'OFFLO — Cycle unit for offset from cycle end [unitas finis]';
COMMENT ON COLUMN pm.mhis.idx3 IS 'KNAUT — Indicator: cycle automatically generated [index]';
COMMENT ON COLUMN pm.mhis.idx_nmr IS 'KNASR — Indicator: cycle called from array/counter [index numerator]';
COMMENT ON COLUMN pm.mhis.tmp_cur_voc IS 'TSABR — Time stamp when maintenance call was completed [tempus curatio vocatio]';
COMMENT ON COLUMN pm.mhis.tmp_voc_cre IS 'TSVBT — Time stamp when call was created [tempus vocatio creatus]';
COMMENT ON COLUMN pm.mhis.tmp_voc_obi IS 'TSENQ — Time stamp when call object was enqueued [tempus vocatio obiectum]';
COMMENT ON COLUMN pm.mhis.usr_voc_obi IS 'TSENM — User who enqueued the call object [usor vocatio obiectum]';
COMMENT ON COLUMN pm.mhis.rfr_die IS 'HORDA — Reference date of the cycle [referentia dies]';
COMMENT ON COLUMN pm.mhis.sta_cur_voc IS 'TSTAT — Processing status of the maintenance call [status curatio vocatio]';
COMMENT ON COLUMN pm.mhis.tmp_ini_die IS 'FIXDU — Time factor for start date of scheduling [tempus initium dies]';
COMMENT ON COLUMN pm.mhis.ini_die IS 'FIXDA — Fixed start date for scheduling [initium dies]';
COMMENT ON COLUMN pm.mhis.num_tbl2 IS 'VGNUM — Sequential number of the previous history record [numerus tabula]';
COMMENT ON COLUMN pm.mhis.zykzt IS 'ZYKZT — Cycle length';
COMMENT ON COLUMN pm.mhis.uni2 IS 'ZYKLS — Cycle unit [unitas]';
COMMENT ON COLUMN pm.mhis.puffp IS 'PUFFP — Positive buffer used';
COMMENT ON COLUMN pm.mhis.puffn IS 'PUFFN — Negative buffer used';
COMMENT ON COLUMN pm.mhis.num_nmr IS 'SZAEH — Sequential number of cycle set counter [numerus numerator]';
COMMENT ON COLUMN pm.mhis.num_nmr2 IS 'RZAEH — Sequential number of cycle counter [numerus numerator]';
COMMENT ON COLUMN pm.mhis.num_ult_nmr IS 'NZAEH — Number of last cycle set counter [numerus ultimus numerator]';
COMMENT ON COLUMN pm.mhis.usr_ult_mut IS 'USERMOD — User who last changed the history record [usor ultimus mutatus]';
COMMENT ON COLUMN pm.mhis.cur IS 'DEMAND_ID — Maintenance demand: unique ID [curatio]';
COMMENT ON COLUMN pm.mhis.cur_num IS 'DEMAND_NO — Maintenance demand number [curatio numerus]';
COMMENT ON COLUMN pm.mhis.revision_no IS 'REVISION_NO — Revision';
COMMENT ON COLUMN pm.mhis.ofc IS 'REV_PLANT — Plant for Revisions [officina]';
COMMENT ON COLUMN pm.mhis.idx_die IS 'ADPOINT — Indicator: date determined via extended scheduling [index dies]';
COMMENT ON COLUMN pm.mhis.adandor IS 'ADANDOR — Extended scheduling: AND/OR link of scheduling rules';
COMMENT ON COLUMN pm.mhis.idx4 IS 'ADTGOON — Extended scheduling: continuation indicator [index]';
COMMENT ON COLUMN pm.mhis.adcycle IS 'ADCYCLE — Extended scheduling: cycle length';
COMMENT ON COLUMN pm.mhis.uni3 IS 'ADUNIT — Extended scheduling: cycle unit [unitas]';
COMMENT ON COLUMN pm.mhis.adoffset IS 'ADOFFSET — Extended scheduling: offset';
COMMENT ON COLUMN pm.mhis.num_ult_nmr2 IS 'ADNZAEH — Extended scheduling: number of last cycle set counter [numerus ultimus numerator]';
COMMENT ON COLUMN pm.mhis.ini_tmp IS 'ADSTTIME — Extended scheduling: start time [initium tempus]';
COMMENT ON COLUMN pm.mhis.cnf_tmp IS 'ADCONFTIME — Extended scheduling: confirmation time [confirmatio tempus]';
COMMENT ON COLUMN pm.mhis.idx_ord IS 'CYCLESEQIND — Indicator: cycle sequence relevant [index ordo]';
COMMENT ON COLUMN pm.mhis.ini_die2 IS 'ADEXTSTARTDATE — Extended scheduling: external start date [initium dies]';
COMMENT ON COLUMN pm.mhis.ini_tmp2 IS 'ADEXTSTARTTIME — Extended scheduling: external start time [initium tempus]';
COMMENT ON COLUMN pm.mhis.ini_die3 IS 'ADSYSTARTDATE — Extended scheduling: system start date [initium dies]';
COMMENT ON COLUMN pm.mhis.ini_tmp3 IS 'ADSYSTARTTIME — Extended scheduling: system start time [initium tempus]';
COMMENT ON COLUMN pm.mhis.obi_rfr IS 'ADOBJECT — Extended scheduling: object reference [obiectum referentia]';
COMMENT ON COLUMN pm.mhis.idx5 IS 'SETREPEATIND — Indicator: cycle set is repeated [index]';
COMMENT ON COLUMN pm.mhis.idx_mut_ccu IS 'IND_MPLA_API — Indicator: history changed via maintenance plan API [index mutatus consilium curationis]';
COMMENT ON COLUMN pm.mhis.die_tmp IS 'DUE_DATE_TIME — Due date/time as time stamp [dies tempus]';

CREATE TABLE IF NOT EXISTS pm.mpla (
  cli char(3),
  ccu varchar(12),
  idx varchar(1),
  idx2 varchar(1),
  die date,
  nom_psn_cre varchar(12),
  mut date,
  nom_psn_mut varchar(12),
  ccu_txt varchar(40),
  cur varchar(6),
  per varchar(3),
  inm_num varchar(18),
  lcf varchar(30),
  emp_num varchar(10),
  txt_idx varchar(1),
  idx_ccu varchar(1),
  num_cur_ccu varchar(4),
  ccu_voc_num integer,
  lng_clv_txt char(1),
  vic varchar(3),
  vic2 varchar(3),
  topos varchar(3),
  toneg varchar(3),
  sfakt numeric(3,2),
  idx3 varchar(1),
  tgoon varchar(3),
  voc_ccu varchar(3),
  voc_ccu2 varchar(3),
  gen_voc varchar(1),
  idx4 varchar(1),
  knaut varchar(1),
  obi_cts varchar(4),
  obi_num varchar(22),
  ccu_ctg varchar(2),
  uni varchar(3),
  ini_die date,
  ini_nmr varchar(22),
  voc_obi varchar(1),
  cmp_cur varchar(20),
  clv varchar(2),
  puffp varchar(3),
  puffn varchar(3),
  ini_die2 date,
  ini_tmp time,
  idx_voc_obi varchar(1),
  ccu_cre_mut varchar(2),
  vic_nmr_cns varchar(1),
  CONSTRAINT mpla_pk PRIMARY KEY (ccu)
);
COMMENT ON TABLE pm.mpla IS 'MPLA — Maintenance plan header — defines a preventive maintenance strategy/cycle for scheduling recurring maintenance calls against equipment or functional locations.';
COMMENT ON COLUMN pm.mpla.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.mpla.ccu IS 'WARPL — Maintenance Plan [consilium curationis]';
COMMENT ON COLUMN pm.mpla.idx IS 'ERKNZ — Creation indicator [index]';
COMMENT ON COLUMN pm.mpla.idx2 IS 'AEKNZ — Change indicator [index]';
COMMENT ON COLUMN pm.mpla.die IS 'ERSDT — Date of creation [dies]';
COMMENT ON COLUMN pm.mpla.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN pm.mpla.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pm.mpla.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pm.mpla.ccu_txt IS 'WPTXT — Maintenance Plan Text [consilium curationis textus]';
COMMENT ON COLUMN pm.mpla.cur IS 'STRAT — Maintenance strategy [curatio]';
COMMENT ON COLUMN pm.mpla.per IS 'ABRHO — Scheduling Period [periodus]';
COMMENT ON COLUMN pm.mpla.inm_num IS 'EQUNR — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN pm.mpla.lcf IS 'TPLNR — Functional Location [locus functionalis]';
COMMENT ON COLUMN pm.mpla.emp_num IS 'KUNUM — Customer Number [emptor numerus]';
COMMENT ON COLUMN pm.mpla.txt_idx IS 'LTKNZ — Long Text Indicator [textus index]';
COMMENT ON COLUMN pm.mpla.idx_ccu IS 'LVORM — Indicator: maintenance plan locked against calls [index consilium curationis]';
COMMENT ON COLUMN pm.mpla.num_cur_ccu IS 'ANZPS — Number of maintenance items in the maintenance plan [numerus curatio consilium curationis]';
COMMENT ON COLUMN pm.mpla.ccu_voc_num IS 'ABNUM — Maintenance Plan Call Number [consilium curationis vocatio numerus]';
COMMENT ON COLUMN pm.mpla.lng_clv_txt IS 'LANGU — Language key of the long text [lingua clavis textus]';
COMMENT ON COLUMN pm.mpla.vic IS 'VSPOS — Shift Factor for Late Completion [vicis]';
COMMENT ON COLUMN pm.mpla.vic2 IS 'VSNEG — Shift Factor for Early Completion [vicis]';
COMMENT ON COLUMN pm.mpla.topos IS 'TOPOS — Tolerance for Late Completion (%)';
COMMENT ON COLUMN pm.mpla.toneg IS 'TONEG — Tolerance for Early Completion (%)';
COMMENT ON COLUMN pm.mpla.sfakt IS 'SFAKT — Cycle modification factor';
COMMENT ON COLUMN pm.mpla.idx3 IS 'STICH — Scheduling indicator [index]';
COMMENT ON COLUMN pm.mpla.tgoon IS 'TGOON — Scheduling to reoccur when lead float reached';
COMMENT ON COLUMN pm.mpla.voc_ccu IS 'HORIZ — Call horizon for maintenance plan calls [vocatio consilium curationis]';
COMMENT ON COLUMN pm.mpla.voc_ccu2 IS 'HORIZ_DAYS — Call horizon for maintenance plan calls [vocatio consilium curationis]';
COMMENT ON COLUMN pm.mpla.gen_voc IS 'HORIZ_QUALIFIER — Calculation Type of Call Horizon [genus vocatio]';
COMMENT ON COLUMN pm.mpla.idx4 IS 'ANDOR — Indicator for OR or AND link [index]';
COMMENT ON COLUMN pm.mpla.knaut IS 'KNAUT — Reserved';
COMMENT ON COLUMN pm.mpla.obi_cts IS 'BEGRU — Technical object authorization group [obiectum coetus]';
COMMENT ON COLUMN pm.mpla.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN pm.mpla.ccu_ctg IS 'MPTYP — Maintenance plan category [consilium curationis categoria]';
COMMENT ON COLUMN pm.mpla.uni IS 'HUNIT — Unit in scheduling interval [unitas]';
COMMENT ON COLUMN pm.mpla.ini_die IS 'STADT — Start date [initium dies]';
COMMENT ON COLUMN pm.mpla.ini_nmr IS 'SZAEH — Start counter reading [initium numerator]';
COMMENT ON COLUMN pm.mpla.voc_obi IS 'CALL_CONFIRM — Only Create New Call Object After Completing Predecessor [vocatio obiectum]';
COMMENT ON COLUMN pm.mpla.cmp_cur IS 'PLAN_SORT — Sort field for maintenance plans [campus curatio]';
COMMENT ON COLUMN pm.mpla.clv IS 'FABKL — Factory calendar key [clavis]';
COMMENT ON COLUMN pm.mpla.puffp IS 'PUFFP — Lead Float in Days';
COMMENT ON COLUMN pm.mpla.puffn IS 'PUFFN — Follow-up float in days';
COMMENT ON COLUMN pm.mpla.ini_die2 IS 'START_DATE — Start Date for Scheduling [initium dies]';
COMMENT ON COLUMN pm.mpla.ini_tmp IS 'START_TIME — Start Time for Scheduling [initium tempus]';
COMMENT ON COLUMN pm.mpla.idx_voc_obi IS 'CALL_UPDATE_IND — Indicator for Adapting Basic Dates of Call Object [index vocatio obiectum]';
COMMENT ON COLUMN pm.mpla.ccu_cre_mut IS 'IND_MPLA_API — Maintenance Plan Was Created/Changed by API [consilium curationis creatus mutatus]';
COMMENT ON COLUMN pm.mpla.vic_nmr_cns IS 'MCP_SF — Shift Factor for Multiple Counter Plan [vicis numerator consilium]';

CREATE TABLE IF NOT EXISTS pm.mpos (
  cli char(3),
  cur_pos varchar(16),
  ccu varchar(12),
  cur varchar(6),
  pos_ccu varchar(4),
  pos_txt varchar(40),
  inm_num varchar(18),
  obi_num integer,
  idx varchar(1),
  idx2 varchar(1),
  nom_psn_cre varchar(12),
  die date,
  mut date,
  nom_psn_mut varchar(12),
  ixp_gen varchar(1),
  clv_ixp_cts varchar(8),
  cts_nmr varchar(2),
  cur_pos_sta varchar(1),
  txt_idx varchar(1),
  ccs_emp_min varchar(3),
  obi_sbs varchar(2),
  obi_sto varchar(8),
  cur_cns_ofc varchar(4),
  lng_clv_txt char(1),
  loc_rat_asg varchar(12),
  iloai varchar(1),
  mnd_num varchar(12),
  bautl varchar(18),
  cnd varchar(1),
  gmd varchar(4),
  idx_cur_pos varchar(1),
  cur_act_gen varchar(3),
  ang varchar(4),
  obi_num2 varchar(22),
  idx_tsc varchar(1),
  ops_elm_eop varchar(8),
  clv_ixp_cts2 varchar(8),
  num_ixp varchar(8),
  dvd varchar(10),
  dvd_pos varchar(6),
  cur_pos_ctg varchar(2),
  mem_num varchar(10),
  mem_pos_num varchar(5),
  num varchar(10),
  net_pre numeric(11,2),
  cvm varchar(5),
  smp_elm varchar(10),
  tsc_mnd varchar(12),
  ixp numeric(3,0),
  gen_mnd_ctg varchar(4),
  nsr varchar(18),
  mat_num varchar(18),
  deviceid varchar(40),
  nts varchar(12),
  nts_gen varchar(2),
  num2 varchar(10),
  pns_nts varchar(1),
  pri varchar(1),
  gen varchar(1),
  cod_cts varchar(8),
  qmcod varchar(4),
  exm_num varchar(12),
  isp_gen varchar(8),
  isp_num varchar(12),
  tmp numeric(16,0),
  ems varchar(1),
  num3 varchar(12),
  ord varchar(2),
  rfr_elm varchar(40),
  cur_pos_cre varchar(2),
  CONSTRAINT mpos_pk PRIMARY KEY (cli, cur_pos, ccu, cur, pos_ccu)
);
COMMENT ON TABLE pm.mpos IS 'MPOS — Maintenance item — a single equipment/task-list assignment within a maintenance plan (MPLA), the line-item detail that generates maintenance call objects.';
COMMENT ON COLUMN pm.mpos.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.mpos.cur_pos IS 'WAPOS — Maintenance item [curatio positio]';
COMMENT ON COLUMN pm.mpos.ccu IS 'WARPL — Maintenance Plan [consilium curationis]';
COMMENT ON COLUMN pm.mpos.cur IS 'WSTRA — Maintenance strategy [curatio]';
COMMENT ON COLUMN pm.mpos.pos_ccu IS 'WPPOS — Item in the maintenance plan [positio consilium curationis]';
COMMENT ON COLUMN pm.mpos.pos_txt IS 'PSTXT — Item Short Text [positio textus]';
COMMENT ON COLUMN pm.mpos.inm_num IS 'EQUNR — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN pm.mpos.obi_num IS 'OBKNR — Object list number [obiectum numerus]';
COMMENT ON COLUMN pm.mpos.idx IS 'ERKNZ — Creation indicator [index]';
COMMENT ON COLUMN pm.mpos.idx2 IS 'AEKNZ — Change indicator [index]';
COMMENT ON COLUMN pm.mpos.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN pm.mpos.die IS 'ERSDT — Date of creation [dies]';
COMMENT ON COLUMN pm.mpos.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pm.mpos.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pm.mpos.ixp_gen IS 'PLNTY — Task List Type [index pensorum genus]';
COMMENT ON COLUMN pm.mpos.clv_ixp_cts IS 'PLNNR — Key for Task List Group [clavis index pensorum coetus]';
COMMENT ON COLUMN pm.mpos.cts_nmr IS 'PLNAL — Group Counter [coetus numerator]';
COMMENT ON COLUMN pm.mpos.cur_pos_sta IS 'STATUS — Maintenance Item Status [curatio positio status]';
COMMENT ON COLUMN pm.mpos.txt_idx IS 'LTKNZ — Long Text Indicator [textus index]';
COMMENT ON COLUMN pm.mpos.ccs_emp_min IS 'WPGRP — Planner Group for Customer Service and Plant Maintenance [coetus consiliorum emptor ministerium]';
COMMENT ON COLUMN pm.mpos.obi_sbs IS 'OBJTY — Object types of the CIM resource [obiectum subsidium]';
COMMENT ON COLUMN pm.mpos.obi_sto IS 'GEWRK — Object ID of the Work Center [obiectum statio operis]';
COMMENT ON COLUMN pm.mpos.cur_cns_ofc IS 'IWERK — Maintenance Planning Plant [curatio consilium officina]';
COMMENT ON COLUMN pm.mpos.lng_clv_txt IS 'LANGU — Language key of the long text [lingua clavis textus]';
COMMENT ON COLUMN pm.mpos.loc_rat_asg IS 'ILOAN — Location and account assignment for technical object [locus ratio assignatio]';
COMMENT ON COLUMN pm.mpos.iloai IS 'ILOAI — ILOA Individual';
COMMENT ON COLUMN pm.mpos.mnd_num IS 'LAUFN — Order number [mandatum numerus]';
COMMENT ON COLUMN pm.mpos.bautl IS 'BAUTL — Assembly';
COMMENT ON COLUMN pm.mpos.cnd IS 'ANLZU — Syst.Condition [condicio]';
COMMENT ON COLUMN pm.mpos.gmd IS 'AUART — Order Type [genus mandati]';
COMMENT ON COLUMN pm.mpos.idx_cur_pos IS 'INACT — Indicator that maintenance item is inactive [index curatio positio]';
COMMENT ON COLUMN pm.mpos.cur_act_gen IS 'ILART — Maintenance activity type [curatio actio genus]';
COMMENT ON COLUMN pm.mpos.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN pm.mpos.obi_num2 IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN pm.mpos.idx_tsc IS 'IND_ABRVO — Indicator showing settlement rule maintained [index transactio]';
COMMENT ON COLUMN pm.mpos.ops_elm_eop IS 'PSPEL — Work Breakdown Structure Element (WBS Element) [opus elementum elementum operis]';
COMMENT ON COLUMN pm.mpos.clv_ixp_cts2 IS 'STD_NETZ — Key for Task List Group [clavis index pensorum coetus]';
COMMENT ON COLUMN pm.mpos.num_ixp IS 'STD_AVO — Number of the task list node [numerus index pensorum]';
COMMENT ON COLUMN pm.mpos.dvd IS 'KDAUF — Sales Document [documentum venditionis]';
COMMENT ON COLUMN pm.mpos.dvd_pos IS 'KDPOS — Sales Document Item [documentum venditionis positio]';
COMMENT ON COLUMN pm.mpos.cur_pos_ctg IS 'MITYP — Maintenance item category [curatio positio categoria]';
COMMENT ON COLUMN pm.mpos.mem_num IS 'BSTNR — Purchase Order Number [mandatum emptionis numerus]';
COMMENT ON COLUMN pm.mpos.mem_pos_num IS 'BSTPO — Purchase Order Item Number [mandatum emptionis positio numerus]';
COMMENT ON COLUMN pm.mpos.num IS 'PACKNO — Package number [numerus]';
COMMENT ON COLUMN pm.mpos.net_pre IS 'NETPR — Net price [netus pretium]';
COMMENT ON COLUMN pm.mpos.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN pm.mpos.smp_elm IS 'SAKTO — Cost Element [sumptus elementum]';
COMMENT ON COLUMN pm.mpos.tsc_mnd IS 'AUFNR — Settlement order [transactio mandatum]';
COMMENT ON COLUMN pm.mpos.ixp IS 'APFKT — Execution factor for whole task list [index pensorum]';
COMMENT ON COLUMN pm.mpos.gen_mnd_ctg IS 'SCRRENTY — SCREEN TYPE: for order-order category (see domain) [genus mandatum categoria]';
COMMENT ON COLUMN pm.mpos.nsr IS 'SERIALNR — Serial Number [numerus serialis]';
COMMENT ON COLUMN pm.mpos.mat_num IS 'SERMAT — Material Number [materia numerus]';
COMMENT ON COLUMN pm.mpos.deviceid IS 'DEVICEID — Additional Device Data';
COMMENT ON COLUMN pm.mpos.nts IS 'QMNUM — Notification No [nuntius]';
COMMENT ON COLUMN pm.mpos.nts_gen IS 'QMART — Notification Type [nuntius genus]';
COMMENT ON COLUMN pm.mpos.num2 IS 'LBLNI — Entry Sheet Number [numerus]';
COMMENT ON COLUMN pm.mpos.pns_nts IS 'TASK_DETERMINE — Automatic task determination in the notification [pensum nuntius]';
COMMENT ON COLUMN pm.mpos.pri IS 'PRIOK — Priority [prioritas]';
COMMENT ON COLUMN pm.mpos.gen IS 'QMKAT — Catalog Type - Coding [genus]';
COMMENT ON COLUMN pm.mpos.cod_cts IS 'QMGRP — Code Group - Coding [codex coetus]';
COMMENT ON COLUMN pm.mpos.qmcod IS 'QMCOD — Coding';
COMMENT ON COLUMN pm.mpos.exm_num IS 'PHYNR — Physical Sample Number [exemplum numerus]';
COMMENT ON COLUMN pm.mpos.isp_gen IS 'ART — Inspection Type [inspectio genus]';
COMMENT ON COLUMN pm.mpos.isp_num IS 'PRUEFLOS — Inspection Lot Number [inspectio numerus]';
COMMENT ON COLUMN pm.mpos.tmp IS 'TSTMP_BW — Time Stamp for BI Delta Extraction [tempus]';
COMMENT ON COLUMN pm.mpos.ems IS 'NO_AUFRELKZ — Do Not Release Immediately [emissio]';
COMMENT ON COLUMN pm.mpos.num3 IS 'DESNUM — CU: Design Number [numerus]';
COMMENT ON COLUMN pm.mpos.ord IS 'CYCLESEQIND — Cycle Set Sequence [ordo]';
COMMENT ON COLUMN pm.mpos.rfr_elm IS 'ADPSP — Reference Element PM/PS [referentia elementum]';
COMMENT ON COLUMN pm.mpos.cur_pos_cre IS 'IND_MPOS_API — Maintenance Item Was Created/Changed by API [curatio positio creatus]';

CREATE TABLE IF NOT EXISTS pm.plmk (
  cli char(3),
  ixp_gen varchar(1),
  clv_ixp_cts varchar(8),
  num_ixp varchar(8),
  idx_not varchar(1),
  not_num varchar(4),
  nmr varchar(8),
  die_not_vrs date,
  idx varchar(1),
  idx2 varchar(1),
  idx3 varchar(1),
  num varchar(12),
  nom_psn_cre varchar(12),
  die_tbl_cre date,
  nom_psn_mut varchar(12),
  mut date,
  idx_not2 varchar(10),
  ofc varchar(4),
  isp varchar(8),
  sta_isp varchar(4),
  nis varchar(8),
  vrs_nis varchar(4),
  idx_not_rfr varchar(1),
  vrs_not varchar(4),
  die_not_vrs2 date,
  not_ varchar(2),
  exm_num varchar(4),
  isp2 varchar(4),
  clv varchar(8),
  txt_not varchar(40),
  idx_txt varchar(1),
  num2 varchar(1),
  uni_msu_mta varchar(3),
  mta_val_not double precision,
  toleranzob double precision,
  toleranzun double precision,
  num3 varchar(2),
  cls double precision,
  val_pri_cls double precision,
  grenzeob1 double precision,
  grenzeun1 double precision,
  plausioben double precision,
  plausiunte double precision,
  stichprver varchar(8),
  exm_men varchar(3),
  exm_mgn_men varchar(3),
  exm_men_qnt varchar(3),
  isp_uni varchar(8),
  dynkrit varchar(1),
  idx_not_val varchar(1),
  val varchar(40),
  formel2 varchar(40),
  rfr_exm_not bytea,
  qergdath varchar(4),
  exm varchar(8),
  qdynregel varchar(7),
  rfr_not varchar(30),
  pos_nmr_prd varchar(8),
  cod_cts varchar(8),
  gen varchar(1),
  spckrit varchar(8),
  val2 varchar(4),
  idx4 varchar(1),
  not2 varchar(4),
  org_not varchar(1),
  obi_not bytea,
  idx_not_isp varchar(1),
  obi_not2 varchar(32),
  CONSTRAINT plmk_pk PRIMARY KEY (cli, ixp_gen, clv_ixp_cts, num_ixp, idx_not, not_num, nmr)
);
COMMENT ON TABLE pm.plmk IS 'PLMK — Inspection plan characteristics — the quality/inspection characteristics assigned to a task-list operation (inspection points on a PM/QM task list node), carrying the master-inspection-characteristic reference, tolerance/target-value definition, sampling procedure, and long-text/short-text control. SAP''s real table carries 140+ fields, including five repeating catalog-selection slots (KATAB1-5/KATALGART1-5/AUSWMENGE1-5/etc.) for multiple-choice valuation; this definition is scoped to the full key, master-characteristic linkage (QPMK_REF/VERWMERKM), value/tolerance/limit fields, sampling and fo';
COMMENT ON COLUMN pm.plmk.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.plmk.ixp_gen IS 'PLNTY — Task List Type [index pensorum genus]';
COMMENT ON COLUMN pm.plmk.clv_ixp_cts IS 'PLNNR — Key for Task List Group [clavis index pensorum coetus]';
COMMENT ON COLUMN pm.plmk.num_ixp IS 'PLNKN — Number of the task list node [numerus index pensorum]';
COMMENT ON COLUMN pm.plmk.idx_not IS 'KZEINSTELL — Indicator: characteristic used for machine setting [index nota]';
COMMENT ON COLUMN pm.plmk.not_num IS 'MERKNR — Characteristic number [nota numerus]';
COMMENT ON COLUMN pm.plmk.nmr IS 'ZAEHL — Internal counter [numerator]';
COMMENT ON COLUMN pm.plmk.die_not_vrs IS 'GUELTIGAB — Effective from date of characteristic version [dies nota versio]';
COMMENT ON COLUMN pm.plmk.idx IS 'SERNV — Indicator: serial numbers permitted [index]';
COMMENT ON COLUMN pm.plmk.idx2 IS 'LOEKZ — Deletion Indicator [index]';
COMMENT ON COLUMN pm.plmk.idx3 IS 'PARKZ — Indicator: inactive changes [index]';
COMMENT ON COLUMN pm.plmk.num IS 'AENDERGNR — Change number [numerus]';
COMMENT ON COLUMN pm.plmk.nom_psn_cre IS 'ERSTELLER — Name of person who created object [nomen persona creatus]';
COMMENT ON COLUMN pm.plmk.die_tbl_cre IS 'ERSTELLDAT — Date on which record was created [dies tabula creatus]';
COMMENT ON COLUMN pm.plmk.nom_psn_mut IS 'AENDERER — Name of Person who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pm.plmk.mut IS 'AENDERDAT — Changed On [mutatus]';
COMMENT ON COLUMN pm.plmk.idx_not2 IS 'STEUERKZ — Control indicator for characteristic [index nota]';
COMMENT ON COLUMN pm.plmk.ofc IS 'QMTB_WERKS — Plant [officina]';
COMMENT ON COLUMN pm.plmk.isp IS 'PMETHODE — Inspection method [inspectio]';
COMMENT ON COLUMN pm.plmk.sta_isp IS 'PMTVERSION — Change status of inspection method [status inspectio]';
COMMENT ON COLUMN pm.plmk.nis IS 'QPMK_REF — Master inspection characteristic [nota inspectionis]';
COMMENT ON COLUMN pm.plmk.vrs_nis IS 'QPMK_ZAEHL — Version of master inspection characteristic [versio nota inspectionis]';
COMMENT ON COLUMN pm.plmk.idx_not_rfr IS 'VERWMERKM — Indicator: characteristic is a reference characteristic [index nota referentia]';
COMMENT ON COLUMN pm.plmk.vrs_not IS 'MKVERSION — Version of the characteristic [versio nota]';
COMMENT ON COLUMN pm.plmk.die_not_vrs2 IS 'MKVERSDAT — Date on which characteristic version becomes effective [dies nota versio]';
COMMENT ON COLUMN pm.plmk.not_ IS 'MERKGEW — Characteristic weighting [nota]';
COMMENT ON COLUMN pm.plmk.exm_num IS 'PROBENR — Sample-drawing number [exemplum numerus]';
COMMENT ON COLUMN pm.plmk.isp2 IS 'PRUEFQUALI — Inspection qualification [inspectio]';
COMMENT ON COLUMN pm.plmk.clv IS 'TOLERANZSL — Tolerance key [clavis]';
COMMENT ON COLUMN pm.plmk.txt_not IS 'KURZTEXT — Short text for characteristic [textus nota]';
COMMENT ON COLUMN pm.plmk.idx_txt IS 'LTEXTKZ — Indicator: Long text exists [index textus]';
COMMENT ON COLUMN pm.plmk.num2 IS 'STELLEN — Number of decimal places [numerus]';
COMMENT ON COLUMN pm.plmk.uni_msu_mta IS 'MASSEINHSW — Unit of measurement for target value [unitas mensuratio meta]';
COMMENT ON COLUMN pm.plmk.mta_val_not IS 'SOLLWERT — Target value of quantitative characteristic [meta valor nota]';
COMMENT ON COLUMN pm.plmk.toleranzob IS 'TOLERANZOB — Upper tolerance limit';
COMMENT ON COLUMN pm.plmk.toleranzun IS 'TOLERANZUN — Lower tolerance limit';
COMMENT ON COLUMN pm.plmk.num3 IS 'KLASANZAHL — Number of classes for classed recording [numerus]';
COMMENT ON COLUMN pm.plmk.cls IS 'KLASBREITE — Class width for classed recording [classis]';
COMMENT ON COLUMN pm.plmk.val_pri_cls IS 'KLASMITTE — Mean value of first class for classed recording [valor primus classis]';
COMMENT ON COLUMN pm.plmk.grenzeob1 IS 'GRENZEOB1 — Upper specification limit 1';
COMMENT ON COLUMN pm.plmk.grenzeun1 IS 'GRENZEUN1 — Lower specification limit 1';
COMMENT ON COLUMN pm.plmk.plausioben IS 'PLAUSIOBEN — Plausibility limit upper';
COMMENT ON COLUMN pm.plmk.plausiunte IS 'PLAUSIUNTE — Plausibility limit lower';
COMMENT ON COLUMN pm.plmk.stichprver IS 'STICHPRVER — Sampling procedure';
COMMENT ON COLUMN pm.plmk.exm_men IS 'FAKPLANME — Sample unit of measure [exemplum mensura]';
COMMENT ON COLUMN pm.plmk.exm_mgn_men IS 'FAKPROBME — Sample size unit of measure [exemplum magnitudo mensura]';
COMMENT ON COLUMN pm.plmk.exm_men_qnt IS 'PROBEMGEH — Sample unit of measure (relative quantity) [exemplum mensura quantitas]';
COMMENT ON COLUMN pm.plmk.isp_uni IS 'PRUEFEINH — Inspection unit [inspectio unitas]';
COMMENT ON COLUMN pm.plmk.dynkrit IS 'DYNKRIT — Dynamic modification rule criterion';
COMMENT ON COLUMN pm.plmk.idx_not_val IS 'FORMELSL — Indicator: characteristic value determined by formula [index nota valor]';
COMMENT ON COLUMN pm.plmk.val IS 'FORMEL1 — Formula for value determination [valor]';
COMMENT ON COLUMN pm.plmk.formel2 IS 'FORMEL2 — Formula for tolerance determination';
COMMENT ON COLUMN pm.plmk.rfr_exm_not IS 'CHARACT_ID1 — Reference to Physical Sample Characteristic ID [referentia exemplum nota]';
COMMENT ON COLUMN pm.plmk.qergdath IS 'QERGDATH — History of results recording';
COMMENT ON COLUMN pm.plmk.exm IS 'EEANTVERF — Sample-drawing procedure [exemplum]';
COMMENT ON COLUMN pm.plmk.qdynregel IS 'QDYNREGEL — Dynamic modification rule';
COMMENT ON COLUMN pm.plmk.rfr_not IS 'DYNMERKREF — Reference characteristic for dynamic modification [referentia nota]';
COMMENT ON COLUMN pm.plmk.pos_nmr_prd IS 'PZLFH — Item counter for production resources/tools [positio numerator productio]';
COMMENT ON COLUMN pm.plmk.cod_cts IS 'CODEGRQUAL — Code group for qualitative characteristics [codex coetus]';
COMMENT ON COLUMN pm.plmk.gen IS 'CODEQUAL — Catalog type for qualitative characteristics [genus]';
COMMENT ON COLUMN pm.plmk.spckrit IS 'SPCKRIT — SPC criterion';
COMMENT ON COLUMN pm.plmk.val2 IS 'INPPROC — Value entry [valor]';
COMMENT ON COLUMN pm.plmk.idx4 IS 'RES_PLAN — Indicator: results recording planned [index]';
COMMENT ON COLUMN pm.plmk.not2 IS 'CTRMETH — Control method for the characteristic [nota]';
COMMENT ON COLUMN pm.plmk.org_not IS 'CHAORIG — Origin of the characteristic [origo nota]';
COMMENT ON COLUMN pm.plmk.obi_not IS 'CHAORIG_GUID — GUID of the object the characteristic originates from [obiectum nota]';
COMMENT ON COLUMN pm.plmk.idx_not_isp IS 'NO_INSPECTION — Indicator: characteristic not relevant for inspection [index nota inspectio]';
COMMENT ON COLUMN pm.plmk.obi_not2 IS 'QP_CHAORIG_ID — ID of the object the characteristic originates from [obiectum nota]';

CREATE TABLE IF NOT EXISTS pm.pmco (
  cli char(3),
  obi_num varchar(22),
  cvm varchar(5),
  gen varchar(2),
  val_gen varchar(2),
  anf varchar(4),
  smp_elm_val varchar(10),
  vrs varchar(3),
  dtb_clv_per varchar(3),
  vorga varchar(4),
  rqs_idx varchar(2),
  mnd_ctg varchar(1),
  per_val numeric(15,2),
  per_val2 numeric(15,2),
  per_val3 numeric(15,2),
  per_val4 numeric(15,2),
  per_val5 numeric(15,2),
  per_val6 numeric(15,2),
  per_val7 numeric(15,2),
  per_val8 numeric(15,2),
  per_val9 numeric(15,2),
  per_val10 numeric(15,2),
  per_val11 numeric(15,2),
  per_val12 numeric(15,2),
  per_val13 numeric(15,2),
  per_val14 numeric(15,2),
  per_val15 numeric(15,2),
  per_val16 numeric(15,2),
  per_val_tot numeric(15,2),
  CONSTRAINT pmco_pk PRIMARY KEY (cli, obi_num, cvm, gen, val_gen, anf, smp_elm_val, vrs, dtb_clv_per)
);
COMMENT ON TABLE pm.pmco IS 'PMCO — Cost structure of maintenance order — the CO totals-record table holding period-bucketed planned/actual/commitment cost values (WRT00–WRT16, one slot per posting period plus adjustment/total periods) for a maintenance order object (OBJNR), broken out by value type, fiscal year, version, and category. This is the cost side of order settlement/reporting that reconciles against PMCO''s controlling-area currency (COCUR).';
COMMENT ON COLUMN pm.pmco.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.pmco.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN pm.pmco.cvm IS 'COCUR — Currency Key [clavis monetae]';
COMMENT ON COLUMN pm.pmco.gen IS 'BELTP — Transaction type [genus]';
COMMENT ON COLUMN pm.pmco.val_gen IS 'WRTTP — Value Type for Reporting [valor genus]';
COMMENT ON COLUMN pm.pmco.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN pm.pmco.smp_elm_val IS 'ACPOS — Cost element for value/quantity update [sumptus elementum valor]';
COMMENT ON COLUMN pm.pmco.vrs IS 'VERSN — Version [versio]';
COMMENT ON COLUMN pm.pmco.dtb_clv_per IS 'PERBL — Distribution key for period totals records [distributio clavis periodus]';
COMMENT ON COLUMN pm.pmco.vorga IS 'VORGA — Business Transaction';
COMMENT ON COLUMN pm.pmco.rqs_idx IS 'BEMOT — Requirement/inventory management indicator [requisitum index]';
COMMENT ON COLUMN pm.pmco.mnd_ctg IS 'ABKAT — Order category [mandatum categoria]';
COMMENT ON COLUMN pm.pmco.per_val IS 'WRT00 — Adjustment period value / period 0 value [periodus valor]';
COMMENT ON COLUMN pm.pmco.per_val2 IS 'WRT01 — Period value 1 [periodus valor]';
COMMENT ON COLUMN pm.pmco.per_val3 IS 'WRT02 — Period value 2 [periodus valor]';
COMMENT ON COLUMN pm.pmco.per_val4 IS 'WRT03 — Period value 3 [periodus valor]';
COMMENT ON COLUMN pm.pmco.per_val5 IS 'WRT04 — Period value 4 [periodus valor]';
COMMENT ON COLUMN pm.pmco.per_val6 IS 'WRT05 — Period value 5 [periodus valor]';
COMMENT ON COLUMN pm.pmco.per_val7 IS 'WRT06 — Period value 6 [periodus valor]';
COMMENT ON COLUMN pm.pmco.per_val8 IS 'WRT07 — Period value 7 [periodus valor]';
COMMENT ON COLUMN pm.pmco.per_val9 IS 'WRT08 — Period value 8 [periodus valor]';
COMMENT ON COLUMN pm.pmco.per_val10 IS 'WRT09 — Period value 9 [periodus valor]';
COMMENT ON COLUMN pm.pmco.per_val11 IS 'WRT10 — Period value 10 [periodus valor]';
COMMENT ON COLUMN pm.pmco.per_val12 IS 'WRT11 — Period value 11 [periodus valor]';
COMMENT ON COLUMN pm.pmco.per_val13 IS 'WRT12 — Period value 12 [periodus valor]';
COMMENT ON COLUMN pm.pmco.per_val14 IS 'WRT13 — Period value 13 [periodus valor]';
COMMENT ON COLUMN pm.pmco.per_val15 IS 'WRT14 — Period value 14 [periodus valor]';
COMMENT ON COLUMN pm.pmco.per_val16 IS 'WRT15 — Period value 15 [periodus valor]';
COMMENT ON COLUMN pm.pmco.per_val_tot IS 'WRT16 — Period value 16 / total value [periodus valor summa totalis]';

CREATE TABLE IF NOT EXISTS pm.pmpl (
  cli char(3),
  pm_appl varchar(2),
  clv varchar(20),
  gen varchar(4),
  num varchar(3),
  nom varchar(40),
  frm_nom varchar(30),
  usr_nom varchar(12),
  die date,
  tmp time,
  tddest varchar(4),
  idx varchar(1),
  num2 varchar(30),
  ptr_num varchar(3),
  CONSTRAINT pmpl_pk PRIMARY KEY (cli, pm_appl, clv)
);
COMMENT ON TABLE pm.pmpl IS 'PMPL — PM: Print log — records each print/output event for a PM application (order, notification, permit, etc.), the paper/form used, the output device, and the number of copies, giving an audit trail of what was printed, by whom, and when. Small, complete table.';
COMMENT ON COLUMN pm.pmpl.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.pmpl.pm_appl IS 'PM_APPL — PM Application';
COMMENT ON COLUMN pm.pmpl.clv IS 'PRINT_KEY — Print key [clavis]';
COMMENT ON COLUMN pm.pmpl.gen IS 'PM_PAPER — PM paper type [genus]';
COMMENT ON COLUMN pm.pmpl.num IS 'COPY_NR — Number of copies [numerus]';
COMMENT ON COLUMN pm.pmpl.nom IS 'ABAPNAME — Report/print program name [nomen]';
COMMENT ON COLUMN pm.pmpl.frm_nom IS 'FORM — Form Name [forma nomen]';
COMMENT ON COLUMN pm.pmpl.usr_nom IS 'UNAME — User name [usor nomen]';
COMMENT ON COLUMN pm.pmpl.die IS 'DATUM — Print date [dies]';
COMMENT ON COLUMN pm.pmpl.tmp IS 'UZEIT — Print time [tempus]';
COMMENT ON COLUMN pm.pmpl.tddest IS 'TDDEST — Spool: Output Device';
COMMENT ON COLUMN pm.pmpl.idx IS 'PM_DELTA_P — Indicator: reprint (delta print) [index]';
COMMENT ON COLUMN pm.pmpl.num2 IS 'TDTELENUM — Spool: Fax number [numerus]';
COMMENT ON COLUMN pm.pmpl.ptr_num IS 'TDTELELAND — Spool: Country prefix for fax number [patria numerus]';

CREATE TABLE IF NOT EXISTS pm.qmel (
  cli char(3),
  nts varchar(12),
  nts_gen varchar(2),
  txt varchar(40),
  pri_gen varchar(2),
  pri varchar(1),
  nom_psn_cre varchar(12),
  die_tbl_cre date,
  nom_psn_mut varchar(12),
  mut date,
  tmp_nts time,
  die_nts date,
  nom_psn_nts varchar(12),
  ini_die date,
  ini_tmp time,
  fin_die date,
  fin_tmp time,
  cvm varchar(5),
  mnd_num varchar(12),
  prd_vrs varchar(4),
  mat_num_prd varchar(18),
  ofc_prd_vrs varchar(4),
  cap_num varchar(12),
  mat_num varchar(18),
  grd varchar(2),
  mat_cts varchar(9),
  hir varchar(18),
  idx varchar(1),
  idx2 varchar(1),
  rat_num_emp varchar(10),
  feknz varchar(1),
  pns varchar(1),
  obi_num_sta varchar(22),
  die_nts2 date,
  tmp_nts2 time,
  rbnr varchar(9),
  org varchar(1),
  obi_txt varchar(1),
  lng_idx_txt varchar(1),
  org_nts varchar(2),
  nts_rfr_die date,
  nts_rfr_tmp time,
  ven_rat_num varchar(10),
  nts2 varchar(12),
  vdt_mnd_num varchar(10),
  emp_mem_num varchar(35),
  emp_mem_die date,
  dvs varchar(2),
  ovd varchar(4),
  cds varchar(2),
  dml_num varchar(10),
  tmp time,
  tmp_tbl time,
  ofc_mat varchar(4),
  gen varchar(1),
  cod_cts varchar(8),
  qmcod varchar(4),
  clv varchar(4),
  teilev varchar(4),
  isp_num varchar(12),
  grx_num varchar(10),
  loc_grx varchar(4),
  ven_grx_num varchar(15),
  num varchar(10),
  mat_num2 varchar(18),
  oem varchar(4),
  cts varchar(3),
  loc_isp_cpa varchar(4),
  mnd_num_prd varchar(12),
  cns_num_mnd varchar(10),
  dem_num varchar(10),
  pos_num_dem varchar(5),
  mat_doc_ann varchar(4),
  num_mat_doc varchar(10),
  pos_mat_doc varchar(4),
  vdt_mnd_num2 varchar(10),
  pos_num_doc varchar(6),
  trd varchar(10),
  trd_pos varchar(6),
  obi_sbs varchar(2),
  obi_sto varchar(8),
  ofc_sto varchar(4),
  gen2 varchar(8),
  num_mnd_nmr varchar(8),
  qnt numeric(13,3),
  qnt2 numeric(13,3),
  men varchar(3),
  rfr_qnt numeric(13,3),
  qnt3 numeric(13,3),
  trd_qnt numeric(13,3),
  die_trd date,
  mnd_num2 varchar(12),
  rfr_nts_num varchar(12),
  rfr_num varchar(20),
  mat_num_emp varchar(35),
  mat_num_ven varchar(35),
  nsr varchar(18),
  tbl varchar(1),
  prd_die date,
  deviceid varchar(40),
  vdt varchar(4),
  vdt_cts varchar(3),
  tbl_cre varchar(1),
  cpc_tbl varchar(12),
  nmr varchar(8),
  obi_gen varchar(2),
  obi varchar(8),
  tmp_seg varchar(22),
  tmp_seg2 varchar(1),
  tsegtp varchar(10),
  ztm_nts varchar(6),
  org_ztm_nts varchar(1),
  funktion varchar(4),
  eop varchar(8),
  estimated_costs numeric(13,2),
  claimed_costs numeric(13,2),
  result_costs numeric(13,2),
  chance varchar(2),
  scs_gen varchar(2),
  smp_num varchar(12),
  uni varchar(4),
  obi_num_rat varchar(22),
  rat_asg varchar(22),
  nts3 varchar(1),
  obi_num varchar(22),
  logsystem varchar(10),
  inm varchar(18),
  obi_sbs2 varchar(2),
  obi_sbs3 varchar(8),
  lcf varchar(30),
  inm_num varchar(18),
  org_vic_adn varchar(2),
  pos varchar(72),
  CONSTRAINT qmel_pk PRIMARY KEY (cli, nts, nts_gen)
);
COMMENT ON TABLE pm.qmel IS 'QMEL — Quality/Maintenance notification header — defect, activity, and task notifications raised against equipment or functional locations. Bridges PM and QM.';
COMMENT ON COLUMN pm.qmel.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.qmel.nts IS 'QMNUM — Notification No [nuntius]';
COMMENT ON COLUMN pm.qmel.nts_gen IS 'QMART — Notification Type [nuntius genus]';
COMMENT ON COLUMN pm.qmel.txt IS 'QMTXT — Short Text [textus]';
COMMENT ON COLUMN pm.qmel.pri_gen IS 'ARTPR — Priority Type [prioritas genus]';
COMMENT ON COLUMN pm.qmel.pri IS 'PRIOK — Priority [prioritas]';
COMMENT ON COLUMN pm.qmel.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN pm.qmel.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN pm.qmel.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pm.qmel.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pm.qmel.tmp_nts IS 'MZEIT — Time of Notification [tempus nuntius]';
COMMENT ON COLUMN pm.qmel.die_nts IS 'QMDAT — Date of Notification [dies nuntius]';
COMMENT ON COLUMN pm.qmel.nom_psn_nts IS 'QMNAM — Name of Person Reporting Notification [nomen persona nuntius]';
COMMENT ON COLUMN pm.qmel.ini_die IS 'STRMN — Required start date [initium dies]';
COMMENT ON COLUMN pm.qmel.ini_tmp IS 'STRUR — Required Start Time [initium tempus]';
COMMENT ON COLUMN pm.qmel.fin_die IS 'LTRMN — Required End Date [finis dies]';
COMMENT ON COLUMN pm.qmel.fin_tmp IS 'LTRUR — Requested End Time [finis tempus]';
COMMENT ON COLUMN pm.qmel.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN pm.qmel.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN pm.qmel.prd_vrs IS 'VERID — Production Version [productio versio]';
COMMENT ON COLUMN pm.qmel.mat_num_prd IS 'RM_MATNR — Material number of the production version [materia numerus productio]';
COMMENT ON COLUMN pm.qmel.ofc_prd_vrs IS 'RM_WERKS — Plant of production version [officina productio versio]';
COMMENT ON COLUMN pm.qmel.cap_num IS 'SA_AUFNR — Run schedule header number [caput numerus]';
COMMENT ON COLUMN pm.qmel.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN pm.qmel.grd IS 'REVLV — Revision Level [gradus]';
COMMENT ON COLUMN pm.qmel.mat_cts IS 'MATKL — Material Group [materia coetus]';
COMMENT ON COLUMN pm.qmel.hir IS 'PRDHA — Product hierarchy [hierarchia]';
COMMENT ON COLUMN pm.qmel.idx IS 'KZKRI — Indicator: Critical part [index]';
COMMENT ON COLUMN pm.qmel.idx2 IS 'KZDKZ — Documentation required indicator [index]';
COMMENT ON COLUMN pm.qmel.rat_num_emp IS 'KUNUM_C — Account Number of Customer [ratio numerus emptor]';
COMMENT ON COLUMN pm.qmel.feknz IS 'FEKNZ — Error Records Exist';
COMMENT ON COLUMN pm.qmel.pns IS 'MAKNZ — Task Records Exist [pensum]';
COMMENT ON COLUMN pm.qmel.obi_num_sta IS 'OBJNR — Object Number for Status Management [obiectum numerus status]';
COMMENT ON COLUMN pm.qmel.die_nts2 IS 'QMDAB — Date for Notification Completion [dies nuntius]';
COMMENT ON COLUMN pm.qmel.tmp_nts2 IS 'QMZAB — Completion Time of Notification [tempus nuntius]';
COMMENT ON COLUMN pm.qmel.rbnr IS 'RBNR — Catalog Profile';
COMMENT ON COLUMN pm.qmel.org IS 'RBNRI — Origin of Notifications Catalog Profile [origo]';
COMMENT ON COLUMN pm.qmel.obi_txt IS 'INDTX — Object Long Text Available [obiectum textus]';
COMMENT ON COLUMN pm.qmel.lng_idx_txt IS 'KZMLA — Primary language indicator for text segment [lingua index textus]';
COMMENT ON COLUMN pm.qmel.org_nts IS 'HERKZ — Origin of Notification [origo nuntius]';
COMMENT ON COLUMN pm.qmel.nts_rfr_die IS 'BEZDT — Notification Reference Date [nuntius referentia dies]';
COMMENT ON COLUMN pm.qmel.nts_rfr_tmp IS 'BEZUR — Notification Reference Time [nuntius referentia tempus]';
COMMENT ON COLUMN pm.qmel.ven_rat_num IS 'LIFNUM — Vendor Account Number [venditor ratio numerus]';
COMMENT ON COLUMN pm.qmel.nts2 IS 'BUNAME — Author of a Q/PM Notification [nuntius]';
COMMENT ON COLUMN pm.qmel.vdt_mnd_num IS 'VBELN — Sales Order Number [venditio mandatum numerus]';
COMMENT ON COLUMN pm.qmel.emp_mem_num IS 'BSTNK — Customer purchase order number [emptor mandatum emptionis numerus]';
COMMENT ON COLUMN pm.qmel.emp_mem_die IS 'BSTDK — Customer purchase order date [emptor mandatum emptionis dies]';
COMMENT ON COLUMN pm.qmel.dvs IS 'SPART — Division [divisio]';
COMMENT ON COLUMN pm.qmel.ovd IS 'VKORG — Sales Organization [organizatio venditionis]';
COMMENT ON COLUMN pm.qmel.cds IS 'VTWEG — Distribution Channel [canalis distributionis]';
COMMENT ON COLUMN pm.qmel.dml_num IS 'ADRNR — Addresses: Address Number [domicilium numerus]';
COMMENT ON COLUMN pm.qmel.tmp IS 'AEZEIT — Time of Change [tempus]';
COMMENT ON COLUMN pm.qmel.tmp_tbl IS 'ERZEIT — Time, at Which Record Was Added [tempus tabula]';
COMMENT ON COLUMN pm.qmel.ofc_mat IS 'MAWERK — Plant for Material [officina materia]';
COMMENT ON COLUMN pm.qmel.gen IS 'QMKAT — Catalog Type - Coding [genus]';
COMMENT ON COLUMN pm.qmel.cod_cts IS 'QMGRP — Code Group - Coding [codex coetus]';
COMMENT ON COLUMN pm.qmel.qmcod IS 'QMCOD — Coding';
COMMENT ON COLUMN pm.qmel.clv IS 'AUSWIRK — Key for a Scenario [clavis]';
COMMENT ON COLUMN pm.qmel.teilev IS 'TEILEV — Usage of Parts';
COMMENT ON COLUMN pm.qmel.isp_num IS 'PRUEFLOS — Inspection Lot Number [inspectio numerus]';
COMMENT ON COLUMN pm.qmel.grx_num IS 'CHARG — Batch Number [grex numerus]';
COMMENT ON COLUMN pm.qmel.loc_grx IS 'LGORTCHARG — Storage Location of Batch [locus repositionis grex]';
COMMENT ON COLUMN pm.qmel.ven_grx_num IS 'LICHN — Vendor Batch Number [venditor grex numerus]';
COMMENT ON COLUMN pm.qmel.num IS 'HERSTELLER — Number of Manufacturer [numerus]';
COMMENT ON COLUMN pm.qmel.mat_num2 IS 'EMATNR — Material Number Corresponding to Manufacturer Part Number [materia numerus]';
COMMENT ON COLUMN pm.qmel.oem IS 'EKORG — Purchasing Organization [organizatio emptionis]';
COMMENT ON COLUMN pm.qmel.cts IS 'BKGRP — Purchasing Group [coetus]';
COMMENT ON COLUMN pm.qmel.loc_isp_cpa IS 'LGORTVORG — Storage Location for Inspection Lot Stock [locus repositionis inspectio copia]';
COMMENT ON COLUMN pm.qmel.mnd_num_prd IS 'FERTAUFNR — Order Number (Production Order) [mandatum numerus productio]';
COMMENT ON COLUMN pm.qmel.cns_num_mnd IS 'FERTAUFPL — Plan Number for Operations in Order (Production Order) [consilium numerus mandatum]';
COMMENT ON COLUMN pm.qmel.dem_num IS 'EBELN — Purchasing Document Number [documentum emptionis numerus]';
COMMENT ON COLUMN pm.qmel.pos_num_dem IS 'EBELP — Item Number of Purchasing Document [positio numerus documentum emptionis]';
COMMENT ON COLUMN pm.qmel.mat_doc_ann IS 'MJAHR — Material Document Year [materia documentum annus]';
COMMENT ON COLUMN pm.qmel.num_mat_doc IS 'MBLNR — Number of Material Document [numerus materia documentum]';
COMMENT ON COLUMN pm.qmel.pos_mat_doc IS 'MBLPO — Item in Material Document [positio materia documentum]';
COMMENT ON COLUMN pm.qmel.vdt_mnd_num2 IS 'LS_KDAUF — Sales Order Number [venditio mandatum numerus]';
COMMENT ON COLUMN pm.qmel.pos_num_doc IS 'LS_KDPOS — Item number of the SD document [positio numerus documentum]';
COMMENT ON COLUMN pm.qmel.trd IS 'LS_VBELN — Delivery [traditio]';
COMMENT ON COLUMN pm.qmel.trd_pos IS 'LS_POSNR — Delivery Item [traditio positio]';
COMMENT ON COLUMN pm.qmel.obi_sbs IS 'CROBJTY — Object types of the CIM resource [obiectum subsidium]';
COMMENT ON COLUMN pm.qmel.obi_sto IS 'ARBPL — Object ID of the Work Center [obiectum statio operis]';
COMMENT ON COLUMN pm.qmel.ofc_sto IS 'ARBPLWERK — Plant for Work Center [officina statio operis]';
COMMENT ON COLUMN pm.qmel.gen2 IS 'FEART — Report Type for Defects Recording [genus]';
COMMENT ON COLUMN pm.qmel.num_mnd_nmr IS 'PNLKN — Current Node Number from Order Counter APLZL [numerus mandatum numerator]';
COMMENT ON COLUMN pm.qmel.qnt IS 'MGEIG — Defective Quantity (Internal) [quantitas]';
COMMENT ON COLUMN pm.qmel.qnt2 IS 'MGFRD — Defective Quantity (External) [quantitas]';
COMMENT ON COLUMN pm.qmel.men IS 'MGEIN — Unit of Measure [mensura]';
COMMENT ON COLUMN pm.qmel.rfr_qnt IS 'BZMNG — General Reference Quantity [referentia quantitas]';
COMMENT ON COLUMN pm.qmel.qnt3 IS 'RKMNG — Complaint Quantity [quantitas]';
COMMENT ON COLUMN pm.qmel.trd_qnt IS 'RGMNG — Return Delivery Quantity [traditio quantitas]';
COMMENT ON COLUMN pm.qmel.die_trd IS 'RKDAT — Date of Return Delivery [dies traditio]';
COMMENT ON COLUMN pm.qmel.mnd_num2 IS 'COAUFNR — Order Number (QM Order) [mandatum numerus]';
COMMENT ON COLUMN pm.qmel.rfr_nts_num IS 'QWRNUM — Reference Notification Number [referentia nuntius numerus]';
COMMENT ON COLUMN pm.qmel.rfr_num IS 'REFNUM — External Reference Number [referentia numerus]';
COMMENT ON COLUMN pm.qmel.mat_num_emp IS 'KDMAT — Material Number Used by Customer [materia numerus emptor]';
COMMENT ON COLUMN pm.qmel.mat_num_ven IS 'IDNLF — Material Number Used by Vendor [materia numerus venditor]';
COMMENT ON COLUMN pm.qmel.nsr IS 'SERIALNR — Serial Number [numerus serialis]';
COMMENT ON COLUMN pm.qmel.tbl IS 'KZLOESCH — Delete Data Record [tabula]';
COMMENT ON COLUMN pm.qmel.prd_die IS 'PRODDAT — Production Date [productio dies]';
COMMENT ON COLUMN pm.qmel.deviceid IS 'DEVICEID — Additional Device Data';
COMMENT ON COLUMN pm.qmel.vdt IS 'VKBUR — Sales Office [venditio]';
COMMENT ON COLUMN pm.qmel.vdt_cts IS 'VKGRP — Sales Group [venditio coetus]';
COMMENT ON COLUMN pm.qmel.tbl_cre IS 'AUTKZ — Data Record Created with Function ''Create with Copy Model'' [tabula creatus]';
COMMENT ON COLUMN pm.qmel.cpc_tbl IS 'BEDID — ID of the capacity requirements record [capacitas tabula]';
COMMENT ON COLUMN pm.qmel.nmr IS 'BEDZL — Internal counter [numerator]';
COMMENT ON COLUMN pm.qmel.obi_gen IS 'PROFIL_TYP — Object Type [obiectum genus]';
COMMENT ON COLUMN pm.qmel.obi IS 'PROFIL_ID — Object ID [obiectum]';
COMMENT ON COLUMN pm.qmel.tmp_seg IS 'HANDLE — Globally unique identifier (linked to time segment, etc) [tempus segmentum]';
COMMENT ON COLUMN pm.qmel.tmp_seg2 IS 'TSEGFL — Time segment exists [tempus segmentum]';
COMMENT ON COLUMN pm.qmel.tsegtp IS 'TSEGTP — Template';
COMMENT ON COLUMN pm.qmel.ztm_nts IS 'TZONSO — Time Zone for Notification [zona temporis nuntius]';
COMMENT ON COLUMN pm.qmel.org_ztm_nts IS 'TZONID — Origin of Time Zone in Notification [origo zona temporis nuntius]';
COMMENT ON COLUMN pm.qmel.funktion IS 'FUNKTION — Keys for Function in Action Box';
COMMENT ON COLUMN pm.qmel.eop IS 'PSP_NR — WBS Element [elementum operis]';
COMMENT ON COLUMN pm.qmel.estimated_costs IS 'ESTIMATED_COSTS — Estimated Costs for a Claim';
COMMENT ON COLUMN pm.qmel.claimed_costs IS 'CLAIMED_COSTS — Costs Claimed';
COMMENT ON COLUMN pm.qmel.result_costs IS 'RESULT_COSTS — Costs Accepted';
COMMENT ON COLUMN pm.qmel.chance IS 'CHANCE — Chance of Completing a Claim';
COMMENT ON COLUMN pm.qmel.scs_gen IS 'OPPONENT — Partner Type [socius genus]';
COMMENT ON COLUMN pm.qmel.smp_num IS 'KALNR — Cost Estimate Number for Cost Est. w/o Qty Structure [sumptus numerus]';
COMMENT ON COLUMN pm.qmel.uni IS 'KALVAR — Costing Variant for Postprocessing with Unit Costing [unitas]';
COMMENT ON COLUMN pm.qmel.obi_num_rat IS 'OBJNR_REAL — Object number of real CO account assignment [obiectum numerus ratio]';
COMMENT ON COLUMN pm.qmel.rat_asg IS 'OBJNR_STAT — Auxiliary account assignment 1 [ratio assignatio]';
COMMENT ON COLUMN pm.qmel.nts3 IS 'PHASE — Notification Processing Phase [nuntius]';
COMMENT ON COLUMN pm.qmel.obi_num IS '/ISDFPS/OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN pm.qmel.logsystem IS 'LOGSYSTEM — Logical System';
COMMENT ON COLUMN pm.qmel.inm IS '/ISDFPS/MEQUI — Master Equipment [instrumentum]';
COMMENT ON COLUMN pm.qmel.obi_sbs2 IS 'SHN_OBJTY — Object types of the CIM resource [obiectum subsidium]';
COMMENT ON COLUMN pm.qmel.obi_sbs3 IS 'SHN_OBJID — Object ID of the resource [obiectum subsidium]';
COMMENT ON COLUMN pm.qmel.lcf IS 'SHN_FUNCT_LOC — Functional Location [locus functionalis]';
COMMENT ON COLUMN pm.qmel.inm_num IS 'SHN_EQUIPMENT — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN pm.qmel.org_vic_adn IS 'SHN_ORIGIN — Origin or Use of Shift Note or Report [origo vicis adnotatio]';
COMMENT ON COLUMN pm.qmel.pos IS 'UII — Unique Item Identifier [positio]';

CREATE TABLE IF NOT EXISTS pm.qmfe (
  cli char(3),
  nts varchar(12),
  pos_num_tbl varchar(4),
  nom_psn_cre varchar(12),
  die_tbl_cre date,
  nom_psn_mut varchar(12),
  mut date,
  nts_pos_txt varchar(40),
  gen varchar(1),
  cod_cts varchar(8),
  cod varchar(4),
  vrs_num varchar(6),
  gen_obi varchar(1),
  cod_cts_obi varchar(8),
  obi varchar(4),
  vrs_num2 varchar(6),
  bautl varchar(18),
  ebort varchar(20),
  obi_txt varchar(1),
  lng_idx_txt varchar(1),
  tmp_tbl time,
  tmp time,
  kzorg varchar(1),
  wdfeh varchar(1),
  cls varchar(2),
  mnd_num_pos varchar(12),
  qnt_pos numeric(13,3),
  qnt_pos2 numeric(13,3),
  men_pos varchar(3),
  num integer,
  aes numeric(16,3),
  uni_aes varchar(3),
  gen2 varchar(8),
  num_mnd_nmr varchar(8),
  nis_num varchar(4),
  exm_num varchar(6),
  exm_num2 varchar(12),
  uni_num varchar(18),
  obi_sbs varchar(2),
  obi_sto varchar(8),
  ofc_sto varchar(4),
  num_pos_rfr varchar(4),
  kzsysfe varchar(1),
  tbl varchar(1),
  num_pos varchar(4),
  org_pos_tbl varchar(1),
  tbl_cre varchar(1),
  mat_num varchar(18),
  ofc varchar(4),
  oem varchar(4),
  num_tin varchar(10),
  csm varchar(10),
  act_gen varchar(6),
  prznr varchar(12),
  qnt_pos3 numeric(13,3),
  inm_num varchar(18),
  lcf varchar(30),
  CONSTRAINT qmfe_pk PRIMARY KEY (cli, nts, pos_num_tbl)
);
COMMENT ON TABLE pm.qmfe IS 'QMFE — Notification item (defect) records — one row per reported problem/defect on a QMEL notification, with catalog codes and defect quantities.';
COMMENT ON COLUMN pm.qmfe.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.qmfe.nts IS 'QMNUM — Notification No [nuntius]';
COMMENT ON COLUMN pm.qmfe.pos_num_tbl IS 'FENUM — Item Number in Item Record [positio numerus tabula]';
COMMENT ON COLUMN pm.qmfe.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN pm.qmfe.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN pm.qmfe.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pm.qmfe.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pm.qmfe.nts_pos_txt IS 'FETXT — Notification Item Short Text [nuntius positio textus]';
COMMENT ON COLUMN pm.qmfe.gen IS 'FEKAT — Catalog Type - Problems/Defects [genus]';
COMMENT ON COLUMN pm.qmfe.cod_cts IS 'FEGRP — Code Group - Problem [codex coetus]';
COMMENT ON COLUMN pm.qmfe.cod IS 'FECOD — Problem or Damage Code [codex]';
COMMENT ON COLUMN pm.qmfe.vrs_num IS 'FEVER — Version Number [versio numerus]';
COMMENT ON COLUMN pm.qmfe.gen_obi IS 'OTKAT — Catalog Type - Object Parts [genus obiectum]';
COMMENT ON COLUMN pm.qmfe.cod_cts_obi IS 'OTGRP — Code Group - Object Parts [codex coetus obiectum]';
COMMENT ON COLUMN pm.qmfe.obi IS 'OTEIL — Part of Object [obiectum]';
COMMENT ON COLUMN pm.qmfe.vrs_num2 IS 'OTVER — Version Number [versio numerus]';
COMMENT ON COLUMN pm.qmfe.bautl IS 'BAUTL — Assembly';
COMMENT ON COLUMN pm.qmfe.ebort IS 'EBORT — Installation Point for Subitem';
COMMENT ON COLUMN pm.qmfe.obi_txt IS 'INDTX — Object Long Text Available [obiectum textus]';
COMMENT ON COLUMN pm.qmfe.lng_idx_txt IS 'KZMLA — Primary language indicator for text segment [lingua index textus]';
COMMENT ON COLUMN pm.qmfe.tmp_tbl IS 'ERZEIT — Time, at Which Record Was Added [tempus tabula]';
COMMENT ON COLUMN pm.qmfe.tmp IS 'AEZEIT — Time of Change [tempus]';
COMMENT ON COLUMN pm.qmfe.kzorg IS 'KZORG — Originating Defect';
COMMENT ON COLUMN pm.qmfe.wdfeh IS 'WDFEH — Repetitive Defect';
COMMENT ON COLUMN pm.qmfe.cls IS 'FEQKLAS — Defect Class [classis]';
COMMENT ON COLUMN pm.qmfe.mnd_num_pos IS 'FCOAUFNR — Order Number (CO Order) for Item [mandatum numerus positio]';
COMMENT ON COLUMN pm.qmfe.qnt_pos IS 'FMGFRD — Defective Quantity for Item (External) [quantitas positio]';
COMMENT ON COLUMN pm.qmfe.qnt_pos2 IS 'FMGEIG — Defective Quantity for Item (Internal) [quantitas positio]';
COMMENT ON COLUMN pm.qmfe.men_pos IS 'FMGEIN — Unit of Measure for Item [mensura positio]';
COMMENT ON COLUMN pm.qmfe.num IS 'ANZFEHLER — Number of Defects Found [numerus]';
COMMENT ON COLUMN pm.qmfe.aes IS 'FEHLBEW — Defect Valuation [aestimatio]';
COMMENT ON COLUMN pm.qmfe.uni_aes IS 'UNITFLBEW — Unit for Defect Valuation [unitas aestimatio]';
COMMENT ON COLUMN pm.qmfe.gen2 IS 'FEART — Report Type for Defects Recording [genus]';
COMMENT ON COLUMN pm.qmfe.num_mnd_nmr IS 'PNLKN — Current Node Number from Order Counter APLZL [numerus mandatum numerator]';
COMMENT ON COLUMN pm.qmfe.nis_num IS 'MERKNR — Inspection Characteristic Number [nota inspectionis numerus]';
COMMENT ON COLUMN pm.qmfe.exm_num IS 'PROBENR — Sample Number [exemplum numerus]';
COMMENT ON COLUMN pm.qmfe.exm_num2 IS 'PHYNR — Physical Sample Number [exemplum numerus]';
COMMENT ON COLUMN pm.qmfe.uni_num IS 'PRUEFLINR — Single-Unit Number for the Unit to Be Inspected [unitas numerus]';
COMMENT ON COLUMN pm.qmfe.obi_sbs IS 'CROBJTY — Object types of the CIM resource [obiectum subsidium]';
COMMENT ON COLUMN pm.qmfe.obi_sto IS 'ARBPL — Object ID of the Work Center [obiectum statio operis]';
COMMENT ON COLUMN pm.qmfe.ofc_sto IS 'ARBPLWERK — Plant for Work Center [officina statio operis]';
COMMENT ON COLUMN pm.qmfe.num_pos_rfr IS 'FENUMORG — Number of Original Item to Which Reference Is Made [numerus positio referentia]';
COMMENT ON COLUMN pm.qmfe.kzsysfe IS 'KZSYSFE — Systematic Defect';
COMMENT ON COLUMN pm.qmfe.tbl IS 'KZLOESCH — Delete Data Record [tabula]';
COMMENT ON COLUMN pm.qmfe.num_pos IS 'POSNR — Sort Number for Item [numerus positio]';
COMMENT ON COLUMN pm.qmfe.org_pos_tbl IS 'HERPOS — Origin of Item Record [origo positio tabula]';
COMMENT ON COLUMN pm.qmfe.tbl_cre IS 'AUTKZ — Data Record Created with Function ''Create with Copy Model'' [tabula creatus]';
COMMENT ON COLUMN pm.qmfe.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN pm.qmfe.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN pm.qmfe.oem IS 'EKORG — Purchasing Organization [organizatio emptionis]';
COMMENT ON COLUMN pm.qmfe.num_tin IS 'INFNR — Number of Purchasing Info Record [numerus tabula informationis]';
COMMENT ON COLUMN pm.qmfe.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN pm.qmfe.act_gen IS 'LSTAR — Activity Type [actio genus]';
COMMENT ON COLUMN pm.qmfe.prznr IS 'PRZNR — Business Process';
COMMENT ON COLUMN pm.qmfe.qnt_pos3 IS 'MENGE — Defective Quantity for Item (Internal) [quantitas positio]';
COMMENT ON COLUMN pm.qmfe.inm_num IS 'EQUNR — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN pm.qmfe.lcf IS 'TPLNR — Functional Location [locus functionalis]';

CREATE TABLE IF NOT EXISTS pm.qmma (
  cli char(3),
  nts_num varchar(12),
  act_num varchar(4),
  pos_num varchar(4),
  csa_num varchar(4),
  gen varchar(1),
  act_cod_cts varchar(8),
  act varchar(4),
  vrs_num_cod varchar(4),
  act_txt varchar(40),
  nom_psn_cre varchar(12),
  die_tbl_cre date,
  nom_psn_mut varchar(12),
  mut date,
  act2 varchar(1),
  idx_act varchar(1),
  ini_die_act date,
  fin_die_act date,
  idx_txt varchar(1),
  idx_txt_lng varchar(1),
  psn_act varchar(12),
  ini_tmp_act time,
  fin_tmp_act time,
  tmp_tbl_cre time,
  tmp_tbl_mut time,
  idx varchar(1),
  qnt_act_rfr varchar(4),
  idx_act2 varchar(1),
  idx_act3 varchar(1),
  cod_act varchar(4),
  CONSTRAINT qmma_pk PRIMARY KEY (cli, nts_num, act_num)
);
COMMENT ON TABLE pm.qmma IS 'QMMA — Quality notification - activities — the tasks/activities recorded against a notification (and optionally a specific defect item, FENUM), carrying the activity''s catalog code, classification, planned/actual start-finish dates, and completion flags. Tracks what corrective/follow-up action was taken on a notification. Small, complete table.';
COMMENT ON COLUMN pm.qmma.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.qmma.nts_num IS 'QMNUM — Notification Number [nuntius numerus]';
COMMENT ON COLUMN pm.qmma.act_num IS 'MANUM — Activity Number [actio numerus]';
COMMENT ON COLUMN pm.qmma.pos_num IS 'FENUM — Defect item number [positio numerus]';
COMMENT ON COLUMN pm.qmma.csa_num IS 'URNUM — Cause number [causa numerus]';
COMMENT ON COLUMN pm.qmma.gen IS 'MNKAT — Catalog type for activities [genus]';
COMMENT ON COLUMN pm.qmma.act_cod_cts IS 'MNGRP — Activity: code group [actio codex coetus]';
COMMENT ON COLUMN pm.qmma.act IS 'MNCOD — Activity: coding [actio]';
COMMENT ON COLUMN pm.qmma.vrs_num_cod IS 'MNVER — Version number of code [versio numerus codex]';
COMMENT ON COLUMN pm.qmma.act_txt IS 'MATXT — Activity text [actio textus]';
COMMENT ON COLUMN pm.qmma.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN pm.qmma.die_tbl_cre IS 'ERDAT — Date on which the record was created [dies tabula creatus]';
COMMENT ON COLUMN pm.qmma.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pm.qmma.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pm.qmma.act2 IS 'MAKLS — Activity classification [actio]';
COMMENT ON COLUMN pm.qmma.idx_act IS 'KLAKZ — Indicator: activity confirmed [index actio]';
COMMENT ON COLUMN pm.qmma.ini_die_act IS 'PSTER — Planned start date of activity [initium dies actio]';
COMMENT ON COLUMN pm.qmma.fin_die_act IS 'PETER — Planned finish date of activity [finis dies actio]';
COMMENT ON COLUMN pm.qmma.idx_txt IS 'INDTX — Indicator: long text exists [index textus]';
COMMENT ON COLUMN pm.qmma.idx_txt_lng IS 'KZMLA — Indicator: text in more than one language [index textus lingua]';
COMMENT ON COLUMN pm.qmma.psn_act IS 'MNGFA — Person responsible for activity [persona actio]';
COMMENT ON COLUMN pm.qmma.ini_tmp_act IS 'PSTUR — Planned start time of activity [initium tempus actio]';
COMMENT ON COLUMN pm.qmma.fin_tmp_act IS 'PETUR — Planned finish time of activity [finis tempus actio]';
COMMENT ON COLUMN pm.qmma.tmp_tbl_cre IS 'ERZEIT — Time record was created [tempus tabula creatus]';
COMMENT ON COLUMN pm.qmma.tmp_tbl_mut IS 'AEZEIT — Time record was changed [tempus tabula mutatus]';
COMMENT ON COLUMN pm.qmma.idx IS 'KZLOESCH — Deletion Indicator [index]';
COMMENT ON COLUMN pm.qmma.qnt_act_rfr IS 'QMANUM — Quantity affected/activity reference number [quantitas actio referentia]';
COMMENT ON COLUMN pm.qmma.idx_act2 IS 'AUTKZ — Indicator: automatically generated activity [index actio]';
COMMENT ON COLUMN pm.qmma.idx_act3 IS 'KZACTIONBOX — Indicator: activity from action box [index actio]';
COMMENT ON COLUMN pm.qmma.cod_act IS 'FUNKTION — Function code that triggered the activity [codex actio]';

CREATE TABLE IF NOT EXISTS pm.qmsm (
  cli char(3),
  nts varchar(12),
  pns_num varchar(4),
  gen varchar(1),
  cod_cts varchar(8),
  pns_cod varchar(4),
  vrs_num varchar(6),
  pns varchar(8),
  folactprot varchar(1),
  txt_pns varchar(40),
  nom_psn_cre varchar(12),
  die_tbl_cre date,
  nom_psn_mut varchar(12),
  mut date,
  ini_die date,
  fin_die date,
  obi_num_sta varchar(22),
  obi_txt varchar(1),
  lng_idx_txt varchar(1),
  ini_tmp_pns time,
  fin_tmp_pns time,
  psn_pns varchar(12),
  die_pns date,
  tmp_pns time,
  die_pns2 date,
  pos_num_tbl varchar(4),
  num_csa varchar(4),
  tmp_tbl time,
  tmp time,
  psn_pns2 varchar(2),
  psn_pns_scs varchar(12),
  qnt numeric(13,3),
  men_pos varchar(3),
  pns2 varchar(18),
  tbl varchar(1),
  num_pns varchar(4),
  tbl_cre varchar(1),
  tmp_seg varchar(22),
  tmp_seg2 varchar(1),
  tsegtp varchar(10),
  ztm_nts varchar(6),
  ztm_pns varchar(6),
  org_ztm_nts varchar(1),
  cre varchar(1),
  funktion varchar(4),
  adn_num varchar(7),
  adn_cre varchar(35),
  tmp_die varchar(14),
  abc_templ varchar(10),
  efc varchar(3),
  efc_txt varchar(40),
  CONSTRAINT qmsm_pk PRIMARY KEY (cli, nts, pns_num)
);
COMMENT ON TABLE pm.qmsm IS 'QMSM — Quality Notification Tasks — the task record for a quality notification (QMEL): task catalog/code, follow-up action, responsible-party assignment, planned/actual start-finish dates and times. Modeled here under PM per this registry''s shared-structures convention (quality-notification family owned by PM, not QM).';
COMMENT ON COLUMN pm.qmsm.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.qmsm.nts IS 'QMNUM — Notification No [nuntius]';
COMMENT ON COLUMN pm.qmsm.pns_num IS 'MANUM — Sequential Task Number [pensum numerus]';
COMMENT ON COLUMN pm.qmsm.gen IS 'MNKAT — Catalog Type - Tasks [genus]';
COMMENT ON COLUMN pm.qmsm.cod_cts IS 'MNGRP — Code Group - Tasks [codex coetus]';
COMMENT ON COLUMN pm.qmsm.pns_cod IS 'MNCOD — Task Code [pensum codex]';
COMMENT ON COLUMN pm.qmsm.vrs_num IS 'MNVER — Version Number [versio numerus]';
COMMENT ON COLUMN pm.qmsm.pns IS 'FOLGEACT — Follow-Up Action for Task [pensum]';
COMMENT ON COLUMN pm.qmsm.folactprot IS 'FOLACTPROT — Log for Follow-Up Action';
COMMENT ON COLUMN pm.qmsm.txt_pns IS 'MATXT — Short Text for Task [textus pensum]';
COMMENT ON COLUMN pm.qmsm.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN pm.qmsm.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN pm.qmsm.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pm.qmsm.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pm.qmsm.ini_die IS 'PSTER — Planned Start Date [initium dies]';
COMMENT ON COLUMN pm.qmsm.fin_die IS 'PETER — Planned finish date [finis dies]';
COMMENT ON COLUMN pm.qmsm.obi_num_sta IS 'OBJNR — Object Number for Status Management [obiectum numerus status]';
COMMENT ON COLUMN pm.qmsm.obi_txt IS 'INDTX — Object Long Text Available [obiectum textus]';
COMMENT ON COLUMN pm.qmsm.lng_idx_txt IS 'KZMLA — Primary language indicator for text segment [lingua index textus]';
COMMENT ON COLUMN pm.qmsm.ini_tmp_pns IS 'PSTUR — Planned Start Time for Task [initium tempus pensum]';
COMMENT ON COLUMN pm.qmsm.fin_tmp_pns IS 'PETUR — Planned Finish Time for Task [finis tempus pensum]';
COMMENT ON COLUMN pm.qmsm.psn_pns IS 'ERLNAM — Person Who Completed the Task [persona pensum]';
COMMENT ON COLUMN pm.qmsm.die_pns IS 'ERLDAT — Date on Which the Task Was Completed [dies pensum]';
COMMENT ON COLUMN pm.qmsm.tmp_pns IS 'ERLZEIT — Time at Which Task Was Completed [tempus pensum]';
COMMENT ON COLUMN pm.qmsm.die_pns2 IS 'WDVDAT — Date on Which Task Was Resubmitted [dies pensum]';
COMMENT ON COLUMN pm.qmsm.pos_num_tbl IS 'FENUM — Item Number in Item Record [positio numerus tabula]';
COMMENT ON COLUMN pm.qmsm.num_csa IS 'URNUM — Sequential Number for Cause [numerus causa]';
COMMENT ON COLUMN pm.qmsm.tmp_tbl IS 'ERZEIT — Time, at Which Record Was Added [tempus tabula]';
COMMENT ON COLUMN pm.qmsm.tmp IS 'AEZEIT — Time of Change [tempus]';
COMMENT ON COLUMN pm.qmsm.psn_pns2 IS 'PARVW — Function of Person Responsible for Task [persona pensum]';
COMMENT ON COLUMN pm.qmsm.psn_pns_scs IS 'PARNR — Person Responsible for Task (Partner Number) [persona pensum socius]';
COMMENT ON COLUMN pm.qmsm.qnt IS 'MMENGE — Quantity [quantitas]';
COMMENT ON COLUMN pm.qmsm.men_pos IS 'MMGEIN — Unit of Measure for Item [mensura positio]';
COMMENT ON COLUMN pm.qmsm.pns2 IS 'BAUTL — Assembly Affected by the Task [pensum]';
COMMENT ON COLUMN pm.qmsm.tbl IS 'KZLOESCH — Delete Data Record [tabula]';
COMMENT ON COLUMN pm.qmsm.num_pns IS 'QSMNUM — Sort Number for Task [numerus pensum]';
COMMENT ON COLUMN pm.qmsm.tbl_cre IS 'AUTKZ — Data Record Created with Function ''Create with Copy Model'' [tabula creatus]';
COMMENT ON COLUMN pm.qmsm.tmp_seg IS 'HANDLE — Globally unique identifier (linked to time segment, etc) [tempus segmentum]';
COMMENT ON COLUMN pm.qmsm.tmp_seg2 IS 'TSEGFL — Time segment exists [tempus segmentum]';
COMMENT ON COLUMN pm.qmsm.tsegtp IS 'TSEGTP — Template';
COMMENT ON COLUMN pm.qmsm.ztm_nts IS 'TZONSO — Time Zone for Notification [zona temporis nuntius]';
COMMENT ON COLUMN pm.qmsm.ztm_pns IS 'TZONSM — Time Zone for Task [zona temporis pensum]';
COMMENT ON COLUMN pm.qmsm.org_ztm_nts IS 'TZONID — Origin of Time Zone in Notification [origo zona temporis nuntius]';
COMMENT ON COLUMN pm.qmsm.cre IS 'KZACTIONBOX — Created Using Action Box [creatus]';
COMMENT ON COLUMN pm.qmsm.funktion IS 'FUNKTION — Keys for Function in Action Box';
COMMENT ON COLUMN pm.qmsm.adn_num IS '/SAPSMOSS/NOTE — Note number [adnotatio numerus]';
COMMENT ON COLUMN pm.qmsm.adn_cre IS '/SAPSMOSS/REPORT — Note created by [adnotatio creatus]';
COMMENT ON COLUMN pm.qmsm.tmp_die IS '/SAPSMOSS/MTSTMP — Time stamp (date + time) [tempus dies]';
COMMENT ON COLUMN pm.qmsm.abc_templ IS 'ABC_TEMPL — Template';
COMMENT ON COLUMN pm.qmsm.efc IS 'EFFECTPERC — Effect in Percentage [effectus]';
COMMENT ON COLUMN pm.qmsm.efc_txt IS 'EFFECTTEXT — Effect Text [effectus textus]';

CREATE TABLE IF NOT EXISTS pm.qmur (
  cli char(3),
  nts_num varchar(12),
  pos_num varchar(4),
  csa_num varchar(4),
  nom_psn_cre varchar(12),
  die_tbl_cre date,
  nom_psn_mut varchar(12),
  mut date,
  csa_txt varchar(40),
  gen varchar(1),
  csa_cod_cts varchar(8),
  csa varchar(4),
  vrs_num_cod varchar(4),
  idx_txt varchar(1),
  idx_txt_lng varchar(1),
  tmp_tbl_cre time,
  tmp_tbl_mut time,
  gen_csa_vrf varchar(1),
  cod_cts_csa varchar(8),
  csa_vrf varchar(4),
  scs varchar(2),
  num_scs_emp varchar(10),
  mat_num_obi varchar(18),
  qnt_csa numeric(13,3),
  men_csa_qnt varchar(3),
  idx varchar(1),
  rfr_csa_num varchar(4),
  idx_csa varchar(1),
  csa2 numeric(3,0),
  CONSTRAINT qmur_pk PRIMARY KEY (cli, nts_num, pos_num, csa_num)
);
COMMENT ON TABLE pm.qmur IS 'QMUR — Quality notification - causes — the failure-cause record any reliability analysis depends on. Ties a cause (URNUM) to a specific defect item (FENUM) on a notification (QMNUM), carrying the cause catalog code/group/coding, the responsible party (PARVW/PARNR), the affected assembly (BAUTL), and the quantity/percentage of the defect attributable to this cause (URMENGE/INVOLVPERC). Small, complete table.';
COMMENT ON COLUMN pm.qmur.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.qmur.nts_num IS 'QMNUM — Notification Number [nuntius numerus]';
COMMENT ON COLUMN pm.qmur.pos_num IS 'FENUM — Defect item number [positio numerus]';
COMMENT ON COLUMN pm.qmur.csa_num IS 'URNUM — Cause number [causa numerus]';
COMMENT ON COLUMN pm.qmur.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN pm.qmur.die_tbl_cre IS 'ERDAT — Date on which the record was created [dies tabula creatus]';
COMMENT ON COLUMN pm.qmur.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pm.qmur.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pm.qmur.csa_txt IS 'URTXT — Cause text [causa textus]';
COMMENT ON COLUMN pm.qmur.gen IS 'URKAT — Catalog type for causes [genus]';
COMMENT ON COLUMN pm.qmur.csa_cod_cts IS 'URGRP — Cause: code group [causa codex coetus]';
COMMENT ON COLUMN pm.qmur.csa IS 'URCOD — Cause: coding [causa]';
COMMENT ON COLUMN pm.qmur.vrs_num_cod IS 'URVER — Version number of code [versio numerus codex]';
COMMENT ON COLUMN pm.qmur.idx_txt IS 'INDTX — Indicator: long text exists [index textus]';
COMMENT ON COLUMN pm.qmur.idx_txt_lng IS 'KZMLA — Indicator: text in more than one language [index textus lingua]';
COMMENT ON COLUMN pm.qmur.tmp_tbl_cre IS 'ERZEIT — Time record was created [tempus tabula creatus]';
COMMENT ON COLUMN pm.qmur.tmp_tbl_mut IS 'AEZEIT — Time record was changed [tempus tabula mutatus]';
COMMENT ON COLUMN pm.qmur.gen_csa_vrf IS 'VUKAT — Catalog type for cause verification [genus causa verificatio]';
COMMENT ON COLUMN pm.qmur.cod_cts_csa IS 'VUGRP — Code group for cause verification [codex coetus causa]';
COMMENT ON COLUMN pm.qmur.csa_vrf IS 'VUCOD — Coding for cause verification [causa verificatio]';
COMMENT ON COLUMN pm.qmur.scs IS 'PARVW — Partner Function [socius]';
COMMENT ON COLUMN pm.qmur.num_scs_emp IS 'PARNR — Number of partner (customer, vendor, employee) [numerus socius emptor]';
COMMENT ON COLUMN pm.qmur.mat_num_obi IS 'BAUTL — Assembly (material number of technical object) [materia numerus obiectum]';
COMMENT ON COLUMN pm.qmur.qnt_csa IS 'URMENGE — Quantity affected by this cause [quantitas causa]';
COMMENT ON COLUMN pm.qmur.men_csa_qnt IS 'URMGEIN — Unit of measure for cause quantity [mensura causa quantitas]';
COMMENT ON COLUMN pm.qmur.idx IS 'KZLOESCH — Deletion Indicator [index]';
COMMENT ON COLUMN pm.qmur.rfr_csa_num IS 'QURNUM — Reference cause number [referentia causa numerus]';
COMMENT ON COLUMN pm.qmur.idx_csa IS 'AUTKZ — Indicator: automatically generated cause [index causa]';
COMMENT ON COLUMN pm.qmur.csa2 IS 'INVOLVPERC — Percentage to which the cause is involved in the defect [causa]';

CREATE TABLE IF NOT EXISTS pm.t024i (
  cli char(3),
  cur_cns_ofc varchar(4),
  ccs_emp_min varchar(3),
  nom_cur_ccs varchar(18),
  cur_ccs_tel varchar(12),
  gmd varchar(4),
  dml varchar(241),
  CONSTRAINT t024i_pk PRIMARY KEY (cli, cur_cns_ofc, ccs_emp_min)
);
COMMENT ON TABLE pm.t024i IS 'T024I — Maintenance Planner Groups — customizing table defining the planner groups (INGRP) that own and schedule maintenance work at a given maintenance planning plant (IWERK). Every PM master and transactional record that assigns responsibility for planning a technical object or order checks against this table: EQUZ-INGRP (equipment time-segment planner group), IFLOT-INGRP (functional location planner group), and AFIH-INGPR (maintenance order header planner group) all validate here. Carried complete — small customizing table.';
COMMENT ON COLUMN pm.t024i.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.t024i.cur_cns_ofc IS 'IWERK — Maintenance Planning Plant [curatio consilium officina]';
COMMENT ON COLUMN pm.t024i.ccs_emp_min IS 'INGRP — Planner Group for Customer Service and Plant Maintenance [coetus consiliorum emptor ministerium]';
COMMENT ON COLUMN pm.t024i.nom_cur_ccs IS 'INNAM — Name of the Maintenance Planner Group [nomen curatio coetus consiliorum]';
COMMENT ON COLUMN pm.t024i.cur_ccs_tel IS 'INTEL — Maintenance Planner Group Telephone Number [curatio coetus consiliorum telephonum]';
COMMENT ON COLUMN pm.t024i.gmd IS 'AUART_WP — Order Type [genus mandati]';
COMMENT ON COLUMN pm.t024i.dml IS 'SMTP_ADDR — E-Mail Address [domicilium]';

CREATE TABLE IF NOT EXISTS pm.t352b (
  cli char(3),
  rbnr varchar(9),
  cmp varchar(8),
  cmp2 varchar(8),
  cmp3 varchar(8),
  cmp4 varchar(8),
  cmp5 varchar(8),
  frkls varchar(18),
  frklskz varchar(1),
  nts_ctg varchar(2),
  uni_aes varchar(3),
  num smallint,
  gen varchar(1),
  CONSTRAINT t352b_pk PRIMARY KEY (cli, rbnr)
);
COMMENT ON TABLE pm.t352b IS 'T352B — Catalog Profile (maintenance-plan / notification catalog control) — customizing table controlling which catalogs (damage, cause, activity, task, object-part groupings) and notification category are active for a catalog profile. Referenced by RBNR on EQUZ (equipment time-segment catalog profile) and IFLOT (functional location catalog profile), which drive the coding catalogs available when recording findings against that technical object. Carried complete — small customizing table.';
COMMENT ON COLUMN pm.t352b.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.t352b.rbnr IS 'RBNR — Catalog Profile';
COMMENT ON COLUMN pm.t352b.cmp IS 'FEGRP — Field Is No Longer Used [campus]';
COMMENT ON COLUMN pm.t352b.cmp2 IS 'URGRP — Field Is No Longer Used [campus]';
COMMENT ON COLUMN pm.t352b.cmp3 IS 'MAGRP — Field Is No Longer Used [campus]';
COMMENT ON COLUMN pm.t352b.cmp4 IS 'MFGRP — Field Is No Longer Used [campus]';
COMMENT ON COLUMN pm.t352b.cmp5 IS 'OTGRP — Field Is No Longer Used [campus]';
COMMENT ON COLUMN pm.t352b.frkls IS 'FRKLS — Classification';
COMMENT ON COLUMN pm.t352b.frklskz IS 'FRKLSKZ — Include Screen for Classification';
COMMENT ON COLUMN pm.t352b.nts_ctg IS 'QMTYP — Notification Category [nuntius categoria]';
COMMENT ON COLUMN pm.t352b.uni_aes IS 'UNITFLBEW — Unit for Defect Valuation [unitas aestimatio]';
COMMENT ON COLUMN pm.t352b.num IS 'DECIMALS — Number of Places to the Right of a Decimal Point (Accuracy) [numerus]';
COMMENT ON COLUMN pm.t352b.gen IS 'MSGTP — Message Type [genus]';

CREATE TABLE IF NOT EXISTS pm.t357 (
  cli char(3),
  ofc varchar(4),
  sof varchar(3),
  psn_soc_are varchar(14),
  num_psn_soc varchar(12),
  CONSTRAINT t357_pk PRIMARY KEY (cli, ofc, sof)
);
COMMENT ON TABLE pm.t357 IS 'T357 — Plant Section — customizing table listing the plant sections (organizational subdivisions of a plant, e.g. a workshop or production line) valid per plant (WERKS), each with a responsible person and phone number. Referenced by ILOA-BEBER (Plant Section) — the address/location segment shared by every equipment, functional location and order — meaning any technical object''s plant-section assignment validates against this table. Carried complete — small customizing table.';
COMMENT ON COLUMN pm.t357.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.t357.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN pm.t357.sof IS 'BEBER — Plant section [sectio officinae]';
COMMENT ON COLUMN pm.t357.psn_soc_are IS 'FING — Person Responsible for Company Area [persona societas area]';
COMMENT ON COLUMN pm.t357.num_psn_soc IS 'TELE — Phone number of person responsible for company area [numerus persona societas]';

CREATE TABLE IF NOT EXISTS pm.t370b (
  cli char(3),
  obi_cts varchar(4),
  CONSTRAINT t370b_pk PRIMARY KEY (cli, obi_cts)
);
COMMENT ON TABLE pm.t370b IS 'T370B — Technical Object Authorization Group — customizing table listing the valid authorization groups used to restrict access to technical objects. Referenced by BEGRU on EQUI (equipment authorization group) and IFLOT (functional location authorization group), which govern who may display or change that master record. Carried complete — small customizing table.';
COMMENT ON COLUMN pm.t370b.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.t370b.obi_cts IS 'BEGRU — Technical object authorization group [obiectum coetus]';

CREATE TABLE IF NOT EXISTS pm.t370c (
  cli char(3),
  idx_obi varchar(1),
  CONSTRAINT t370c_pk PRIMARY KEY (cli, idx_obi)
);
COMMENT ON TABLE pm.t370c IS 'T370C — ABC Indicator for Technical Objects — customizing table listing the valid ABC classification codes (criticality/priority ranking, e.g. A/B/C) assignable to a technical object. Referenced by ABCKZ on ILOA (the address/location segment shared by equipment, functional locations and orders), which flags the criticality of the object attached to that location record. Carried complete — small customizing table.';
COMMENT ON COLUMN pm.t370c.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.t370c.idx_obi IS 'ABCKZ — ABC indicator for technical object [index obiectum]';

CREATE TABLE IF NOT EXISTS pm.t370f (
  cli char(3),
  lcf_ctg varchar(1),
  sta varchar(8),
  scs varchar(4),
  idx_emp_obi varchar(1),
  idx varchar(1),
  pms_ctg varchar(1),
  idx2 varchar(1),
  obi varchar(10),
  tsegtp varchar(10),
  vis_idx varchar(8),
  lcf varchar(1),
  idx_obi_ptm varchar(1),
  CONSTRAINT t370f_pk PRIMARY KEY (cli, lcf_ctg)
);
COMMENT ON TABLE pm.t370f IS 'T370F — Functional Location Category — customizing table defining functional location categories, each carrying its status profile, partner determination procedure, measuring-point category and field-selection/view-profile linkage that governs which screens and fields are active for a functional location of that category. Referenced by FLTYP on IFLOT (Functional Location master), which determines the category of every functional location record. Carried complete — small customizing table.';
COMMENT ON COLUMN pm.t370f.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.t370f.lcf_ctg IS 'FLTYP — Functional location category [locus functionalis categoria]';
COMMENT ON COLUMN pm.t370f.sta IS 'STSMA — Status Profile [status]';
COMMENT ON COLUMN pm.t370f.scs IS 'PARGR — Partner Determination Procedure [socius]';
COMMENT ON COLUMN pm.t370f.idx_emp_obi IS 'SALES — Indicator: customer object [index emptor obiectum]';
COMMENT ON COLUMN pm.t370f.idx IS 'ELSE_KNZ — Indicator: Other Data Active [index]';
COMMENT ON COLUMN pm.t370f.pms_ctg IS 'MPTYP — Measuring Point Category [punctum mensurae categoria]';
COMMENT ON COLUMN pm.t370f.idx2 IS 'CHDOC — Indicator: Generate change documents [index]';
COMMENT ON COLUMN pm.t370f.obi IS 'INFOW — Parameter ID Object Info [obiectum]';
COMMENT ON COLUMN pm.t370f.tsegtp IS 'TSEGTP — Template';
COMMENT ON COLUMN pm.t370f.vis_idx IS 'VIEW_PROF — View profile for tab index Customizing [visus index]';
COMMENT ON COLUMN pm.t370f.lcf IS 'CHDOC_INS — Functional Location with Change Docs During Creation [locus functionalis]';
COMMENT ON COLUMN pm.t370f.idx_obi_ptm IS 'LFE_IND — Indicator: Object Belongs to Linear Asset Management [index obiectum patrimonium]';

CREATE TABLE IF NOT EXISTS pm.t370k (
  cli char(3),
  gen_obi varchar(10),
  CONSTRAINT t370k_pk PRIMARY KEY (cli, gen_obi)
);
COMMENT ON TABLE pm.t370k IS 'T370K — Type of Technical Object — customizing table listing the valid free-text equipment types (a user-defined subclassification, distinct from the equipment category). Referenced by EQART on EQUI (Equipment master) and IFLOT (Functional Location master), which record the technical-object type of every equipment and functional-location record. Carried complete — small customizing table.';
COMMENT ON COLUMN pm.t370k.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.t370k.gen_obi IS 'EQART — Type of Technical Object [genus obiectum]';

CREATE TABLE IF NOT EXISTS pm.t370s (
  cli char(3),
  lcf_idx varchar(5),
  lcf varchar(40),
  lcf_hir varchar(40),
  CONSTRAINT t370s_pk PRIMARY KEY (cli, lcf_idx)
);
COMMENT ON TABLE pm.t370s IS 'T370S — Functional Location Structure Indicators — customizing table defining the structure indicators that govern the edit mask and hierarchy-level syntax used to build functional location identifiers. Referenced by TPLKZ on IFLOT (Functional Location master), which determines how that functional location''s hierarchical label is parsed and displayed. Carried complete — small customizing table.';
COMMENT ON COLUMN pm.t370s.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.t370s.lcf_idx IS 'TPLKZ — Functional location structure indicator [locus functionalis index]';
COMMENT ON COLUMN pm.t370s.lcf IS 'EDITM — Functional location edit mask [locus functionalis]';
COMMENT ON COLUMN pm.t370s.lcf_hir IS 'STUFM — Functional Location Hierarchy Levels [locus functionalis hierarchia]';

CREATE TABLE IF NOT EXISTS pm.t370t (
  cli char(3),
  inm_ctg varchar(1),
  inm_rfr_ctg varchar(1),
  snm_num_asg varchar(2),
  snm_num_asg2 varchar(2),
  tbl_inm varchar(1),
  lcf varchar(1),
  idx varchar(1),
  idx_inm_ctg varchar(1),
  inm varchar(1),
  idx_ord varchar(1),
  sta varchar(8),
  inm_ctg2 varchar(1),
  scs varchar(4),
  scs_emp_nsr varchar(2),
  scs_inm_ven varchar(2),
  scs_emp_inm varchar(2),
  scs_inm_per varchar(2),
  scs_inm_per2 varchar(2),
  obi varchar(10),
  ptm_idx varchar(1),
  idx2 varchar(1),
  scs2 varchar(1),
  inm2 varchar(1),
  konfknz varchar(1),
  vdt_inm varchar(1),
  ctg_prd varchar(1),
  idx3 varchar(1),
  isu_knz varchar(1),
  tsegtp varchar(10),
  vis_idx varchar(8),
  obx varchar(1),
  gen_mat_num varchar(1),
  cc_knz varchar(1),
  inm_gen varchar(1),
  idx_obi_ptm varchar(1),
  inm3 varchar(1),
  CONSTRAINT t370t_pk PRIMARY KEY (cli, inm_ctg)
);
COMMENT ON TABLE pm.t370t IS 'T370T — Equipment Categories — customizing table defining SAP''s core equipment categories (e.g. machine, production resource/tool, customer equipment, fleet object) and every control switch that flows from that category: number-range assignment, multi-lingual text maintenance, status profile, partner determination, serialization, configuration and asset relevance. Referenced by EQTYP on EQUI (Equipment master), which fixes the category of every equipment record and, through this table, the entire behavior of that equipment. Carried complete — small customizing table.';
COMMENT ON COLUMN pm.t370t.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.t370t.inm_ctg IS 'EQTYP — Equipment category [instrumentum categoria]';
COMMENT ON COLUMN pm.t370t.inm_rfr_ctg IS 'REFTP — Equipment reference category [instrumentum referentia categoria]';
COMMENT ON COLUMN pm.t370t.snm_num_asg IS 'NUMKI — Number range in the case of internal number assignment [series numerorum numerus assignatio]';
COMMENT ON COLUMN pm.t370t.snm_num_asg2 IS 'NUMKE — Number range in the case of external number assignment [series numerorum numerus assignatio]';
COMMENT ON COLUMN pm.t370t.tbl_inm IS 'ZEIIN — Record usage history for equipment [tabula instrumentum]';
COMMENT ON COLUMN pm.t370t.lcf IS 'TPEIN — Installation at functional location permitted [locus functionalis]';
COMMENT ON COLUMN pm.t370t.idx IS 'MSTKZ — Indicator for maintaining multi-lingual texts [index]';
COMMENT ON COLUMN pm.t370t.idx_inm_ctg IS 'AEBKZ — Indicator showing equipment category with change documents [index instrumentum categoria]';
COMMENT ON COLUMN pm.t370t.inm IS 'PUEMA — No Alphanumeric Equipment Numbers [instrumentum]';
COMMENT ON COLUMN pm.t370t.idx_ord IS 'STADY — Indicator for a fixed screen sequence [index ordo]';
COMMENT ON COLUMN pm.t370t.sta IS 'STSMA — Status Profile [status]';
COMMENT ON COLUMN pm.t370t.inm_ctg2 IS 'SDEQT — Equipment Category for Serial Numbers [instrumentum categoria]';
COMMENT ON COLUMN pm.t370t.scs IS 'PARGR — Partner Determination Procedure [socius]';
COMMENT ON COLUMN pm.t370t.scs_emp_nsr IS 'PARK1 — Partner Function for Current Customer in Serial Number [socius emptor numerus serialis]';
COMMENT ON COLUMN pm.t370t.scs_inm_ven IS 'PARK2 — Partner Function for Equipment Vendor [socius instrumentum venditor]';
COMMENT ON COLUMN pm.t370t.scs_emp_inm IS 'PARK3 — Partner Function for Customer in Equipment Usage Period [socius emptor instrumentum]';
COMMENT ON COLUMN pm.t370t.scs_inm_per IS 'PARK4 — Partner Function for Endcustomer in Equipment Usage Period [socius instrumentum periodus]';
COMMENT ON COLUMN pm.t370t.scs_inm_per2 IS 'PARK5 — Partner Function for Operator in Equipment Usage Period [socius instrumentum periodus]';
COMMENT ON COLUMN pm.t370t.obi IS 'INFOW — Parameter ID Object Info [obiectum]';
COMMENT ON COLUMN pm.t370t.ptm_idx IS 'AMKNZ — Asset relevant indicator [patrimonium index]';
COMMENT ON COLUMN pm.t370t.idx2 IS 'WFKNZ — Indicator: Generate Event for Workflow [index]';
COMMENT ON COLUMN pm.t370t.scs2 IS 'PASYN — Partner synchronization activated [socius]';
COMMENT ON COLUMN pm.t370t.inm2 IS 'KZKSD — Serial data when maintaining equipment [instrumentum]';
COMMENT ON COLUMN pm.t370t.konfknz IS 'KONFKNZ — Configuration supported';
COMMENT ON COLUMN pm.t370t.vdt_inm IS 'SDKNZ — Sales equipment [venditio instrumentum]';
COMMENT ON COLUMN pm.t370t.ctg_prd IS 'FHMKZ — Equip. category relevant to production resources and tools [categoria productio]';
COMMENT ON COLUMN pm.t370t.idx3 IS 'ELSE_KNZ — Indicator: Other Data Active [index]';
COMMENT ON COLUMN pm.t370t.isu_knz IS 'ISU_KNZ — IS-U data';
COMMENT ON COLUMN pm.t370t.tsegtp IS 'TSEGTP — Template';
COMMENT ON COLUMN pm.t370t.vis_idx IS 'VIEW_PROF — View profile for tab index Customizing [visus index]';
COMMENT ON COLUMN pm.t370t.obx IS 'NO_SER_ENQ — No Block when Assigning Serial Numbers [obex]';
COMMENT ON COLUMN pm.t370t.gen_mat_num IS 'BTMNS — Keep construction type and material number synchronous [genus materia numerus]';
COMMENT ON COLUMN pm.t370t.cc_knz IS 'CC_KNZ — Configuration Control Data';
COMMENT ON COLUMN pm.t370t.inm_gen IS 'AEBKZ_INS — Equipment Type with Change Documents During Creation [instrumentum genus]';
COMMENT ON COLUMN pm.t370t.idx_obi_ptm IS 'LFE_IND — Indicator: Object Belongs to Linear Asset Management [index obiectum patrimonium]';
COMMENT ON COLUMN pm.t370t.inm3 IS 'J_3GBAUKNZ — CEM Equipment [instrumentum]';

CREATE TABLE IF NOT EXISTS pm.t399i (
  cli char(3),
  cur_cns_ofc varchar(4),
  die_ini_fin varchar(1),
  mra_uni varchar(3),
  uni_ops varchar(3),
  CONSTRAINT t399i_pk PRIMARY KEY (cli, cur_cns_ofc)
);
COMMENT ON TABLE pm.t399i IS 'T399I — Planning Plant Parameters — customizing table holding control parameters per maintenance planning plant (IWERK): the default current-date rule for PM order start/end dates and the default units of measure for normal duration and work. Referenced by IWERK on EQUZ (equipment time-segment planning plant), IFLOT (functional location planning plant) and AFIH (maintenance order header planning plant), which all designate the plant responsible for planning that object or order. Carried complete — small customizing table.';
COMMENT ON COLUMN pm.t399i.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.t399i.cur_cns_ofc IS 'IWERK — Maintenance Planning Plant [curatio consilium officina]';
COMMENT ON COLUMN pm.t399i.die_ini_fin IS 'DTVOR — Default current date for start/end dates in PM order [dies initium finis]';
COMMENT ON COLUMN pm.t399i.mra_uni IS 'DAUNE — Normal duration/unit [mora unitas]';
COMMENT ON COLUMN pm.t399i.uni_ops IS 'ARBEH — Unit for work [unitas opus]';

CREATE TABLE IF NOT EXISTS pm.t499s (
  cli char(3),
  ofc varchar(4),
  loc varchar(10),
  txt varchar(40),
  dml_num varchar(10),
  CONSTRAINT t499s_pk PRIMARY KEY (cli, ofc, loc)
);
COMMENT ON TABLE pm.t499s IS 'T499S — Location — customizing table listing the valid plant locations (site/building-level location codes, e.g. STAND) per plant (WERKS), each with a descriptive text and an address-number link. Referenced by STORT on ILOA (the address/location segment shared by equipment, functional locations and orders), which records the location of the maintenance object attached to that record — note ILOA''s field is named STORT while this table''s key field is named STAND, both carrying data element STORT_T499S. Carried complete — small customizing table.';
COMMENT ON COLUMN pm.t499s.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.t499s.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN pm.t499s.loc IS 'STAND — Location [locus]';
COMMENT ON COLUMN pm.t499s.txt IS 'KTEXT — Text, 40 Characters Long [textus]';
COMMENT ON COLUMN pm.t499s.dml_num IS 'ADDRNUM — Address number [domicilium numerus]';

CREATE TABLE IF NOT EXISTS pm.viqmel (
  cli char(3),
  nts_num varchar(12),
  nts_gen varchar(2),
  nts_txt varchar(40),
  nts_org varchar(2),
  pri_gen varchar(2),
  pri varchar(1),
  nom_psn_cre varchar(12),
  die_tbl_cre date,
  nom_psn_mut varchar(12),
  mut date,
  die_nts_cre date,
  tmp_nts_cre time,
  ini_die date,
  ini_tmp time,
  fin_die date,
  fin_tmp time,
  ini_die2 date,
  tmp time,
  fin_die2 date,
  fin_tmp2 time,
  mra numeric(12,3),
  tmp_uni_mra varchar(3),
  obi_sta_txt varchar(40),
  obi_num_sta varchar(22),
  inm_num varchar(18),
  mat_num_obi varchar(18),
  lcf varchar(30),
  lcf_clv varchar(8),
  mnd_num varchar(12),
  ccu varchar(12),
  mat_num varchar(18),
  nsr varchar(18),
  emp_num varchar(10),
  rbnr varchar(8),
  gen varchar(1),
  nts_cod_cts varchar(8),
  nts varchar(4),
  amd varchar(4),
  csm varchar(10),
  soc varchar(4),
  ang varchar(4),
  cur_cns_ofc varchar(4),
  ccs varchar(3),
  ovd varchar(4),
  cds varchar(2),
  dvs varchar(2),
  nom_psn_nts varchar(12),
  sta varchar(4),
  CONSTRAINT viqmel_pk PRIMARY KEY (cli, nts_num)
);
COMMENT ON TABLE pm.viqmel IS 'VIQMEL — Generated Table for View — the notification view joining the QMEL notification header with equipment, functional-location, order, maintenance-plan, and organizational master data. This is the notification-reporting surface that any reliability, breakdown, or maintenance-KPI analysis reads from, since it flattens the object hierarchy (equipment/functional-location/order) onto the notification record. SAP''s real view carries 250+ fields (it re-exposes most of the QMEL header plus joined reference fields from EQUI/IFLOT/AUFK/MPLA/organizational tables); this definition is scoped to the full key, ';
COMMENT ON COLUMN pm.viqmel.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pm.viqmel.nts_num IS 'QMNUM — Notification Number [nuntius numerus]';
COMMENT ON COLUMN pm.viqmel.nts_gen IS 'QMART — Notification type [nuntius genus]';
COMMENT ON COLUMN pm.viqmel.nts_txt IS 'QMTXT — Notification short text [nuntius textus]';
COMMENT ON COLUMN pm.viqmel.nts_org IS 'ARTPR — Notification origin [nuntius origo]';
COMMENT ON COLUMN pm.viqmel.pri_gen IS 'PRIOK — Priority type [prioritas genus]';
COMMENT ON COLUMN pm.viqmel.pri IS 'PRIOKX — Priority [prioritas]';
COMMENT ON COLUMN pm.viqmel.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN pm.viqmel.die_tbl_cre IS 'ERDAT — Date on which the record was created [dies tabula creatus]';
COMMENT ON COLUMN pm.viqmel.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pm.viqmel.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pm.viqmel.die_nts_cre IS 'QMDAT — Date notification created (in header) [dies nuntius creatus]';
COMMENT ON COLUMN pm.viqmel.tmp_nts_cre IS 'MZEIT — Time notification created [tempus nuntius creatus]';
COMMENT ON COLUMN pm.viqmel.ini_die IS 'STRMN — Required start date [initium dies]';
COMMENT ON COLUMN pm.viqmel.ini_tmp IS 'STRUR — Required start time [initium tempus]';
COMMENT ON COLUMN pm.viqmel.fin_die IS 'LTRMN — Required end date [finis dies]';
COMMENT ON COLUMN pm.viqmel.fin_tmp IS 'LTRUR — Required end time [finis tempus]';
COMMENT ON COLUMN pm.viqmel.ini_die2 IS 'MDDAT — Malfunction start date [initium dies]';
COMMENT ON COLUMN pm.viqmel.tmp IS 'MDZET — Time of malfunction [tempus]';
COMMENT ON COLUMN pm.viqmel.fin_die2 IS 'MEDAT — Malfunction end date [finis dies]';
COMMENT ON COLUMN pm.viqmel.fin_tmp2 IS 'METIM — Malfunction end time [finis tempus]';
COMMENT ON COLUMN pm.viqmel.mra IS 'MADUR — Breakdown duration [mora]';
COMMENT ON COLUMN pm.viqmel.tmp_uni_mra IS 'MAUEH — Time unit for breakdown duration [tempus unitas mora]';
COMMENT ON COLUMN pm.viqmel.obi_sta_txt IS 'STTXT — Object status short text (system status) [obiectum status textus]';
COMMENT ON COLUMN pm.viqmel.obi_num_sta IS 'OBJNR — Object number (status management) [obiectum numerus status]';
COMMENT ON COLUMN pm.viqmel.inm_num IS 'EQUNR — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN pm.viqmel.mat_num_obi IS 'BAUTL — Assembly (material number of technical object) [materia numerus obiectum]';
COMMENT ON COLUMN pm.viqmel.lcf IS 'TPLNR — Functional Location [locus functionalis]';
COMMENT ON COLUMN pm.viqmel.lcf_clv IS 'ILOAN — Functional location (internal key) [locus functionalis clavis]';
COMMENT ON COLUMN pm.viqmel.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN pm.viqmel.ccu IS 'WARPL — Maintenance Plan [consilium curationis]';
COMMENT ON COLUMN pm.viqmel.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN pm.viqmel.nsr IS 'SERIALNR — Serial number [numerus serialis]';
COMMENT ON COLUMN pm.viqmel.emp_num IS 'KUNUM — Customer Number [emptor numerus]';
COMMENT ON COLUMN pm.viqmel.rbnr IS 'RBNR — Catalog profile';
COMMENT ON COLUMN pm.viqmel.gen IS 'QMKAT — Catalog type for coding [genus]';
COMMENT ON COLUMN pm.viqmel.nts_cod_cts IS 'QMGRP — Notification: code group [nuntius codex coetus]';
COMMENT ON COLUMN pm.viqmel.nts IS 'QMCOD — Notification: coding [nuntius]';
COMMENT ON COLUMN pm.viqmel.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN pm.viqmel.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN pm.viqmel.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN pm.viqmel.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN pm.viqmel.cur_cns_ofc IS 'IWERK — Maintenance planning plant [curatio consilium officina]';
COMMENT ON COLUMN pm.viqmel.ccs IS 'INGRP — Planner Group [coetus consiliorum]';
COMMENT ON COLUMN pm.viqmel.ovd IS 'VKORG — Sales Organization [organizatio venditionis]';
COMMENT ON COLUMN pm.viqmel.cds IS 'VTWEG — Distribution Channel [canalis distributionis]';
COMMENT ON COLUMN pm.viqmel.dvs IS 'SPART — Division [divisio]';
COMMENT ON COLUMN pm.viqmel.nom_psn_nts IS 'QMNAM — Name of the person who reported the notification [nomen persona nuntius]';
COMMENT ON COLUMN pm.viqmel.sta IS 'STATUS_ICON — Overall status (icon representation) [status]';

