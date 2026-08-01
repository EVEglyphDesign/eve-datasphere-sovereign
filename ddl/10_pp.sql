-- EVE Datasphere Sovereign — PostgreSQL materialisation
-- Generated 2026-08-01T02:19:53Z by scripts/emit_postgres.py. Do not hand-edit; regenerate.
-- Column names are the canonical Latin layer (EgD-LATIN-001). The legacy SAP field name
-- is preserved in COMMENT ON COLUMN and in egd_catalog.field_map, and is the join key.
-- Mirror, never cannibalise. Pour le bien-etre du peuple.

-- module PP

CREATE TABLE IF NOT EXISTS pp.afko (
  cli char(3),
  mnd_num varchar(12),
  fin_die date,
  ini_die date,
  ems_die date,
  fin date,
  ini date,
  acl_ini_die date,
  mnd_fin_die date,
  acl_fin_die date,
  acl_ems_die date,
  ems_die2 date,
  num_rqs varchar(10),
  tot_qnt_mnd numeric(13,3),
  tot_mnd_qnt numeric(13,3),
  men varchar(3),
  mat_num varchar(18),
  ixp_gen varchar(1),
  clv_ixp_cts varchar(8),
  ixp varchar(1),
  cts_nmr varchar(2),
  ixp2 varchar(3),
  die_itn date,
  mgn numeric(13,3),
  ixp_men varchar(3),
  mgn2 numeric(13,3),
  vla_die date,
  num varchar(12),
  ccs varchar(3),
  mgn3 numeric(13,3),
  ctg varchar(1),
  mat_num2 varchar(18),
  sta varchar(2),
  ixm varchar(8),
  vla_die2 date,
  qnt numeric(13,3),
  men2 varchar(3),
  num2 varchar(12),
  stlal varchar(2),
  stlan varchar(1),
  mgn4 numeric(13,3),
  mgn5 numeric(13,3),
  die_itn2 date,
  mnd varchar(3),
  itn_num_mnd varchar(10),
  prd varchar(3),
  clv varchar(3),
  gen varchar(1),
  idx varchar(1),
  mnd_pri varchar(1),
  ret_num varchar(12),
  act varchar(4),
  ret varchar(7),
  prd2 varchar(3),
  prd3 varchar(3),
  ems_per varchar(3),
  idx2 varchar(1),
  cpc_tbl varchar(12),
  prp varchar(8),
  nmr varchar(8),
  nmr2 varchar(8),
  nmr3 varchar(7),
  isp_num varchar(12),
  klvarp varchar(4),
  acl varchar(4),
  idx_mnd varchar(1),
  plart varchar(1),
  idx3 varchar(1),
  idx_val_ops varchar(1),
  fin_die_pvs date,
  pvs_ini_die date,
  pvs_fin date,
  pvs_ini date,
  ems_die_pvs date,
  idx_pvs varchar(1),
  gen_pvs varchar(1),
  cnf_num_ope varchar(10),
  nmr4 varchar(8),
  mnd_cnf numeric(13,3),
  cpc_tbl2 varchar(12),
  cpc_tbl3 varchar(12),
  obi_num varchar(18),
  fin_tmp time,
  ini_tmp time,
  grd varchar(2),
  obi_sbs varchar(2),
  obi_sbs2 varchar(8),
  obi_sbs3 varchar(2),
  obi_sbs4 varchar(8),
  idx4 varchar(1),
  idx_smp varchar(1),
  grd2 numeric(2,0),
  grd3 numeric(4,0),
  grd4 numeric(4,0),
  num_rqs2 varchar(10),
  mnd_pos_num varchar(4),
  num_mnd varchar(12),
  mnd2 varchar(12),
  mnd3 varchar(12),
  idx_mnd2 varchar(1),
  mnd4 numeric(13,3),
  cnf varchar(3),
  num_ret varchar(12),
  itn_num_mnd2 varchar(10),
  nmr_mnd varchar(8),
  cns varchar(1),
  csplit varchar(4),
  num3 varchar(12),
  num_mnd2 varchar(14),
  idx5 varchar(1),
  prd4 numeric(6,3),
  prd5 numeric(6,3),
  die_ult date,
  fin_tmp2 time,
  ini_tmp2 time,
  acl_ini_tmp time,
  mnd_fin_tmp time,
  pvs_fin_tmp time,
  pvs_ini_tmp time,
  pvs_fin_tmp2 time,
  ini_tmp_pvs time,
  grx varchar(6),
  prd6 varchar(3),
  kapt_sichz varchar(3),
  mnd5 varchar(12),
  ini_ret_die date,
  ini_tmp_mnd time,
  fin_mnd_die date,
  fin_tmp3 time,
  cpc varchar(1),
  idx6 varchar(1),
  prd7 varchar(6),
  tot_qnt numeric(13,3),
  die date,
  qnt_mnd numeric(13,3),
  mnd6 varchar(1),
  idx_rat_asg varchar(1),
  atrkz varchar(1),
  idx7 varchar(1),
  obi varchar(1),
  vrs_cpc varchar(2),
  mnd_mtm varchar(1),
  idx_prp varchar(1),
  obi2 varchar(8),
  obi3 varchar(8),
  dvd_vrs_num varchar(12),
  adn_mnd varchar(1),
  sta_mnd_hir varchar(1),
  costupd varchar(1),
  val_tot_mnd numeric(13,3),
  clv_itn varchar(64),
  rfr_elm varchar(40),
  vdt_dtb_ndo varchar(10),
  pos_num_doc varchar(6),
  pos_num_doc2 varchar(6),
  per numeric(5,0),
  uni_per varchar(3),
  cfb_adtdays numeric(4,0),
  die2 date,
  die3 date,
  gen2 varchar(2),
  qnt_tsc integer,
  men3 varchar(3),
  qnt2 numeric(13,3),
  idx8 varchar(1),
  CONSTRAINT afko_pk PRIMARY KEY (cli, mnd_num)
);
COMMENT ON TABLE pp.afko IS 'AFKO — Production/Process Order Header Data (PP Orders) — order dates, quantities, BOM/routing references. First link in the production order spine (AFKO→AFPO→AFVC).';
COMMENT ON COLUMN pp.afko.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pp.afko.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN pp.afko.fin_die IS 'GLTRP — Basic finish date [finis dies]';
COMMENT ON COLUMN pp.afko.ini_die IS 'GSTRP — Basic Start Date [initium dies]';
COMMENT ON COLUMN pp.afko.ems_die IS 'FTRMS — Scheduled release date [emissio dies]';
COMMENT ON COLUMN pp.afko.fin IS 'GLTRS — Scheduled finish [finis]';
COMMENT ON COLUMN pp.afko.ini IS 'GSTRS — Scheduled start [initium]';
COMMENT ON COLUMN pp.afko.acl_ini_die IS 'GSTRI — Actual start date [actualis initium dies]';
COMMENT ON COLUMN pp.afko.mnd_fin_die IS 'GETRI — Confirmed Order Finish Date [mandatum finis dies]';
COMMENT ON COLUMN pp.afko.acl_fin_die IS 'GLTRI — Actual finish date [actualis finis dies]';
COMMENT ON COLUMN pp.afko.acl_ems_die IS 'FTRMI — Actual release date [actualis emissio dies]';
COMMENT ON COLUMN pp.afko.ems_die2 IS 'FTRMP — Planned release date [emissio dies]';
COMMENT ON COLUMN pp.afko.num_rqs IS 'RSNUM — Number of Reservation/Dependent Requirement [numerus requisitum]';
COMMENT ON COLUMN pp.afko.tot_qnt_mnd IS 'GASMG — Total scrap quantity in the order [summa totalis quantitas mandatum]';
COMMENT ON COLUMN pp.afko.tot_mnd_qnt IS 'GAMNG — Total order quantity [summa totalis mandatum quantitas]';
COMMENT ON COLUMN pp.afko.men IS 'GMEIN — Base Unit of Measure [mensura]';
COMMENT ON COLUMN pp.afko.mat_num IS 'PLNBEZ — Material Number [materia numerus]';
COMMENT ON COLUMN pp.afko.ixp_gen IS 'PLNTY — Task List Type [index pensorum genus]';
COMMENT ON COLUMN pp.afko.clv_ixp_cts IS 'PLNNR — Key for Task List Group [clavis index pensorum coetus]';
COMMENT ON COLUMN pp.afko.ixp IS 'PLNAW — Application of the task list [index pensorum]';
COMMENT ON COLUMN pp.afko.cts_nmr IS 'PLNAL — Group Counter [coetus numerator]';
COMMENT ON COLUMN pp.afko.ixp2 IS 'PVERW — Task list usage [index pensorum]';
COMMENT ON COLUMN pp.afko.die_itn IS 'PLAUF — Date for routing transfer [dies itinerarium]';
COMMENT ON COLUMN pp.afko.mgn IS 'PLSVB — To lot size [magnitudo]';
COMMENT ON COLUMN pp.afko.ixp_men IS 'PLNME — Task list unit of measure [index pensorum mensura]';
COMMENT ON COLUMN pp.afko.mgn2 IS 'PLSVN — From Lot Size [magnitudo]';
COMMENT ON COLUMN pp.afko.vla_die IS 'PDATV — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN pp.afko.num IS 'PAENR — Change Number [numerus]';
COMMENT ON COLUMN pp.afko.ccs IS 'PLGRP — Responsible planner group/department [coetus consiliorum]';
COMMENT ON COLUMN pp.afko.mgn3 IS 'LODIV — Lot size divisor [magnitudo]';
COMMENT ON COLUMN pp.afko.ctg IS 'STLTY — BOM category [categoria]';
COMMENT ON COLUMN pp.afko.mat_num2 IS 'STLBEZ — Material Number [materia numerus]';
COMMENT ON COLUMN pp.afko.sta IS 'STLST — BOM status [status]';
COMMENT ON COLUMN pp.afko.ixm IS 'STLNR — Bill of material [index materiarum]';
COMMENT ON COLUMN pp.afko.vla_die2 IS 'SDATV — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN pp.afko.qnt IS 'SBMNG — Base quantity [quantitas]';
COMMENT ON COLUMN pp.afko.men2 IS 'SBMEH — Base Unit of Measure [mensura]';
COMMENT ON COLUMN pp.afko.num2 IS 'SAENR — Change Number [numerus]';
COMMENT ON COLUMN pp.afko.stlal IS 'STLAL — Alternative BOM';
COMMENT ON COLUMN pp.afko.stlan IS 'STLAN — BOM Usage';
COMMENT ON COLUMN pp.afko.mgn4 IS 'SLSVN — From Lot Size [magnitudo]';
COMMENT ON COLUMN pp.afko.mgn5 IS 'SLSBS — To Lot Size [magnitudo]';
COMMENT ON COLUMN pp.afko.die_itn2 IS 'AUFLD — Date of BOM Explosion/Routing Transfer [dies itinerarium]';
COMMENT ON COLUMN pp.afko.mnd IS 'DISPO — MRP controller for the order [mandatum]';
COMMENT ON COLUMN pp.afko.itn_num_mnd IS 'AUFPL — Routing number of operations in the order [itinerarium numerus mandatum]';
COMMENT ON COLUMN pp.afko.prd IS 'FEVOR — Production Supervisor [productio]';
COMMENT ON COLUMN pp.afko.clv IS 'FHORI — Scheduling Margin Key for Floats [clavis]';
COMMENT ON COLUMN pp.afko.gen IS 'TERKZ — Scheduling type [genus]';
COMMENT ON COLUMN pp.afko.idx IS 'REDKZ — Reduction indicator for scheduling [index]';
COMMENT ON COLUMN pp.afko.mnd_pri IS 'APRIO — Order priority [mandatum prioritas]';
COMMENT ON COLUMN pp.afko.ret_num IS 'NTZUE — Superior network number [rete numerus]';
COMMENT ON COLUMN pp.afko.act IS 'VORUE — Superior activity [actio]';
COMMENT ON COLUMN pp.afko.ret IS 'PROFID — Network profile [rete]';
COMMENT ON COLUMN pp.afko.prd2 IS 'VORGZ — Float before production (in days) [productio]';
COMMENT ON COLUMN pp.afko.prd3 IS 'SICHZ — Float after production (in days) [productio]';
COMMENT ON COLUMN pp.afko.ems_per IS 'FREIZ — Release period (in days) [emissio periodus]';
COMMENT ON COLUMN pp.afko.idx2 IS 'UPTER — Indicator: Change to Scheduled Dates [index]';
COMMENT ON COLUMN pp.afko.cpc_tbl IS 'BEDID — ID of the capacity requirements record [capacitas tabula]';
COMMENT ON COLUMN pp.afko.prp IS 'PRONR — Project definition [propositum]';
COMMENT ON COLUMN pp.afko.nmr IS 'ZAEHL — Internal counter [numerator]';
COMMENT ON COLUMN pp.afko.nmr2 IS 'MZAEHL — Internal counter [numerator]';
COMMENT ON COLUMN pp.afko.nmr3 IS 'ZKRIZ — Counter for additional criteria [numerator]';
COMMENT ON COLUMN pp.afko.isp_num IS 'PRUEFLOS — Inspection Lot Number [inspectio numerus]';
COMMENT ON COLUMN pp.afko.klvarp IS 'KLVARP — Costing variant for planned costs';
COMMENT ON COLUMN pp.afko.acl IS 'KLVARI — Costing variant for actual costs [actualis]';
COMMENT ON COLUMN pp.afko.idx_mnd IS 'RGEKZ — Indicator: Backflushing for order [index mandatum]';
COMMENT ON COLUMN pp.afko.plart IS 'PLART — Basis for scheduling';
COMMENT ON COLUMN pp.afko.idx3 IS 'FLG_AOB — Indicator: relationships [index]';
COMMENT ON COLUMN pp.afko.idx_val_ops IS 'FLG_ARBEI — Indicator: Default value work is relevant [index valor opus]';
COMMENT ON COLUMN pp.afko.fin_die_pvs IS 'GLTPP — Finish date (forecast) [finis dies praevisio]';
COMMENT ON COLUMN pp.afko.pvs_ini_die IS 'GSTPP — Forecast start date [praevisio initium dies]';
COMMENT ON COLUMN pp.afko.pvs_fin IS 'GLTPS — Scheduled forecast finish [praevisio finis]';
COMMENT ON COLUMN pp.afko.pvs_ini IS 'GSTPS — Scheduled forecast start [praevisio initium]';
COMMENT ON COLUMN pp.afko.ems_die_pvs IS 'FTRPS — Scheduled release date (forecast) [emissio dies praevisio]';
COMMENT ON COLUMN pp.afko.idx_pvs IS 'RDKZP — Reduction indicator for scheduling (forecast) [index praevisio]';
COMMENT ON COLUMN pp.afko.gen_pvs IS 'TRKZP — Scheduling type (forecast) [genus praevisio]';
COMMENT ON COLUMN pp.afko.cnf_num_ope IS 'RUECK — Completion confirmation number for the operation [confirmatio numerus operatio]';
COMMENT ON COLUMN pp.afko.nmr4 IS 'RMZHL — Internal counter [numerator]';
COMMENT ON COLUMN pp.afko.mnd_cnf IS 'IGMNG — Yield confirmed from order confirmation [mandatum confirmatio]';
COMMENT ON COLUMN pp.afko.cpc_tbl2 IS 'RATID — ID of the capacity requirements record [capacitas tabula]';
COMMENT ON COLUMN pp.afko.cpc_tbl3 IS 'GROID — ID of the capacity requirements record [capacitas tabula]';
COMMENT ON COLUMN pp.afko.obi_num IS 'CUOBJ — Configuration (internal object number) [obiectum numerus]';
COMMENT ON COLUMN pp.afko.fin_tmp IS 'GLUZS — Scheduled finish time [finis tempus]';
COMMENT ON COLUMN pp.afko.ini_tmp IS 'GSUZS — Scheduled Start (Time) [initium tempus]';
COMMENT ON COLUMN pp.afko.grd IS 'REVLV — Revision Level [gradus]';
COMMENT ON COLUMN pp.afko.obi_sbs IS 'RSHTY — Object types of the CIM resource [obiectum subsidium]';
COMMENT ON COLUMN pp.afko.obi_sbs2 IS 'RSHID — Object ID of the resource [obiectum subsidium]';
COMMENT ON COLUMN pp.afko.obi_sbs3 IS 'RSNTY — Object types of the CIM resource [obiectum subsidium]';
COMMENT ON COLUMN pp.afko.obi_sbs4 IS 'RSNID — Object ID of the resource [obiectum subsidium]';
COMMENT ON COLUMN pp.afko.idx4 IS 'NAUTERM — Indicator: Do not schedule automatically [index]';
COMMENT ON COLUMN pp.afko.idx_smp IS 'NAUCOST — Indicator: Do not cost automatically [index sumptus]';
COMMENT ON COLUMN pp.afko.grd2 IS 'STUFE — Level (in multi-level BOM explosions) [gradus]';
COMMENT ON COLUMN pp.afko.grd3 IS 'WEGXX — Path (for multi-level BOM explosions) [gradus]';
COMMENT ON COLUMN pp.afko.grd4 IS 'VWEGX — Path (for multi-level BOM explosions) [gradus]';
COMMENT ON COLUMN pp.afko.num_rqs2 IS 'ARSNR — Number of Reservation/Dependent Requirement [numerus requisitum]';
COMMENT ON COLUMN pp.afko.mnd_pos_num IS 'ARSPS — Order Item Number [mandatum positio numerus]';
COMMENT ON COLUMN pp.afko.num_mnd IS 'MAUFNR — Number of superior order [numerus mandatum]';
COMMENT ON COLUMN pp.afko.mnd2 IS 'LKNOT — Left node in collective order [mandatum]';
COMMENT ON COLUMN pp.afko.mnd3 IS 'RKNOT — Right node of a collective order [mandatum]';
COMMENT ON COLUMN pp.afko.idx_mnd2 IS 'PRODNET — Indicator: Order is part of collective order [index mandatum]';
COMMENT ON COLUMN pp.afko.mnd4 IS 'IASMG — Scrap confirmed for order [mandatum]';
COMMENT ON COLUMN pp.afko.cnf IS 'ABARB — Confirmation: Degree of processing [confirmatio]';
COMMENT ON COLUMN pp.afko.num_ret IS 'AUFNT — Number of superior network [numerus rete]';
COMMENT ON COLUMN pp.afko.itn_num_mnd2 IS 'AUFPT — Routing number of operations in the order [itinerarium numerus mandatum]';
COMMENT ON COLUMN pp.afko.nmr_mnd IS 'APLZT — General counter for order [numerator mandatum]';
COMMENT ON COLUMN pp.afko.cns IS 'NO_DISP — Effective for Materials Planning [consilium]';
COMMENT ON COLUMN pp.afko.csplit IS 'CSPLIT — Apportionment Structure';
COMMENT ON COLUMN pp.afko.num3 IS 'AENNR — Change Number [numerus]';
COMMENT ON COLUMN pp.afko.num_mnd2 IS 'CY_SEQNR — Seq. number order [numerus mandatum]';
COMMENT ON COLUMN pp.afko.idx5 IS 'BREAKS — Indicator: Scheduling allowing for breaks [index]';
COMMENT ON COLUMN pp.afko.prd4 IS 'VORGZ_TRM — Scheduled float before production in days [productio]';
COMMENT ON COLUMN pp.afko.prd5 IS 'SICHZ_TRM — Scheduled float after production in days [productio]';
COMMENT ON COLUMN pp.afko.die_ult IS 'TRMDT — Date of the last scheduling [dies ultimus]';
COMMENT ON COLUMN pp.afko.fin_tmp2 IS 'GLUZP — Basic finish (time) [finis tempus]';
COMMENT ON COLUMN pp.afko.ini_tmp2 IS 'GSUZP — Basic start time [initium tempus]';
COMMENT ON COLUMN pp.afko.acl_ini_tmp IS 'GSUZI — Actual start time [actualis initium tempus]';
COMMENT ON COLUMN pp.afko.mnd_fin_tmp IS 'GEUZI — Confirmed order finish (time) [mandatum finis tempus]';
COMMENT ON COLUMN pp.afko.pvs_fin_tmp IS 'GLUPP — Forecast finish (time) [praevisio finis tempus]';
COMMENT ON COLUMN pp.afko.pvs_ini_tmp IS 'GSUPP — Forecast start (time) [praevisio initium tempus]';
COMMENT ON COLUMN pp.afko.pvs_fin_tmp2 IS 'GLUPS — Scheduled forecast finish time [praevisio finis tempus]';
COMMENT ON COLUMN pp.afko.ini_tmp_pvs IS 'GSUPS — Scheduled start time (Forecast) [initium tempus praevisio]';
COMMENT ON COLUMN pp.afko.grx IS 'CHSCH — Search procedure for batch determination [grex]';
COMMENT ON COLUMN pp.afko.prd6 IS 'KAPT_VORGZ — Float (bef. production) remaining after finite scheduling [productio]';
COMMENT ON COLUMN pp.afko.kapt_sichz IS 'KAPT_SICHZ — Remaining float after finite scheduling';
COMMENT ON COLUMN pp.afko.mnd5 IS 'LEAD_AUFNR — Leading order in current processing [mandatum]';
COMMENT ON COLUMN pp.afko.ini_ret_die IS 'PNETSTARTD — Outline start of collective network (date) [initium rete dies]';
COMMENT ON COLUMN pp.afko.ini_tmp_mnd IS 'PNETSTARTT — Start time of a collective order [initium tempus mandatum]';
COMMENT ON COLUMN pp.afko.fin_mnd_die IS 'PNETENDD — Outline finish of collective order (date) [finis mandatum dies]';
COMMENT ON COLUMN pp.afko.fin_tmp3 IS 'PNETENDT — Outline finish time [finis tempus]';
COMMENT ON COLUMN pp.afko.cpc IS 'KBED — Ind: do not create capacity requirements [capacitas]';
COMMENT ON COLUMN pp.afko.idx6 IS 'KKALKR — Indicator: Components will not be costed [index]';
COMMENT ON COLUMN pp.afko.prd7 IS 'SFCPF — Production Scheduling Profile [productio]';
COMMENT ON COLUMN pp.afko.tot_qnt IS 'RMNGA — Total confirmed rework quantity [summa totalis quantitas]';
COMMENT ON COLUMN pp.afko.die IS 'GSBTR — Overall commitment date [dies]';
COMMENT ON COLUMN pp.afko.qnt_mnd IS 'VFMNG — Committed quantity for order acc. to ATP check components [quantitas mandatum]';
COMMENT ON COLUMN pp.afko.mnd6 IS 'NOPCOST — Do not calculate planned costs for order [mandatum]';
COMMENT ON COLUMN pp.afko.idx_rat_asg IS 'NETZKONT — Indicator for the account assignment of a network(hdr/act.) [index ratio assignatio]';
COMMENT ON COLUMN pp.afko.atrkz IS 'ATRKZ — Request ID';
COMMENT ON COLUMN pp.afko.idx7 IS 'OBJTYPE — Change indicator [index]';
COMMENT ON COLUMN pp.afko.obi IS 'CH_PROC — Process that has lead to the change of an object [obiectum]';
COMMENT ON COLUMN pp.afko.vrs_cpc IS 'KAPVERSA — Version of Available Capacity [versio capacitas]';
COMMENT ON COLUMN pp.afko.mnd_mtm IS 'COLORDPROC — Collective order with/without automatic goods movement [mandatum motus mercium]';
COMMENT ON COLUMN pp.afko.idx_prp IS 'KZERB — Indicator: Project summarization via master data charact. [index propositum]';
COMMENT ON COLUMN pp.afko.obi2 IS 'CONF_KEY — Identical object [obiectum]';
COMMENT ON COLUMN pp.afko.obi3 IS 'ST_ARBID — Object ID [obiectum]';
COMMENT ON COLUMN pp.afko.dvd_vrs_num IS 'VSNMR_V — Sales document version number [documentum venditionis versio numerus]';
COMMENT ON COLUMN pp.afko.adn_mnd IS 'TERHW — Scheduling note from order scheduling [adnotatio mandatum]';
COMMENT ON COLUMN pp.afko.sta_mnd_hir IS 'SPLSTAT — Status of an order in a split hierarchy [status mandatum hierarchia]';
COMMENT ON COLUMN pp.afko.costupd IS 'COSTUPD — Costs are updated';
COMMENT ON COLUMN pp.afko.val_tot_mnd IS 'MAX_GAMNG — Maximum Value of Total Order Quantity After Distribution [valor summa totalis mandatum]';
COMMENT ON COLUMN pp.afko.clv_itn IS 'MES_ROUTINGID — Key of a Routing from an ME System [clavis itinerarium]';
COMMENT ON COLUMN pp.afko.rfr_elm IS 'ADPSP — PM/PS Reference Element [referentia elementum]';
COMMENT ON COLUMN pp.afko.vdt_dtb_ndo IS 'RMANR — Sales and Distribution Document Number [venditio distributio numerus documenti]';
COMMENT ON COLUMN pp.afko.pos_num_doc IS 'POSNR_RMA — Item number of the SD document [positio numerus documentum]';
COMMENT ON COLUMN pp.afko.pos_num_doc2 IS 'POSNV_RMA — Item number of the SD document [positio numerus documentum]';
COMMENT ON COLUMN pp.afko.per IS 'CFB_MAXLZ — Maximum Storage Period [periodus]';
COMMENT ON COLUMN pp.afko.uni_per IS 'CFB_LZEIH — Unit for maximum storage period [unitas periodus]';
COMMENT ON COLUMN pp.afko.cfb_adtdays IS 'CFB_ADTDAYS — Additional Days';
COMMENT ON COLUMN pp.afko.die2 IS 'CFB_DATOFM — Date of Manufacture [dies]';
COMMENT ON COLUMN pp.afko.die3 IS 'CFB_BBDPI — Best-Before Date (BBD)/ Shelf Life Expiration Date (SLED) [dies]';
COMMENT ON COLUMN pp.afko.gen2 IS 'OIHANTYP — Excise Duty Handling Type [genus]';
COMMENT ON COLUMN pp.afko.qnt_tsc IS 'MILL_RATIO — Factor for Quantity-Based Settlement [quantitas transactio]';
COMMENT ON COLUMN pp.afko.men3 IS 'BMEINS — Base Unit of Measure [mensura]';
COMMENT ON COLUMN pp.afko.qnt2 IS 'BMENGE — Base quantity [quantitas]';
COMMENT ON COLUMN pp.afko.idx8 IS 'MILL_OC_ZUSKZ — Combination Indicator [index]';

CREATE TABLE IF NOT EXISTS pp.afpo (
  cli char(3),
  mnd_num varchar(12),
  mnd_pos_num varchar(4),
  gen varchar(1),
  num varchar(10),
  pos varchar(3),
  ops_elm_eop varchar(8),
  mnd_num2 varchar(10),
  ini_die_mnd date,
  die_mnd date,
  vdt_mnd_num varchar(10),
  vdt_mnd_pos varchar(6),
  trd_vdt_mnd varchar(4),
  gen2 varchar(1),
  qnt_pos numeric(13,3),
  mnd_pos_qnt numeric(13,3),
  qnt_mrc_mnd numeric(13,3),
  amr numeric(13,3),
  men_prd varchar(3),
  men varchar(3),
  mat_num_mnd varchar(18),
  qnt_prd numeric(13,3),
  tot_mnd_qnt numeric(13,3),
  rat_asg_ctg varchar(1),
  idx varchar(1),
  acl_trd_fin date,
  trd_die_mnd date,
  smp_num varchar(12),
  uebto numeric(3,1),
  idx2 varchar(1),
  untto numeric(3,1),
  cpa_gen varchar(1),
  amr_idx varchar(1),
  aes_gen varchar(10),
  aes_ctg varchar(1),
  cns_ofc_mnd varchar(4),
  loc varchar(4),
  umrez numeric(5,0),
  umren numeric(5,0),
  amr_tmp numeric(3,0),
  trd_idx varchar(1),
  cap_num varchar(12),
  prd_vrs varchar(4),
  num2 varchar(8),
  nrm varchar(12),
  ofc varchar(4),
  mnd_ctg varchar(2),
  gmd varchar(4),
  fin_die date,
  fin date,
  idx_mnd varchar(1),
  idx_mnd_pos varchar(1),
  dtb_clv varchar(4),
  cpa_idx varchar(1),
  ins varchar(1),
  val_mrc_mon numeric(13,2),
  amr2 varchar(1),
  ablad varchar(25),
  mrc_psn varchar(12),
  grx_num varchar(10),
  ang varchar(4),
  idx_amr_mut varchar(1),
  obi_num varchar(18),
  idx3 varchar(1),
  tsc_num varchar(10),
  pos_num_tsc varchar(4),
  num_rqs varchar(10),
  pos_num_rqs varchar(4),
  smp_clv varchar(23),
  smp varchar(1),
  smp2 varchar(1),
  smp_vdt_mnd varchar(1),
  smp3 varchar(1),
  smp_vla date,
  smp_vld date,
  obi_num2 varchar(22),
  mat_mnd_pos varchar(1),
  qnt_mnd numeric(13,3),
  die date,
  idx_gen varchar(1),
  aes_cpa varchar(1),
  sgn varchar(1),
  nsr varchar(4),
  num3 integer,
  idx4 varchar(1),
  obi varchar(1),
  pre varchar(1),
  obi_num3 varchar(18),
  are varchar(10),
  nrm2 varchar(12),
  emp_num varchar(10),
  num_mnd varchar(12),
  qnt_pos2 numeric(13,3),
  pos_ord varchar(8),
  gen3 varchar(2),
  CONSTRAINT afpo_pk PRIMARY KEY (cli, mnd_num, mnd_pos_num, gen)
);
COMMENT ON TABLE pp.afpo IS 'AFPO — Order Item — production order line item detail (material, quantities, goods receipt, batch, storage location).';
COMMENT ON COLUMN pp.afpo.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pp.afpo.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN pp.afpo.mnd_pos_num IS 'POSNR — Order Item Number [mandatum positio numerus]';
COMMENT ON COLUMN pp.afpo.gen IS 'PSOBS — Special procurement type [genus]';
COMMENT ON COLUMN pp.afpo.num IS 'QUNUM — Number of Quota Arrangement [numerus]';
COMMENT ON COLUMN pp.afpo.pos IS 'QUPOS — Quota Arrangement Item [positio]';
COMMENT ON COLUMN pp.afpo.ops_elm_eop IS 'PROJN — Work breakdown structure element (WBS element) [opus elementum elementum operis]';
COMMENT ON COLUMN pp.afpo.mnd_num2 IS 'PLNUM — Planned order number [mandatum numerus]';
COMMENT ON COLUMN pp.afpo.ini_die_mnd IS 'STRMP — Start date of the planned order [initium dies mandatum]';
COMMENT ON COLUMN pp.afpo.die_mnd IS 'ETRMP — Opening date of the planned order [dies mandatum]';
COMMENT ON COLUMN pp.afpo.vdt_mnd_num IS 'KDAUF — Sales order number [venditio mandatum numerus]';
COMMENT ON COLUMN pp.afpo.vdt_mnd_pos IS 'KDPOS — Sales order item [venditio mandatum positio]';
COMMENT ON COLUMN pp.afpo.trd_vdt_mnd IS 'KDEIN — Delivery Schedule for Sales Order [traditio venditio mandatum]';
COMMENT ON COLUMN pp.afpo.gen2 IS 'BESKZ — Procurement Type [genus]';
COMMENT ON COLUMN pp.afpo.qnt_pos IS 'PSAMG — Scrap quantity in item [quantitas positio]';
COMMENT ON COLUMN pp.afpo.mnd_pos_qnt IS 'PSMNG — Order item quantity [mandatum positio quantitas]';
COMMENT ON COLUMN pp.afpo.qnt_mrc_mnd IS 'WEMNG — Quantity of goods received for the order item [quantitas merces mandatum]';
COMMENT ON COLUMN pp.afpo.amr IS 'IAMNG — Expected surplus/deficit for goods receipt [acceptio mercium]';
COMMENT ON COLUMN pp.afpo.men_prd IS 'AMEIN — Unit of measure for in-house production [mensura productio]';
COMMENT ON COLUMN pp.afpo.men IS 'MEINS — Base Unit of Measure [mensura]';
COMMENT ON COLUMN pp.afpo.mat_num_mnd IS 'MATNR — Material Number for Order [materia numerus mandatum]';
COMMENT ON COLUMN pp.afpo.qnt_prd IS 'PAMNG — Fixed quantity of scrap from production [quantitas productio]';
COMMENT ON COLUMN pp.afpo.tot_mnd_qnt IS 'PGMNG — Total planned order quantity [summa totalis mandatum quantitas]';
COMMENT ON COLUMN pp.afpo.rat_asg_ctg IS 'KNTTP — Account Assignment Category [ratio assignatio categoria]';
COMMENT ON COLUMN pp.afpo.idx IS 'TPAUF — Indicator: Partial conversion [index]';
COMMENT ON COLUMN pp.afpo.acl_trd_fin IS 'LTRMI — Actual delivery/finish date [actualis traditio finis]';
COMMENT ON COLUMN pp.afpo.trd_die_mnd IS 'LTRMP — Delivery date from planned order [traditio dies mandatum]';
COMMENT ON COLUMN pp.afpo.smp_num IS 'KALNR — Cost Estimate Number for Cost Est. w/o Qty Structure [sumptus numerus]';
COMMENT ON COLUMN pp.afpo.uebto IS 'UEBTO — Overdelivery Tolerance Limit';
COMMENT ON COLUMN pp.afpo.idx2 IS 'UEBTK — Indicator: Unlimited Overdelivery Allowed [index]';
COMMENT ON COLUMN pp.afpo.untto IS 'UNTTO — Underdelivery Tolerance Limit';
COMMENT ON COLUMN pp.afpo.cpa_gen IS 'INSMK — Stock Type [copia genus]';
COMMENT ON COLUMN pp.afpo.amr_idx IS 'WEPOS — Goods Receipt Indicator [acceptio mercium index]';
COMMENT ON COLUMN pp.afpo.aes_gen IS 'BWTAR — Valuation Type [aestimatio genus]';
COMMENT ON COLUMN pp.afpo.aes_ctg IS 'BWTTY — Valuation Category [aestimatio categoria]';
COMMENT ON COLUMN pp.afpo.cns_ofc_mnd IS 'PWERK — Planning plant for the order [consilium officina mandatum]';
COMMENT ON COLUMN pp.afpo.loc IS 'LGORT — Storage Location [locus repositionis]';
COMMENT ON COLUMN pp.afpo.umrez IS 'UMREZ — Numerator for Conversion to Base Units of Measure';
COMMENT ON COLUMN pp.afpo.umren IS 'UMREN — Denominator for conversion to base units of measure';
COMMENT ON COLUMN pp.afpo.amr_tmp IS 'WEBAZ — Goods receipt processing time in days [acceptio mercium tempus]';
COMMENT ON COLUMN pp.afpo.trd_idx IS 'ELIKZ — ''Delivery Completed'' Indicator [traditio index]';
COMMENT ON COLUMN pp.afpo.cap_num IS 'SAFNR — Run schedule header number [caput numerus]';
COMMENT ON COLUMN pp.afpo.prd_vrs IS 'VERID — Production Version [productio versio]';
COMMENT ON COLUMN pp.afpo.num2 IS 'SERNR — BOM explosion number [numerus]';
COMMENT ON COLUMN pp.afpo.nrm IS 'TECHS — Parameter Variant/Standard Variant [norma]';
COMMENT ON COLUMN pp.afpo.ofc IS 'DWERK — Plant [officina]';
COMMENT ON COLUMN pp.afpo.mnd_ctg IS 'DAUTY — Order category [mandatum categoria]';
COMMENT ON COLUMN pp.afpo.gmd IS 'DAUAT — Order Type [genus mandati]';
COMMENT ON COLUMN pp.afpo.fin_die IS 'DGLTP — Basic finish date [finis dies]';
COMMENT ON COLUMN pp.afpo.fin IS 'DGLTS — Scheduled finish [finis]';
COMMENT ON COLUMN pp.afpo.idx_mnd IS 'DFREI — Indicator: Order released/partially released (for MRP) [index mandatum]';
COMMENT ON COLUMN pp.afpo.idx_mnd_pos IS 'DNREL — Indicator: Order item not relevant for MRP [index mandatum positio]';
COMMENT ON COLUMN pp.afpo.dtb_clv IS 'VERTO — MRP Distribution Key [distributio clavis]';
COMMENT ON COLUMN pp.afpo.cpa_idx IS 'SOBKZ — Special Stock Indicator [copia index]';
COMMENT ON COLUMN pp.afpo.ins IS 'KZVBR — Consumption Posting [inscriptio]';
COMMENT ON COLUMN pp.afpo.val_mrc_mon IS 'WEWRT — Value of goods received in local currency [valor merces moneta]';
COMMENT ON COLUMN pp.afpo.amr2 IS 'WEUNB — Goods Receipt, Non-Valuated [acceptio mercium]';
COMMENT ON COLUMN pp.afpo.ablad IS 'ABLAD — Unloading Point';
COMMENT ON COLUMN pp.afpo.mrc_psn IS 'WEMPF — Goods Recipient/Ship-To Party [merces persona]';
COMMENT ON COLUMN pp.afpo.grx_num IS 'CHARG — Batch Number [grex numerus]';
COMMENT ON COLUMN pp.afpo.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN pp.afpo.idx_amr_mut IS 'WEAED — Indicator: Goods receipt indicator can be changed [index acceptio mercium mutatus]';
COMMENT ON COLUMN pp.afpo.obi_num IS 'CUOBJ — Configuration (internal object number) [obiectum numerus]';
COMMENT ON COLUMN pp.afpo.idx3 IS 'KBNKZ — Kanban Indicator [index]';
COMMENT ON COLUMN pp.afpo.tsc_num IS 'ARSNR — Settlement reservation number [transactio numerus]';
COMMENT ON COLUMN pp.afpo.pos_num_tsc IS 'ARSPS — Item number of the settlement reservation [positio numerus transactio]';
COMMENT ON COLUMN pp.afpo.num_rqs IS 'KRSNR — Number of Reservation/Dependent Requirement [numerus requisitum]';
COMMENT ON COLUMN pp.afpo.pos_num_rqs IS 'KRSPS — Item Number of Reservation/Dependent Requirement [positio numerus requisitum]';
COMMENT ON COLUMN pp.afpo.smp_clv IS 'KCKEY — Cost collector key [sumptus clavis]';
COMMENT ON COLUMN pp.afpo.smp IS 'RTP01 — Cost collector for repetitive manufacturing [sumptus]';
COMMENT ON COLUMN pp.afpo.smp2 IS 'RTP02 — Cost collector for KANBAN [sumptus]';
COMMENT ON COLUMN pp.afpo.smp_vdt_mnd IS 'RTP03 — Cost collector for valuated sales order stock [sumptus venditio mandatum]';
COMMENT ON COLUMN pp.afpo.smp3 IS 'RTP04 — Cost collector for external PPC [sumptus]';
COMMENT ON COLUMN pp.afpo.smp_vla IS 'KSVON — Cost collector valid from [sumptus validus ab]';
COMMENT ON COLUMN pp.afpo.smp_vld IS 'KSBIS — Cost collector valid to [sumptus validus ad]';
COMMENT ON COLUMN pp.afpo.obi_num2 IS 'OBJNP — Object number [obiectum numerus]';
COMMENT ON COLUMN pp.afpo.mat_mnd_pos IS 'NDISR — Ind.: Material in order item is not relevant for MRP [materia mandatum positio]';
COMMENT ON COLUMN pp.afpo.qnt_mnd IS 'VFMNG — Committed quantity for order acc. to ATP check components [quantitas mandatum]';
COMMENT ON COLUMN pp.afpo.die IS 'GSBTR — Overall commitment date [dies]';
COMMENT ON COLUMN pp.afpo.idx_gen IS 'KZAVC — Indicator for type of availability check [index genus]';
COMMENT ON COLUMN pp.afpo.aes_cpa IS 'KZBWS — Valuation of Special Stock [aestimatio copia]';
COMMENT ON COLUMN pp.afpo.sgn IS 'XLOEK — Deletion flag [signum]';
COMMENT ON COLUMN pp.afpo.nsr IS 'SERNP — Serial Number Profile [numerus serialis]';
COMMENT ON COLUMN pp.afpo.num3 IS 'ANZSN — Number of serial numbers [numerus]';
COMMENT ON COLUMN pp.afpo.idx4 IS 'OBJTYPE — Change indicator [index]';
COMMENT ON COLUMN pp.afpo.obi IS 'CH_PROC — Process that has lead to the change of an object [obiectum]';
COMMENT ON COLUMN pp.afpo.pre IS 'FXPRU — Fixed-Price Co-Product [pretium]';
COMMENT ON COLUMN pp.afpo.obi_num3 IS 'CUOBJ_ROOT — Configuration (internal object number) [obiectum numerus]';
COMMENT ON COLUMN pp.afpo.are IS 'BERID — MRP Area [area]';
COMMENT ON COLUMN pp.afpo.nrm2 IS 'TECHS_COPY — Parameter Variant/Standard Variant [norma]';
COMMENT ON COLUMN pp.afpo.emp_num IS 'KUNNR2 — Customer Number [emptor numerus]';
COMMENT ON COLUMN pp.afpo.num_mnd IS 'MILL_OC_AUFNR_U — Number of original order [numerus mandatum]';
COMMENT ON COLUMN pp.afpo.qnt_pos2 IS 'MILL_OC_RUMNG — Confirmed Quantity for Item [quantitas positio]';
COMMENT ON COLUMN pp.afpo.pos_ord IS 'MILL_OC_SORT — Item Sequence [positio ordo]';
COMMENT ON COLUMN pp.afpo.gen3 IS 'OIHANTYPI — Excise Duty Handling Type [genus]';

CREATE TABLE IF NOT EXISTS pp.afru (
  cli char(3),
  cnf_num_ope varchar(10),
  cnf_nmr_tmp varchar(8),
  cnf_die date,
  nom_psn_cnf varchar(12),
  cnf_tmp time,
  die_ult date,
  nom_psn_mut varchar(12),
  din date,
  obi_sto_cpc varchar(8),
  ofc_loc_cmp varchar(4),
  cnf_txt_adn varchar(40),
  acl_ops_mra numeric(7,1),
  uni_ops_acl varchar(3),
  acl_mra_cnf numeric(5,1),
  uni_acl_mra varchar(3),
  nps_cnf varchar(8),
  die_ini date,
  tmp_ini time,
  die_fin date,
  tmp_fin time,
  itn_num_mnd varchar(10),
  nmr_mnd_ope varchar(8),
  mnd_num_tmp varchar(12),
  ope_act_num varchar(4),
  cnf_idx varchar(1),
  idx_doc_tmp varchar(1),
  cnf_nmr varchar(8),
  CONSTRAINT afru_pk PRIMARY KEY (cli, cnf_num_ope, cnf_nmr_tmp)
);
COMMENT ON TABLE pp.afru IS 'AFRU — Order Completion Confirmations — the SAP analogue for the CDK twin''s technician time-punch: confirmation number and counter, the order/operation the time was punched against, work centre (via the object-ID/capacity linkage), personnel number, actual duration and unit, start/finish date and time, posting date, and the reversal indicator. SAP''s real AFRU carries well over 100 fields, most of them PDC (plant data collection), business-process (CO-PA), and mill-industry extension columns with no analogue in a dealer time-punch; this definition carries the confirmation identity, order/operation lin';
COMMENT ON COLUMN pp.afru.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pp.afru.cnf_num_ope IS 'RUECK — Completion confirmation number for the operation — the CDK analogue''s time-punch confirmation number [confirmatio numerus operatio]';
COMMENT ON COLUMN pp.afru.cnf_nmr_tmp IS 'RMZHL — Confirmation counter — the CDK analogue''s time-punch line/sequence number [confirmatio numerator tempus]';
COMMENT ON COLUMN pp.afru.cnf_die IS 'ERSDA — Confirmation entry date [confirmatio dies]';
COMMENT ON COLUMN pp.afru.nom_psn_cnf IS 'ERNAM — Name of the person who entered the confirmation [nomen persona confirmatio]';
COMMENT ON COLUMN pp.afru.cnf_tmp IS 'ERZET — Confirmation entry time [confirmatio tempus]';
COMMENT ON COLUMN pp.afru.die_ult IS 'LAEDA — Date of Last Change [dies ultimus]';
COMMENT ON COLUMN pp.afru.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pp.afru.din IS 'BUDAT — Posting date [dies inscriptionis]';
COMMENT ON COLUMN pp.afru.obi_sto_cpc IS 'ARBID — Object ID — the work centre / capacity object the confirmed time was booked against, the CDK analogue''s work-centre/bay reference [obiectum statio operis capacitas]';
COMMENT ON COLUMN pp.afru.ofc_loc_cmp IS 'WERKS — Plant — the CDK analogue''s rooftop/location field [officina locus campus]';
COMMENT ON COLUMN pp.afru.cnf_txt_adn IS 'LTXA1 — Confirmation text — the CDK analogue''s punch/labour-line free-text note [confirmatio textus adnotatio]';
COMMENT ON COLUMN pp.afru.acl_ops_mra IS 'ISMNW — Actual work — the CDK analogue''s actual duration value [actualis opus mora]';
COMMENT ON COLUMN pp.afru.uni_ops_acl IS 'ISMNE — Unit for work — the CDK analogue''s actual duration unit [unitas opus actualis]';
COMMENT ON COLUMN pp.afru.acl_mra_cnf IS 'IDAUR — Actual Duration for Confirmation [actualis mora confirmatio]';
COMMENT ON COLUMN pp.afru.uni_acl_mra IS 'IDAUE — Unit for actual duration [unitas actualis mora]';
COMMENT ON COLUMN pp.afru.nps_cnf IS 'PERNR — Personnel number — the technician who booked the confirmation, keys to PA0001-PERNR [numerus personae confirmatio]';
COMMENT ON COLUMN pp.afru.die_ini IS 'ISDD — Confirmed date for start of execution — the CDK analogue''s punch-in date [dies initium]';
COMMENT ON COLUMN pp.afru.tmp_ini IS 'ISDZ — Confirmed time for ''Execution start'' — the CDK analogue''s punch-in time [tempus initium]';
COMMENT ON COLUMN pp.afru.die_fin IS 'IEDD — Confirmed date for execution finish — the CDK analogue''s punch-out date [dies finis]';
COMMENT ON COLUMN pp.afru.tmp_fin IS 'IEDZ — Confirmed time for ''Execution finish'' — the CDK analogue''s punch-out time [tempus finis]';
COMMENT ON COLUMN pp.afru.itn_num_mnd IS 'AUFPL — Routing number of operations in the order [itinerarium numerus mandatum]';
COMMENT ON COLUMN pp.afru.nmr_mnd_ope IS 'APLZL — General counter for order — links to the AFVC operation this confirmation was posted against [numerator mandatum operatio]';
COMMENT ON COLUMN pp.afru.mnd_num_tmp IS 'AUFNR — Order Number — the repair order this time punch was booked against, keys to AUFK-AUFNR [mandatum numerus tempus]';
COMMENT ON COLUMN pp.afru.ope_act_num IS 'VORNR — Operation/Activity Number — the specific labour line/operation within the order this punch confirms [operatio actio numerus]';
COMMENT ON COLUMN pp.afru.cnf_idx IS 'AUERU — Partial/Final Confirmation indicator [confirmatio index]';
COMMENT ON COLUMN pp.afru.idx_doc_tmp IS 'STOKZ — Indicator: Document Has Been Reversed — the CDK analogue''s time-punch reversal indicator [index documentum tempus]';
COMMENT ON COLUMN pp.afru.cnf_nmr IS 'STZHL — Confirmation counter of cancelled confirmation — points at the RMZHL of the confirmation this one reverses [confirmatio numerator]';

CREATE TABLE IF NOT EXISTS pp.afvc (
  cli char(3),
  itn_num_mnd varchar(10),
  nmr_mnd varchar(8),
  ord varchar(6),
  num_ixp varchar(8),
  cts_nmr varchar(2),
  ixp_gen varchar(1),
  vintv numeric(3,0),
  clv_ixp_cts varchar(8),
  nmr varchar(8),
  ope_act_num varchar(4),
  clv varchar(4),
  obi_sbs varchar(8),
  pdest varchar(4),
  ofc varchar(4),
  nrm_txt_clv varchar(7),
  ope_txt varchar(40),
  dsc varchar(40),
  lng_clv char(1),
  gen_ixp varchar(1),
  cts_ixp varchar(8),
  cts_nmr_ixp varchar(2),
  ord_itn varchar(6),
  nrm_val_clv varchar(4),
  act_gen varchar(6),
  act_gen2 varchar(6),
  act_gen3 varchar(6),
  act_gen4 varchar(6),
  act_gen5 varchar(6),
  act_gen6 varchar(6),
  gen_nrm_val varchar(5),
  die_nrm_val varchar(4),
  rfr_num_nrm varchar(6),
  nrm_val varchar(5),
  num_tmp numeric(3,0),
  sal_gen varchar(4),
  num_cnf varchar(3),
  qualf varchar(2),
  num numeric(5,2),
  cts_ctg varchar(10),
  cts_clv varchar(10),
  gen_clv varchar(2),
  aufak numeric(5,3),
  sal_cts varchar(3),
  uemus varchar(1),
  uekan varchar(1),
  idx_prd varchar(1),
  spmus varchar(1),
  num2 numeric(3,0),
  idx varchar(1),
  ope_act varchar(2),
  num_ope varchar(8),
  cpa varchar(10),
  rat_num_ven varchar(10),
  pre numeric(11,2),
  pre_uni numeric(5,0),
  smp_elm varchar(10),
  cvm varchar(5),
  num_tin varchar(10),
  tin_ctg varchar(1),
  oem varchar(4),
  cts varchar(3),
  idx2 varchar(1),
  idx_pre varchar(1),
  mat_cts varchar(9),
  idx_mra varchar(1),
  num3 smallint,
  ops smallint,
  mlstn varchar(5),
  pri varchar(2),
  soc varchar(4),
  csm varchar(10),
  amd_csm varchar(4),
  clv2 varchar(1),
  act_gen7 varchar(6),
  act numeric(11,2),
  ord2 varchar(6),
  cnf_num_ope varchar(10),
  cnf_nmr varchar(8),
  ops_elm_eop varchar(8),
  obi_num varchar(22),
  acl_num numeric(3,0),
  cpc_tbl varchar(12),
  nmr2 varchar(8),
  pem_num varchar(10),
  pos_num_pem varchar(5),
  idx_act varchar(1),
  idx_act2 varchar(1),
  idx_act3 varchar(1),
  idx_act4 varchar(1),
  idx_act5 varchar(1),
  idx_act6 varchar(1),
  idx3 varchar(1),
  kalid varchar(2),
  act2 varchar(1),
  ope_rfr varchar(8),
  cnd varchar(1),
  istru varchar(18),
  ctg varchar(1),
  ixm varchar(8),
  pos_num varchar(8),
  nmr3 varchar(8),
  num4 varchar(4),
  ebort varchar(20),
  ofc_mnd_ret varchar(8),
  idx_ops varchar(1),
  pri2 varchar(1),
  nmr_mnd2 varchar(8),
  idx4 varchar(1),
  phseq varchar(2),
  num_obi varchar(18),
  vis varchar(2),
  isp varchar(1),
  obi_gen varchar(2),
  obi varchar(8),
  cpc_ctg varchar(3),
  grd_ope_tmp varchar(1),
  txt_num varchar(12),
  subsys varchar(6),
  nrm_eop varchar(8),
  num5 varchar(10),
  trb varchar(15),
  obi_cls varchar(2),
  ang varchar(4),
  clu varchar(10),
  cns varchar(1),
  tmp varchar(1),
  qnt_cnf varchar(1),
  qnt_rfr varchar(1),
  rfr_tmp_qnt varchar(1),
  idx5 varchar(1),
  ope_cpa_asg varchar(1),
  num6 varchar(12),
  obi_num2 varchar(18),
  pnd numeric(8,0),
  acl_obi varchar(8),
  acl_ofc varchar(4),
  ord_num_ope varchar(14),
  ope integer,
  dem_num varchar(10),
  pos_num_dem varchar(5),
  mrc_psn varchar(12),
  ablad varchar(25),
  act_rat_prp varchar(1),
  idx6 varchar(1),
  clv3 varchar(6),
  kalsm varchar(6),
  pem_act_fin varchar(1),
  idx_rat_asg varchar(1),
  obi_mon_ret varchar(5),
  nom varchar(12),
  rqs_num varchar(10),
  idx_tin varchar(1),
  nps varchar(8),
  idx7 varchar(1),
  isp_gen varchar(8),
  sgn varchar(1),
  rpm numeric(9,5),
  idx_act_prd varchar(1),
  fac_cns_num varchar(10),
  idx8 varchar(1),
  obi2 varchar(1),
  klvar varchar(4),
  smp_num varchar(12),
  mnd varchar(10),
  pos_mnd varchar(5),
  mat_cns numeric(11,2),
  prz01 varchar(12),
  rfr varchar(20),
  afn varchar(16),
  nrm varchar(12),
  rfr_elm varchar(40),
  rfr_rlt varchar(20),
  clv_ope varchar(48),
  clv_itn varchar(6),
  frm bytea,
  obi_num3 varchar(22),
  sta smallint,
  num_mnd varchar(12),
  idx_trd varchar(1),
  idx9 varchar(1),
  lcf varchar(30),
  inm_num varchar(18),
  tmp2 numeric(15,0),
  CONSTRAINT afvc_pk PRIMARY KEY (cli, itn_num_mnd, nmr_mnd)
);
COMMENT ON TABLE pp.afvc IS 'AFVC — Operation Within an Order — production order operation/activity detail (work center, control key, standard values, confirmations). Terminal table of the production order spine.';
COMMENT ON COLUMN pp.afvc.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pp.afvc.itn_num_mnd IS 'AUFPL — Routing number of operations in the order [itinerarium numerus mandatum]';
COMMENT ON COLUMN pp.afvc.nmr_mnd IS 'APLZL — General counter for order [numerator mandatum]';
COMMENT ON COLUMN pp.afvc.ord IS 'PLNFL — Sequence [ordo]';
COMMENT ON COLUMN pp.afvc.num_ixp IS 'PLNKN — Number of the task list node [numerus index pensorum]';
COMMENT ON COLUMN pp.afvc.cts_nmr IS 'PLNAL — Group Counter [coetus numerator]';
COMMENT ON COLUMN pp.afvc.ixp_gen IS 'PLNTY — Task List Type [index pensorum genus]';
COMMENT ON COLUMN pp.afvc.vintv IS 'VINTV — Increment between referenced operations';
COMMENT ON COLUMN pp.afvc.clv_ixp_cts IS 'PLNNR — Key for Task List Group [clavis index pensorum coetus]';
COMMENT ON COLUMN pp.afvc.nmr IS 'ZAEHL — Internal counter [numerator]';
COMMENT ON COLUMN pp.afvc.ope_act_num IS 'VORNR — Operation/Activity Number [operatio actio numerus]';
COMMENT ON COLUMN pp.afvc.clv IS 'STEUS — Control key [clavis]';
COMMENT ON COLUMN pp.afvc.obi_sbs IS 'ARBID — Object ID of the resource [obiectum subsidium]';
COMMENT ON COLUMN pp.afvc.pdest IS 'PDEST — Printer for shop papers';
COMMENT ON COLUMN pp.afvc.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN pp.afvc.nrm_txt_clv IS 'KTSCH — Standard text key [norma textus clavis]';
COMMENT ON COLUMN pp.afvc.ope_txt IS 'LTXA1 — Operation short text [operatio textus]';
COMMENT ON COLUMN pp.afvc.dsc IS 'LTXA2 — Second line of the description [descriptio]';
COMMENT ON COLUMN pp.afvc.lng_clv IS 'TXTSP — Language Key [lingua clavis]';
COMMENT ON COLUMN pp.afvc.gen_ixp IS 'VPLTY — Type of the referenced task list [genus index pensorum]';
COMMENT ON COLUMN pp.afvc.cts_ixp IS 'VPLNR — Group of the referenced task list [coetus index pensorum]';
COMMENT ON COLUMN pp.afvc.cts_nmr_ixp IS 'VPLAL — Group counter of the referenced task list [coetus numerator index pensorum]';
COMMENT ON COLUMN pp.afvc.ord_itn IS 'VPLFL — Referenced sequence in routing [ordo itinerarium]';
COMMENT ON COLUMN pp.afvc.nrm_val_clv IS 'VGWTS — Standard value key [norma valor clavis]';
COMMENT ON COLUMN pp.afvc.act_gen IS 'LAR01 — Activity Type [actio genus]';
COMMENT ON COLUMN pp.afvc.act_gen2 IS 'LAR02 — Activity Type [actio genus]';
COMMENT ON COLUMN pp.afvc.act_gen3 IS 'LAR03 — Activity Type [actio genus]';
COMMENT ON COLUMN pp.afvc.act_gen4 IS 'LAR04 — Activity Type [actio genus]';
COMMENT ON COLUMN pp.afvc.act_gen5 IS 'LAR05 — Activity Type [actio genus]';
COMMENT ON COLUMN pp.afvc.act_gen6 IS 'LAR06 — Activity Type [actio genus]';
COMMENT ON COLUMN pp.afvc.gen_nrm_val IS 'ZERMA — Type of standard value calculation [genus norma valor]';
COMMENT ON COLUMN pp.afvc.die_nrm_val IS 'ZGDAT — Date when the standard value was calculated [dies norma valor]';
COMMENT ON COLUMN pp.afvc.rfr_num_nrm IS 'ZCODE — Reference number for standard value code [referentia numerus norma]';
COMMENT ON COLUMN pp.afvc.nrm_val IS 'ZULNR — Basis for standard value calculation [norma valor]';
COMMENT ON COLUMN pp.afvc.num_tmp IS 'LOANZ — Number of Time Tickets [numerus tempus]';
COMMENT ON COLUMN pp.afvc.sal_gen IS 'LOART — Wage Type [salarium genus]';
COMMENT ON COLUMN pp.afvc.num_cnf IS 'RSANZ — Number of confirmation slips [numerus confirmatio]';
COMMENT ON COLUMN pp.afvc.qualf IS 'QUALF — Suitability';
COMMENT ON COLUMN pp.afvc.num IS 'ANZMA — Number of employees [numerus]';
COMMENT ON COLUMN pp.afvc.cts_ctg IS 'RFGRP — Setup group category [coetus categoria]';
COMMENT ON COLUMN pp.afvc.cts_clv IS 'RFSCH — Setup group key [coetus clavis]';
COMMENT ON COLUMN pp.afvc.gen_clv IS 'RASCH — Setup Type Key [genus clavis]';
COMMENT ON COLUMN pp.afvc.aufak IS 'AUFAK — Scrap factor';
COMMENT ON COLUMN pp.afvc.sal_cts IS 'LOGRP — Wage group [salarium coetus]';
COMMENT ON COLUMN pp.afvc.uemus IS 'UEMUS — Required overlapping';
COMMENT ON COLUMN pp.afvc.uekan IS 'UEKAN — Optional overlapping';
COMMENT ON COLUMN pp.afvc.idx_prd IS 'FLIES — Indicator: continuous flow production [index productio]';
COMMENT ON COLUMN pp.afvc.spmus IS 'SPMUS — Required splitting';
COMMENT ON COLUMN pp.afvc.num2 IS 'SPLIM — Maximum number of splits [numerus]';
COMMENT ON COLUMN pp.afvc.idx IS 'ABLIPKZ — Indicator: simultaneous teardown and wait [index]';
COMMENT ON COLUMN pp.afvc.ope_act IS 'RSTRA — Reduction strategy per operation/activity [operatio actio]';
COMMENT ON COLUMN pp.afvc.num_ope IS 'SUMNR — Node number of the superior operation [numerus operatio]';
COMMENT ON COLUMN pp.afvc.cpa IS 'SORTL — Sort Term for Non-Stock Info Records [copia]';
COMMENT ON COLUMN pp.afvc.rat_num_ven IS 'LIFNR — Account Number of Vendor or Creditor [ratio numerus venditor]';
COMMENT ON COLUMN pp.afvc.pre IS 'PREIS — Price [pretium]';
COMMENT ON COLUMN pp.afvc.pre_uni IS 'PEINH — Price Unit [pretium unitas]';
COMMENT ON COLUMN pp.afvc.smp_elm IS 'SAKTO — Cost Element [sumptus elementum]';
COMMENT ON COLUMN pp.afvc.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN pp.afvc.num_tin IS 'INFNR — Number of Purchasing Info Record [numerus tabula informationis]';
COMMENT ON COLUMN pp.afvc.tin_ctg IS 'ESOKZ — Purchasing info record category [tabula informationis categoria]';
COMMENT ON COLUMN pp.afvc.oem IS 'EKORG — Purchasing Organization [organizatio emptionis]';
COMMENT ON COLUMN pp.afvc.cts IS 'EKGRP — Purchasing group for external processing [coetus]';
COMMENT ON COLUMN pp.afvc.idx2 IS 'KZLGF — Indicator: fixed lot external processing [index]';
COMMENT ON COLUMN pp.afvc.idx_pre IS 'KZWRTF — Indicator: Fixed price for external processing [index pretium]';
COMMENT ON COLUMN pp.afvc.mat_cts IS 'MATKL — Material Group [materia coetus]';
COMMENT ON COLUMN pp.afvc.idx_mra IS 'DDEHN — Indicator: flexible duration [index mora]';
COMMENT ON COLUMN pp.afvc.num3 IS 'ANZZL — Number of capacities required [numerus]';
COMMENT ON COLUMN pp.afvc.ops IS 'PRZNT — Work percentage [opus]';
COMMENT ON COLUMN pp.afvc.mlstn IS 'MLSTN — Usage';
COMMENT ON COLUMN pp.afvc.pri IS 'PPRIO — Priority [prioritas]';
COMMENT ON COLUMN pp.afvc.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN pp.afvc.csm IS 'ANFKO — Requesting cost center [centrum sumptus]';
COMMENT ON COLUMN pp.afvc.amd_csm IS 'ANFKOKRS — Controlling area of the requesting cost center [area moderationis centrum sumptus]';
COMMENT ON COLUMN pp.afvc.clv2 IS 'INDET — Key for calculation [clavis]';
COMMENT ON COLUMN pp.afvc.act_gen7 IS 'LARNT — Activity Type [actio genus]';
COMMENT ON COLUMN pp.afvc.act IS 'PRKST — Costs in the activity [actio]';
COMMENT ON COLUMN pp.afvc.ord2 IS 'APLFL — Sequence [ordo]';
COMMENT ON COLUMN pp.afvc.cnf_num_ope IS 'RUECK — Completion confirmation number for the operation [confirmatio numerus operatio]';
COMMENT ON COLUMN pp.afvc.cnf_nmr IS 'RMZHL — Confirmation counter [confirmatio numerator]';
COMMENT ON COLUMN pp.afvc.ops_elm_eop IS 'PROJN — Work breakdown structure element (WBS element) [opus elementum elementum operis]';
COMMENT ON COLUMN pp.afvc.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN pp.afvc.acl_num IS 'SPANZ — Actual number of splits [actualis numerus]';
COMMENT ON COLUMN pp.afvc.cpc_tbl IS 'BEDID — ID of the capacity requirements record [capacitas tabula]';
COMMENT ON COLUMN pp.afvc.nmr2 IS 'BEDZL — Internal counter [numerator]';
COMMENT ON COLUMN pp.afvc.pem_num IS 'BANFN — Purchase requisition number [petitio emptionis numerus]';
COMMENT ON COLUMN pp.afvc.pos_num_pem IS 'BNFPO — Item number of the purchase requisition in the order [positio numerus petitio emptionis]';
COMMENT ON COLUMN pp.afvc.idx_act IS 'LEK01 — Indicator: No remaining activity expected [index actio]';
COMMENT ON COLUMN pp.afvc.idx_act2 IS 'LEK02 — Indicator: No remaining activity expected [index actio]';
COMMENT ON COLUMN pp.afvc.idx_act3 IS 'LEK03 — Indicator: No remaining activity expected [index actio]';
COMMENT ON COLUMN pp.afvc.idx_act4 IS 'LEK04 — Indicator: No remaining activity expected [index actio]';
COMMENT ON COLUMN pp.afvc.idx_act5 IS 'LEK05 — Indicator: No remaining activity expected [index actio]';
COMMENT ON COLUMN pp.afvc.idx_act6 IS 'LEK06 — Indicator: No remaining activity expected [index actio]';
COMMENT ON COLUMN pp.afvc.idx3 IS 'SELKZ — Selection indicator for costing line items [index]';
COMMENT ON COLUMN pp.afvc.kalid IS 'KALID — Factory Calendar';
COMMENT ON COLUMN pp.afvc.act2 IS 'FRSP — Earliest possible activity / Latest possible activity [actio]';
COMMENT ON COLUMN pp.afvc.ope_rfr IS 'STDKN — Node of operation within reference operation set [operatio referentia]';
COMMENT ON COLUMN pp.afvc.cnd IS 'ANLZU — Syst.Condition [condicio]';
COMMENT ON COLUMN pp.afvc.istru IS 'ISTRU — Assembly';
COMMENT ON COLUMN pp.afvc.ctg IS 'ISTTY — BOM category [categoria]';
COMMENT ON COLUMN pp.afvc.ixm IS 'ISTNR — Bill of material [index materiarum]';
COMMENT ON COLUMN pp.afvc.pos_num IS 'ISTKN — BOM item node number [positio numerus]';
COMMENT ON COLUMN pp.afvc.nmr3 IS 'ISTPO — Internal counter [numerator]';
COMMENT ON COLUMN pp.afvc.num4 IS 'IUPOZ — Subitem Number [numerus]';
COMMENT ON COLUMN pp.afvc.ebort IS 'EBORT — Installation Point for Subitem';
COMMENT ON COLUMN pp.afvc.ofc_mnd_ret IS 'VERTL — Distr.cap.reqmts (plant maint.,process order, network) [officina mandatum rete]';
COMMENT ON COLUMN pp.afvc.idx_ops IS 'LEKNW — Indicator: No Remaining Work Expected [index opus]';
COMMENT ON COLUMN pp.afvc.pri2 IS 'NPRIO — Priority [prioritas]';
COMMENT ON COLUMN pp.afvc.nmr_mnd2 IS 'PVZKN — General counter for order [numerator mandatum]';
COMMENT ON COLUMN pp.afvc.idx4 IS 'PHFLG — Indicator: Phase [index]';
COMMENT ON COLUMN pp.afvc.phseq IS 'PHSEQ — Control Recipe Destination';
COMMENT ON COLUMN pp.afvc.num_obi IS 'KNOBJ — Number of Object with Assigned Dependencies [numerus obiectum]';
COMMENT ON COLUMN pp.afvc.vis IS 'ERFSICHT — Recording View [visus]';
COMMENT ON COLUMN pp.afvc.isp IS 'QPPKTABS — Flow Variants for Inspection Point Completion [inspectio]';
COMMENT ON COLUMN pp.afvc.obi_gen IS 'OTYPE — Object Type [obiectum genus]';
COMMENT ON COLUMN pp.afvc.obi IS 'OBJEKTID — Object ID [obiectum]';
COMMENT ON COLUMN pp.afvc.cpc_ctg IS 'QLKAPAR — Capacity category [capacitas categoria]';
COMMENT ON COLUMN pp.afvc.grd_ope_tmp IS 'RSTUF — Reduction level which reduces operation lead time [gradus operatio tempus]';
COMMENT ON COLUMN pp.afvc.txt_num IS 'NPTXTKY — Internal text number (12-character) [textus numerus]';
COMMENT ON COLUMN pp.afvc.subsys IS 'SUBSYS — Subsystem Identifier for QM Subsystem Interface';
COMMENT ON COLUMN pp.afvc.nrm_eop IS 'PSPNR — Standard WBS element [norma elementum operis]';
COMMENT ON COLUMN pp.afvc.num5 IS 'PACKNO — Package number [numerus]';
COMMENT ON COLUMN pp.afvc.trb IS 'TXJCD — Tax Jurisdiction [tributum]';
COMMENT ON COLUMN pp.afvc.obi_cls IS 'SCOPE — Object Class [obiectum classis]';
COMMENT ON COLUMN pp.afvc.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN pp.afvc.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN pp.afvc.cns IS 'NO_DISP — Effective for Materials Planning [consilium]';
COMMENT ON COLUMN pp.afvc.tmp IS 'QKZPRZEIT — Interval = Time (Time-Related) [tempus]';
COMMENT ON COLUMN pp.afvc.qnt_cnf IS 'QKZZTMG1 — Quantity Confirmation for Each Partial Lot [quantitas confirmatio]';
COMMENT ON COLUMN pp.afvc.qnt_rfr IS 'QKZPRMENG — Creation Cycle = Quantity (Quantity-Reference) [quantitas referentia]';
COMMENT ON COLUMN pp.afvc.rfr_tmp_qnt IS 'QKZPRFREI — Interval Without Reference to Time or Quantity [referentia tempus quantitas]';
COMMENT ON COLUMN pp.afvc.idx5 IS 'KZFEAT — Indicator Is Not Used Currently [index]';
COMMENT ON COLUMN pp.afvc.ope_cpa_asg IS 'QKZTLSBEST — Operation with Stock-Related Partial Lot Assignment [operatio copia assignatio]';
COMMENT ON COLUMN pp.afvc.num6 IS 'AENNR — Change Number [numerus]';
COMMENT ON COLUMN pp.afvc.obi_num2 IS 'CUOBJ_ARB — Configuration (internal object number) [obiectum numerus]';
COMMENT ON COLUMN pp.afvc.pnd IS 'EVGEW — Aggregation weight for POC (PS progress) [pondus]';
COMMENT ON COLUMN pp.afvc.acl_obi IS 'ARBII — Actual operating resources object identification [actualis obiectum]';
COMMENT ON COLUMN pp.afvc.acl_ofc IS 'WERKI — Actual plant [actualis officina]';
COMMENT ON COLUMN pp.afvc.ord_num_ope IS 'CY_SEQNRV — Sequence number operation [ordo numerus operatio]';
COMMENT ON COLUMN pp.afvc.ope IS 'KAPT_PUFFR — Operation floats after finite scheduling (in seconds) [operatio]';
COMMENT ON COLUMN pp.afvc.dem_num IS 'EBELN — Purchasing Document Number [documentum emptionis numerus]';
COMMENT ON COLUMN pp.afvc.pos_num_dem IS 'EBELP — Item Number of Purchasing Document [positio numerus documentum emptionis]';
COMMENT ON COLUMN pp.afvc.mrc_psn IS 'WEMPF — Goods Recipient/Ship-To Party [merces persona]';
COMMENT ON COLUMN pp.afvc.ablad IS 'ABLAD — Unloading Point';
COMMENT ON COLUMN pp.afvc.act_rat_prp IS 'CLASF — Ind.: Take Activity Into Account for Project Summarization [actio ratio propositum]';
COMMENT ON COLUMN pp.afvc.idx6 IS 'FRUNV — Indicator: External procurement data incomplete [index]';
COMMENT ON COLUMN pp.afvc.clv3 IS 'ZSCHL — Overhead key [clavis]';
COMMENT ON COLUMN pp.afvc.kalsm IS 'KALSM — Costing Sheet';
COMMENT ON COLUMN pp.afvc.pem_act_fin IS 'SCHED_END — Ind.: Purchase requisition at activity finish date [petitio emptionis actio finis]';
COMMENT ON COLUMN pp.afvc.idx_rat_asg IS 'NETZKONT — Indicator for the account assignment of a network(hdr/act.) [index ratio assignatio]';
COMMENT ON COLUMN pp.afvc.obi_mon_ret IS 'OWAER — Object currency for network activity [obiectum moneta rete]';
COMMENT ON COLUMN pp.afvc.nom IS 'AFNAM — Name of Requisitioner/Requester [nomen]';
COMMENT ON COLUMN pp.afvc.rqs_num IS 'BEDNR — Requirement Tracking Number [requisitum numerus]';
COMMENT ON COLUMN pp.afvc.idx_tin IS 'KZFIX — Indicator: Purchasing info record data are fixed [index tabula informationis]';
COMMENT ON COLUMN pp.afvc.nps IS 'PERNR — Personnel number [numerus personae]';
COMMENT ON COLUMN pp.afvc.idx7 IS 'FRDLB — Indicator: Externally processed op. with subcontracting [index]';
COMMENT ON COLUMN pp.afvc.isp_gen IS 'QPART — Inspection Type [inspectio genus]';
COMMENT ON COLUMN pp.afvc.sgn IS 'LOEKZ — Deletion flag [signum]';
COMMENT ON COLUMN pp.afvc.rpm IS 'WKURS — Exchange Rate [ratio permutationis]';
COMMENT ON COLUMN pp.afvc.idx_act_prd IS 'PROD_ACT — Indicator: Activity is a production activity [index actio productio]';
COMMENT ON COLUMN pp.afvc.fac_cns_num IS 'FPLNR — Billing plan number / invoicing plan number [factura consilium numerus]';
COMMENT ON COLUMN pp.afvc.idx8 IS 'OBJTYPE — Change indicator [index]';
COMMENT ON COLUMN pp.afvc.obi2 IS 'CH_PROC — Process that has lead to the change of an object [obiectum]';
COMMENT ON COLUMN pp.afvc.klvar IS 'KLVAR — Costing Variant';
COMMENT ON COLUMN pp.afvc.smp_num IS 'KALNR — Cost Estimate Number for Cost Est. w/o Qty Structure [sumptus numerus]';
COMMENT ON COLUMN pp.afvc.mnd IS 'FORDN — Framework Order [mandatum]';
COMMENT ON COLUMN pp.afvc.pos_mnd IS 'FORDP — Item of framework order [positio mandatum]';
COMMENT ON COLUMN pp.afvc.mat_cns IS 'MAT_PRKST — Material planning in networks: primary costs [materia consilium]';
COMMENT ON COLUMN pp.afvc.prz01 IS 'PRZ01 — Business Process';
COMMENT ON COLUMN pp.afvc.rfr IS 'RFPNT — Reference point for BOM transfer [referentia]';
COMMENT ON COLUMN pp.afvc.afn IS 'FUNC_AREA — Functional Area [area functionis]';
COMMENT ON COLUMN pp.afvc.nrm IS 'TECHS — Parameter Variant/Standard Variant [norma]';
COMMENT ON COLUMN pp.afvc.rfr_elm IS 'ADPSP — Reference Element PM/PS [referentia elementum]';
COMMENT ON COLUMN pp.afvc.rfr_rlt IS 'RFIPPNT — Reference Point for Relationship Between iPPE and PS [referentia relatio]';
COMMENT ON COLUMN pp.afvc.clv_ope IS 'MES_OPERID — Key of an Operation from an ME System [clavis operatio]';
COMMENT ON COLUMN pp.afvc.clv_itn IS 'MES_STEPID — Key of a Step in a Routing (SAP ME) [clavis itinerarium]';
COMMENT ON COLUMN pp.afvc.frm IS '/CUM/CUGUID — UUID in X form (binary) [forma]';
COMMENT ON COLUMN pp.afvc.obi_num3 IS '/ISDFPS/OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN pp.afvc.sta IS 'AFVC_STATUS — Status Combination [status]';
COMMENT ON COLUMN pp.afvc.num_mnd IS 'MILL_OC_AUFNR_MO — Number of Combined Order [numerus mandatum]';
COMMENT ON COLUMN pp.afvc.idx_trd IS 'OIO_HOLD — Indicator: Hold Delivery Onshore [index traditio]';
COMMENT ON COLUMN pp.afvc.idx9 IS 'WTY_IND — Warranty indicator [index]';
COMMENT ON COLUMN pp.afvc.lcf IS 'TPLNR — Functional Location [locus functionalis]';
COMMENT ON COLUMN pp.afvc.inm_num IS 'EQUNR — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN pp.afvc.tmp2 IS 'CPD_UPDAT — Time Stamp [tempus]';

CREATE TABLE IF NOT EXISTS pp.mapl (
  cli char(3),
  mat_num varchar(18),
  ofc varchar(4),
  ixp_gen varchar(1),
  clv_ixp_cts varchar(8),
  cts_nmr varchar(2),
  nmr varchar(7),
  nmr2 varchar(8),
  vla_die date,
  sta varchar(12),
  num varchar(12),
  idx varchar(1),
  idx2 varchar(1),
  die_tbl_cre date,
  usr_cre_tbl varchar(12),
  mut date,
  nom_psn_mut varchar(12),
  ven_rat_num varchar(10),
  rat_num_emp varchar(10),
  cmp_emp_ixp varchar(20),
  dvd varchar(10),
  dvd_pos varchar(6),
  ops_elm_eop varchar(8),
  obi varchar(30),
  gen_obi varchar(2),
  CONSTRAINT mapl_pk PRIMARY KEY (cli, mat_num, ofc, ixp_gen, clv_ixp_cts, cts_nmr, nmr, nmr2, vla_die)
);
COMMENT ON TABLE pp.mapl IS 'MAPL — Assignment of Task Lists to Materials — links a material/plant to a task list group, group counter, and additional-criteria counter. Anchors which routing(s) a material can be produced against; consumed alongside PLKO/PLPO for routing resolution.';
COMMENT ON COLUMN pp.mapl.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pp.mapl.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN pp.mapl.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN pp.mapl.ixp_gen IS 'PLNTY — Task List Type [index pensorum genus]';
COMMENT ON COLUMN pp.mapl.clv_ixp_cts IS 'PLNNR — Key for Task List Group [clavis index pensorum coetus]';
COMMENT ON COLUMN pp.mapl.cts_nmr IS 'PLNAL — Group Counter [coetus numerator]';
COMMENT ON COLUMN pp.mapl.nmr IS 'ZKRIZ — Counter for additional criteria [numerator]';
COMMENT ON COLUMN pp.mapl.nmr2 IS 'ZAEHL — Internal counter [numerator]';
COMMENT ON COLUMN pp.mapl.vla_die IS 'DATUV — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN pp.mapl.sta IS 'TECHV — Technical status from [status]';
COMMENT ON COLUMN pp.mapl.num IS 'AENNR — Change Number [numerus]';
COMMENT ON COLUMN pp.mapl.idx IS 'LOEKZ — Deletion Indicator [index]';
COMMENT ON COLUMN pp.mapl.idx2 IS 'PARKZ — Indicator: inactive changes [index]';
COMMENT ON COLUMN pp.mapl.die_tbl_cre IS 'ANDAT — Date record created on [dies tabula creatus]';
COMMENT ON COLUMN pp.mapl.usr_cre_tbl IS 'ANNAM — User who created record [usor creatus tabula]';
COMMENT ON COLUMN pp.mapl.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pp.mapl.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pp.mapl.ven_rat_num IS 'LIFNR — Vendor Account Number [venditor ratio numerus]';
COMMENT ON COLUMN pp.mapl.rat_num_emp IS 'KUNR — Account number of customer [ratio numerus emptor]';
COMMENT ON COLUMN pp.mapl.cmp_emp_ixp IS 'SUCHFELD — Search Field for Customer-Specific Task List Selection [campus emptor index pensorum]';
COMMENT ON COLUMN pp.mapl.dvd IS 'VBELN — Sales Document [documentum venditionis]';
COMMENT ON COLUMN pp.mapl.dvd_pos IS 'POSNR — Sales Document Item [documentum venditionis positio]';
COMMENT ON COLUMN pp.mapl.ops_elm_eop IS 'PSPNR — Work breakdown structure element (WBS element) [opus elementum elementum operis]';
COMMENT ON COLUMN pp.mapl.obi IS 'MS_OBJECT — Object for Multiple Specifications [obiectum]';
COMMENT ON COLUMN pp.mapl.gen_obi IS 'MS_OBJTYPE — Type of Object for Multiple Specifications [genus obiectum]';

CREATE TABLE IF NOT EXISTS pp.mast (
  cli char(3),
  mat_num varchar(18),
  ofc varchar(4),
  stlan varchar(1),
  ixm varchar(8),
  stlal varchar(2),
  mgn numeric(13,3),
  mgn2 numeric(13,3),
  die_tbl_cre date,
  usr_cre_tbl varchar(12),
  mut date,
  nom_psn_mut varchar(12),
  idx_mat varchar(1),
  CONSTRAINT mast_pk PRIMARY KEY (cli, mat_num, ofc, stlan, ixm, stlal)
);
COMMENT ON TABLE pp.mast IS 'MAST — Material to BOM Link — connects a material/plant/BOM-usage to its bill of material number and alternative. Entry point of the BOM chain.';
COMMENT ON COLUMN pp.mast.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pp.mast.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN pp.mast.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN pp.mast.stlan IS 'STLAN — BOM Usage';
COMMENT ON COLUMN pp.mast.ixm IS 'STLNR — Bill of material [index materiarum]';
COMMENT ON COLUMN pp.mast.stlal IS 'STLAL — Alternative BOM';
COMMENT ON COLUMN pp.mast.mgn IS 'LOSVN — From Lot Size [magnitudo]';
COMMENT ON COLUMN pp.mast.mgn2 IS 'LOSBS — To Lot Size [magnitudo]';
COMMENT ON COLUMN pp.mast.die_tbl_cre IS 'ANDAT — Date record created on [dies tabula creatus]';
COMMENT ON COLUMN pp.mast.usr_cre_tbl IS 'ANNAM — User who created record [usor creatus tabula]';
COMMENT ON COLUMN pp.mast.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pp.mast.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pp.mast.idx_mat IS 'CSLTY — Indicator: configured material (material variant) [index materia]';

CREATE TABLE IF NOT EXISTS pp.mdkp (
  cli char(3),
  gen varchar(2),
  mat_num varchar(18),
  ofc varchar(4),
  cns varchar(3),
  num_mat_cns varchar(10),
  die date,
  idx varchar(1),
  idx2 varchar(1),
  idx3 varchar(1),
  idx4 varchar(1),
  idx5 varchar(1),
  idx6 varchar(1),
  idx7 varchar(1),
  idx8 varchar(1),
  idx9 varchar(1),
  idx10 varchar(1),
  idx11 varchar(1),
  idx12 varchar(1),
  mat_gen varchar(4),
  men varchar(3),
  grd_cod varchar(3),
  gen2 varchar(1),
  gen3 varchar(2),
  gen4 varchar(1),
  cns_prd_ofc varchar(4),
  gen5 varchar(2),
  disvf varchar(1),
  dispo varchar(3),
  cns2 varchar(3),
  cts varchar(3),
  mat_tmp numeric(3,0),
  amr_tmp numeric(3,0),
  tmp_mem numeric(3,0),
  fin_cns_tmp date,
  cns_tmp varchar(1),
  mgn_cns varchar(2),
  per varchar(1),
  mgn_idx_per varchar(1),
  num_are numeric(3,0),
  sec_cpa numeric(13,3),
  minbe numeric(13,3),
  cpa_grd numeric(13,3),
  mgn numeric(13,3),
  mgn2 numeric(13,3),
  mgn3 numeric(13,3),
  val_mem_qnt numeric(13,3),
  ofc_cpa_seg numeric(13,3),
  sum02 numeric(13,3),
  sum03 numeric(13,3),
  sum04 numeric(13,3),
  sum05 numeric(13,3),
  cpa numeric(13,3),
  msgid varchar(20),
  gen6 varchar(1),
  num varchar(3),
  msgv1 varchar(50),
  msgv2 varchar(50),
  msgv3 varchar(50),
  msgv4 varchar(50),
  cts2 varchar(4),
  anf varchar(2),
  cns3 varchar(3),
  qnt_mat_cns numeric(13,3),
  cns4 varchar(3),
  rdprf varchar(4),
  cpa2 numeric(4,1),
  pri_cpa numeric(4,1),
  idx13 varchar(1),
  die2 date,
  mat varchar(18),
  cts3 varchar(2),
  cts4 varchar(2),
  cts5 varchar(2),
  cts6 varchar(2),
  cts7 varchar(2),
  cts8 varchar(2),
  cts9 varchar(2),
  cts10 varchar(2),
  die3 date,
  idx14 varchar(1),
  sauft varchar(1),
  idx_mat varchar(1),
  sec_tmp_idx varchar(1),
  sec_tmp varchar(2),
  idx_pos_trd varchar(1),
  die4 date,
  sgn_cpa varchar(1),
  idx15 varchar(1),
  cflag varchar(1),
  prp_cpa varchar(1),
  rwpro varchar(3),
  per_sec_tmp varchar(3),
  ahdis varchar(1),
  cpa3 numeric(4,1),
  idx16 varchar(1),
  hanaon varchar(1),
  CONSTRAINT mdkp_pk PRIMARY KEY (cli, gen, mat_num, ofc, cns, num_mat_cns)
);
COMMENT ON TABLE pp.mdkp IS 'MDKP — MRP List Header — one row per material/plant/planning-scenario MRP list run (MRP date, exception-group selection indicators, MRP-relevant master data snapshot: MRP type, controller, lot-sizing, safety stock, discontinuation). The demand-side header record of what the system decided to make or buy; MDTB carries its line items. Wide table — carries the full field set as published by the source (91 fields), including all exception-group indicators, lot-size/safety-stock parameters, and message fields; no truncation applied.';
COMMENT ON COLUMN pp.mdkp.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pp.mdkp.gen IS 'DTART — Type of MRP list [genus]';
COMMENT ON COLUMN pp.mdkp.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN pp.mdkp.ofc IS 'PLWRK — Plant [officina]';
COMMENT ON COLUMN pp.mdkp.cns IS 'PLSCN — Planning Scenario of Long-Term Planning [consilium]';
COMMENT ON COLUMN pp.mdkp.num_mat_cns IS 'DTNUM — Number of material requirements planning table [numerus materia consilium]';
COMMENT ON COLUMN pp.mdkp.die IS 'DSDAT — MRP date [dies]';
COMMENT ON COLUMN pp.mdkp.idx IS 'BDBKZ — Selection indicator for processed MRP lists [index]';
COMMENT ON COLUMN pp.mdkp.idx2 IS 'SLKZ1 — Selection indicator for exception groups [index]';
COMMENT ON COLUMN pp.mdkp.idx3 IS 'SLKZ2 — Selection indicator for exception groups [index]';
COMMENT ON COLUMN pp.mdkp.idx4 IS 'SLKZ3 — Selection indicator for exception groups [index]';
COMMENT ON COLUMN pp.mdkp.idx5 IS 'SLKZ4 — Selection indicator for exception groups [index]';
COMMENT ON COLUMN pp.mdkp.idx6 IS 'SLKZ5 — Selection indicator for exception groups [index]';
COMMENT ON COLUMN pp.mdkp.idx7 IS 'SLKZ6 — Selection indicator for exception groups [index]';
COMMENT ON COLUMN pp.mdkp.idx8 IS 'SLKZ7 — Selection indicator for exception groups [index]';
COMMENT ON COLUMN pp.mdkp.idx9 IS 'SLKZ8 — Selection indicator for exception groups [index]';
COMMENT ON COLUMN pp.mdkp.idx10 IS 'VRKZ1 — Processing indicator 01 [index]';
COMMENT ON COLUMN pp.mdkp.idx11 IS 'VRKZ2 — Processing indicator 02 [index]';
COMMENT ON COLUMN pp.mdkp.idx12 IS 'VRKZ3 — Processing indicator - 03 [index]';
COMMENT ON COLUMN pp.mdkp.mat_gen IS 'MTART — Material Type [materia genus]';
COMMENT ON COLUMN pp.mdkp.men IS 'MEINS — Base Unit of Measure [mensura]';
COMMENT ON COLUMN pp.mdkp.grd_cod IS 'DISST — Low-Level Code [gradus codex]';
COMMENT ON COLUMN pp.mdkp.gen2 IS 'BESKZ — Procurement Type [genus]';
COMMENT ON COLUMN pp.mdkp.gen3 IS 'SOBSL — Special procurement type [genus]';
COMMENT ON COLUMN pp.mdkp.gen4 IS 'SOBES — Special procurement type [genus]';
COMMENT ON COLUMN pp.mdkp.cns_prd_ofc IS 'WRK02 — Planning/production plant [consilium productio officina]';
COMMENT ON COLUMN pp.mdkp.gen5 IS 'DISMM — MRP Type [genus]';
COMMENT ON COLUMN pp.mdkp.disvf IS 'DISVF — MRP procedure';
COMMENT ON COLUMN pp.mdkp.dispo IS 'DISPO — MRP Controller (Materials Planner)';
COMMENT ON COLUMN pp.mdkp.cns2 IS 'PLDIS — Planning controller (no longer used) [consilium]';
COMMENT ON COLUMN pp.mdkp.cts IS 'EKGRP — Purchasing Group [coetus]';
COMMENT ON COLUMN pp.mdkp.mat_tmp IS 'MTWZT — Material replenishment lead time [materia tempus]';
COMMENT ON COLUMN pp.mdkp.amr_tmp IS 'WEBAZ — Goods Receipt Processing Time in Days [acceptio mercium tempus]';
COMMENT ON COLUMN pp.mdkp.tmp_mem IS 'BEAZT — Processing time for purchase order proposal [tempus mandatum emptionis]';
COMMENT ON COLUMN pp.mdkp.fin_cns_tmp IS 'FIXTR — End of planning time fence (date) [finis consilium tempus]';
COMMENT ON COLUMN pp.mdkp.cns_tmp IS 'MFHKZ — Planning time fence set manually (MFXDT) [consilium tempus]';
COMMENT ON COLUMN pp.mdkp.mgn_cns IS 'DISLS — Lot size (materials planning) [magnitudo consilium]';
COMMENT ON COLUMN pp.mdkp.per IS 'LOSVF — Lot-sizing procedure for short-term period [periodus]';
COMMENT ON COLUMN pp.mdkp.mgn_idx_per IS 'LOSKZ — Lot-size indicator for the short-term period [magnitudo index periodus]';
COMMENT ON COLUMN pp.mdkp.num_are IS 'PERAZ — Number of periods for the short-term area [numerus area]';
COMMENT ON COLUMN pp.mdkp.sec_cpa IS 'EISBE — Safety Stock [securitas copia]';
COMMENT ON COLUMN pp.mdkp.minbe IS 'MINBE — Reorder Point';
COMMENT ON COLUMN pp.mdkp.cpa_grd IS 'HOEBE — Maximum stock level [copia gradus]';
COMMENT ON COLUMN pp.mdkp.mgn IS 'BSTMI — Minimum Lot Size [magnitudo]';
COMMENT ON COLUMN pp.mdkp.mgn2 IS 'BSTMA — Maximum Lot Size [magnitudo]';
COMMENT ON COLUMN pp.mdkp.mgn3 IS 'BSTFX — Fixed lot size [magnitudo]';
COMMENT ON COLUMN pp.mdkp.val_mem_qnt IS 'BSTRF — Rounding value for purchase order quantity [valor mandatum emptionis quantitas]';
COMMENT ON COLUMN pp.mdkp.ofc_cpa_seg IS 'SUM01 — Plant stock / only plant segment [officina copia segmentum]';
COMMENT ON COLUMN pp.mdkp.sum02 IS 'SUM02 — No longer used/do not use!!';
COMMENT ON COLUMN pp.mdkp.sum03 IS 'SUM03 — No longer used/do not use!!';
COMMENT ON COLUMN pp.mdkp.sum04 IS 'SUM04 — No longer used/do not use!!';
COMMENT ON COLUMN pp.mdkp.sum05 IS 'SUM05 — No longer used/do not use!!';
COMMENT ON COLUMN pp.mdkp.cpa IS 'NEGBS — Negative stock [copia]';
COMMENT ON COLUMN pp.mdkp.msgid IS 'MSGID — Message identification';
COMMENT ON COLUMN pp.mdkp.gen6 IS 'MSGAR — Message Type [genus]';
COMMENT ON COLUMN pp.mdkp.num IS 'MSGNR — Message number [numerus]';
COMMENT ON COLUMN pp.mdkp.msgv1 IS 'MSGV1 — Message variable 01';
COMMENT ON COLUMN pp.mdkp.msgv2 IS 'MSGV2 — Message variable 02';
COMMENT ON COLUMN pp.mdkp.msgv3 IS 'MSGV3 — Message variable 03';
COMMENT ON COLUMN pp.mdkp.msgv4 IS 'MSGV4 — Message variable 04';
COMMENT ON COLUMN pp.mdkp.cts2 IS 'DISGR — MRP Group [coetus]';
COMMENT ON COLUMN pp.mdkp.anf IS 'PERIV — Fiscal Year Variant [annus fiscalis]';
COMMENT ON COLUMN pp.mdkp.cns3 IS 'MRPPP — PPC planning calendar [consilium]';
COMMENT ON COLUMN pp.mdkp.qnt_mat_cns IS 'BDARF — Requirements quantity from material requirements planning [quantitas materia consilium]';
COMMENT ON COLUMN pp.mdkp.cns4 IS 'LFRHY — Planning cycle [consilium]';
COMMENT ON COLUMN pp.mdkp.rdprf IS 'RDPRF — Rounding Profile';
COMMENT ON COLUMN pp.mdkp.cpa2 IS 'BERW1 — Stock Days'' Supply Without Receipts [copia]';
COMMENT ON COLUMN pp.mdkp.pri_cpa IS 'BERW2 — First Receipt Days'' Supply [primus copia]';
COMMENT ON COLUMN pp.mdkp.idx13 IS 'KZAUS — Discontinuation indicator [index]';
COMMENT ON COLUMN pp.mdkp.die2 IS 'AUSDT — Effective-Out Date [dies]';
COMMENT ON COLUMN pp.mdkp.mat IS 'NFMAT — Follow-Up Material [materia]';
COMMENT ON COLUMN pp.mdkp.cts3 IS 'AUSZ1 — Exception group in the MRP list [coetus]';
COMMENT ON COLUMN pp.mdkp.cts4 IS 'AUSZ2 — Exception group in the MRP list [coetus]';
COMMENT ON COLUMN pp.mdkp.cts5 IS 'AUSZ3 — Exception group in the MRP list [coetus]';
COMMENT ON COLUMN pp.mdkp.cts6 IS 'AUSZ4 — Exception group in the MRP list [coetus]';
COMMENT ON COLUMN pp.mdkp.cts7 IS 'AUSZ5 — Exception group in the MRP list [coetus]';
COMMENT ON COLUMN pp.mdkp.cts8 IS 'AUSZ6 — Exception group in the MRP list [coetus]';
COMMENT ON COLUMN pp.mdkp.cts9 IS 'AUSZ7 — Exception group in the MRP list [coetus]';
COMMENT ON COLUMN pp.mdkp.cts10 IS 'AUSZ8 — Exception group in the MRP list [coetus]';
COMMENT ON COLUMN pp.mdkp.die3 IS 'BEADA — MRP list processing date [dies]';
COMMENT ON COLUMN pp.mdkp.idx14 IS 'NAUKZ — Indicator: new exception in the MRP list [index]';
COMMENT ON COLUMN pp.mdkp.sauft IS 'SAUFT — Ind.: Repetitive mfg allowed';
COMMENT ON COLUMN pp.mdkp.idx_mat IS 'KZPROMO — Indicator: Material in promotion [index materia]';
COMMENT ON COLUMN pp.mdkp.sec_tmp_idx IS 'SHFLG — Safety time indicator (with or without safety time) [securitas tempus index]';
COMMENT ON COLUMN pp.mdkp.sec_tmp IS 'SHZET — Safety time (in workdays) [securitas tempus]';
COMMENT ON COLUMN pp.mdkp.idx_pos_trd IS 'FABKZ — Indicator: Item Relevant to JIT Delivery Schedules [index positio traditio]';
COMMENT ON COLUMN pp.mdkp.die4 IS 'MFXDT — Manual firming date [dies]';
COMMENT ON COLUMN pp.mdkp.sgn_cpa IS 'BSKFL — Flag whether stock correction factors exist [signum copia]';
COMMENT ON COLUMN pp.mdkp.idx15 IS 'MAABC — ABC Indicator [index]';
COMMENT ON COLUMN pp.mdkp.cflag IS 'CFLAG — Aggregated MRP list';
COMMENT ON COLUMN pp.mdkp.prp_cpa IS 'GRREL — Relevant for requirements grouping for project stock [propositum copia]';
COMMENT ON COLUMN pp.mdkp.rwpro IS 'RWPRO — Range of coverage profile';
COMMENT ON COLUMN pp.mdkp.per_sec_tmp IS 'SHPRO — Period Profile for Safety Time [periodus securitas tempus]';
COMMENT ON COLUMN pp.mdkp.ahdis IS 'AHDIS — MRP relevancy for dependent requirements';
COMMENT ON COLUMN pp.mdkp.cpa3 IS 'BERW4 — Second Receipt Days'' Supply [copia]';
COMMENT ON COLUMN pp.mdkp.idx16 IS 'BADON — Indicator: BAdI is Active [index]';
COMMENT ON COLUMN pp.mdkp.hanaon IS 'HANAON — HANA Optimizations Active / Inactive';

CREATE TABLE IF NOT EXISTS pp.mdtb (
  cli char(3),
  num_mat_cns varchar(10),
  pos_num varchar(6),
  idx_cns_seg varchar(1),
  cns_seg_num varchar(20),
  die date,
  idx varchar(1),
  idx2 varchar(2),
  elm varchar(2),
  sta varchar(1),
  idx3 varchar(1),
  idx4 varchar(1),
  qnt numeric(13,3),
  qnt2 numeric(13,3),
  qnt3 numeric(13,3),
  trd_mnd_fin date,
  ini_ems_die date,
  die2 date,
  per_idx varchar(1),
  pvs_per varchar(6),
  amr_tmp numeric(3,0),
  idx_mgn_mnd varchar(1),
  idx_mnd varchar(1),
  gmd varchar(4),
  gen varchar(1),
  gen2 varchar(1),
  idx5 varchar(1),
  cns_gen varchar(1),
  clv varchar(2),
  cns_prd_ofc varchar(4),
  loc varchar(4),
  elm_num varchar(10),
  elm_pos varchar(6),
  lor_num_elm varchar(4),
  fns_num_mnd varchar(10),
  fns_pos_num varchar(6),
  fns_lor_num varchar(4),
  idx_elm varchar(1),
  die3 date,
  elm_num2 varchar(12),
  mat_num_grd varchar(18),
  elm2 varchar(2),
  vrs_num varchar(2),
  clv2 varchar(2),
  cpa_qnt numeric(13,3),
  mat_cns_seg varchar(2),
  vic_idx varchar(2),
  idx6 varchar(1),
  prd_mnd_sta varchar(1),
  qnt_cmp_cpa numeric(13,3),
  prd_vrs varchar(4),
  cns_ofc varchar(4),
  num varchar(8),
  grd varchar(2),
  idx7 varchar(1),
  idx8 varchar(1),
  cmp varchar(4),
  loc_cpa_mnd varchar(4),
  rqs varchar(2),
  rqs_pri varchar(3),
  CONSTRAINT mdtb_pk PRIMARY KEY (cli, num_mat_cns, pos_num)
);
COMMENT ON TABLE pp.mdtb IS 'MDTB — MRP Table Items — line items of an MRP list (MDKP header), one row per MRP element (planned order, purchase requisition, sales order, stock, etc.) with dates, quantities, and exception-message keys. The demand-side item record of what the system decided to make or buy. Wide table — carries the full field set as published by the source (60 fields), including all date/quantity/source-reference fields; no truncation applied.';
COMMENT ON COLUMN pp.mdtb.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pp.mdtb.num_mat_cns IS 'DTNUM — Number of material requirements planning table [numerus materia consilium]';
COMMENT ON COLUMN pp.mdtb.pos_num IS 'DTPOS — Item number of MRP list [positio numerus]';
COMMENT ON COLUMN pp.mdtb.idx_cns_seg IS 'PLAKZ — Indicator for planning segment [index consilium segmentum]';
COMMENT ON COLUMN pp.mdtb.cns_seg_num IS 'PLANR — Planning segment number [consilium segmentum numerus]';
COMMENT ON COLUMN pp.mdtb.die IS 'DAT00 — Receipt/Requirements date [dies]';
COMMENT ON COLUMN pp.mdtb.idx IS 'SORT1 — Sort indicator 01 [index]';
COMMENT ON COLUMN pp.mdtb.idx2 IS 'SORT2 — Sort indicator 02 [index]';
COMMENT ON COLUMN pp.mdtb.elm IS 'DELKZ — MRP element [elementum]';
COMMENT ON COLUMN pp.mdtb.sta IS 'VSTAT — Processing Status [status]';
COMMENT ON COLUMN pp.mdtb.idx3 IS 'VRFKZ — Availability indicator [index]';
COMMENT ON COLUMN pp.mdtb.idx4 IS 'PLUMI — Receipt/issue indicator [index]';
COMMENT ON COLUMN pp.mdtb.qnt IS 'MNG01 — Quantity received or quantity required [quantitas]';
COMMENT ON COLUMN pp.mdtb.qnt2 IS 'MNG02 — Variable scrap quantity [quantitas]';
COMMENT ON COLUMN pp.mdtb.qnt3 IS 'MNG03 — Shortage Quantity [quantitas]';
COMMENT ON COLUMN pp.mdtb.trd_mnd_fin IS 'DAT01 — Delivery/order finish date [traditio mandatum finis]';
COMMENT ON COLUMN pp.mdtb.ini_ems_die IS 'DAT02 — Start/release date [initium emissio dies]';
COMMENT ON COLUMN pp.mdtb.die2 IS 'DAT03 — Opening date [dies]';
COMMENT ON COLUMN pp.mdtb.per_idx IS 'PERKZ — Period Indicator [periodus index]';
COMMENT ON COLUMN pp.mdtb.pvs_per IS 'PRPER — Forecast period [praevisio periodus]';
COMMENT ON COLUMN pp.mdtb.amr_tmp IS 'WEBAZ — Goods Receipt Processing Time in Days [acceptio mercium tempus]';
COMMENT ON COLUMN pp.mdtb.idx_mgn_mnd IS 'FIX01 — Indicator: fixeing lot size in planned order [index magnitudo mandatum]';
COMMENT ON COLUMN pp.mdtb.idx_mnd IS 'FIX02 — Indicator: fixing explosion in planned order [index mandatum]';
COMMENT ON COLUMN pp.mdtb.gmd IS 'BAART — P.O./Order type [genus mandati]';
COMMENT ON COLUMN pp.mdtb.gen IS 'BESKZ — Procurement Type [genus]';
COMMENT ON COLUMN pp.mdtb.gen2 IS 'SOBES — Special procurement type [genus]';
COMMENT ON COLUMN pp.mdtb.idx5 IS 'UMSKZ — Special G/L Indicator [index]';
COMMENT ON COLUMN pp.mdtb.cns_gen IS 'PLART — Planning type [consilium genus]';
COMMENT ON COLUMN pp.mdtb.clv IS 'AUSSL — Exception message key [clavis]';
COMMENT ON COLUMN pp.mdtb.cns_prd_ofc IS 'WRK02 — Planning/production plant [consilium productio officina]';
COMMENT ON COLUMN pp.mdtb.loc IS 'LGORT — Storage Location [locus repositionis]';
COMMENT ON COLUMN pp.mdtb.elm_num IS 'DELNR — MRP element number [elementum numerus]';
COMMENT ON COLUMN pp.mdtb.elm_pos IS 'DELPS — MRP element item [elementum positio]';
COMMENT ON COLUMN pp.mdtb.lor_num_elm IS 'DELET — Schedule Line Number MRP Element [linea ordinis numerus elementum]';
COMMENT ON COLUMN pp.mdtb.fns_num_mnd IS 'AUFVR — Source number for order [fons numerus mandatum]';
COMMENT ON COLUMN pp.mdtb.fns_pos_num IS 'POSVR — Source item number [fons positio numerus]';
COMMENT ON COLUMN pp.mdtb.fns_lor_num IS 'EINVR — Source schedule line number [fons linea ordinis numerus]';
COMMENT ON COLUMN pp.mdtb.idx_elm IS 'UKZ01 — Indicator: MRP element can be brought forward [index elementum]';
COMMENT ON COLUMN pp.mdtb.die3 IS 'UMDAT — Rescheduling date [dies]';
COMMENT ON COLUMN pp.mdtb.elm_num2 IS 'DEL12 — MRP element number [elementum numerus]';
COMMENT ON COLUMN pp.mdtb.mat_num_grd IS 'BAUGR — Material number of higher-level assembly [materia numerus gradus]';
COMMENT ON COLUMN pp.mdtb.elm2 IS 'DELVR — MRP element [elementum]';
COMMENT ON COLUMN pp.mdtb.vrs_num IS 'VERSB — Version number for independent requirements [versio numerus]';
COMMENT ON COLUMN pp.mdtb.clv2 IS 'OLDSL — Key of the second exception message [clavis]';
COMMENT ON COLUMN pp.mdtb.cpa_qnt IS 'RDMNG — Excess stock quantity [copia quantitas]';
COMMENT ON COLUMN pp.mdtb.mat_cns_seg IS 'PLAAB — Material requirements planning segment [materia consilium segmentum]';
COMMENT ON COLUMN pp.mdtb.vic_idx IS 'TAG00 — Daily shift (sort indicator 0) [vicis index]';
COMMENT ON COLUMN pp.mdtb.idx6 IS 'ABEKZ — Exception indicator [index]';
COMMENT ON COLUMN pp.mdtb.prd_mnd_sta IS 'MDFST — Production order status: internal ind. for MRP [productio mandatum status]';
COMMENT ON COLUMN pp.mdtb.qnt_cmp_cpa IS 'MDMNG — MRP: quantity field (stock in transit, receipt qty, ...) [quantitas campus copia]';
COMMENT ON COLUMN pp.mdtb.prd_vrs IS 'VERID — Production Version [productio versio]';
COMMENT ON COLUMN pp.mdtb.cns_ofc IS 'WRK01 — Planning Plant [consilium officina]';
COMMENT ON COLUMN pp.mdtb.num IS 'SERNR — BOM explosion number [numerus]';
COMMENT ON COLUMN pp.mdtb.grd IS 'REVLV — Revision Level [gradus]';
COMMENT ON COLUMN pp.mdtb.idx7 IS 'DBSKZ — Direct procurement indicator [index]';
COMMENT ON COLUMN pp.mdtb.idx8 IS 'EXTNL — Indicator for External Procurement [index]';
COMMENT ON COLUMN pp.mdtb.cmp IS 'ADINF — Field for Additional Information [campus]';
COMMENT ON COLUMN pp.mdtb.loc_cpa_mnd IS 'RESLO — Issuing Storage Location for Stock Transport Order [locus repositionis copia mandatum]';
COMMENT ON COLUMN pp.mdtb.rqs IS 'PRIO_URG — Requirement Urgency [requisitum]';
COMMENT ON COLUMN pp.mdtb.rqs_pri IS 'PRIO_REQ — Requirement Priority [requisitum prioritas]';

CREATE TABLE IF NOT EXISTS pp.mdvm (
  cli char(3),
  tbl_gen varchar(1),
  tot_clv varchar(25),
  net_cns_idx varchar(1),
  net_cns_idx2 varchar(1),
  resdt varchar(1),
  die_tbl_cre date,
  resal varchar(1),
  idx varchar(1),
  die_cns_tmp date,
  tmp_ult_cns numeric(15,0),
  tms_ult_cns numeric(15,0),
  CONSTRAINT mdvm_pk PRIMARY KEY (cli, tbl_gen, tot_clv)
);
COMMENT ON TABLE pp.mdvm IS 'MDVM — Planning File Entry — flags a material/plant (or other planning object) as due for the next MRP run, carrying net-change and low-level-code re-explosion indicators plus MRP timestamps. The demand-side trigger record of what the system has decided still needs re-planning.';
COMMENT ON COLUMN pp.mdvm.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pp.mdvm.tbl_gen IS 'MAFID — Record type [tabula genus]';
COMMENT ON COLUMN pp.mdvm.tot_clv IS 'MDKEY — Total key of MDVM [summa totalis clavis]';
COMMENT ON COLUMN pp.mdvm.net_cns_idx IS 'GSAEN — Net change planning indicator [netus consilium index]';
COMMENT ON COLUMN pp.mdvm.net_cns_idx2 IS 'AKKEN — Net change planning indicator in the planning horizon [netus consilium index]';
COMMENT ON COLUMN pp.mdvm.resdt IS 'RESDT — Reset procurement proposals';
COMMENT ON COLUMN pp.mdvm.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN pp.mdvm.resal IS 'RESAL — Re-explode BOM';
COMMENT ON COLUMN pp.mdvm.idx IS 'MPSKZ — Indicator for MPS items [index]';
COMMENT ON COLUMN pp.mdvm.die_cns_tmp IS 'RHYTD — Date for planning (e.g. as per time-phased mat. planning) [dies consilium tempus]';
COMMENT ON COLUMN pp.mdvm.tmp_ult_cns IS 'USTMP — Time stamp of last update for planning file entry [tempus ultimus consilium]';
COMMENT ON COLUMN pp.mdvm.tms_ult_cns IS 'DSTMP — Timestamp of last MRP for planning file entry [tempus signatum ultimus consilium]';

CREATE TABLE IF NOT EXISTS pp.plab (
  cli char(3),
  ixp_gen varchar(1),
  num_nrm_ret varchar(8),
  cts_nmr varchar(2),
  num_ixp varchar(8),
  num_nrm_ret2 varchar(8),
  cts_nmr2 varchar(2),
  num_ixp2 varchar(8),
  gen_rlt varchar(2),
  tmp varchar(1),
  nmr varchar(8),
  vla_die date,
  sta varchar(12),
  num varchar(12),
  uni_tmp varchar(3),
  tmp2 numeric(5,1),
  idx_mra_rlt varchar(1),
  idx varchar(1),
  ncvor varchar(1),
  ptm_cls varchar(1),
  kalid varchar(2),
  tmp3 varchar(3),
  clv_tmp_rlt varchar(1),
  obi varchar(8),
  ofc varchar(4),
  die_tbl_cre date,
  usr_cre_tbl varchar(12),
  mut date,
  nom_psn_mut varchar(12),
  tmp_rlt numeric(5,1),
  CONSTRAINT plab_pk PRIMARY KEY (cli, ixp_gen, num_nrm_ret, cts_nmr, num_ixp, num_nrm_ret2, cts_nmr2, num_ixp2, gen_rlt)
);
COMMENT ON TABLE pp.plab IS 'PLAB — Task List / Standard Network Relationships — defines predecessor/successor relationships between two task-list (or standard network) nodes, with time-interval, calendar, and duration-limit parameters. Supports network-style sequencing beside the task-list sequence/component-allocation tables PLKO/PLPO/PLMZ.';
COMMENT ON COLUMN pp.plab.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pp.plab.ixp_gen IS 'PLNTY — Task List Type [index pensorum genus]';
COMMENT ON COLUMN pp.plab.num_nrm_ret IS 'PLNNR — Number of the Standard Network [numerus norma rete]';
COMMENT ON COLUMN pp.plab.cts_nmr IS 'PLNAL — Group Counter [coetus numerator]';
COMMENT ON COLUMN pp.plab.num_ixp IS 'PLNKN — Number of the task list node [numerus index pensorum]';
COMMENT ON COLUMN pp.plab.num_nrm_ret2 IS 'PLNRN — Number of the Standard Network [numerus norma rete]';
COMMENT ON COLUMN pp.plab.cts_nmr2 IS 'ALNRN — Group Counter [coetus numerator]';
COMMENT ON COLUMN pp.plab.num_ixp2 IS 'KNNRN — Number of the task list node [numerus index pensorum]';
COMMENT ON COLUMN pp.plab.gen_rlt IS 'AOBAR — Type of relationship [genus relatio]';
COMMENT ON COLUMN pp.plab.tmp IS 'MIMAX — Indicates whether maximum time interval will be considered [tempus]';
COMMENT ON COLUMN pp.plab.nmr IS 'ZAEHL — Internal counter [numerator]';
COMMENT ON COLUMN pp.plab.vla_die IS 'DATUV — Valid-from date [validus ab dies]';
COMMENT ON COLUMN pp.plab.sta IS 'TECHV — Technical status from [status]';
COMMENT ON COLUMN pp.plab.num IS 'AENNR — Change Number [numerus]';
COMMENT ON COLUMN pp.plab.uni_tmp IS 'ZEINH — Unit for the time interval between relationships [unitas tempus]';
COMMENT ON COLUMN pp.plab.tmp2 IS 'DAUER — Time interval between relationships [tempus]';
COMMENT ON COLUMN pp.plab.idx_mra_rlt IS 'DAUKZ — Indicator for the duration of the relationship [index mora relatio]';
COMMENT ON COLUMN pp.plab.idx IS 'VORNC — Indicator: maintained after successor [index]';
COMMENT ON COLUMN pp.plab.ncvor IS 'NCVOR — Indicates whether data after predecessor is maintained';
COMMENT ON COLUMN pp.plab.ptm_cls IS 'LOEKZ — Asset class marked for deletion [patrimonium classis]';
COMMENT ON COLUMN pp.plab.kalid IS 'KALID — Factory Calendar';
COMMENT ON COLUMN pp.plab.tmp3 IS 'PRZNT — % used to calc. time interval between predecessor/successor [tempus]';
COMMENT ON COLUMN pp.plab.clv_tmp_rlt IS 'PROVG — Key for defining time intervals in a relationship [clavis tempus relatio]';
COMMENT ON COLUMN pp.plab.obi IS 'ARBID — Object ID [obiectum]';
COMMENT ON COLUMN pp.plab.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN pp.plab.die_tbl_cre IS 'ANDAT — Date record created on [dies tabula creatus]';
COMMENT ON COLUMN pp.plab.usr_cre_tbl IS 'ANNAM — User who created record [usor creatus tabula]';
COMMENT ON COLUMN pp.plab.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pp.plab.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pp.plab.tmp_rlt IS 'DAUERMAX — Maximum time interval for relationship [tempus relatio]';

CREATE TABLE IF NOT EXISTS pp.plko (
  cli char(3),
  ixp_gen varchar(1),
  clv_ixp_cts varchar(8),
  cts_nmr varchar(2),
  nmr varchar(8),
  vla_die date,
  sta varchar(12),
  num varchar(12),
  idx varchar(1),
  idx2 varchar(1),
  die_tbl_cre date,
  usr_cre_tbl varchar(12),
  mut date,
  nom_psn_mut varchar(12),
  ixp varchar(3),
  ofc varchar(4),
  sta2 varchar(3),
  ixp_men varchar(3),
  mgn numeric(13,3),
  mgn2 numeric(13,3),
  ccs varchar(3),
  doc_num varchar(6),
  ixp_dsc varchar(40),
  lng_clv char(1),
  die_ult_voc date,
  num2 numeric(4,0),
  profidnetz varchar(7),
  amd varchar(4),
  ofc_iud varchar(4),
  iud varchar(8),
  cod_vrs_iud varchar(6),
  die_cod_iud date,
  cod_cts_iud varchar(8),
  cod_iud varchar(4),
  qdynregel varchar(3),
  grd varchar(1),
  exm varchar(8),
  vrs_exm varchar(6),
  isp varchar(1),
  qdynstring varchar(10),
  cur varchar(6),
  cur2 varchar(6),
  istru varchar(18),
  cur_cns_ofc varchar(4),
  cnd varchar(1),
  sto_cts_cns varchar(8),
  extnum varchar(1),
  idx3 varchar(1),
  obi_sbs varchar(2),
  stupr varchar(8),
  clndr varchar(8),
  gen varchar(1),
  die date,
  obi_sbs2 varchar(8),
  ixp2 varchar(1),
  nrm_eop varchar(8),
  pns_per varchar(6),
  obi varchar(1),
  num3 varchar(20),
  nrm_mnd varchar(1),
  ctg varchar(1),
  ixm varchar(8),
  stlal varchar(2),
  isp_cmp varchar(3),
  asg_isp_prd varchar(1),
  chrule varchar(1),
  gen_obi varchar(3),
  obi2 varchar(8),
  men_act_ope varchar(3),
  ixp3 numeric(5,0),
  umren numeric(5,0),
  qnt numeric(13,3),
  rfr_elm varchar(40),
  idx4 varchar(1),
  tmp numeric(16,0),
  clv_itn varchar(64),
  ixp4 varchar(1),
  ixp5 varchar(40),
  CONSTRAINT plko_pk PRIMARY KEY (cli, ixp_gen, clv_ixp_cts, cts_nmr)
);
COMMENT ON TABLE pp.plko IS 'PLKO — Task List (Routing) Group Header — header data for routings/task lists, including usage, status, and planner group. First link in the routing chain (PLKO→PLPO).';
COMMENT ON COLUMN pp.plko.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pp.plko.ixp_gen IS 'PLNTY — Task List Type [index pensorum genus]';
COMMENT ON COLUMN pp.plko.clv_ixp_cts IS 'PLNNR — Key for Task List Group [clavis index pensorum coetus]';
COMMENT ON COLUMN pp.plko.cts_nmr IS 'PLNAL — Group Counter [coetus numerator]';
COMMENT ON COLUMN pp.plko.nmr IS 'ZAEHL — Internal counter [numerator]';
COMMENT ON COLUMN pp.plko.vla_die IS 'DATUV — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN pp.plko.sta IS 'TECHV — Technical status from [status]';
COMMENT ON COLUMN pp.plko.num IS 'AENNR — Change Number [numerus]';
COMMENT ON COLUMN pp.plko.idx IS 'LOEKZ — Deletion Indicator [index]';
COMMENT ON COLUMN pp.plko.idx2 IS 'PARKZ — Indicator: inactive changes [index]';
COMMENT ON COLUMN pp.plko.die_tbl_cre IS 'ANDAT — Date record created on [dies tabula creatus]';
COMMENT ON COLUMN pp.plko.usr_cre_tbl IS 'ANNAM — User who created record [usor creatus tabula]';
COMMENT ON COLUMN pp.plko.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pp.plko.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pp.plko.ixp IS 'VERWE — Task list usage [index pensorum]';
COMMENT ON COLUMN pp.plko.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN pp.plko.sta2 IS 'STATU — Status [status]';
COMMENT ON COLUMN pp.plko.ixp_men IS 'PLNME — Task list unit of measure [index pensorum mensura]';
COMMENT ON COLUMN pp.plko.mgn IS 'LOSVN — From Lot Size [magnitudo]';
COMMENT ON COLUMN pp.plko.mgn2 IS 'LOSBS — To lot size [magnitudo]';
COMMENT ON COLUMN pp.plko.ccs IS 'VAGRP — Responsible planner group/department [coetus consiliorum]';
COMMENT ON COLUMN pp.plko.doc_num IS 'AESZN — Document change number (without document management system) [documentum numerus]';
COMMENT ON COLUMN pp.plko.ixp_dsc IS 'KTEXT — Task list description [index pensorum descriptio]';
COMMENT ON COLUMN pp.plko.lng_clv IS 'TXTSP — Language Key [lingua clavis]';
COMMENT ON COLUMN pp.plko.die_ult_voc IS 'ABDAT — Date of the last call [dies ultimus vocatio]';
COMMENT ON COLUMN pp.plko.num2 IS 'ABANZ — Number of calls [numerus]';
COMMENT ON COLUMN pp.plko.profidnetz IS 'PROFIDNETZ — Profile';
COMMENT ON COLUMN pp.plko.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN pp.plko.ofc_iud IS 'QVEWERKS — Plant of Selected Set for Automatic Usage Decision [officina iudicium usus]';
COMMENT ON COLUMN pp.plko.iud IS 'QVEMENGE — Selected Set for Usage Decision [iudicium usus]';
COMMENT ON COLUMN pp.plko.cod_vrs_iud IS 'QVEVERSION — Code Version Used for an Automatic Usage Decision [codex versio iudicium usus]';
COMMENT ON COLUMN pp.plko.die_cod_iud IS 'QVEDATUM — Date of Code Used for Usage Decision [dies codex iudicium usus]';
COMMENT ON COLUMN pp.plko.cod_cts_iud IS 'QVEGRUPPE — Code Group for Automatic Usage Decision [codex coetus iudicium usus]';
COMMENT ON COLUMN pp.plko.cod_iud IS 'QVECODE — Code for Automatic Usage Decision [codex iudicium usus]';
COMMENT ON COLUMN pp.plko.qdynregel IS 'QDYNREGEL — Dynamic Modification Rule';
COMMENT ON COLUMN pp.plko.grd IS 'QDYNHEAD — Level at Which Dynamic Modification Parameters Are Defined [gradus]';
COMMENT ON COLUMN pp.plko.exm IS 'QPRZIEHVER — Sample-Drawing Procedure [exemplum]';
COMMENT ON COLUMN pp.plko.vrs_exm IS 'QVERSNPRZV — Version No. of the Sample-Drawing Procedure [versio exemplum]';
COMMENT ON COLUMN pp.plko.isp IS 'QKZRASTER — Inspection Point [inspectio]';
COMMENT ON COLUMN pp.plko.qdynstring IS 'QDYNSTRING — String for Dynamic Modification Criteria (Database Relevant)';
COMMENT ON COLUMN pp.plko.cur IS 'STRAT — Maintenance strategy [curatio]';
COMMENT ON COLUMN pp.plko.cur2 IS 'PPOOL — Maintenance package pool [curatio]';
COMMENT ON COLUMN pp.plko.istru IS 'ISTRU — Assembly';
COMMENT ON COLUMN pp.plko.cur_cns_ofc IS 'IWERK — Maintenance Planning Plant [curatio consilium officina]';
COMMENT ON COLUMN pp.plko.cnd IS 'ANLZU — Syst.Condition [condicio]';
COMMENT ON COLUMN pp.plko.sto_cts_cns IS 'ARBID — Work center group with planning function [statio operis coetus consilium]';
COMMENT ON COLUMN pp.plko.extnum IS 'EXTNUM — External Numbering of Units to be Inspected';
COMMENT ON COLUMN pp.plko.idx3 IS 'DELKZ — Indicator: Delete completely in reorganization run [index]';
COMMENT ON COLUMN pp.plko.obi_sbs IS 'ARBTY — Object types of the CIM resource [obiectum subsidium]';
COMMENT ON COLUMN pp.plko.stupr IS 'STUPR — Setup recipe';
COMMENT ON COLUMN pp.plko.clndr IS 'CLNDR — Clean-out recipe';
COMMENT ON COLUMN pp.plko.gen IS 'PRTYP — Process type [genus]';
COMMENT ON COLUMN pp.plko.die IS 'REODAT — Archive date [dies]';
COMMENT ON COLUMN pp.plko.obi_sbs2 IS 'NETID — Object ID of the resource [obiectum subsidium]';
COMMENT ON COLUMN pp.plko.ixp2 IS 'FLG_CHK — Ind: Task list was submitted for consistency check [index pensorum]';
COMMENT ON COLUMN pp.plko.nrm_eop IS 'PSPNR — Standard WBS element [norma elementum operis]';
COMMENT ON COLUMN pp.plko.pns_per IS 'TTRAS — Task lists: Internal representation of the period pattern [pensum periodus]';
COMMENT ON COLUMN pp.plko.obi IS 'KZKFG — Ind: Configurable object [obiectum]';
COMMENT ON COLUMN pp.plko.num3 IS 'PLNNR_ALT — Old number [numerus]';
COMMENT ON COLUMN pp.plko.nrm_mnd IS 'FLG_CAPO — Recalculate standard values at order creation using CAPP [norma mandatum]';
COMMENT ON COLUMN pp.plko.ctg IS 'STLTY — BOM category [categoria]';
COMMENT ON COLUMN pp.plko.ixm IS 'STLNR — Bill of material [index materiarum]';
COMMENT ON COLUMN pp.plko.stlal IS 'STLAL — Alternative BOM';
COMMENT ON COLUMN pp.plko.isp_cmp IS 'SLWBEZ — Identification for the Inspection Point Field Combination [inspectio campus]';
COMMENT ON COLUMN pp.plko.asg_isp_prd IS 'PPKZTLZU — Partial Lot Assignment in an Inspection During Production [assignatio inspectio productio]';
COMMENT ON COLUMN pp.plko.chrule IS 'CHRULE — Change rule';
COMMENT ON COLUMN pp.plko.gen_obi IS 'CCOAA — Change Type for Object [genus obiectum]';
COMMENT ON COLUMN pp.plko.obi2 IS 'ST_ARBID — Object ID [obiectum]';
COMMENT ON COLUMN pp.plko.men_act_ope IS 'MEINH — Unit of Measure for Activity/Operation [mensura actio operatio]';
COMMENT ON COLUMN pp.plko.ixp3 IS 'UMREZ — Numerator for converting task list and oper. un. of measure [index pensorum]';
COMMENT ON COLUMN pp.plko.umren IS 'UMREN — Denominator for converting rtg and op units of measure';
COMMENT ON COLUMN pp.plko.qnt IS 'BMSCH — Base Quantity [quantitas]';
COMMENT ON COLUMN pp.plko.rfr_elm IS 'ADPSP — Reference Element PM/PS [referentia elementum]';
COMMENT ON COLUMN pp.plko.idx4 IS 'MS_FLAG — Indicator: Multiple Specifications [index]';
COMMENT ON COLUMN pp.plko.tmp IS 'TSTMP_BW — Time Stamp for BI Delta Extraction [tempus]';
COMMENT ON COLUMN pp.plko.clv_itn IS 'MES_ROUTINGID — Key of a Routing from an ME System [clavis itinerarium]';
COMMENT ON COLUMN pp.plko.ixp4 IS 'XHIERTL — Sign: Task List Contains Hierarchical Operations [index pensorum]';
COMMENT ON COLUMN pp.plko.ixp5 IS 'TL_EXTID — A&D: External ID of Task List [index pensorum]';

CREATE TABLE IF NOT EXISTS pp.plmz (
  cli char(3),
  ixp_gen varchar(1),
  clv_ixp_cts varchar(8),
  mat_atb_ixp varchar(8),
  nmr varchar(8),
  vla_die date,
  sta varchar(12),
  num varchar(12),
  idx varchar(1),
  idx2 varchar(1),
  cts_nmr varchar(2),
  ord varchar(6),
  ixp_num_ope varchar(8),
  ctg varchar(1),
  ixm varchar(8),
  stlal varchar(2),
  num2 varchar(8),
  ofc varchar(4),
  zudiv varchar(5),
  zums1 numeric(13,3),
  zums2 numeric(13,3),
  zums3 numeric(13,3),
  uni varchar(3),
  cmn_qnt numeric(13,3),
  cmn_men varchar(3),
  die_tbl_cre date,
  usr_cre_tbl varchar(12),
  die_tbl_cre2 date,
  nom_psn_mut varchar(12),
  idx3 varchar(1),
  mnd_grd varchar(2),
  mnd varchar(2),
  num_ixp varchar(8),
  mat_num varchar(18),
  ofc2 varchar(4),
  gp_uvorn varchar(4),
  cns_obi varchar(18),
  txt varchar(60),
  gen_rlt varchar(2),
  uni_tmp varchar(3),
  tmp numeric(5,1),
  cmn_qnt2 numeric(13,3),
  rat_asg_ctg varchar(1),
  idx4 varchar(1),
  mnd2 varchar(1),
  psn_pet varchar(1),
  ctg2 varchar(1),
  ixm2 varchar(8),
  stlal_w varchar(2),
  kante varchar(6),
  loc_sbs varchar(4),
  cns_emt varchar(1),
  idx5 varchar(4),
  mat_idx varchar(1),
  CONSTRAINT plmz_pk PRIMARY KEY (cli, ixp_gen, clv_ixp_cts, mat_atb_ixp, nmr, vla_die)
);
COMMENT ON TABLE pp.plmz IS 'PLMZ — Allocation of Bill of Material Items to Operations — assigns BOM component line items (STLTY/STLNR/STLAL/STLKN) to task-list operations (PLNTY/PLNNR/PLNAL/PLNKN), carrying cutting measures, backflush, and account-assignment attributes. Task-list component allocation beside the sequence tables PLKO/PLPO and BOM item table STPO.';
COMMENT ON COLUMN pp.plmz.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pp.plmz.ixp_gen IS 'PLNTY — Task List Type [index pensorum genus]';
COMMENT ON COLUMN pp.plmz.clv_ixp_cts IS 'PLNNR — Key for Task List Group [clavis index pensorum coetus]';
COMMENT ON COLUMN pp.plmz.mat_atb_ixp IS 'ZUONR — No. for material comp. allocation to task list [materia attributio index pensorum]';
COMMENT ON COLUMN pp.plmz.nmr IS 'ZAEHL — Internal counter [numerator]';
COMMENT ON COLUMN pp.plmz.vla_die IS 'DATUV — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN pp.plmz.sta IS 'TECHV — Technical status from [status]';
COMMENT ON COLUMN pp.plmz.num IS 'AENNR — Change Number [numerus]';
COMMENT ON COLUMN pp.plmz.idx IS 'LOEKZ — Deletion Indicator [index]';
COMMENT ON COLUMN pp.plmz.idx2 IS 'PARKZ — Indicator: inactive changes [index]';
COMMENT ON COLUMN pp.plmz.cts_nmr IS 'PLNAL — Group Counter [coetus numerator]';
COMMENT ON COLUMN pp.plmz.ord IS 'PLNFL — Sequence [ordo]';
COMMENT ON COLUMN pp.plmz.ixp_num_ope IS 'PLNKN — Task list node number for operation [index pensorum numerus operatio]';
COMMENT ON COLUMN pp.plmz.ctg IS 'STLTY — BOM category [categoria]';
COMMENT ON COLUMN pp.plmz.ixm IS 'STLNR — Bill of material [index materiarum]';
COMMENT ON COLUMN pp.plmz.stlal IS 'STLAL — Alternative BOM';
COMMENT ON COLUMN pp.plmz.num2 IS 'STLKN — Node Number [numerus]';
COMMENT ON COLUMN pp.plmz.ofc IS 'WERK_STL — Plant [officina]';
COMMENT ON COLUMN pp.plmz.zudiv IS 'ZUDIV — Integral divisor for cutting measures';
COMMENT ON COLUMN pp.plmz.zums1 IS 'ZUMS1 — Cutting measure 1';
COMMENT ON COLUMN pp.plmz.zums2 IS 'ZUMS2 — Cutting measure 2';
COMMENT ON COLUMN pp.plmz.zums3 IS 'ZUMS3 — Cutting measure 3';
COMMENT ON COLUMN pp.plmz.uni IS 'ZUMEI — Unit for cutting measures [unitas]';
COMMENT ON COLUMN pp.plmz.cmn_qnt IS 'IMENG — Component quantity [componens quantitas]';
COMMENT ON COLUMN pp.plmz.cmn_men IS 'IMEIN — Component unit of measure [componens mensura]';
COMMENT ON COLUMN pp.plmz.die_tbl_cre IS 'ANDAT — Date record created on [dies tabula creatus]';
COMMENT ON COLUMN pp.plmz.usr_cre_tbl IS 'ANNAM — User who created record [usor creatus tabula]';
COMMENT ON COLUMN pp.plmz.die_tbl_cre2 IS 'AEDAT — Change date for which no change record is created [dies tabula creatus]';
COMMENT ON COLUMN pp.plmz.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pp.plmz.idx3 IS 'RGEKZ — Indicator: Backflush [index]';
COMMENT ON COLUMN pp.plmz.mnd_grd IS 'STLST — Order level [mandatum gradus]';
COMMENT ON COLUMN pp.plmz.mnd IS 'STLWG — Order path [mandatum]';
COMMENT ON COLUMN pp.plmz.num_ixp IS 'REFKN — Number of the task list node [numerus index pensorum]';
COMMENT ON COLUMN pp.plmz.mat_num IS 'GP_MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN pp.plmz.ofc2 IS 'GP_WERKS — Plant [officina]';
COMMENT ON COLUMN pp.plmz.gp_uvorn IS 'GP_UVORN — Suboperation';
COMMENT ON COLUMN pp.plmz.cns_obi IS 'GP_KRIT1 — Planning object [consilium obiectum]';
COMMENT ON COLUMN pp.plmz.txt IS 'GP_FREET — Line text: SOP [textus]';
COMMENT ON COLUMN pp.plmz.gen_rlt IS 'AOBAR — Type of relationship [genus relatio]';
COMMENT ON COLUMN pp.plmz.uni_tmp IS 'ZEINH — Unit for the time interval between relationships [unitas tempus]';
COMMENT ON COLUMN pp.plmz.tmp IS 'DAUER — Time interval between relationships [tempus]';
COMMENT ON COLUMN pp.plmz.cmn_qnt2 IS 'DMENG — Average component quantity [componens quantitas]';
COMMENT ON COLUMN pp.plmz.rat_asg_ctg IS 'KNTTP — Account Assignment Category [ratio assignatio categoria]';
COMMENT ON COLUMN pp.plmz.idx4 IS 'FLGEX — Indicator: External procurement [index]';
COMMENT ON COLUMN pp.plmz.mnd2 IS 'VORAB — Ind: Preliminary order [mandatum]';
COMMENT ON COLUMN pp.plmz.psn_pet IS 'STRECKE — Ind.: Third-party requisition [persona petitio]';
COMMENT ON COLUMN pp.plmz.ctg2 IS 'STLTY_W — BOM category [categoria]';
COMMENT ON COLUMN pp.plmz.ixm2 IS 'STLNR_W — Bill of material [index materiarum]';
COMMENT ON COLUMN pp.plmz.stlal_w IS 'STLAL_W — Alternative BOM';
COMMENT ON COLUMN pp.plmz.kante IS 'KANTE — Path in exploded BOM tree';
COMMENT ON COLUMN pp.plmz.loc_sbs IS 'LGORT — Storage location storage resource [locus repositionis subsidium]';
COMMENT ON COLUMN pp.plmz.cns_emt IS 'DISP — Relevancy to Materials Planning/Generation of Purchase Req. [consilium emptio]';
COMMENT ON COLUMN pp.plmz.idx5 IS 'PRODFLOWID — Product Flow Indicator [index]';
COMMENT ON COLUMN pp.plmz.mat_idx IS 'BEIKZ — Material Provision Indicator [materia index]';

CREATE TABLE IF NOT EXISTS pp.plpo (
  cli char(3),
  ixp_gen varchar(1),
  clv_ixp_cts varchar(8),
  num_ixp varchar(8),
  nmr varchar(8),
  vla_die date,
  sta varchar(12),
  num varchar(12),
  idx varchar(1),
  idx2 varchar(1),
  die_tbl_cre date,
  usr_cre_tbl varchar(12),
  mut date,
  nom_psn_mut varchar(12),
  num_ope varchar(8),
  ope_act_num varchar(4),
  clv varchar(4),
  obi varchar(8),
  obi_sbs varchar(2),
  ofc varchar(4),
  nrm_txt_clv varchar(7),
  ope_txt varchar(40),
  dsc varchar(40),
  lng_clv char(1),
  gen_ixp varchar(1),
  cts_ixp varchar(8),
  cts_nmr_ixp varchar(2),
  ord_itn varchar(6),
  vintv numeric(3,0),
  men_act_ope varchar(3),
  umren numeric(5,0),
  ixp numeric(5,0),
  qnt numeric(13,3),
  zmerh numeric(9,3),
  uni_tmp varchar(3),
  act_gen varchar(6),
  men_nrm_val varchar(3),
  nrm_val numeric(9,3),
  act_gen2 varchar(6),
  men_nrm_val2 varchar(3),
  nrm_val2 numeric(9,3),
  act_gen3 varchar(6),
  men_nrm_val3 varchar(3),
  nrm_val3 numeric(9,3),
  act_gen4 varchar(6),
  men_nrm_val4 varchar(3),
  nrm_val4 numeric(9,3),
  act_gen5 varchar(6),
  men_nrm_val5 varchar(3),
  nrm_val5 numeric(9,3),
  act_gen6 varchar(6),
  men_nrm_val6 varchar(3),
  nrm_val6 numeric(9,3),
  gen_nrm_val varchar(5),
  die_nrm_val varchar(4),
  rfr_num_nrm varchar(6),
  nrm_val7 varchar(5),
  num_cnf varchar(3),
  pdest varchar(4),
  num_tmp numeric(3,0),
  sal_gen varchar(4),
  qualf varchar(2),
  num2 numeric(5,2),
  cts_ctg varchar(10),
  cts_clv varchar(10),
  gen_clv varchar(2),
  aufak numeric(5,3),
  sal_cts varchar(3),
  uemus varchar(1),
  uekan varchar(1),
  idx_prd varchar(1),
  uni_tmp2 varchar(3),
  tmp numeric(9,3),
  qnt2 numeric(13,3),
  spmus varchar(1),
  num3 numeric(3,0),
  uni_tmp3 varchar(3),
  tmp2 numeric(9,3),
  uni_tmp4 varchar(3),
  tmp3 numeric(9,3),
  uni_tmp5 varchar(3),
  tmp4 numeric(9,3),
  uni_nrm_ord varchar(3),
  nrm_ord_tmp numeric(9,3),
  uni_ord_tmp varchar(3),
  ord_tmp numeric(9,3),
  uni_nrm_tmp varchar(3),
  nrm_tmp numeric(9,3),
  uni_tmp6 varchar(3),
  tmp5 numeric(9,3),
  idx3 varchar(1),
  ope_act varchar(2),
  rfr_die_ini varchar(2),
  ope_ini numeric(5,0),
  uni_ini varchar(3),
  rfr_die_fin varchar(2),
  ope_fin numeric(5,0),
  uni_fin varchar(3),
  cpa varchar(10),
  rat_num_ven varchar(10),
  trd_tmp numeric(3,0),
  net_pre_tin numeric(11,2),
  pre_uni numeric(5,0),
  smp_elm varchar(10),
  cvm varchar(5),
  num_tin varchar(10),
  tin_ctg varchar(1),
  oem varchar(4),
  cts varchar(3),
  idx4 varchar(1),
  mat_cts varchar(9),
  mra_act numeric(5,1),
  mra_uni varchar(3),
  act_mra numeric(5,1),
  uni_mra varchar(3),
  idx_mra varchar(1),
  ini_die_act varchar(1),
  fin_die_act varchar(1),
  ops_act numeric(7,1),
  uni_ops varchar(3),
  num4 smallint,
  ops smallint,
  dtb_cpc varchar(2),
  mlstn varchar(5),
  pri varchar(2),
  soc varchar(4),
  clv_usr varchar(7),
  usr_cmp varchar(20),
  usr_cmp2 varchar(20),
  usr_cmp3 varchar(10),
  usr_cmp4 varchar(10),
  usr_cmp_qnt numeric(13,3),
  usr_cmp_uni varchar(3),
  usr_cmp_qnt2 numeric(13,3),
  usr_cmp_uni2 varchar(3),
  usr_cmp5 numeric(13,3),
  usr_cmp_uni3 varchar(5),
  usr_cmp6 numeric(13,3),
  usr_cmp_uni4 varchar(5),
  usr_cmp_die date,
  usr_cmp_die2 date,
  usr_cmp_idx varchar(1),
  usr_cmp_idx2 varchar(1),
  csm varchar(10),
  amd_csm varchar(4),
  cpc_ctg varchar(3),
  clv2 varchar(1),
  act_gen7 varchar(6),
  act numeric(11,2),
  qnt3 numeric(5,2),
  men varchar(3),
  cnd varchar(1),
  istru varchar(18),
  ctg varchar(1),
  ixm varchar(8),
  pos_num varchar(8),
  nmr2 varchar(8),
  num5 varchar(4),
  ebort varchar(20),
  kalid varchar(2),
  act2 varchar(1),
  ofc_mnd_ret varchar(8),
  clv_rat varchar(3),
  clv_rat2 varchar(3),
  clv_rat3 varchar(3),
  clv_rat4 varchar(3),
  clv_rat5 varchar(3),
  clv_rat6 varchar(3),
  mdlid varchar(4),
  clv3 varchar(4),
  ope_mnd_qnt varchar(3),
  mem_qnt_ope numeric(13,3),
  idx5 varchar(1),
  smp varchar(1),
  pri2 varchar(1),
  num_ixp2 varchar(8),
  idx6 varchar(1),
  phseq varchar(2),
  num_obi varchar(18),
  vis varchar(2),
  nrm_eop varchar(8),
  obi_gen varchar(2),
  obi2 varchar(8),
  cpc_ctg2 varchar(3),
  tmp6 varchar(1),
  qnt_cnf varchar(1),
  qnt_rfr varchar(1),
  rfr_tmp_qnt varchar(1),
  tmp_uni varchar(3),
  tmp7 numeric(5,2),
  qnt4 numeric(13,3),
  isp varchar(1),
  cns_obi varchar(18),
  cls_num varchar(10),
  num6 varchar(10),
  dem_num varchar(10),
  pos_num_dem varchar(5),
  gen_mnd varchar(1),
  txt varchar(1),
  pnd numeric(8,0),
  ope_cpa_asg varchar(1),
  aufkt numeric(3,0),
  dafkt numeric(5,2),
  rwfak numeric(5,3),
  idx_sto_ope varchar(1),
  ctg2 varchar(1),
  mnd varchar(1),
  idx7 varchar(1),
  isp_gen varchar(8),
  prz01 varchar(12),
  seg varchar(4),
  ope varchar(8),
  idx_val varchar(1),
  pnd2 numeric(8,0),
  rfr varchar(20),
  cts_ope varchar(1),
  rfr_elm varchar(40),
  lcf varchar(30),
  inm_num varchar(18),
  clv_ope varchar(48),
  clv_itn varchar(6),
  ixp_cts_nmr varchar(2),
  clv_ixp_cts2 varchar(8),
  ixp_gen_pns varchar(1),
  ixp2 varchar(1),
  CONSTRAINT plpo_pk PRIMARY KEY (cli, ixp_gen, clv_ixp_cts, num_ixp, nmr)
);
COMMENT ON TABLE pp.plpo IS 'PLPO — Task List Operation/Activity — routing operation detail (control key, work center, standard values, scheduling). Terminal table of the routing chain.';
COMMENT ON COLUMN pp.plpo.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pp.plpo.ixp_gen IS 'PLNTY — Task List Type [index pensorum genus]';
COMMENT ON COLUMN pp.plpo.clv_ixp_cts IS 'PLNNR — Key for Task List Group [clavis index pensorum coetus]';
COMMENT ON COLUMN pp.plpo.num_ixp IS 'PLNKN — Number of the task list node [numerus index pensorum]';
COMMENT ON COLUMN pp.plpo.nmr IS 'ZAEHL — Internal counter [numerator]';
COMMENT ON COLUMN pp.plpo.vla_die IS 'DATUV — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN pp.plpo.sta IS 'TECHV — Technical status from [status]';
COMMENT ON COLUMN pp.plpo.num IS 'AENNR — Change Number [numerus]';
COMMENT ON COLUMN pp.plpo.idx IS 'LOEKZ — Deletion Indicator [index]';
COMMENT ON COLUMN pp.plpo.idx2 IS 'PARKZ — Indicator: inactive changes [index]';
COMMENT ON COLUMN pp.plpo.die_tbl_cre IS 'ANDAT — Date record created on [dies tabula creatus]';
COMMENT ON COLUMN pp.plpo.usr_cre_tbl IS 'ANNAM — User who created record [usor creatus tabula]';
COMMENT ON COLUMN pp.plpo.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pp.plpo.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pp.plpo.num_ope IS 'SUMNR — Node number of the superior operation [numerus operatio]';
COMMENT ON COLUMN pp.plpo.ope_act_num IS 'VORNR — Operation/Activity Number [operatio actio numerus]';
COMMENT ON COLUMN pp.plpo.clv IS 'STEUS — Control key [clavis]';
COMMENT ON COLUMN pp.plpo.obi IS 'ARBID — Object ID [obiectum]';
COMMENT ON COLUMN pp.plpo.obi_sbs IS 'OBJTY — Object types of the CIM resource [obiectum subsidium]';
COMMENT ON COLUMN pp.plpo.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN pp.plpo.nrm_txt_clv IS 'KTSCH — Standard text key [norma textus clavis]';
COMMENT ON COLUMN pp.plpo.ope_txt IS 'LTXA1 — Operation short text [operatio textus]';
COMMENT ON COLUMN pp.plpo.dsc IS 'LTXA2 — Second line of the description [descriptio]';
COMMENT ON COLUMN pp.plpo.lng_clv IS 'TXTSP — Language Key [lingua clavis]';
COMMENT ON COLUMN pp.plpo.gen_ixp IS 'VPLTY — Type of the referenced task list [genus index pensorum]';
COMMENT ON COLUMN pp.plpo.cts_ixp IS 'VPLNR — Group of the referenced task list [coetus index pensorum]';
COMMENT ON COLUMN pp.plpo.cts_nmr_ixp IS 'VPLAL — Group counter of the referenced task list [coetus numerator index pensorum]';
COMMENT ON COLUMN pp.plpo.ord_itn IS 'VPLFL — Referenced sequence in routing [ordo itinerarium]';
COMMENT ON COLUMN pp.plpo.vintv IS 'VINTV — Increment between referenced operations';
COMMENT ON COLUMN pp.plpo.men_act_ope IS 'MEINH — Unit of Measure for Activity/Operation [mensura actio operatio]';
COMMENT ON COLUMN pp.plpo.umren IS 'UMREN — Denominator for converting rtg and op units of measure';
COMMENT ON COLUMN pp.plpo.ixp IS 'UMREZ — Numerator for converting task list and oper. un. of measure [index pensorum]';
COMMENT ON COLUMN pp.plpo.qnt IS 'BMSCH — Base Quantity [quantitas]';
COMMENT ON COLUMN pp.plpo.zmerh IS 'ZMERH — Break';
COMMENT ON COLUMN pp.plpo.uni_tmp IS 'ZEIER — Unit for the break time [unitas tempus]';
COMMENT ON COLUMN pp.plpo.act_gen IS 'LAR01 — Activity Type [actio genus]';
COMMENT ON COLUMN pp.plpo.men_nrm_val IS 'VGE01 — Unit of measure for the standard value [mensura norma valor]';
COMMENT ON COLUMN pp.plpo.nrm_val IS 'VGW01 — Standard Value [norma valor]';
COMMENT ON COLUMN pp.plpo.act_gen2 IS 'LAR02 — Activity Type [actio genus]';
COMMENT ON COLUMN pp.plpo.men_nrm_val2 IS 'VGE02 — Unit of measure for the standard value [mensura norma valor]';
COMMENT ON COLUMN pp.plpo.nrm_val2 IS 'VGW02 — Standard Value [norma valor]';
COMMENT ON COLUMN pp.plpo.act_gen3 IS 'LAR03 — Activity Type [actio genus]';
COMMENT ON COLUMN pp.plpo.men_nrm_val3 IS 'VGE03 — Unit of measure for the standard value [mensura norma valor]';
COMMENT ON COLUMN pp.plpo.nrm_val3 IS 'VGW03 — Standard Value [norma valor]';
COMMENT ON COLUMN pp.plpo.act_gen4 IS 'LAR04 — Activity Type [actio genus]';
COMMENT ON COLUMN pp.plpo.men_nrm_val4 IS 'VGE04 — Unit of measure for the standard value [mensura norma valor]';
COMMENT ON COLUMN pp.plpo.nrm_val4 IS 'VGW04 — Standard Value [norma valor]';
COMMENT ON COLUMN pp.plpo.act_gen5 IS 'LAR05 — Activity Type [actio genus]';
COMMENT ON COLUMN pp.plpo.men_nrm_val5 IS 'VGE05 — Unit of measure for the standard value [mensura norma valor]';
COMMENT ON COLUMN pp.plpo.nrm_val5 IS 'VGW05 — Standard Value [norma valor]';
COMMENT ON COLUMN pp.plpo.act_gen6 IS 'LAR06 — Activity Type [actio genus]';
COMMENT ON COLUMN pp.plpo.men_nrm_val6 IS 'VGE06 — Unit of measure for the standard value [mensura norma valor]';
COMMENT ON COLUMN pp.plpo.nrm_val6 IS 'VGW06 — Standard Value [norma valor]';
COMMENT ON COLUMN pp.plpo.gen_nrm_val IS 'ZERMA — Type of standard value calculation [genus norma valor]';
COMMENT ON COLUMN pp.plpo.die_nrm_val IS 'ZGDAT — Date when the standard value was calculated [dies norma valor]';
COMMENT ON COLUMN pp.plpo.rfr_num_nrm IS 'ZCODE — Reference number for standard value code [referentia numerus norma]';
COMMENT ON COLUMN pp.plpo.nrm_val7 IS 'ZULNR — Basis for standard value calculation [norma valor]';
COMMENT ON COLUMN pp.plpo.num_cnf IS 'RSANZ — Number of confirmation slips [numerus confirmatio]';
COMMENT ON COLUMN pp.plpo.pdest IS 'PDEST — Printer for shop papers';
COMMENT ON COLUMN pp.plpo.num_tmp IS 'LOANZ — Number of Time Tickets [numerus tempus]';
COMMENT ON COLUMN pp.plpo.sal_gen IS 'LOART — Wage Type [salarium genus]';
COMMENT ON COLUMN pp.plpo.qualf IS 'QUALF — Suitability';
COMMENT ON COLUMN pp.plpo.num2 IS 'ANZMA — Number of employees [numerus]';
COMMENT ON COLUMN pp.plpo.cts_ctg IS 'RFGRP — Setup group category [coetus categoria]';
COMMENT ON COLUMN pp.plpo.cts_clv IS 'RFSCH — Setup group key [coetus clavis]';
COMMENT ON COLUMN pp.plpo.gen_clv IS 'RASCH — Setup Type Key [genus clavis]';
COMMENT ON COLUMN pp.plpo.aufak IS 'AUFAK — Scrap factor';
COMMENT ON COLUMN pp.plpo.sal_cts IS 'LOGRP — Wage group [salarium coetus]';
COMMENT ON COLUMN pp.plpo.uemus IS 'UEMUS — Required overlapping';
COMMENT ON COLUMN pp.plpo.uekan IS 'UEKAN — Optional overlapping';
COMMENT ON COLUMN pp.plpo.idx_prd IS 'FLIES — Indicator: continuous flow production [index productio]';
COMMENT ON COLUMN pp.plpo.uni_tmp2 IS 'ZEIMU — Unit for the minimum overlap time [unitas tempus]';
COMMENT ON COLUMN pp.plpo.tmp IS 'ZMINU — Minimum overlap time [tempus]';
COMMENT ON COLUMN pp.plpo.qnt2 IS 'MINWE — Minimum Send-Ahead Quantity [quantitas]';
COMMENT ON COLUMN pp.plpo.spmus IS 'SPMUS — Required splitting';
COMMENT ON COLUMN pp.plpo.num3 IS 'SPLIM — Maximum number of splits [numerus]';
COMMENT ON COLUMN pp.plpo.uni_tmp3 IS 'ZEIMB — Unit for the minimum processing time [unitas tempus]';
COMMENT ON COLUMN pp.plpo.tmp2 IS 'ZMINB — Minimum processing time [tempus]';
COMMENT ON COLUMN pp.plpo.uni_tmp4 IS 'ZEILM — Unit for the maximum wait time [unitas tempus]';
COMMENT ON COLUMN pp.plpo.tmp3 IS 'ZLMAX — Maximum wait time [tempus]';
COMMENT ON COLUMN pp.plpo.uni_tmp5 IS 'ZEILP — Unit for the required wait time [unitas tempus]';
COMMENT ON COLUMN pp.plpo.tmp4 IS 'ZLPRO — Minimum wait time [tempus]';
COMMENT ON COLUMN pp.plpo.uni_nrm_ord IS 'ZEIWN — Unit for the standard queue time [unitas norma ordo expectantium]';
COMMENT ON COLUMN pp.plpo.nrm_ord_tmp IS 'ZWNOR — Standard queue time [norma ordo expectantium tempus]';
COMMENT ON COLUMN pp.plpo.uni_ord_tmp IS 'ZEIWM — Unit for the minumum queue time [unitas ordo expectantium tempus]';
COMMENT ON COLUMN pp.plpo.ord_tmp IS 'ZWMIN — Minimum queue time [ordo expectantium tempus]';
COMMENT ON COLUMN pp.plpo.uni_nrm_tmp IS 'ZEITN — Unit for the standard move time [unitas norma tempus]';
COMMENT ON COLUMN pp.plpo.nrm_tmp IS 'ZTNOR — Standard move time [norma tempus]';
COMMENT ON COLUMN pp.plpo.uni_tmp6 IS 'ZEITM — Unit for the minimum move time [unitas tempus]';
COMMENT ON COLUMN pp.plpo.tmp5 IS 'ZTMIN — Minimum move time [tempus]';
COMMENT ON COLUMN pp.plpo.idx3 IS 'ABLIPKZ — Indicator: simultaneous teardown and wait [index]';
COMMENT ON COLUMN pp.plpo.ope_act IS 'RSTRA — Reduction strategy per operation/activity [operatio actio]';
COMMENT ON COLUMN pp.plpo.rfr_die_ini IS 'BZOFFB — Reference date for start of sub-operation [referentia dies initium]';
COMMENT ON COLUMN pp.plpo.ope_ini IS 'OFFSTB — Offset to sub-operation start [operatio initium]';
COMMENT ON COLUMN pp.plpo.uni_ini IS 'EHOFFB — Unit for offset to start [unitas initium]';
COMMENT ON COLUMN pp.plpo.rfr_die_fin IS 'BZOFFE — Reference date for finish of sub-operation [referentia dies finis]';
COMMENT ON COLUMN pp.plpo.ope_fin IS 'OFFSTE — Offset to sub-operation finish [operatio finis]';
COMMENT ON COLUMN pp.plpo.uni_fin IS 'EHOFFE — Unit for offset to finish [unitas finis]';
COMMENT ON COLUMN pp.plpo.cpa IS 'SORTL — Sort Term for Non-Stock Info Records [copia]';
COMMENT ON COLUMN pp.plpo.rat_num_ven IS 'LIFNR — Account Number of Vendor or Creditor [ratio numerus venditor]';
COMMENT ON COLUMN pp.plpo.trd_tmp IS 'PLIFZ — Planned Delivery Time in Days [traditio tempus]';
COMMENT ON COLUMN pp.plpo.net_pre_tin IS 'PREIS — Net Price in Purchasing Info Record [netus pretium tabula informationis]';
COMMENT ON COLUMN pp.plpo.pre_uni IS 'PEINH — Price Unit [pretium unitas]';
COMMENT ON COLUMN pp.plpo.smp_elm IS 'SAKTO — Cost Element [sumptus elementum]';
COMMENT ON COLUMN pp.plpo.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN pp.plpo.num_tin IS 'INFNR — Number of Purchasing Info Record [numerus tabula informationis]';
COMMENT ON COLUMN pp.plpo.tin_ctg IS 'ESOKZ — Purchasing info record category [tabula informationis categoria]';
COMMENT ON COLUMN pp.plpo.oem IS 'EKORG — Purchasing Organization [organizatio emptionis]';
COMMENT ON COLUMN pp.plpo.cts IS 'EKGRP — Purchasing group for external processing [coetus]';
COMMENT ON COLUMN pp.plpo.idx4 IS 'KZLGF — Indicator: fixed lot external processing [index]';
COMMENT ON COLUMN pp.plpo.mat_cts IS 'MATKL — Material Group [materia coetus]';
COMMENT ON COLUMN pp.plpo.mra_act IS 'DAUNO — Normal duration of the activity [mora actio]';
COMMENT ON COLUMN pp.plpo.mra_uni IS 'DAUNE — Normal duration/unit [mora unitas]';
COMMENT ON COLUMN pp.plpo.act_mra IS 'DAUMI — Minimum activity duration [actio mora]';
COMMENT ON COLUMN pp.plpo.uni_mra IS 'DAUME — Unit for the minimum duration [unitas mora]';
COMMENT ON COLUMN pp.plpo.idx_mra IS 'DDEHN — Indicator: flexible duration [index mora]';
COMMENT ON COLUMN pp.plpo.ini_die_act IS 'EINSA — Constraint on the basic start date for the activity [initium dies actio]';
COMMENT ON COLUMN pp.plpo.fin_die_act IS 'EINSE — Constraint on the finish date of the activity [finis dies actio]';
COMMENT ON COLUMN pp.plpo.ops_act IS 'ARBEI — Work involved in the activity [opus actio]';
COMMENT ON COLUMN pp.plpo.uni_ops IS 'ARBEH — Unit for work [unitas opus]';
COMMENT ON COLUMN pp.plpo.num4 IS 'ANZZL — Number of capacities required [numerus]';
COMMENT ON COLUMN pp.plpo.ops IS 'PRZNT — Work percentage [opus]';
COMMENT ON COLUMN pp.plpo.dtb_cpc IS 'VERTL — Distribution function for capacity requirements [distributio capacitas]';
COMMENT ON COLUMN pp.plpo.mlstn IS 'MLSTN — Usage';
COMMENT ON COLUMN pp.plpo.pri IS 'PPRIO — Priority [prioritas]';
COMMENT ON COLUMN pp.plpo.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN pp.plpo.clv_usr IS 'SLWID — Key word ID for user-defined fields [clavis usor]';
COMMENT ON COLUMN pp.plpo.usr_cmp IS 'USR00 — User field with 20 characters [usor campus]';
COMMENT ON COLUMN pp.plpo.usr_cmp2 IS 'USR01 — User field with 20 characters [usor campus]';
COMMENT ON COLUMN pp.plpo.usr_cmp3 IS 'USR02 — User field with 10 characters [usor campus]';
COMMENT ON COLUMN pp.plpo.usr_cmp4 IS 'USR03 — User field with 10 characters [usor campus]';
COMMENT ON COLUMN pp.plpo.usr_cmp_qnt IS 'USR04 — User field for quantity (length 10.3) [usor campus quantitas]';
COMMENT ON COLUMN pp.plpo.usr_cmp_uni IS 'USE04 — User field: Unit for quantity fields [usor campus unitas]';
COMMENT ON COLUMN pp.plpo.usr_cmp_qnt2 IS 'USR05 — User field for quantity (length 10.3) [usor campus quantitas]';
COMMENT ON COLUMN pp.plpo.usr_cmp_uni2 IS 'USE05 — User field: Unit for quantity fields [usor campus unitas]';
COMMENT ON COLUMN pp.plpo.usr_cmp5 IS 'USR06 — User-defined field for values (length 10,3) [usor campus]';
COMMENT ON COLUMN pp.plpo.usr_cmp_uni3 IS 'USE06 — User field: Unit for value fields [usor campus unitas]';
COMMENT ON COLUMN pp.plpo.usr_cmp6 IS 'USR07 — User-defined field for values (length 10,3) [usor campus]';
COMMENT ON COLUMN pp.plpo.usr_cmp_uni4 IS 'USE07 — User field: Unit for value fields [usor campus unitas]';
COMMENT ON COLUMN pp.plpo.usr_cmp_die IS 'USR08 — User field for date [usor campus dies]';
COMMENT ON COLUMN pp.plpo.usr_cmp_die2 IS 'USR09 — User field for date [usor campus dies]';
COMMENT ON COLUMN pp.plpo.usr_cmp_idx IS 'USR10 — User-defined field: Indicator for reports [usor campus index]';
COMMENT ON COLUMN pp.plpo.usr_cmp_idx2 IS 'USR11 — User-defined field: Indicator for reports [usor campus index]';
COMMENT ON COLUMN pp.plpo.csm IS 'ANFKO — Requesting cost center [centrum sumptus]';
COMMENT ON COLUMN pp.plpo.amd_csm IS 'ANFKOKRS — Controlling area of the requesting cost center [area moderationis centrum sumptus]';
COMMENT ON COLUMN pp.plpo.cpc_ctg IS 'KAPAR — Capacity category [capacitas categoria]';
COMMENT ON COLUMN pp.plpo.clv2 IS 'INDET — Key for calculation [clavis]';
COMMENT ON COLUMN pp.plpo.act_gen7 IS 'LARNT — Activity Type [actio genus]';
COMMENT ON COLUMN pp.plpo.act IS 'PRKST — Costs in the activity [actio]';
COMMENT ON COLUMN pp.plpo.qnt3 IS 'QRASTERMNG — Quantity for Grid Point Definition [quantitas]';
COMMENT ON COLUMN pp.plpo.men IS 'QRASTEREH — Grid Unit of Measure [mensura]';
COMMENT ON COLUMN pp.plpo.cnd IS 'ANLZU — Syst.Condition [condicio]';
COMMENT ON COLUMN pp.plpo.istru IS 'ISTRU — Assembly';
COMMENT ON COLUMN pp.plpo.ctg IS 'ISTTY — BOM category [categoria]';
COMMENT ON COLUMN pp.plpo.ixm IS 'ISTNR — Bill of material [index materiarum]';
COMMENT ON COLUMN pp.plpo.pos_num IS 'ISTKN — BOM item node number [positio numerus]';
COMMENT ON COLUMN pp.plpo.nmr2 IS 'ISTPO — Internal counter [numerator]';
COMMENT ON COLUMN pp.plpo.num5 IS 'IUPOZ — Subitem Number [numerus]';
COMMENT ON COLUMN pp.plpo.ebort IS 'EBORT — Installation Point for Subitem';
COMMENT ON COLUMN pp.plpo.kalid IS 'KALID — Factory Calendar';
COMMENT ON COLUMN pp.plpo.act2 IS 'FRSP — Earliest possible activity / Latest possible activity [actio]';
COMMENT ON COLUMN pp.plpo.ofc_mnd_ret IS 'VERTN — Distr.cap.reqmts (plant maint.,process order, network) [officina mandatum rete]';
COMMENT ON COLUMN pp.plpo.clv_rat IS 'ZGR01 — Key for performance efficiency rate [clavis ratio]';
COMMENT ON COLUMN pp.plpo.clv_rat2 IS 'ZGR02 — Key for performance efficiency rate [clavis ratio]';
COMMENT ON COLUMN pp.plpo.clv_rat3 IS 'ZGR03 — Key for performance efficiency rate [clavis ratio]';
COMMENT ON COLUMN pp.plpo.clv_rat4 IS 'ZGR04 — Key for performance efficiency rate [clavis ratio]';
COMMENT ON COLUMN pp.plpo.clv_rat5 IS 'ZGR05 — Key for performance efficiency rate [clavis ratio]';
COMMENT ON COLUMN pp.plpo.clv_rat6 IS 'ZGR06 — Key for performance efficiency rate [clavis ratio]';
COMMENT ON COLUMN pp.plpo.mdlid IS 'MDLID — Model ID for charge calculation';
COMMENT ON COLUMN pp.plpo.clv3 IS 'RUZUS — Key: rounding and additional values [clavis]';
COMMENT ON COLUMN pp.plpo.ope_mnd_qnt IS 'BMEIH — Operation order quantity unit [operatio mandatum quantitas]';
COMMENT ON COLUMN pp.plpo.mem_qnt_ope IS 'BMVRG — Purchase order quantity operation [mandatum emptionis quantitas operatio]';
COMMENT ON COLUMN pp.plpo.idx5 IS 'CKSELKZ — Indicator for Relevancy to Costing [index]';
COMMENT ON COLUMN pp.plpo.smp IS 'KALKZ — Cost [sumptus]';
COMMENT ON COLUMN pp.plpo.pri2 IS 'NPRIO — Priority [prioritas]';
COMMENT ON COLUMN pp.plpo.num_ixp2 IS 'PVZKN — Number of the task list node [numerus index pensorum]';
COMMENT ON COLUMN pp.plpo.idx6 IS 'PHFLG — Indicator: Phase [index]';
COMMENT ON COLUMN pp.plpo.phseq IS 'PHSEQ — Control Recipe Destination';
COMMENT ON COLUMN pp.plpo.num_obi IS 'KNOBJ — Number of Object with Assigned Dependencies [numerus obiectum]';
COMMENT ON COLUMN pp.plpo.vis IS 'ERFSICHT — Recording View [visus]';
COMMENT ON COLUMN pp.plpo.nrm_eop IS 'PSPNR — Standard WBS element [norma elementum operis]';
COMMENT ON COLUMN pp.plpo.obi_gen IS 'QLOTYPE — Object Type [obiectum genus]';
COMMENT ON COLUMN pp.plpo.obi2 IS 'QLOBJEKTID — Object ID [obiectum]';
COMMENT ON COLUMN pp.plpo.cpc_ctg2 IS 'QLKAPAR — Capacity category [capacitas categoria]';
COMMENT ON COLUMN pp.plpo.tmp6 IS 'QKZPRZEIT — Interval = Time (Time-Related) [tempus]';
COMMENT ON COLUMN pp.plpo.qnt_cnf IS 'QKZZTMG1 — Quantity Confirmation for Each Partial Lot [quantitas confirmatio]';
COMMENT ON COLUMN pp.plpo.qnt_rfr IS 'QKZPRMENG — Creation Cycle = Quantity (Quantity-Reference) [quantitas referentia]';
COMMENT ON COLUMN pp.plpo.rfr_tmp_qnt IS 'QKZPRFREI — Interval Without Reference to Time or Quantity [referentia tempus quantitas]';
COMMENT ON COLUMN pp.plpo.tmp_uni IS 'QRASTZEHT — Time Unit [tempus unitas]';
COMMENT ON COLUMN pp.plpo.tmp7 IS 'QRASTZFAK — Time Factor [tempus]';
COMMENT ON COLUMN pp.plpo.qnt4 IS 'QRASTMENG — Quantity Between Two Inspections [quantitas]';
COMMENT ON COLUMN pp.plpo.isp IS 'QPPKTABS — Flow Variants for Inspection Point Completion [inspectio]';
COMMENT ON COLUMN pp.plpo.cns_obi IS 'KRIT1 — Planning object [consilium obiectum]';
COMMENT ON COLUMN pp.plpo.cls_num IS 'CLASSID — Internal Class Number [classis numerus]';
COMMENT ON COLUMN pp.plpo.num6 IS 'PACKNO — Package number [numerus]';
COMMENT ON COLUMN pp.plpo.dem_num IS 'EBELN — Purchasing Document Number [documentum emptionis numerus]';
COMMENT ON COLUMN pp.plpo.pos_num_dem IS 'EBELP — Item Number of Purchasing Document [positio numerus documentum emptionis]';
COMMENT ON COLUMN pp.plpo.gen_mnd IS 'CAPOC — Type of CAPP calculation at order creation [genus mandatum]';
COMMENT ON COLUMN pp.plpo.txt IS 'FLG_CAPTXT — Ind: CAPP text exists [textus]';
COMMENT ON COLUMN pp.plpo.pnd IS 'CN_WEIGHT — Aggregation weight for POC (PS progress) [pondus]';
COMMENT ON COLUMN pp.plpo.ope_cpa_asg IS 'QKZTLSBEST — Operation with Stock-Related Partial Lot Assignment [operatio copia assignatio]';
COMMENT ON COLUMN pp.plpo.aufkt IS 'AUFKT — Execution Factor';
COMMENT ON COLUMN pp.plpo.dafkt IS 'DAFKT — Average execution factor';
COMMENT ON COLUMN pp.plpo.rwfak IS 'RWFAK — Rework factor (is not used yet)';
COMMENT ON COLUMN pp.plpo.idx_sto_ope IS 'AAUFG — Indicator: Work center operation set [index statio operis operatio]';
COMMENT ON COLUMN pp.plpo.ctg2 IS 'VERDART — Grouping Category [categoria]';
COMMENT ON COLUMN pp.plpo.mnd IS 'UAVO_AUFL — Suboper. do not apply to order [mandatum]';
COMMENT ON COLUMN pp.plpo.idx7 IS 'FRDLB — Indicator: Externally processed op. with subcontracting [index]';
COMMENT ON COLUMN pp.plpo.isp_gen IS 'QPART — Inspection Type [inspectio genus]';
COMMENT ON COLUMN pp.plpo.prz01 IS 'PRZ01 — Business Process';
COMMENT ON COLUMN pp.plpo.seg IS 'TAKT — takt within a line segment [segmentum]';
COMMENT ON COLUMN pp.plpo.ope IS 'OPRID — External operation ID [operatio]';
COMMENT ON COLUMN pp.plpo.idx_val IS 'NVADD — Indicator for non-value-added operations [index valor]';
COMMENT ON COLUMN pp.plpo.pnd2 IS 'EVGEW — Aggregation weight for POC (PS progress) [pondus]';
COMMENT ON COLUMN pp.plpo.rfr IS 'RFPNT — Reference point for BOM transfer [referentia]';
COMMENT ON COLUMN pp.plpo.cts_ope IS 'FLG_TSK_GROUP — Group operation [coetus operatio]';
COMMENT ON COLUMN pp.plpo.rfr_elm IS 'ADPSP — Reference Element PM/PS [referentia elementum]';
COMMENT ON COLUMN pp.plpo.lcf IS 'TPLNR — Functional Location [locus functionalis]';
COMMENT ON COLUMN pp.plpo.inm_num IS 'EQUNR — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN pp.plpo.clv_ope IS 'MES_OPERID — Key of an Operation from an ME System [clavis operatio]';
COMMENT ON COLUMN pp.plpo.clv_itn IS 'MES_STEPID — Key of a Step in a Routing (SAP ME) [clavis itinerarium]';
COMMENT ON COLUMN pp.plpo.ixp_cts_nmr IS 'SUBPLNAL — Subordinate Task List Group Counter [index pensorum coetus numerator]';
COMMENT ON COLUMN pp.plpo.clv_ixp_cts2 IS 'SUBPLNNR — Key for Subordinate Task List Group [clavis index pensorum coetus]';
COMMENT ON COLUMN pp.plpo.ixp_gen_pns IS 'SUBPLNTY — Task List Type: Subordinate Task List [index pensorum genus pensum]';
COMMENT ON COLUMN pp.plpo.ixp2 IS 'XEXCLTL — Sign: Exclude Subordinate Task List (and in All Tree) [index pensorum]';

CREATE TABLE IF NOT EXISTS pp.stas (
  cli char(3),
  ctg varchar(1),
  ixm varchar(8),
  stlal varchar(2),
  pos_num varchar(8),
  nmr varchar(8),
  vla_die date,
  sta varchar(12),
  num varchar(12),
  idx varchar(1),
  die_tbl_cre date,
  usr_cre_tbl varchar(12),
  mut date,
  nom_psn_mut varchar(12),
  die_ult_vic date,
  nom_usr_die varchar(12),
  die_vic_hir varchar(2),
  num_pos varchar(8),
  pos_cts varchar(20),
  cmn varchar(5),
  clv_pos varchar(4),
  CONSTRAINT stas_pk PRIMARY KEY (cli, ctg, ixm, stlal, pos_num, nmr, vla_die)
);
COMMENT ON TABLE pp.stas IS 'STAS — BOM Item Selection — the selection/validity layer for a BOM item node (STLTY/STLNR/STLAL/STLKN), carrying valid-from date, technical status, change number, and date-shift history. The BOM item selection table beside the already-defined MAST (material-to-BOM link), STKO (BOM header), and STPO (BOM item).';
COMMENT ON COLUMN pp.stas.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pp.stas.ctg IS 'STLTY — BOM category [categoria]';
COMMENT ON COLUMN pp.stas.ixm IS 'STLNR — Bill of material [index materiarum]';
COMMENT ON COLUMN pp.stas.stlal IS 'STLAL — Alternative BOM';
COMMENT ON COLUMN pp.stas.pos_num IS 'STLKN — BOM item node number [positio numerus]';
COMMENT ON COLUMN pp.stas.nmr IS 'STASZ — Internal counter [numerator]';
COMMENT ON COLUMN pp.stas.vla_die IS 'DATUV — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN pp.stas.sta IS 'TECHV — Technical status from [status]';
COMMENT ON COLUMN pp.stas.num IS 'AENNR — Change Number [numerus]';
COMMENT ON COLUMN pp.stas.idx IS 'LKENZ — Deletion Indicator [index]';
COMMENT ON COLUMN pp.stas.die_tbl_cre IS 'ANDAT — Date record created on [dies tabula creatus]';
COMMENT ON COLUMN pp.stas.usr_cre_tbl IS 'ANNAM — User who created record [usor creatus tabula]';
COMMENT ON COLUMN pp.stas.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pp.stas.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pp.stas.die_ult_vic IS 'DVDAT — Date of last date shift [dies ultimus vicis]';
COMMENT ON COLUMN pp.stas.nom_usr_die IS 'DVNAM — Name of the user who carried out the date shift [nomen usor dies]';
COMMENT ON COLUMN pp.stas.die_vic_hir IS 'AEHLP — Date Shift Hierarchy Indicator [dies vicis hierarchia]';
COMMENT ON COLUMN pp.stas.num_pos IS 'STVKN — Inherited node number of BOM item [numerus positio]';
COMMENT ON COLUMN pp.stas.pos_cts IS 'IDPOS — Item group [positio coetus]';
COMMENT ON COLUMN pp.stas.cmn IS 'IDVAR — Component Variant [componens]';
COMMENT ON COLUMN pp.stas.clv_pos IS 'LPSRT — Sort key within a logical item [clavis positio]';

CREATE TABLE IF NOT EXISTS pp.stko (
  cli char(3),
  ctg varchar(1),
  ixm varchar(8),
  stlal varchar(2),
  nmr varchar(8),
  vla_die date,
  sta varchar(12),
  num varchar(12),
  idx varchar(1),
  sgn varchar(1),
  cap_nmr varchar(8),
  die_tbl_cre date,
  usr_cre_tbl varchar(12),
  mut date,
  nom_psn_mut varchar(12),
  men varchar(3),
  qnt numeric(13,3),
  idx2 varchar(1),
  labor varchar(3),
  txt_lng_dmu char(1),
  txt varchar(40),
  sta2 varchar(2),
  ofc_cre varchar(4),
  die_ult_vic date,
  nom_usr_die varchar(12),
  die_vic_hir varchar(2),
  idx3 varchar(1),
  cap_sta bytea,
  yy_owning_system varchar(2),
  yy_maintained_by varchar(12),
  yy_mbombytech varchar(12),
  prd varchar(12),
  cap varchar(36),
  yy_commonid varchar(36),
  CONSTRAINT stko_pk PRIMARY KEY (cli, ctg, ixm, stlal, nmr, vla_die)
);
COMMENT ON TABLE pp.stko IS 'STKO — BOM Header — bill of material header data (category, alternative, base quantity, status). Second link in the BOM chain (MAST→STKO→STPO).';
COMMENT ON COLUMN pp.stko.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pp.stko.ctg IS 'STLTY — BOM category [categoria]';
COMMENT ON COLUMN pp.stko.ixm IS 'STLNR — Bill of material [index materiarum]';
COMMENT ON COLUMN pp.stko.stlal IS 'STLAL — Alternative BOM';
COMMENT ON COLUMN pp.stko.nmr IS 'STKOZ — Internal counter [numerator]';
COMMENT ON COLUMN pp.stko.vla_die IS 'DATUV — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN pp.stko.sta IS 'TECHV — Technical status from [status]';
COMMENT ON COLUMN pp.stko.num IS 'AENNR — Change Number [numerus]';
COMMENT ON COLUMN pp.stko.idx IS 'LKENZ — Deletion Indicator [index]';
COMMENT ON COLUMN pp.stko.sgn IS 'LOEKZ — Deletion flag for BOMs [signum]';
COMMENT ON COLUMN pp.stko.cap_nmr IS 'VGKZL — Previous header counter [caput numerator]';
COMMENT ON COLUMN pp.stko.die_tbl_cre IS 'ANDAT — Date record created on [dies tabula creatus]';
COMMENT ON COLUMN pp.stko.usr_cre_tbl IS 'ANNAM — User who created record [usor creatus tabula]';
COMMENT ON COLUMN pp.stko.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pp.stko.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pp.stko.men IS 'BMEIN — Base unit of measure for BOM [mensura]';
COMMENT ON COLUMN pp.stko.qnt IS 'BMENG — Base quantity [quantitas]';
COMMENT ON COLUMN pp.stko.idx2 IS 'CADKZ — CAD Indicator [index]';
COMMENT ON COLUMN pp.stko.labor IS 'LABOR — Laboratory/design office';
COMMENT ON COLUMN pp.stko.txt_lng_dmu IS 'LTXSP — Long Text Language, for Creation of a Change Document [textus lingua documentum mutationis]';
COMMENT ON COLUMN pp.stko.txt IS 'STKTX — Alternative BOM Text [textus]';
COMMENT ON COLUMN pp.stko.sta2 IS 'STLST — BOM status [status]';
COMMENT ON COLUMN pp.stko.ofc_cre IS 'WRKAN — Plant where BOM or alternative/variant created [officina creatus]';
COMMENT ON COLUMN pp.stko.die_ult_vic IS 'DVDAT — Date of last date shift [dies ultimus vicis]';
COMMENT ON COLUMN pp.stko.nom_usr_die IS 'DVNAM — Name of the user who carried out the date shift [nomen usor dies]';
COMMENT ON COLUMN pp.stko.die_vic_hir IS 'AEHLP — Date Shift Hierarchy Indicator [dies vicis hierarchia]';
COMMENT ON COLUMN pp.stko.idx3 IS 'ALEKZ — ALE indicator [index]';
COMMENT ON COLUMN pp.stko.cap_sta IS 'GUIDX — Global identification of a BOM header change status [caput status]';
COMMENT ON COLUMN pp.stko.yy_owning_system IS 'YY_OWNING_SYSTEM — Owning System';
COMMENT ON COLUMN pp.stko.yy_maintained_by IS 'YY_MAINTAINED_BY — Maintained By';
COMMENT ON COLUMN pp.stko.yy_mbombytech IS 'YY_MBOMBYTECH — Technology R&D Approver';
COMMENT ON COLUMN pp.stko.prd IS 'YY_MBOMBYPE — Production Engineering [productio]';
COMMENT ON COLUMN pp.stko.cap IS 'YY_PDMLINKID_H — PDMLink Header ID [caput]';
COMMENT ON COLUMN pp.stko.yy_commonid IS 'YY_COMMONID — BOMCommonID';

CREATE TABLE IF NOT EXISTS pp.stpo (
  cli char(3),
  ctg varchar(1),
  ixm varchar(8),
  pos_num varchar(8),
  nmr varchar(8),
  vla_die date,
  sta varchar(12),
  num varchar(12),
  idx varchar(1),
  vgknt varchar(8),
  pos_nmr varchar(8),
  die_tbl_cre date,
  usr_cre_tbl varchar(12),
  mut date,
  nom_psn_mut varchar(12),
  cmn varchar(18),
  ofc varchar(4),
  pos_ctg_ixm varchar(1),
  pos_num2 varchar(4),
  sortf varchar(10),
  cmn_men varchar(3),
  cmn_qnt numeric(13,3),
  fmeng varchar(1),
  cmn2 numeric(5,2),
  ope numeric(5,2),
  idx_net varchar(1),
  idx_mat varchar(1),
  mat_idx varchar(1),
  idx2 varchar(1),
  idx_pos_vdt varchar(1),
  idx_pos_prd varchar(1),
  idx_pos_ofc varchar(1),
  idx3 varchar(1),
  idx_pos varchar(1),
  idx_grd varchar(1),
  idx4 varchar(1),
  idx5 varchar(1),
  idx6 varchar(1),
  idx7 varchar(1),
  mat_pos varchar(18),
  tmp numeric(3,0),
  dtb_clv_cmn varchar(4),
  idx_pos2 varchar(1),
  pos numeric(3,0),
  cts varchar(3),
  trd_tmp numeric(3,0),
  rat_num_ven varchar(10),
  pre numeric(11,2),
  pre_uni numeric(5,0),
  cvm varchar(5),
  smp_elm varchar(10),
  num_mgn numeric(13,3),
  mgn numeric(13,3),
  mgn2 numeric(13,3),
  mgn3 numeric(13,3),
  men varchar(3),
  qnt_mgn_pos numeric(13,3),
  clv varchar(2),
  idx8 varchar(1),
  idx_pos3 varchar(1),
  txt_lng_dmu char(1),
  pos_txt varchar(40),
  pos_txt2 varchar(40),
  obi_gen_pos varchar(1),
  mat_cts varchar(9),
  amr_tmp numeric(3,0),
  gdo varchar(3),
  ndo varchar(25),
  doc_vrs varchar(2),
  doc varchar(3),
  mat numeric(5,2),
  cls_num varchar(18),
  cls_gen varchar(3),
  pos_ctg varchar(1),
  idx9 varchar(1),
  idx10 varchar(1),
  idx11 varchar(1),
  idx_grd2 varchar(1),
  idx12 varchar(1),
  oem varchar(4),
  cmn3 varchar(1),
  clmul varchar(1),
  clalt varchar(1),
  are varchar(10),
  num_obi varchar(18),
  loc_prd_mnd varchar(4),
  idx13 varchar(1),
  mat2 varchar(18),
  idx14 varchar(1),
  num_pos varchar(8),
  die_ult_vic date,
  nom_usr_die varchar(12),
  gen varchar(2),
  pos2 varchar(1),
  pos_mnd varchar(2),
  pos_cts varchar(2),
  idx_pos4 varchar(1),
  cts2 varchar(2),
  cts3 varchar(2),
  idx_vdt_mnd varchar(1),
  idx_pos_mut varchar(1),
  ctg_vdt_mnd varchar(1),
  ixm_vdt_mnd varchar(8),
  num_vdt_mnd varchar(8),
  nmr_vdt_mnd varchar(8),
  num2 varchar(8),
  idx_cnd varchar(1),
  die_vic_hir varchar(2),
  prd_cpa_are varchar(10),
  tmp_ope numeric(3,0),
  uni_tmp_ope varchar(3),
  pos_cts2 varchar(20),
  nmr2 varchar(5),
  cmn4 varchar(5),
  idx15 varchar(1),
  pos3 varchar(8),
  guid varchar(22),
  gen_pos varchar(2),
  rfr varchar(20),
  pos_sta bytea,
  rfr2 varchar(40),
  cmn5 varchar(36),
  yy_item_commonid varchar(36),
  num3 varchar(6),
  funcid varchar(40),
  CONSTRAINT stpo_pk PRIMARY KEY (cli, ctg, ixm, pos_num, nmr, vla_die)
);
COMMENT ON TABLE pp.stpo IS 'STPO — BOM Item — individual component line items of a bill of material (quantity, item category, scrap, procurement). Terminal table of the BOM chain.';
COMMENT ON COLUMN pp.stpo.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN pp.stpo.ctg IS 'STLTY — BOM category [categoria]';
COMMENT ON COLUMN pp.stpo.ixm IS 'STLNR — Bill of material [index materiarum]';
COMMENT ON COLUMN pp.stpo.pos_num IS 'STLKN — BOM item node number [positio numerus]';
COMMENT ON COLUMN pp.stpo.nmr IS 'STPOZ — Internal counter [numerator]';
COMMENT ON COLUMN pp.stpo.vla_die IS 'DATUV — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN pp.stpo.sta IS 'TECHV — Technical status from [status]';
COMMENT ON COLUMN pp.stpo.num IS 'AENNR — Change Number [numerus]';
COMMENT ON COLUMN pp.stpo.idx IS 'LKENZ — Deletion Indicator [index]';
COMMENT ON COLUMN pp.stpo.vgknt IS 'VGKNT — Predecessor Node';
COMMENT ON COLUMN pp.stpo.pos_nmr IS 'VGPZL — Previous item counter [positio numerator]';
COMMENT ON COLUMN pp.stpo.die_tbl_cre IS 'ANDAT — Date record created on [dies tabula creatus]';
COMMENT ON COLUMN pp.stpo.usr_cre_tbl IS 'ANNAM — User who created record [usor creatus tabula]';
COMMENT ON COLUMN pp.stpo.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN pp.stpo.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN pp.stpo.cmn IS 'IDNRK — BOM component [componens]';
COMMENT ON COLUMN pp.stpo.ofc IS 'PSWRK — Issuing plant [officina]';
COMMENT ON COLUMN pp.stpo.pos_ctg_ixm IS 'POSTP — Item Category (Bill of Material) [positio categoria index materiarum]';
COMMENT ON COLUMN pp.stpo.pos_num2 IS 'POSNR — BOM Item Number [positio numerus]';
COMMENT ON COLUMN pp.stpo.sortf IS 'SORTF — Sort String';
COMMENT ON COLUMN pp.stpo.cmn_men IS 'MEINS — Component unit of measure [componens mensura]';
COMMENT ON COLUMN pp.stpo.cmn_qnt IS 'MENGE — Component quantity [componens quantitas]';
COMMENT ON COLUMN pp.stpo.fmeng IS 'FMENG — Fixed qty';
COMMENT ON COLUMN pp.stpo.cmn2 IS 'AUSCH — Component scrap in percent [componens]';
COMMENT ON COLUMN pp.stpo.ope IS 'AVOAU — Operation scrap [operatio]';
COMMENT ON COLUMN pp.stpo.idx_net IS 'NETAU — Indicator: Net scrap [index netus]';
COMMENT ON COLUMN pp.stpo.idx_mat IS 'SCHGT — Indicator: Bulk Material [index materia]';
COMMENT ON COLUMN pp.stpo.mat_idx IS 'BEIKZ — Material Provision Indicator [materia index]';
COMMENT ON COLUMN pp.stpo.idx2 IS 'ERSKZ — Indicator: spare part [index]';
COMMENT ON COLUMN pp.stpo.idx_pos_vdt IS 'RVREL — Indicator: item relevant to sales [index positio venditio]';
COMMENT ON COLUMN pp.stpo.idx_pos_prd IS 'SANFE — Indicator: item relevant to production [index positio productio]';
COMMENT ON COLUMN pp.stpo.idx_pos_ofc IS 'SANIN — Indicator: item relevant to plant maintenance [index positio officina]';
COMMENT ON COLUMN pp.stpo.idx3 IS 'SANKA — Indicator for relevancy to costing [index]';
COMMENT ON COLUMN pp.stpo.idx_pos IS 'SANKO — Indicator: item relevant to engineering [index positio]';
COMMENT ON COLUMN pp.stpo.idx_grd IS 'SANVS — Indicator: high-level configuration [index gradus]';
COMMENT ON COLUMN pp.stpo.idx4 IS 'STKKZ — PM assembly indicator [index]';
COMMENT ON COLUMN pp.stpo.idx5 IS 'REKRI — Indicator: BOM is recursive [index]';
COMMENT ON COLUMN pp.stpo.idx6 IS 'REKRS — Indicator: recursiveness allowed [index]';
COMMENT ON COLUMN pp.stpo.idx7 IS 'CADPO — CAD Indicator [index]';
COMMENT ON COLUMN pp.stpo.mat_pos IS 'NFMAT — Follow-up material in BOM item - NOT IN USE [materia positio]';
COMMENT ON COLUMN pp.stpo.tmp IS 'NLFZT — Lead-time offset [tempus]';
COMMENT ON COLUMN pp.stpo.dtb_clv_cmn IS 'VERTI — Distribution key for component consumption [distributio clavis componens]';
COMMENT ON COLUMN pp.stpo.idx_pos2 IS 'ALPOS — Indicator: alternative item [index positio]';
COMMENT ON COLUMN pp.stpo.pos IS 'EWAHR — Usage probability in % (alternative item) [positio]';
COMMENT ON COLUMN pp.stpo.cts IS 'EKGRP — Purchasing Group [coetus]';
COMMENT ON COLUMN pp.stpo.trd_tmp IS 'LIFZT — Delivery time in days [traditio tempus]';
COMMENT ON COLUMN pp.stpo.rat_num_ven IS 'LIFNR — Account Number of Vendor or Creditor [ratio numerus venditor]';
COMMENT ON COLUMN pp.stpo.pre IS 'PREIS — Price [pretium]';
COMMENT ON COLUMN pp.stpo.pre_uni IS 'PEINH — Price Unit [pretium unitas]';
COMMENT ON COLUMN pp.stpo.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN pp.stpo.smp_elm IS 'SAKTO — Cost element [sumptus elementum]';
COMMENT ON COLUMN pp.stpo.num_mgn IS 'ROANZ — Number of variable-size items [numerus magnitudo]';
COMMENT ON COLUMN pp.stpo.mgn IS 'ROMS1 — Size 1 [magnitudo]';
COMMENT ON COLUMN pp.stpo.mgn2 IS 'ROMS2 — Size 2 [magnitudo]';
COMMENT ON COLUMN pp.stpo.mgn3 IS 'ROMS3 — Size 3 [magnitudo]';
COMMENT ON COLUMN pp.stpo.men IS 'ROMEI — Unit of measure for sizes 1 to 3 [mensura]';
COMMENT ON COLUMN pp.stpo.qnt_mgn_pos IS 'ROMEN — Quantity of variable-size item [quantitas magnitudo positio]';
COMMENT ON COLUMN pp.stpo.clv IS 'RFORM — Formula key [clavis]';
COMMENT ON COLUMN pp.stpo.idx8 IS 'UPSKZ — Indicator: sub-items exist [index]';
COMMENT ON COLUMN pp.stpo.idx_pos3 IS 'VALKZ — Indicator: item in more than one alternative [index positio]';
COMMENT ON COLUMN pp.stpo.txt_lng_dmu IS 'LTXSP — Long Text Language, for Creation of a Change Document [textus lingua documentum mutationis]';
COMMENT ON COLUMN pp.stpo.pos_txt IS 'POTX1 — BOM Item Text (Line 1) [positio textus]';
COMMENT ON COLUMN pp.stpo.pos_txt2 IS 'POTX2 — BOM item text (line 2) [positio textus]';
COMMENT ON COLUMN pp.stpo.obi_gen_pos IS 'OBJTY — Object type (BOM item) [obiectum genus positio]';
COMMENT ON COLUMN pp.stpo.mat_cts IS 'MATKL — Material Group [materia coetus]';
COMMENT ON COLUMN pp.stpo.amr_tmp IS 'WEBAZ — Goods Receipt Processing Time in Days [acceptio mercium tempus]';
COMMENT ON COLUMN pp.stpo.gdo IS 'DOKAR — Document Type [genus documenti]';
COMMENT ON COLUMN pp.stpo.ndo IS 'DOKNR — Document number [numerus documenti]';
COMMENT ON COLUMN pp.stpo.doc_vrs IS 'DOKVR — Document Version [documentum versio]';
COMMENT ON COLUMN pp.stpo.doc IS 'DOKTL — Document Part [documentum]';
COMMENT ON COLUMN pp.stpo.mat IS 'CSSTR — Average material purity in % [materia]';
COMMENT ON COLUMN pp.stpo.cls_num IS 'CLASS — Class number [classis numerus]';
COMMENT ON COLUMN pp.stpo.cls_gen IS 'KLART — Class Type [classis genus]';
COMMENT ON COLUMN pp.stpo.pos_ctg IS 'POTPR — Resulting item category [positio categoria]';
COMMENT ON COLUMN pp.stpo.idx9 IS 'AWAKZ — Selection indicator for configurable BOMs [index]';
COMMENT ON COLUMN pp.stpo.idx10 IS 'INSKZ — Instance indicator [index]';
COMMENT ON COLUMN pp.stpo.idx11 IS 'VCEKZ — Indicator: not displayed in configuration editor [index]';
COMMENT ON COLUMN pp.stpo.idx_grd2 IS 'VSTKZ — Indicator: not displayed in single-level configuration [index gradus]';
COMMENT ON COLUMN pp.stpo.idx12 IS 'VACKZ — Indicator: not displayed in automatic configuration [index]';
COMMENT ON COLUMN pp.stpo.oem IS 'EKORG — Purchasing Organization [organizatio emptionis]';
COMMENT ON COLUMN pp.stpo.cmn3 IS 'CLOBK — Required Component [componens]';
COMMENT ON COLUMN pp.stpo.clmul IS 'CLMUL — Multiple Selection Allowed';
COMMENT ON COLUMN pp.stpo.clalt IS 'CLALT — Alternative Display Format';
COMMENT ON COLUMN pp.stpo.are IS 'CVIEW — Organizational Area [area]';
COMMENT ON COLUMN pp.stpo.num_obi IS 'KNOBJ — Number of Object with Assigned Dependencies [numerus obiectum]';
COMMENT ON COLUMN pp.stpo.loc_prd_mnd IS 'LGORT — Issue location for production order [locus productio mandatum]';
COMMENT ON COLUMN pp.stpo.idx13 IS 'KZKUP — Indicator: co-product [index]';
COMMENT ON COLUMN pp.stpo.mat2 IS 'INTRM — Intra Material [materia]';
COMMENT ON COLUMN pp.stpo.idx14 IS 'TPEKZ — Indicator: restrictions exist [index]';
COMMENT ON COLUMN pp.stpo.num_pos IS 'STVKN — Inherited node number of BOM item [numerus positio]';
COMMENT ON COLUMN pp.stpo.die_ult_vic IS 'DVDAT — Date of last date shift [dies ultimus vicis]';
COMMENT ON COLUMN pp.stpo.nom_usr_die IS 'DVNAM — Name of the user who carried out the date shift [nomen usor dies]';
COMMENT ON COLUMN pp.stpo.gen IS 'DSPST — Explosion type [genus]';
COMMENT ON COLUMN pp.stpo.pos2 IS 'ALPST — Alternative item: strategy [positio]';
COMMENT ON COLUMN pp.stpo.pos_mnd IS 'ALPRF — Alternative item: ranking order [positio mandatum]';
COMMENT ON COLUMN pp.stpo.pos_cts IS 'ALPGR — Alternative item: group [positio coetus]';
COMMENT ON COLUMN pp.stpo.idx_pos4 IS 'KZNFP — Indicator: Follow-Up Item [index positio]';
COMMENT ON COLUMN pp.stpo.cts2 IS 'NFGRP — Follow-up group [coetus]';
COMMENT ON COLUMN pp.stpo.cts3 IS 'NFEAG — Discontinuation group [coetus]';
COMMENT ON COLUMN pp.stpo.idx_vdt_mnd IS 'KNDVB — Indicator: manual change to sales order BOM [index venditio mandatum]';
COMMENT ON COLUMN pp.stpo.idx_pos_mut IS 'KNDBZ — Indicator: BOM item changed/selected via obj. dependencies [index positio mutatus]';
COMMENT ON COLUMN pp.stpo.ctg_vdt_mnd IS 'KSTTY — BOM category of original sales order BOM item [categoria venditio mandatum]';
COMMENT ON COLUMN pp.stpo.ixm_vdt_mnd IS 'KSTNR — Bill of material for original sales order BOM item [index materiarum venditio mandatum]';
COMMENT ON COLUMN pp.stpo.num_vdt_mnd IS 'KSTKN — Node number of original sales order BOM item [numerus venditio mandatum]';
COMMENT ON COLUMN pp.stpo.nmr_vdt_mnd IS 'KSTPZ — Counter for original sales order BOM item [numerator venditio mandatum]';
COMMENT ON COLUMN pp.stpo.num2 IS 'CLSZU — Classification number [numerus]';
COMMENT ON COLUMN pp.stpo.idx_cnd IS 'KZCLB — Indicator: classification as selection condition [index condicio]';
COMMENT ON COLUMN pp.stpo.die_vic_hir IS 'AEHLP — Date Shift Hierarchy Indicator [dies vicis hierarchia]';
COMMENT ON COLUMN pp.stpo.prd_cpa_are IS 'PRVBE — Production Supply Area [productio copia area]';
COMMENT ON COLUMN pp.stpo.tmp_ope IS 'NLFZV — Lead-time offset for operation [tempus operatio]';
COMMENT ON COLUMN pp.stpo.uni_tmp_ope IS 'NLFMV — Unit for lead-time offset for operation [unitas tempus operatio]';
COMMENT ON COLUMN pp.stpo.pos_cts2 IS 'IDPOS — Item group [positio coetus]';
COMMENT ON COLUMN pp.stpo.nmr2 IS 'IDHIS — History counter [numerator]';
COMMENT ON COLUMN pp.stpo.cmn4 IS 'IDVAR — Component Variant [componens]';
COMMENT ON COLUMN pp.stpo.idx15 IS 'ALEKZ — ALE indicator [index]';
COMMENT ON COLUMN pp.stpo.pos3 IS 'ITMID — External identification of an item [positio]';
COMMENT ON COLUMN pp.stpo.guid IS 'GUID — Temporarily not used';
COMMENT ON COLUMN pp.stpo.gen_pos IS 'ITSOB — Special procurement type for BOM item [genus positio]';
COMMENT ON COLUMN pp.stpo.rfr IS 'RFPNT — Reference point for BOM transfer [referentia]';
COMMENT ON COLUMN pp.stpo.pos_sta IS 'GUIDX — Global identification of an item''s change status [positio status]';
COMMENT ON COLUMN pp.stpo.rfr2 IS 'YY_RDS_PP — Reference Designator (RDS-PP) [referentia]';
COMMENT ON COLUMN pp.stpo.cmn5 IS 'YY_PDMLINKID — PDMLink BOM Component ID [componens]';
COMMENT ON COLUMN pp.stpo.yy_item_commonid IS 'YY_ITEM_COMMONID — BOMCommonID';
COMMENT ON COLUMN pp.stpo.num3 IS 'CUFACTOR — CU: Number of CU Instances [numerus]';
COMMENT ON COLUMN pp.stpo.funcid IS 'FUNCID — Function Identifier';

