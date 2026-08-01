-- EVE Datasphere Sovereign — PostgreSQL materialisation
-- Generated 2026-08-01T02:19:53Z by scripts/emit_postgres.py. Do not hand-edit; regenerate.
-- Column names are the canonical Latin layer (EgD-LATIN-001). The legacy SAP field name
-- is preserved in COMMENT ON COLUMN and in egd_catalog.field_map, and is the join key.
-- Mirror, never cannibalise. Pour le bien-etre du peuple.

-- module QM

CREATE TABLE IF NOT EXISTS qm.qals (
  cli char(3),
  isp_num varchar(12),
  ofc varchar(4),
  isp_gen varchar(8),
  isp_org varchar(2),
  obi_num varchar(22),
  obi_ctg varchar(3),
  sta varchar(8),
  mat_cts varchar(6),
  cpa varchar(1),
  qnt_isp_cpa varchar(1),
  isp_cre varchar(1),
  stat02 varchar(1),
  tbl_mut_emp varchar(1),
  tbl_mnd varchar(1),
  isp varchar(1),
  iud varchar(1),
  fns_isp varchar(1),
  isp2 varchar(1),
  isp3 varchar(1),
  isp_grx varchar(1),
  isp4 varchar(1),
  isp5 varchar(1),
  isp_cns varchar(1),
  exm varchar(1),
  mat varchar(1),
  isp_apb varchar(1),
  stat24 varchar(1),
  iud2 varchar(1),
  cnf_exm varchar(1),
  idx_grx_tbl varchar(1),
  isp6 varchar(1),
  stat28 varchar(1),
  exm2 varchar(1),
  cpa2 varchar(1),
  iud3 varchar(1),
  mat2 varchar(1),
  ven varchar(1),
  stat47 varchar(1),
  emp varchar(1),
  stat49 varchar(1),
  prp varchar(1),
  kzskiplot varchar(1),
  dyn varchar(1),
  isp7 varchar(1),
  nsr varchar(1),
  num integer,
  kzdynerf varchar(1),
  grd varchar(1),
  stprver varchar(8),
  extnum varchar(1),
  cts_stt varchar(6),
  org_isp_men varchar(1),
  sta2 varchar(8),
  die date,
  tmp time,
  nom_usr_cre varchar(12),
  die_tbl_cre date,
  tmp2 time,
  nom_usr_mut varchar(12),
  die_tbl_mut date,
  tmp3 time,
  isp_ini_die date,
  isp_ini_tmp time,
  fin_die_isp date,
  isp_fin_tmp time,
  ixp_gen varchar(1),
  clv_ixp_cts varchar(8),
  ixp varchar(3),
  cts_nmr varchar(2),
  nmr varchar(8),
  nmr2 varchar(7),
  prd_sbs varchar(1),
  isp_cmp varchar(3),
  isp_gen2 varchar(1),
  asg_isp_prd varchar(1),
  nmr3 varchar(8),
  exm3 varchar(8),
  vrs_exm varchar(6),
  cnf_exm2 varchar(1),
  mat_num varchar(18),
  grd2 varchar(2),
  ofc2 varchar(4),
  ven_rat_num varchar(10),
  stat17 varchar(1),
  num2 varchar(10),
  rat_num_emp varchar(10),
  ixp2 varchar(3),
  clv_die_pns date,
  mnd_num varchar(12),
  itn_num_mnd varchar(10),
  obi_num2 varchar(18),
  obi_num_grx varchar(18),
  prd_vrs varchar(4),
  cap_num varchar(12),
  emp_psn varchar(10),
  ven_rat_num2 varchar(10),
  num3 varchar(10),
  mat_num2 varchar(18),
  mat_num3 varchar(18),
  grd3 varchar(2),
  grx_rqs_idx varchar(1),
  grx_num varchar(10),
  loc varchar(4),
  vld_die_grx date,
  die2 date,
  ven_grx_num varchar(15),
  cpa_idx varchar(1),
  vdt_mnd_cpa varchar(8),
  vdt_mnd_num varchar(10),
  vdt_mnd_pos varchar(6),
  oem varchar(4),
  dem_num varchar(10),
  pos_num_dem varchar(5),
  trd_lor_nmr varchar(4),
  gdo varchar(2),
  mat_doc_ann varchar(4),
  num_mat_doc varchar(10),
  pos_mat_doc varchar(4),
  din_doc date,
  mtm_gen varchar(3),
  ofc_cpa_isp varchar(4),
  loc_isp_cpa varchar(4),
  nhr_hor varchar(3),
  grp varchar(3),
  lgpla varchar(10),
  vdt_mnd_num2 varchar(10),
  pos_num_vdt varchar(6),
  trd varchar(10),
  trd_pos varchar(6),
  trd_ctg varchar(3),
  ls_route varchar(6),
  ptr varchar(3),
  psn varchar(10),
  ovd varchar(4),
  mat_emp varchar(35),
  lng_clv char(1),
  txt varchar(40),
  txt_isp varchar(1),
  txt_isp_obi varchar(40),
  num4 smallint,
  num5 smallint,
  num6 smallint,
  isp_qnt numeric(13,3),
  men_isp_qnt varchar(3),
  anzgeb numeric(6,3),
  gebeh varchar(3),
  idx_exm varchar(1),
  exm_men numeric(13,3),
  exm_mgn numeric(13,3),
  men_exm_uni varchar(3),
  dynregel varchar(3),
  tmp_isp varchar(1),
  isp8 varchar(4),
  isp_grv varchar(3),
  qnt_cpa numeric(13,3),
  qnt numeric(13,3),
  qnt_exm numeric(13,3),
  qnt_cpa2 numeric(13,3),
  qnt2 numeric(13,3),
  qnt_mat numeric(13,3),
  mat_num_qnt varchar(18),
  grx_mrc varchar(10),
  qnt_ven numeric(13,3),
  qnt_isp_cpa2 numeric(13,3),
  qnt_isp_cpa3 numeric(13,3),
  qnt3 numeric(13,3),
  exm_qnt numeric(13,3),
  qnt4 numeric(13,3),
  qnt_isp numeric(13,3),
  acl_qnt numeric(13,3),
  qnt5 numeric(13,3),
  iud4 varchar(1),
  isp9 numeric(16,3),
  qkzverf varchar(2),
  iud_org varchar(1),
  qpmatlos numeric(16,3),
  mnd_num2 varchar(12),
  ins varchar(1),
  rat_asg_ctg varchar(1),
  pos_ctg_dem varchar(1),
  rat_asg_clv varchar(1),
  csm varchar(10),
  pos_num_rqs varchar(4),
  ptm_num varchar(12),
  ptm varchar(4),
  ops_elm_eop varchar(8),
  ret_num_rat varchar(12),
  nmr4 varchar(8),
  vdt_mnd_num3 varchar(10),
  pos_num_vdt2 varchar(6),
  clv_obi varchar(8),
  rfr_die_tsc date,
  smp_obi varchar(12),
  seg_num varchar(10),
  clu varchar(10),
  ang varchar(4),
  rat_num varchar(10),
  amd varchar(4),
  soc varchar(4),
  nsr2 varchar(4),
  isp_num2 varchar(12),
  cmp varchar(2),
  isp10 varchar(1),
  idx varchar(1),
  cmp2 varchar(1),
  cmp3 varchar(1),
  cmp4 varchar(1),
  cmp5 varchar(1),
  cmp6 varchar(1),
  cmp7 varchar(1),
  cmp8 varchar(1),
  cmp9 varchar(1),
  cmp10 varchar(1),
  cmp11 varchar(1),
  cmp12 varchar(1),
  cmp13 varchar(1),
  cmp14 varchar(1),
  cmp15 varchar(1),
  cmp16 varchar(1),
  cmp17 varchar(1),
  ccu varchar(12),
  cur_pos varchar(16),
  ccu_voc_num integer,
  cur varchar(6),
  num7 varchar(12),
  responsible varchar(45),
  isp_ndo varchar(30),
  log_system varchar(10),
  exm_mgn2 numeric(13,3),
  men_exm varchar(3),
  pri integer,
  gen_isp varchar(1),
  gen_isp_iud varchar(1),
  gen_exm varchar(1),
  isp11 varchar(8),
  iud5 varchar(8),
  exm4 varchar(8),
  CONSTRAINT qals_pk PRIMARY KEY (cli, isp_num, ofc, isp_gen, isp_org, obi_num, obi_ctg, sta, mat_cts)
);
COMMENT ON TABLE qm.qals IS 'QALS — Inspection lot record — THE quality spine table. One row per inspection lot: origin, status bitfield, sampling, usage decision, quantities posted, full account assignment.';
COMMENT ON COLUMN qm.qals.cli IS 'MANDANT — Client [cliens]';
COMMENT ON COLUMN qm.qals.isp_num IS 'PRUEFLOS — Inspection Lot Number [inspectio numerus]';
COMMENT ON COLUMN qm.qals.ofc IS 'WERK — Plant [officina]';
COMMENT ON COLUMN qm.qals.isp_gen IS 'ART — Inspection Type [inspectio genus]';
COMMENT ON COLUMN qm.qals.isp_org IS 'HERKUNFT — Inspection Lot Origin [inspectio origo]';
COMMENT ON COLUMN qm.qals.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN qm.qals.obi_ctg IS 'OBTYP — Object Category [obiectum categoria]';
COMMENT ON COLUMN qm.qals.sta IS 'STSMA — Status Profile [status]';
COMMENT ON COLUMN qm.qals.mat_cts IS 'QMATAUTH — Material Authorization Group for Activities in QM [materia coetus]';
COMMENT ON COLUMN qm.qals.cpa IS 'STAT11 — GR blocked stock [copia]';
COMMENT ON COLUMN qm.qals.qnt_isp_cpa IS 'INSMK — Quantity Is or Was in Inspection Stock [quantitas inspectio copia]';
COMMENT ON COLUMN qm.qals.isp_cre IS 'STAT01 — Inspection Lot is Created Automatically [inspectio creatus]';
COMMENT ON COLUMN qm.qals.stat02 IS 'STAT02 — Partial Lots Exist';
COMMENT ON COLUMN qm.qals.tbl_mut_emp IS 'STAT04 — Data Record Was Changed Using Customer Exit [tabula mutatus emptor]';
COMMENT ON COLUMN qm.qals.tbl_mnd IS 'STAT06 — Record Appraisal Costs in Individual QM Order [tabula mandatum]';
COMMENT ON COLUMN qm.qals.isp IS 'STAT07 — Inspection with Inspection Points [inspectio]';
COMMENT ON COLUMN qm.qals.iud IS 'STAT08 — Automatic Usage Decision Planned [iudicium usus]';
COMMENT ON COLUMN qm.qals.fns_isp IS 'STAT09 — Source Inspection [fons inspectio]';
COMMENT ON COLUMN qm.qals.isp2 IS 'STAT10 — Inspection Specifications from Configuration [inspectio]';
COMMENT ON COLUMN qm.qals.isp3 IS 'STAT14 — Completion of Short-Term Inspection [inspectio]';
COMMENT ON COLUMN qm.qals.isp_grx IS 'STAT16 — Inspection Specifications from Batch Determination [inspectio grex]';
COMMENT ON COLUMN qm.qals.isp4 IS 'STAT18 — Control of Inspection Lot Creation (Lot Summary) [inspectio]';
COMMENT ON COLUMN qm.qals.isp5 IS 'STAT19 — Documentation Required for Inspection Lot [inspectio]';
COMMENT ON COLUMN qm.qals.isp_cns IS 'STAT20 — Inspection Plan Required [inspectio consilium]';
COMMENT ON COLUMN qm.qals.exm IS 'STAT21 — Enter Sample Manually [exemplum]';
COMMENT ON COLUMN qm.qals.mat IS 'STAT22 — Inspect with Material Specification [materia]';
COMMENT ON COLUMN qm.qals.isp_apb IS 'STAT23 — Inspection Lot Approval [inspectio approbatio]';
COMMENT ON COLUMN qm.qals.stat24 IS 'STAT24 — Digital Signature for Insp. Lot in Results Recording';
COMMENT ON COLUMN qm.qals.iud2 IS 'STAT25 — Digital Signature for Insp. Lot when Usage Decision Made [iudicium usus]';
COMMENT ON COLUMN qm.qals.cnf_exm IS 'STAT29 — Digital Signature for Confirmation of Phys.-Sample Drawing [confirmatio exemplum]';
COMMENT ON COLUMN qm.qals.idx_grx_tbl IS 'STAT26 — Indicator: Approved batch record required [index grex tabula]';
COMMENT ON COLUMN qm.qals.isp6 IS 'STAT27 — Inspection Lot is an R/2 Inspection Lot [inspectio]';
COMMENT ON COLUMN qm.qals.stat28 IS 'STAT28 — Select Characteristics Manually';
COMMENT ON COLUMN qm.qals.exm2 IS 'STAT31 — Trigger Sample Calculation Manually [exemplum]';
COMMENT ON COLUMN qm.qals.cpa2 IS 'STAT34 — Stock Postings Completed [copia]';
COMMENT ON COLUMN qm.qals.iud3 IS 'STAT35 — Usage Decision Has Been Made [iudicium usus]';
COMMENT ON COLUMN qm.qals.mat2 IS 'STAT45 — Material as Dynamic Modification Criterion [materia]';
COMMENT ON COLUMN qm.qals.ven IS 'STAT46 — Vendor as Dynamic Modification Criterion [venditor]';
COMMENT ON COLUMN qm.qals.stat47 IS 'STAT47 — Manufacturer as Dynamic Modification Criterion';
COMMENT ON COLUMN qm.qals.emp IS 'STAT48 — Customer as Dynamic Modification Criterion [emptor]';
COMMENT ON COLUMN qm.qals.stat49 IS 'STAT49 — Machine as Dynamic Modification Criterion';
COMMENT ON COLUMN qm.qals.prp IS 'STAT50 — Project as Dynamic Modification Criterion [propositum]';
COMMENT ON COLUMN qm.qals.kzskiplot IS 'KZSKIPLOT — Lot Skipped';
COMMENT ON COLUMN qm.qals.dyn IS 'DYN — Skips Allowed';
COMMENT ON COLUMN qm.qals.isp7 IS 'HPZ — 100% Inspection [inspectio]';
COMMENT ON COLUMN qm.qals.nsr IS 'EIN — Serial Number Management Possible [numerus serialis]';
COMMENT ON COLUMN qm.qals.num IS 'ANZSN — Number of serial numbers [numerus]';
COMMENT ON COLUMN qm.qals.kzdynerf IS 'KZDYNERF — Dynamic Modification Is Carried Out';
COMMENT ON COLUMN qm.qals.grd IS 'DYNHEAD — Level at Which Dynamic Modification Parameters Are Defined [gradus]';
COMMENT ON COLUMN qm.qals.stprver IS 'STPRVER — Sampling Procedure';
COMMENT ON COLUMN qm.qals.extnum IS 'EXTNUM — External Numbering of Units to be Inspected';
COMMENT ON COLUMN qm.qals.cts_stt IS 'STAFO — Update group for statistics update [coetus statistica]';
COMMENT ON COLUMN qm.qals.org_isp_men IS 'STAT30 — Origin of Inspection Lot Unit of Measure for LIS Interface [origo inspectio mensura]';
COMMENT ON COLUMN qm.qals.sta2 IS 'QINFSTATUS — QINF Status [status]';
COMMENT ON COLUMN qm.qals.die IS 'ENSTEHDAT — Date of Lot Creation [dies]';
COMMENT ON COLUMN qm.qals.tmp IS 'ENTSTEZEIT — Time of Lot Creation [tempus]';
COMMENT ON COLUMN qm.qals.nom_usr_cre IS 'ERSTELLER — Name of User Who Created the Data Record [nomen usor creatus]';
COMMENT ON COLUMN qm.qals.die_tbl_cre IS 'ERSTELDAT — Date on Which the Data Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN qm.qals.tmp2 IS 'ERSTELZEIT — Time of Lot Creation [tempus]';
COMMENT ON COLUMN qm.qals.nom_usr_mut IS 'AENDERER — Name of User who Most Recently Changed the Data Record [nomen usor mutatus]';
COMMENT ON COLUMN qm.qals.die_tbl_mut IS 'AENDERDAT — Date on Which Data Record Was Changed [dies tabula mutatus]';
COMMENT ON COLUMN qm.qals.tmp3 IS 'AENDERZEIT — Time of Lot Change [tempus]';
COMMENT ON COLUMN qm.qals.isp_ini_die IS 'PASTRTERM — Inspection Start Date [inspectio initium dies]';
COMMENT ON COLUMN qm.qals.isp_ini_tmp IS 'PASTRZEIT — Inspection Start Time [inspectio initium tempus]';
COMMENT ON COLUMN qm.qals.fin_die_isp IS 'PAENDTERM — End Date of the Inspection [finis dies inspectio]';
COMMENT ON COLUMN qm.qals.isp_fin_tmp IS 'PAENDZEIT — Inspection End Time [inspectio finis tempus]';
COMMENT ON COLUMN qm.qals.ixp_gen IS 'PLNTY — Task List Type [index pensorum genus]';
COMMENT ON COLUMN qm.qals.clv_ixp_cts IS 'PLNNR — Key for Task List Group [clavis index pensorum coetus]';
COMMENT ON COLUMN qm.qals.ixp IS 'PPLVERW — Task list usage [index pensorum]';
COMMENT ON COLUMN qm.qals.cts_nmr IS 'PLNAL — Group Counter [coetus numerator]';
COMMENT ON COLUMN qm.qals.nmr IS 'ZAEHL — Internal counter [numerator]';
COMMENT ON COLUMN qm.qals.nmr2 IS 'ZKRIZ — Counter for additional criteria [numerator]';
COMMENT ON COLUMN qm.qals.prd_sbs IS 'STAT15 — Production Resource/Tool Saved for Insp. Lot [productio subsidium]';
COMMENT ON COLUMN qm.qals.isp_cmp IS 'SLWBEZ — Identification for the Inspection Point Field Combination [inspectio campus]';
COMMENT ON COLUMN qm.qals.isp_gen2 IS 'STAT13 — Inspection Point Type [inspectio genus]';
COMMENT ON COLUMN qm.qals.asg_isp_prd IS 'PPKZTLZU — Partial Lot Assignment in an Inspection During Production [assignatio inspectio productio]';
COMMENT ON COLUMN qm.qals.nmr3 IS 'ZAEHL1 — Internal counter [numerator]';
COMMENT ON COLUMN qm.qals.exm3 IS 'PRBNAVERF — Sample-Drawing Procedure [exemplum]';
COMMENT ON COLUMN qm.qals.vrs_exm IS 'PRBNAVV — Version No. of the Sample-Drawing Procedure [versio exemplum]';
COMMENT ON COLUMN qm.qals.cnf_exm2 IS 'STAT12 — Confirmation Required for Physical-Sample Drawing [confirmatio exemplum]';
COMMENT ON COLUMN qm.qals.mat_num IS 'SELMATNR — Material Number [materia numerus]';
COMMENT ON COLUMN qm.qals.grd2 IS 'SELREVLV — Revision Level [gradus]';
COMMENT ON COLUMN qm.qals.ofc2 IS 'SELWERK — Plant [officina]';
COMMENT ON COLUMN qm.qals.ven_rat_num IS 'SELLIFNR — Vendor Account Number [venditor ratio numerus]';
COMMENT ON COLUMN qm.qals.stat17 IS 'STAT17 — Manufacturer Part No. Processing Active';
COMMENT ON COLUMN qm.qals.num2 IS 'SELHERST — Number of Manufacturer [numerus]';
COMMENT ON COLUMN qm.qals.rat_num_emp IS 'SELKUNNR — Account Number of Customer [ratio numerus emptor]';
COMMENT ON COLUMN qm.qals.ixp2 IS 'SELPPLVERW — Task list usage [index pensorum]';
COMMENT ON COLUMN qm.qals.clv_die_pns IS 'GUELTIGAB — Key Date for Selecting Records or Changing Task Lists [clavis dies pensum]';
COMMENT ON COLUMN qm.qals.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN qm.qals.itn_num_mnd IS 'AUFPL — Routing number of operations in the order [itinerarium numerus mandatum]';
COMMENT ON COLUMN qm.qals.obi_num2 IS 'CUOBJ — Configuration (internal object number) [obiectum numerus]';
COMMENT ON COLUMN qm.qals.obi_num_grx IS 'CUOBJ_CH — Internal object number of the batch classification [obiectum numerus grex]';
COMMENT ON COLUMN qm.qals.prd_vrs IS 'VERID — Production Version [productio versio]';
COMMENT ON COLUMN qm.qals.cap_num IS 'SA_AUFNR — Run schedule header number [caput numerus]';
COMMENT ON COLUMN qm.qals.emp_psn IS 'KUNNR — Customer (Ship-To Party) [emptor persona]';
COMMENT ON COLUMN qm.qals.ven_rat_num2 IS 'LIFNR — Vendor Account Number [venditor ratio numerus]';
COMMENT ON COLUMN qm.qals.num3 IS 'HERSTELLER — Number of Manufacturer [numerus]';
COMMENT ON COLUMN qm.qals.mat_num2 IS 'EMATNR — Material Number Corresponding to Manufacturer Part Number [materia numerus]';
COMMENT ON COLUMN qm.qals.mat_num3 IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN qm.qals.grd3 IS 'REVLV — Revision Level [gradus]';
COMMENT ON COLUMN qm.qals.grx_rqs_idx IS 'XCHPF — Batch management requirement indicator [grex requisitum index]';
COMMENT ON COLUMN qm.qals.grx_num IS 'CHARG — Batch Number [grex numerus]';
COMMENT ON COLUMN qm.qals.loc IS 'LAGORTCHRG — Storage Location [locus repositionis]';
COMMENT ON COLUMN qm.qals.vld_die_grx IS 'ZEUGNISBIS — Valid-To Date for The Batch Certificate [validus ad dies grex]';
COMMENT ON COLUMN qm.qals.die2 IS 'VFDAT — Shelf Life Expiration or Best-Before Date [dies]';
COMMENT ON COLUMN qm.qals.ven_grx_num IS 'LICHN — Vendor Batch Number [venditor grex numerus]';
COMMENT ON COLUMN qm.qals.cpa_idx IS 'SOBKZ — Special Stock Indicator [copia index]';
COMMENT ON COLUMN qm.qals.vdt_mnd_cpa IS 'PS_PSP_PNR — Valuated Sales Order Stock WBS Element [venditio mandatum copia]';
COMMENT ON COLUMN qm.qals.vdt_mnd_num IS 'KDAUF — Sales Order Number of Valuated Sales Order Stock [venditio mandatum numerus]';
COMMENT ON COLUMN qm.qals.vdt_mnd_pos IS 'KDPOS — Sales Order Item of Valuated Sales Order Stock [venditio mandatum positio]';
COMMENT ON COLUMN qm.qals.oem IS 'EKORG — Purchasing Organization [organizatio emptionis]';
COMMENT ON COLUMN qm.qals.dem_num IS 'EBELN — Purchasing Document Number [documentum emptionis numerus]';
COMMENT ON COLUMN qm.qals.pos_num_dem IS 'EBELP — Item Number of Purchasing Document [positio numerus documentum emptionis]';
COMMENT ON COLUMN qm.qals.trd_lor_nmr IS 'ETENR — Delivery Schedule Line Counter [traditio linea ordinis numerator]';
COMMENT ON COLUMN qm.qals.gdo IS 'BLART — Document Type [genus documenti]';
COMMENT ON COLUMN qm.qals.mat_doc_ann IS 'MJAHR — Material Document Year [materia documentum annus]';
COMMENT ON COLUMN qm.qals.num_mat_doc IS 'MBLNR — Number of Material Document [numerus materia documentum]';
COMMENT ON COLUMN qm.qals.pos_mat_doc IS 'ZEILE — Item in Material Document [positio materia documentum]';
COMMENT ON COLUMN qm.qals.din_doc IS 'BUDAT — Posting Date in the Document [dies inscriptionis documentum]';
COMMENT ON COLUMN qm.qals.mtm_gen IS 'BWART — Movement Type (Inventory Management) [motus genus]';
COMMENT ON COLUMN qm.qals.ofc_cpa_isp IS 'WERKVORG — Plant Where Stock for Inspection Lot Is Held [officina copia inspectio]';
COMMENT ON COLUMN qm.qals.loc_isp_cpa IS 'LAGORTVORG — Storage Location for Inspection Lot Stock [locus repositionis inspectio copia]';
COMMENT ON COLUMN qm.qals.nhr_hor IS 'LGNUM — Warehouse Number / Warehouse Complex [numerus horrei horreum]';
COMMENT ON COLUMN qm.qals.grp IS 'LGTYP — Storage Type [genus repositionis]';
COMMENT ON COLUMN qm.qals.lgpla IS 'LGPLA — Storage Bin';
COMMENT ON COLUMN qm.qals.vdt_mnd_num2 IS 'LS_KDAUF — Sales Order Number [venditio mandatum numerus]';
COMMENT ON COLUMN qm.qals.pos_num_vdt IS 'LS_KDPOS — Item Number in Sales Order [positio numerus venditio]';
COMMENT ON COLUMN qm.qals.trd IS 'LS_VBELN — Delivery [traditio]';
COMMENT ON COLUMN qm.qals.trd_pos IS 'LS_POSNR — Delivery Item [traditio positio]';
COMMENT ON COLUMN qm.qals.trd_ctg IS 'LS_ABRVW — Delivery Category [traditio categoria]';
COMMENT ON COLUMN qm.qals.ls_route IS 'LS_ROUTE — Route';
COMMENT ON COLUMN qm.qals.ptr IS 'LS_LLAND — Country of Destination [patria]';
COMMENT ON COLUMN qm.qals.psn IS 'LS_KUNAG — Sold-to party [persona]';
COMMENT ON COLUMN qm.qals.ovd IS 'LS_VKORG — Sales Organization [organizatio venditionis]';
COMMENT ON COLUMN qm.qals.mat_emp IS 'LS_KDMAT — Material belonging to the customer [materia emptor]';
COMMENT ON COLUMN qm.qals.lng_clv IS 'SPRACHE — Language Key [lingua clavis]';
COMMENT ON COLUMN qm.qals.txt IS 'KTEXTLOS — Short Text [textus]';
COMMENT ON COLUMN qm.qals.txt_isp IS 'LTEXTKZ — Long Text Exists For Inspection Lot [textus inspectio]';
COMMENT ON COLUMN qm.qals.txt_isp_obi IS 'KTEXTMAT — Short Text for Inspection Object [textus inspectio obiectum]';
COMMENT ON COLUMN qm.qals.num4 IS 'ZUSMKZAEHL — Number of Characteristics Recorded Additionally [numerus]';
COMMENT ON COLUMN qm.qals.num5 IS 'OFFENNLZMK — Number of Outstanding Short-Term Chars Which Require Conf. [numerus]';
COMMENT ON COLUMN qm.qals.num6 IS 'OFFEN_LZMK — Number of Outstanding Long-Term Chars Which Require Conf. [numerus]';
COMMENT ON COLUMN qm.qals.isp_qnt IS 'LOSMENGE — Inspection Lot Quantity [inspectio quantitas]';
COMMENT ON COLUMN qm.qals.men_isp_qnt IS 'MENGENEINH — Base Unit of Measure for The Inspection Lot Quantity [mensura inspectio quantitas]';
COMMENT ON COLUMN qm.qals.anzgeb IS 'ANZGEB — QM - No. of Containers';
COMMENT ON COLUMN qm.qals.gebeh IS 'GEBEH — Lot Container';
COMMENT ON COLUMN qm.qals.idx_exm IS 'LVS_STIKZ — Indicator: what has happened to insp.sample (QM) in WM [index exemplum]';
COMMENT ON COLUMN qm.qals.exm_men IS 'LVS_STIMG — Sample in base unit of measure provided by WM [exemplum mensura]';
COMMENT ON COLUMN qm.qals.exm_mgn IS 'GESSTICHPR — Sample Size [exemplum magnitudo]';
COMMENT ON COLUMN qm.qals.men_exm_uni IS 'EINHPROBE — Base Unit of Measure for the Sample Unit [mensura exemplum unitas]';
COMMENT ON COLUMN qm.qals.dynregel IS 'DYNREGEL — Dynamic Modification Rule';
COMMENT ON COLUMN qm.qals.tmp_isp IS 'STAT44 — Time of Dynamic Modification in Inspection Lot [tempus inspectio]';
COMMENT ON COLUMN qm.qals.isp8 IS 'PRSTUFE — Inspection Stage [inspectio]';
COMMENT ON COLUMN qm.qals.isp_grv IS 'PRSCHAERFE — Inspection Severity [inspectio gravitas]';
COMMENT ON COLUMN qm.qals.qnt_cpa IS 'LMENGE01 — Quantity Posted to Unrestricted-Use Stock [quantitas copia]';
COMMENT ON COLUMN qm.qals.qnt IS 'LMENGE02 — Quantity Posted to Scrap [quantitas]';
COMMENT ON COLUMN qm.qals.qnt_exm IS 'LMENGE03 — Quantity Posted to Sample [quantitas exemplum]';
COMMENT ON COLUMN qm.qals.qnt_cpa2 IS 'LMENGE04 — Quantity Posted to Blocked Stock [quantitas copia]';
COMMENT ON COLUMN qm.qals.qnt2 IS 'LMENGE05 — Quantity Posted to Reserves [quantitas]';
COMMENT ON COLUMN qm.qals.qnt_mat IS 'LMENGE06 — Quantity Posted to Another Material [quantitas materia]';
COMMENT ON COLUMN qm.qals.mat_num_qnt IS 'MATNRNEU — Material Number to Which the Quantity is Posted [materia numerus quantitas]';
COMMENT ON COLUMN qm.qals.grx_mrc IS 'CHARGNEU — Batch to Which Goods Are Transferred [grex merces]';
COMMENT ON COLUMN qm.qals.qnt_ven IS 'LMENGE07 — Quantity Returned to Vendor [quantitas venditor]';
COMMENT ON COLUMN qm.qals.qnt_isp_cpa2 IS 'LMENGE08 — Other Quantity Posted from Inspection Lot Stock [quantitas inspectio copia]';
COMMENT ON COLUMN qm.qals.qnt_isp_cpa3 IS 'LMENGE09 — Other Quantity (2) Posted from Inspection Lot Stock [quantitas inspectio copia]';
COMMENT ON COLUMN qm.qals.qnt3 IS 'LMENGEZUB — Quantity That Must Be Posted [quantitas]';
COMMENT ON COLUMN qm.qals.exm_qnt IS 'LMENGELZ — Sample Quantity for Long-Term Characteristics [exemplum quantitas]';
COMMENT ON COLUMN qm.qals.qnt4 IS 'LMENGEPR — Quantity Actually Inspected [quantitas]';
COMMENT ON COLUMN qm.qals.qnt_isp IS 'LMENGEZER — Quantity Destroyed During Inspection [quantitas inspectio]';
COMMENT ON COLUMN qm.qals.acl_qnt IS 'LMENGEIST — Actual Lot Quantity [actualis quantitas]';
COMMENT ON COLUMN qm.qals.qnt5 IS 'LMENGESCH — Defective Quantity in Inspected Quantity [quantitas]';
COMMENT ON COLUMN qm.qals.iud4 IS 'LTEXTKZBB — Logs Exist for Usage Decision [iudicium usus]';
COMMENT ON COLUMN qm.qals.isp9 IS 'ANTEIL — Share of Scrap in Inspection Lot [inspectio]';
COMMENT ON COLUMN qm.qals.qkzverf IS 'QKZVERF — Procedure for Calculating Quality Score';
COMMENT ON COLUMN qm.qals.iud_org IS 'STAT03 — Usage Decision Mmode (UD Origin) [iudicium usus origo]';
COMMENT ON COLUMN qm.qals.qpmatlos IS 'QPMATLOS — Allowed Share of Scrap';
COMMENT ON COLUMN qm.qals.mnd_num2 IS 'AUFNR_CO — Order Number for Recording Appraisal Costs [mandatum numerus]';
COMMENT ON COLUMN qm.qals.ins IS 'KZVBR — Consumption Posting [inscriptio]';
COMMENT ON COLUMN qm.qals.rat_asg_ctg IS 'KNTTP — Account Assignment Category [ratio assignatio categoria]';
COMMENT ON COLUMN qm.qals.pos_ctg_dem IS 'PSTYP — Item Category in Purchasing Document [positio categoria documentum emptionis]';
COMMENT ON COLUMN qm.qals.rat_asg_clv IS 'STAT05 — Account Assignment Key: Inspection Lot [ratio assignatio clavis]';
COMMENT ON COLUMN qm.qals.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN qm.qals.pos_num_rqs IS 'AUFPS — Item Number of Reservation/Dependent Requirement [positio numerus requisitum]';
COMMENT ON COLUMN qm.qals.ptm_num IS 'ANLN1 — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN qm.qals.ptm IS 'ANLN2 — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN qm.qals.ops_elm_eop IS 'KONT_PSPNR — Work Breakdown Structure Element (WBS Element) [opus elementum elementum operis]';
COMMENT ON COLUMN qm.qals.ret_num_rat IS 'NPLNR — Network Number for Account Assignment [rete numerus ratio]';
COMMENT ON COLUMN qm.qals.nmr4 IS 'APLZL — Internal counter [numerator]';
COMMENT ON COLUMN qm.qals.vdt_mnd_num3 IS 'KONT_KDAUF — Sales Order Number [venditio mandatum numerus]';
COMMENT ON COLUMN qm.qals.pos_num_vdt2 IS 'KONT_KDPOS — Item Number in Sales Order [positio numerus venditio]';
COMMENT ON COLUMN qm.qals.clv_obi IS 'IMKEY — Internal Key for Real Estate Object [clavis obiectum]';
COMMENT ON COLUMN qm.qals.rfr_die_tsc IS 'DABRZ — Reference Date for Settlement [referentia dies transactio]';
COMMENT ON COLUMN qm.qals.smp_obi IS 'KSTRG — Cost Object [sumptus obiectum]';
COMMENT ON COLUMN qm.qals.seg_num IS 'PAOBJNR — Profitability Segment Number (CO-PA) [segmentum numerus]';
COMMENT ON COLUMN qm.qals.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN qm.qals.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN qm.qals.rat_num IS 'KONTO — G/L Account Number [ratio numerus]';
COMMENT ON COLUMN qm.qals.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN qm.qals.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN qm.qals.nsr2 IS 'SERNP — Serial Number Profile [numerus serialis]';
COMMENT ON COLUMN qm.qals.isp_num2 IS 'LOS_REF — Inspection Lot Number Which Is Referenced [inspectio numerus]';
COMMENT ON COLUMN qm.qals.cmp IS 'BEARBSTATU — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qals.isp10 IS 'STAT32 — Inspection lot for stability study [inspectio]';
COMMENT ON COLUMN qm.qals.idx IS 'STAT33 — Indicator: Multiple Specifications [index]';
COMMENT ON COLUMN qm.qals.cmp2 IS 'STAT36 — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qals.cmp3 IS 'STAT37 — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qals.cmp4 IS 'STAT38 — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qals.cmp5 IS 'STAT39 — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qals.cmp6 IS 'STAT40 — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qals.cmp7 IS 'STAT41 — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qals.cmp8 IS 'STAT42 — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qals.cmp9 IS 'STAT43 — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qals.cmp10 IS 'MENGU — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qals.cmp11 IS 'KZPZADR — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qals.cmp12 IS 'KZPRADR — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qals.cmp13 IS 'ZUSCH — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qals.cmp14 IS 'ZUSTD — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qals.cmp15 IS 'KZERSTLIEF — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qals.cmp16 IS 'KZERSTMUST — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qals.cmp17 IS 'ADDON_DUMMY — Dummy Field for ADDON Structures in QM [campus]';
COMMENT ON COLUMN qm.qals.ccu IS 'WARPL — Maintenance Plan [consilium curationis]';
COMMENT ON COLUMN qm.qals.cur_pos IS 'WAPOS — Maintenance item [curatio positio]';
COMMENT ON COLUMN qm.qals.ccu_voc_num IS 'ABNUM — Maintenance Plan Call Number [consilium curationis vocatio numerus]';
COMMENT ON COLUMN qm.qals.cur IS 'STRAT — Maintenance strategy [curatio]';
COMMENT ON COLUMN qm.qals.num7 IS 'TRIALID — Trial Number [numerus]';
COMMENT ON COLUMN qm.qals.responsible IS 'RESPONSIBLE — Responsible';
COMMENT ON COLUMN qm.qals.isp_ndo IS 'INSP_DOC_NUMBER — Inspection Document Number from External System [inspectio numerus documenti]';
COMMENT ON COLUMN qm.qals.log_system IS 'LOG_SYSTEM — Logical system';
COMMENT ON COLUMN qm.qals.exm_mgn2 IS 'GESSTICHPR_EXT — Sample Size from External System [exemplum magnitudo]';
COMMENT ON COLUMN qm.qals.men_exm IS 'EINHPROBE_EXT — Unit of Measure of External Sample [mensura exemplum]';
COMMENT ON COLUMN qm.qals.pri IS 'PRIO_PUNKTE — Priority Points [prioritas]';
COMMENT ON COLUMN qm.qals.gen_isp IS 'SIGN_TYPE_RR — Signature Type: Inspection Lot Results Recording [genus inspectio]';
COMMENT ON COLUMN qm.qals.gen_isp_iud IS 'SIGN_TYPE_UD — Signature Type: Inspection Lot Usage Decision [genus inspectio iudicium usus]';
COMMENT ON COLUMN qm.qals.gen_exm IS 'SIGN_TYPE_SM — Signature Type: Physical-Sample Drawing [genus exemplum]';
COMMENT ON COLUMN qm.qals.isp11 IS 'SIGNSTRAT_RR — Signature Strategy: Inspection Lot Results Recording [inspectio]';
COMMENT ON COLUMN qm.qals.iud5 IS 'SIGNSTRAT_UD — Signature Strategy with Individual Signature: Usage Decision [iudicium usus]';
COMMENT ON COLUMN qm.qals.exm4 IS 'SIGNSTRAT_SM — Signature Strategy w. Ind.Signature: Physical-Sample Drawing [exemplum]';

CREATE TABLE IF NOT EXISTS qm.qamr (
  cli char(3),
  isp_num varchar(12),
  num_mnd_nmr varchar(8),
  nis_num varchar(4),
  tbl_sta varchar(1),
  tbl varchar(1),
  org varchar(2),
  nom_usr_cre varchar(12),
  die_tbl_cre date,
  nom_usr_mut varchar(12),
  die_tbl_mut date,
  aes_not varchar(1),
  isp_efc_aes varchar(1),
  nom varchar(12),
  isp_ini_die date,
  fin_die_isp date,
  tmp_isp time,
  fin_tmp_isp time,
  txt varchar(40),
  nis_txt varchar(1),
  lng_clv char(1),
  num_not smallint,
  num_exm integer,
  num_exm2 integer,
  anteilni varchar(1),
  exm double precision,
  num integer,
  num2 integer,
  num3 integer,
  num_exm3 integer,
  val varchar(1),
  val2 varchar(1),
  val3 varchar(1),
  val4 varchar(1),
  val5 varchar(1),
  val6 varchar(1),
  val7 varchar(1),
  val8 varchar(1),
  val9 varchar(1),
  val10 double precision,
  medianwert double precision,
  val11 double precision,
  mittelwert double precision,
  varianz double precision,
  moment3 double precision,
  moment4 double precision,
  anteilo double precision,
  anteilu double precision,
  num4 smallint,
  val12 varchar(1),
  ivarianz double precision,
  gen_cod_cts varchar(1),
  cod_cts varchar(8),
  cod varchar(4),
  vrs_num varchar(6),
  gen_cod_cts2 varchar(1),
  cod_cts2 varchar(8),
  cod2 varchar(4),
  vrs_num2 varchar(6),
  gen_cod_cts3 varchar(1),
  cod_cts3 varchar(8),
  cod3 varchar(4),
  vrs_num3 varchar(6),
  gen_cod_cts4 varchar(1),
  cod_cts4 varchar(8),
  cod4 varchar(4),
  vrs_num4 varchar(6),
  gen_cod_cts5 varchar(1),
  cod_cts5 varchar(8),
  cod5 varchar(4),
  vrs_num5 varchar(6),
  cls varchar(2),
  not_efc_cnf varchar(1),
  maschine varchar(18),
  mnu varchar(4),
  aendbeleg varchar(1),
  aes varchar(1),
  tmp_tbl_cre time,
  tmp_tbl_ult time,
  not_ varchar(1),
  val13 varchar(25),
  num5 smallint,
  inpproc_ready varchar(1),
  sign_id varchar(22),
  sta varchar(1),
  CONSTRAINT qamr_pk PRIMARY KEY (cli, isp_num, num_mnd_nmr, nis_num)
);
COMMENT ON TABLE qm.qamr IS 'QAMR — Characteristic Results During Inspection Processing — the aggregated measured-value record for one inspection characteristic within an inspection lot (statistics: mean, median, min/max, variance, defect counts, valuation, defect-code assignment). One of the two measured-value tables alongside QASR (per-sample results); rolls up to the usage decision in QAVE.';
COMMENT ON COLUMN qm.qamr.cli IS 'MANDANT — Client [cliens]';
COMMENT ON COLUMN qm.qamr.isp_num IS 'PRUEFLOS — Inspection Lot Number [inspectio numerus]';
COMMENT ON COLUMN qm.qamr.num_mnd_nmr IS 'VORGLFNR — Current Node Number from Order Counter APLZL [numerus mandatum numerator]';
COMMENT ON COLUMN qm.qamr.nis_num IS 'MERKNR — Inspection Characteristic Number [nota inspectionis numerus]';
COMMENT ON COLUMN qm.qamr.tbl_sta IS 'SATZSTATUS — Results Record Status [tabula status]';
COMMENT ON COLUMN qm.qamr.tbl IS 'ATTRIBUT — Attribute of the Results Record (Valid, Invalid,...) [tabula]';
COMMENT ON COLUMN qm.qamr.org IS 'QERGDATH — Origin of Results Data [origo]';
COMMENT ON COLUMN qm.qamr.nom_usr_cre IS 'ERSTELLER — Name of User Who Created the Data Record [nomen usor creatus]';
COMMENT ON COLUMN qm.qamr.die_tbl_cre IS 'ERSTELLDAT — Date on Which the Data Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN qm.qamr.nom_usr_mut IS 'AENDERER — Name of User who Most Recently Changed the Data Record [nomen usor mutatus]';
COMMENT ON COLUMN qm.qamr.die_tbl_mut IS 'AENDERDAT — Date on Which Data Record Was Changed [dies tabula mutatus]';
COMMENT ON COLUMN qm.qamr.aes_not IS 'DBEWERTG — Valuation of the Characteristic for Dynamic Modification [aestimatio nota]';
COMMENT ON COLUMN qm.qamr.isp_efc_aes IS 'MBEWERTG — Inspection Result Valuation [inspectio effectus aestimatio]';
COMMENT ON COLUMN qm.qamr.nom IS 'PRUEFER — Name of the Inspector [nomen]';
COMMENT ON COLUMN qm.qamr.isp_ini_die IS 'PRUEFDATUV — Inspection Start Date [inspectio initium dies]';
COMMENT ON COLUMN qm.qamr.fin_die_isp IS 'PRUEFDATUB — End Date of the Inspection [finis dies inspectio]';
COMMENT ON COLUMN qm.qamr.tmp_isp IS 'PRUEFZEITV — Starting Time of the Inspection [tempus inspectio]';
COMMENT ON COLUMN qm.qamr.fin_tmp_isp IS 'PRUEFZEITB — End Time of the Inspection [finis tempus inspectio]';
COMMENT ON COLUMN qm.qamr.txt IS 'PRUEFBEMKT — Short Text [textus]';
COMMENT ON COLUMN qm.qamr.nis_txt IS 'PRLTEXTKZ — Inspection Characteristic Long Text Exists [nota inspectionis textus]';
COMMENT ON COLUMN qm.qamr.lng_clv IS 'LTEXTSPR — Language Key [lingua clavis]';
COMMENT ON COLUMN qm.qamr.num_not IS 'ISTSTPANZ — Number of Partial Samples for the Characteristic [numerus nota]';
COMMENT ON COLUMN qm.qamr.num_exm IS 'ISTSTPUMF — Number of Recorded Sample Units [numerus exemplum]';
COMMENT ON COLUMN qm.qamr.num_exm2 IS 'ANZFEHLEH — Number of Nonconforming Sample Units [numerus exemplum]';
COMMENT ON COLUMN qm.qamr.anteilni IS 'ANTEILNI — Not Initialized for Fraction';
COMMENT ON COLUMN qm.qamr.exm IS 'ANTEIL — Estimated Fraction of Nonconforming Sample Units [exemplum]';
COMMENT ON COLUMN qm.qamr.num IS 'ANZFEHLER — Number of Defects Found [numerus]';
COMMENT ON COLUMN qm.qamr.num2 IS 'ANZWERTO — Number of Measured Values Above the Tolerance Range [numerus]';
COMMENT ON COLUMN qm.qamr.num3 IS 'ANZWERTU — Number of Measured Values Below the Tolerance Range [numerus]';
COMMENT ON COLUMN qm.qamr.num_exm3 IS 'ANZWERTG — Number of Inspected Sample Units [numerus exemplum]';
COMMENT ON COLUMN qm.qamr.val IS 'MAXWERTNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qamr.val2 IS 'MEDIANNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qamr.val3 IS 'MINWERTNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qamr.val4 IS 'MITTELWNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qamr.val5 IS 'VARIANZNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qamr.val6 IS 'MOMENT3NI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qamr.val7 IS 'MOMENT4NI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qamr.val8 IS 'ANTEILONI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qamr.val9 IS 'ANTEILUNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qamr.val10 IS 'MAXWERT — Maximum Value of the Valid Measured Values [valor]';
COMMENT ON COLUMN qm.qamr.medianwert IS 'MEDIANWERT — Median of Valid Measured Values';
COMMENT ON COLUMN qm.qamr.val11 IS 'MINWERT — Minimum Value of the Valid Measured Values [valor]';
COMMENT ON COLUMN qm.qamr.mittelwert IS 'MITTELWERT — Arithmetic Mean of Valid Measured Values';
COMMENT ON COLUMN qm.qamr.varianz IS 'VARIANZ — Dispersion (Variance) of Valid Measured Values';
COMMENT ON COLUMN qm.qamr.moment3 IS 'MOMENT3 — Third Central Moment of Valid Measured Values';
COMMENT ON COLUMN qm.qamr.moment4 IS 'MOMENT4 — Fourth Central Moment of Valid Measured Values';
COMMENT ON COLUMN qm.qamr.anteilo IS 'ANTEILO — Estimated Fraction Above the Tolerance Range';
COMMENT ON COLUMN qm.qamr.anteilu IS 'ANTEILU — Estimated Fraction Below the Tolerance Range';
COMMENT ON COLUMN qm.qamr.num4 IS 'GUELSTPANZ — Number of Valid Partial Samples [numerus]';
COMMENT ON COLUMN qm.qamr.val12 IS 'IVARIANZNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qamr.ivarianz IS 'IVARIANZ — Internal Dispersion of Valid Measured Values';
COMMENT ON COLUMN qm.qamr.gen_cod_cts IS 'KATALGART1 — Catalog Type of Assigned Code Group or Selected Set [genus codex coetus]';
COMMENT ON COLUMN qm.qamr.cod_cts IS 'GRUPPE1 — Code Group [codex coetus]';
COMMENT ON COLUMN qm.qamr.cod IS 'CODE1 — Code [codex]';
COMMENT ON COLUMN qm.qamr.vrs_num IS 'VERSION1 — Version Number [versio numerus]';
COMMENT ON COLUMN qm.qamr.gen_cod_cts2 IS 'KATALGART2 — Catalog Type of Assigned Code Group or Selected Set [genus codex coetus]';
COMMENT ON COLUMN qm.qamr.cod_cts2 IS 'GRUPPE2 — Code Group [codex coetus]';
COMMENT ON COLUMN qm.qamr.cod2 IS 'CODE2 — Code [codex]';
COMMENT ON COLUMN qm.qamr.vrs_num2 IS 'VERSION2 — Version Number [versio numerus]';
COMMENT ON COLUMN qm.qamr.gen_cod_cts3 IS 'KATALGART3 — Catalog Type of Assigned Code Group or Selected Set [genus codex coetus]';
COMMENT ON COLUMN qm.qamr.cod_cts3 IS 'GRUPPE3 — Code Group [codex coetus]';
COMMENT ON COLUMN qm.qamr.cod3 IS 'CODE3 — Code [codex]';
COMMENT ON COLUMN qm.qamr.vrs_num3 IS 'VERSION3 — Version Number [versio numerus]';
COMMENT ON COLUMN qm.qamr.gen_cod_cts4 IS 'KATALGART4 — Catalog Type of Assigned Code Group or Selected Set [genus codex coetus]';
COMMENT ON COLUMN qm.qamr.cod_cts4 IS 'GRUPPE4 — Code Group [codex coetus]';
COMMENT ON COLUMN qm.qamr.cod4 IS 'CODE4 — Code [codex]';
COMMENT ON COLUMN qm.qamr.vrs_num4 IS 'VERSION4 — Version Number [versio numerus]';
COMMENT ON COLUMN qm.qamr.gen_cod_cts5 IS 'KATALGART5 — Catalog Type of Assigned Code Group or Selected Set [genus codex coetus]';
COMMENT ON COLUMN qm.qamr.cod_cts5 IS 'GRUPPE5 — Code Group [codex coetus]';
COMMENT ON COLUMN qm.qamr.cod5 IS 'CODE5 — Code [codex]';
COMMENT ON COLUMN qm.qamr.vrs_num5 IS 'VERSION5 — Version Number [versio numerus]';
COMMENT ON COLUMN qm.qamr.cls IS 'FEHLKLAS — Defect Class [classis]';
COMMENT ON COLUMN qm.qamr.not_efc_cnf IS 'SENDEFLAG — Characteristic Result Confirmation from Control Station [nota effectus confirmatio]';
COMMENT ON COLUMN qm.qamr.maschine IS 'MASCHINE — General Information';
COMMENT ON COLUMN qm.qamr.mnu IS 'POSITION — Test Position [munus]';
COMMENT ON COLUMN qm.qamr.aendbeleg IS 'AENDBELEG — Create Change Documents During Results Recording';
COMMENT ON COLUMN qm.qamr.aes IS 'KZBEWERTG — Valuation Copied or Forced [aestimatio]';
COMMENT ON COLUMN qm.qamr.tmp_tbl_cre IS 'ZEITERSTL — Time at which data record was created [tempus tabula creatus]';
COMMENT ON COLUMN qm.qamr.tmp_tbl_ult IS 'ZEITAEND — Time at which data record was last changed [tempus tabula ultimus]';
COMMENT ON COLUMN qm.qamr.not_ IS 'KZVERDICHT — Reduced No. of Samples for Characteristic Summarization [nota]';
COMMENT ON COLUMN qm.qamr.val13 IS 'ORIGINAL_INPUT — Original Value Before Input Processing [valor]';
COMMENT ON COLUMN qm.qamr.num5 IS 'DIFF_DEC_PLACES — Different Number of Decimal Places [numerus]';
COMMENT ON COLUMN qm.qamr.inpproc_ready IS 'INPPROC_READY — Input Processing Successfully Completed';
COMMENT ON COLUMN qm.qamr.sign_id IS 'SIGN_ID — Digital Signature for Process';
COMMENT ON COLUMN qm.qamr.sta IS 'SIGN_STATE — Status of Signature Process [status]';

CREATE TABLE IF NOT EXISTS qm.qasr (
  cli char(3),
  isp_num varchar(12),
  num_mnd_nmr varchar(8),
  nis_num varchar(4),
  num_exm varchar(6),
  tbl_sta varchar(1),
  tbl varchar(1),
  org varchar(2),
  nom_usr_cre varchar(12),
  die_tbl_cre date,
  nom_usr_mut varchar(12),
  die_tbl_mut date,
  isp_efc_aes varchar(1),
  aes_not varchar(1),
  nom varchar(12),
  isp_ini_die date,
  fin_die_isp date,
  tmp_isp time,
  fin_tmp_isp time,
  txt varchar(40),
  nis_txt varchar(1),
  lng_clv char(1),
  num_exm2 integer,
  num_exm3 smallint,
  anteilni varchar(1),
  exm double precision,
  num smallint,
  num2 smallint,
  num3 smallint,
  num_exm4 smallint,
  val varchar(1),
  val2 varchar(1),
  val3 varchar(1),
  val4 varchar(1),
  val5 varchar(1),
  val6 varchar(1),
  val7 varchar(1),
  val8 varchar(1),
  val9 varchar(1),
  val10 double precision,
  medianwert double precision,
  val11 double precision,
  mittelwert double precision,
  varianz double precision,
  moment3 double precision,
  moment4 double precision,
  anteilo double precision,
  anteilu double precision,
  gen_cod_cts varchar(1),
  cod_cts varchar(8),
  cod varchar(4),
  vrs_num varchar(6),
  gen_cod_cts2 varchar(1),
  cod_cts2 varchar(8),
  cod2 varchar(4),
  vrs_num2 varchar(6),
  gen_cod_cts3 varchar(1),
  cod_cts3 varchar(8),
  cod3 varchar(4),
  vrs_num3 varchar(6),
  gen_cod_cts4 varchar(1),
  cod_cts4 varchar(8),
  cod4 varchar(4),
  vrs_num4 varchar(6),
  gen_cod_cts5 varchar(1),
  cod_cts5 varchar(8),
  cod5 varchar(4),
  vrs_num5 varchar(6),
  cls varchar(2),
  not_efc_cnf varchar(1),
  maschine varchar(18),
  mnu varchar(4),
  aendbeleg varchar(1),
  aes varchar(1),
  tmp_tbl_cre time,
  tmp_tbl_ult time,
  val12 varchar(25),
  num4 smallint,
  inpproc_ready varchar(1),
  sign_id varchar(22),
  sta varchar(1),
  CONSTRAINT qasr_pk PRIMARY KEY (cli, isp_num, num_mnd_nmr, nis_num, num_exm)
);
COMMENT ON TABLE qm.qasr IS 'QASR — Sample Results for Inspection Characteristics — the per-partial-sample measured-value record for one inspection characteristic within an inspection lot (statistics, defect counts, valuation, defect-code assignment), keyed one level finer than QAMR by PROBENR. One of the two measured-value tables alongside QAMR (characteristic-level results); rolls up to the usage decision in QAVE.';
COMMENT ON COLUMN qm.qasr.cli IS 'MANDANT — Client [cliens]';
COMMENT ON COLUMN qm.qasr.isp_num IS 'PRUEFLOS — Inspection Lot Number [inspectio numerus]';
COMMENT ON COLUMN qm.qasr.num_mnd_nmr IS 'VORGLFNR — Current Node Number from Order Counter APLZL [numerus mandatum numerator]';
COMMENT ON COLUMN qm.qasr.nis_num IS 'MERKNR — Inspection Characteristic Number [nota inspectionis numerus]';
COMMENT ON COLUMN qm.qasr.num_exm IS 'PROBENR — Number of the Partial Sample [numerus exemplum]';
COMMENT ON COLUMN qm.qasr.tbl_sta IS 'SATZSTATUS — Results Record Status [tabula status]';
COMMENT ON COLUMN qm.qasr.tbl IS 'ATTRIBUT — Attribute of the Results Record (Valid, Invalid,...) [tabula]';
COMMENT ON COLUMN qm.qasr.org IS 'QERGDATH — Origin of Results Data [origo]';
COMMENT ON COLUMN qm.qasr.nom_usr_cre IS 'ERSTELLER — Name of User Who Created the Data Record [nomen usor creatus]';
COMMENT ON COLUMN qm.qasr.die_tbl_cre IS 'ERSTELLDAT — Date on Which the Data Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN qm.qasr.nom_usr_mut IS 'AENDERER — Name of User who Most Recently Changed the Data Record [nomen usor mutatus]';
COMMENT ON COLUMN qm.qasr.die_tbl_mut IS 'AENDERDAT — Date on Which Data Record Was Changed [dies tabula mutatus]';
COMMENT ON COLUMN qm.qasr.isp_efc_aes IS 'MBEWERTG — Inspection Result Valuation [inspectio effectus aestimatio]';
COMMENT ON COLUMN qm.qasr.aes_not IS 'DBEWERTG — Valuation of the Characteristic for Dynamic Modification [aestimatio nota]';
COMMENT ON COLUMN qm.qasr.nom IS 'PRUEFER — Name of the Inspector [nomen]';
COMMENT ON COLUMN qm.qasr.isp_ini_die IS 'PRUEFDATUV — Inspection Start Date [inspectio initium dies]';
COMMENT ON COLUMN qm.qasr.fin_die_isp IS 'PRUEFDATUB — End Date of the Inspection [finis dies inspectio]';
COMMENT ON COLUMN qm.qasr.tmp_isp IS 'PRUEFZEITV — Starting Time of the Inspection [tempus inspectio]';
COMMENT ON COLUMN qm.qasr.fin_tmp_isp IS 'PRUEFZEITB — End Time of the Inspection [finis tempus inspectio]';
COMMENT ON COLUMN qm.qasr.txt IS 'PRUEFBEMKT — Short Text [textus]';
COMMENT ON COLUMN qm.qasr.nis_txt IS 'PRLTEXTKZ — Inspection Characteristic Long Text Exists [nota inspectionis textus]';
COMMENT ON COLUMN qm.qasr.lng_clv IS 'LTEXTSPR — Language Key [lingua clavis]';
COMMENT ON COLUMN qm.qasr.num_exm2 IS 'ISTSTPUMF — Number of Recorded Sample Units [numerus exemplum]';
COMMENT ON COLUMN qm.qasr.num_exm3 IS 'ANZFEHLEH — Number of Nonconforming Sample Units [numerus exemplum]';
COMMENT ON COLUMN qm.qasr.anteilni IS 'ANTEILNI — Not Initialized for Fraction';
COMMENT ON COLUMN qm.qasr.exm IS 'ANTEIL — Estimated Fraction of Nonconforming Sample Units [exemplum]';
COMMENT ON COLUMN qm.qasr.num IS 'ANZFEHLER — Number of Defects Found [numerus]';
COMMENT ON COLUMN qm.qasr.num2 IS 'ANZWERTO — Number of Measured Values Above the Tolerance Range [numerus]';
COMMENT ON COLUMN qm.qasr.num3 IS 'ANZWERTU — Number of Measured Values Below the Tolerance Range [numerus]';
COMMENT ON COLUMN qm.qasr.num_exm4 IS 'ANZWERTG — Number of Inspected Sample Units [numerus exemplum]';
COMMENT ON COLUMN qm.qasr.val IS 'MAXWERTNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qasr.val2 IS 'MEDIANNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qasr.val3 IS 'MINWERTNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qasr.val4 IS 'MITTELWNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qasr.val5 IS 'VARIANZNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qasr.val6 IS 'MOMENT3NI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qasr.val7 IS 'MOMENT4NI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qasr.val8 IS 'ANTEILONI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qasr.val9 IS 'ANTEILUNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qasr.val10 IS 'MAXWERT — Maximum Value of the Valid Measured Values [valor]';
COMMENT ON COLUMN qm.qasr.medianwert IS 'MEDIANWERT — Median of Valid Measured Values';
COMMENT ON COLUMN qm.qasr.val11 IS 'MINWERT — Minimum Value of the Valid Measured Values [valor]';
COMMENT ON COLUMN qm.qasr.mittelwert IS 'MITTELWERT — Arithmetic Mean of Valid Measured Values';
COMMENT ON COLUMN qm.qasr.varianz IS 'VARIANZ — Dispersion (Variance) of Valid Measured Values';
COMMENT ON COLUMN qm.qasr.moment3 IS 'MOMENT3 — Third Central Moment of Valid Measured Values';
COMMENT ON COLUMN qm.qasr.moment4 IS 'MOMENT4 — Fourth Central Moment of Valid Measured Values';
COMMENT ON COLUMN qm.qasr.anteilo IS 'ANTEILO — Estimated Fraction Above the Tolerance Range';
COMMENT ON COLUMN qm.qasr.anteilu IS 'ANTEILU — Estimated Fraction Below the Tolerance Range';
COMMENT ON COLUMN qm.qasr.gen_cod_cts IS 'KATALGART1 — Catalog Type of Assigned Code Group or Selected Set [genus codex coetus]';
COMMENT ON COLUMN qm.qasr.cod_cts IS 'GRUPPE1 — Code Group [codex coetus]';
COMMENT ON COLUMN qm.qasr.cod IS 'CODE1 — Code [codex]';
COMMENT ON COLUMN qm.qasr.vrs_num IS 'VERSION1 — Version Number [versio numerus]';
COMMENT ON COLUMN qm.qasr.gen_cod_cts2 IS 'KATALGART2 — Catalog Type of Assigned Code Group or Selected Set [genus codex coetus]';
COMMENT ON COLUMN qm.qasr.cod_cts2 IS 'GRUPPE2 — Code Group [codex coetus]';
COMMENT ON COLUMN qm.qasr.cod2 IS 'CODE2 — Code [codex]';
COMMENT ON COLUMN qm.qasr.vrs_num2 IS 'VERSION2 — Version Number [versio numerus]';
COMMENT ON COLUMN qm.qasr.gen_cod_cts3 IS 'KATALGART3 — Catalog Type of Assigned Code Group or Selected Set [genus codex coetus]';
COMMENT ON COLUMN qm.qasr.cod_cts3 IS 'GRUPPE3 — Code Group [codex coetus]';
COMMENT ON COLUMN qm.qasr.cod3 IS 'CODE3 — Code [codex]';
COMMENT ON COLUMN qm.qasr.vrs_num3 IS 'VERSION3 — Version Number [versio numerus]';
COMMENT ON COLUMN qm.qasr.gen_cod_cts4 IS 'KATALGART4 — Catalog Type of Assigned Code Group or Selected Set [genus codex coetus]';
COMMENT ON COLUMN qm.qasr.cod_cts4 IS 'GRUPPE4 — Code Group [codex coetus]';
COMMENT ON COLUMN qm.qasr.cod4 IS 'CODE4 — Code [codex]';
COMMENT ON COLUMN qm.qasr.vrs_num4 IS 'VERSION4 — Version Number [versio numerus]';
COMMENT ON COLUMN qm.qasr.gen_cod_cts5 IS 'KATALGART5 — Catalog Type of Assigned Code Group or Selected Set [genus codex coetus]';
COMMENT ON COLUMN qm.qasr.cod_cts5 IS 'GRUPPE5 — Code Group [codex coetus]';
COMMENT ON COLUMN qm.qasr.cod5 IS 'CODE5 — Code [codex]';
COMMENT ON COLUMN qm.qasr.vrs_num5 IS 'VERSION5 — Version Number [versio numerus]';
COMMENT ON COLUMN qm.qasr.cls IS 'FEHLKLAS — Defect Class [classis]';
COMMENT ON COLUMN qm.qasr.not_efc_cnf IS 'SENDEFLAG — Characteristic Result Confirmation from Control Station [nota effectus confirmatio]';
COMMENT ON COLUMN qm.qasr.maschine IS 'MASCHINE — General Information';
COMMENT ON COLUMN qm.qasr.mnu IS 'POSITION — Test Position [munus]';
COMMENT ON COLUMN qm.qasr.aendbeleg IS 'AENDBELEG — Create Change Documents During Results Recording';
COMMENT ON COLUMN qm.qasr.aes IS 'KZBEWERTG — Valuation Copied or Forced [aestimatio]';
COMMENT ON COLUMN qm.qasr.tmp_tbl_cre IS 'ZEITERSTL — Time at which data record was created [tempus tabula creatus]';
COMMENT ON COLUMN qm.qasr.tmp_tbl_ult IS 'ZEITAEND — Time at which data record was last changed [tempus tabula ultimus]';
COMMENT ON COLUMN qm.qasr.val12 IS 'ORIGINAL_INPUT — Original Value Before Input Processing [valor]';
COMMENT ON COLUMN qm.qasr.num4 IS 'DIFF_DEC_PLACES — Different Number of Decimal Places [numerus]';
COMMENT ON COLUMN qm.qasr.inpproc_ready IS 'INPPROC_READY — Input Processing Successfully Completed';
COMMENT ON COLUMN qm.qasr.sign_id IS 'SIGN_ID — Digital Signature for Process';
COMMENT ON COLUMN qm.qasr.sta IS 'SIGN_STATE — Status of Signature Process [status]';

CREATE TABLE IF NOT EXISTS qm.qave (
  cli char(3),
  isp_num varchar(12),
  isp_uni varchar(1),
  nmr_iud varchar(6),
  vkatart varchar(1),
  ofc varchar(4),
  iud varchar(8),
  cod_cts_iud varchar(8),
  iud_cod varchar(4),
  vrs_num_tbl varchar(6),
  vrs_num_cod varchar(6),
  cod_aes varchar(1),
  aes varchar(1),
  vfolgeakti varchar(8),
  qkennzahl numeric(3,0),
  txt_iud varchar(1),
  psn_iud varchar(12),
  die_cod_iud date,
  tmp_iud time,
  psn_mut_iud varchar(12),
  die_iud date,
  tmp_iud_mut time,
  cts_stt varchar(6),
  num varchar(6),
  num_mnd_nmr varchar(8),
  CONSTRAINT qave_pk PRIMARY KEY (cli, isp_num, isp_uni, nmr_iud)
);
COMMENT ON TABLE qm.qave IS 'QAVE — Inspection Processing: Usage Decision — the final disposition record for an inspection lot (or partial lot/single unit), carrying the selected-set/code-group/code combination, valuation, follow-up action, quality score, and who/when recorded or changed the decision. The usage-decision table alongside the measured-value tables QAMR/QASR.';
COMMENT ON COLUMN qm.qave.cli IS 'MANDANT — Client [cliens]';
COMMENT ON COLUMN qm.qave.isp_num IS 'PRUEFLOS — Inspection Lot Number [inspectio numerus]';
COMMENT ON COLUMN qm.qave.isp_uni IS 'KZART — Inspection Lot, Partial Lot, Single Unit, Interval [inspectio unitas]';
COMMENT ON COLUMN qm.qave.nmr_iud IS 'ZAEHLER — Counter for Usage Decision [numerator iudicium usus]';
COMMENT ON COLUMN qm.qave.vkatart IS 'VKATART — Catalog';
COMMENT ON COLUMN qm.qave.ofc IS 'VWERKS — Plant [officina]';
COMMENT ON COLUMN qm.qave.iud IS 'VAUSWAHLMG — Selected Set of the Usage Decision [iudicium usus]';
COMMENT ON COLUMN qm.qave.cod_cts_iud IS 'VCODEGRP — Code Group of the Usage Decision [codex coetus iudicium usus]';
COMMENT ON COLUMN qm.qave.iud_cod IS 'VCODE — Usage Decision Code [iudicium usus codex]';
COMMENT ON COLUMN qm.qave.vrs_num_tbl IS 'VERSIONAM — Version Number of the Selected Set Record [versio numerus tabula]';
COMMENT ON COLUMN qm.qave.vrs_num_cod IS 'VERSIONCD — Version Number of the Code Record [versio numerus codex]';
COMMENT ON COLUMN qm.qave.cod_aes IS 'VBEWERTUNG — Code Valuation [codex aestimatio]';
COMMENT ON COLUMN qm.qave.aes IS 'DBEWERTUNG — Dynamic Modif. Valuation According to Worst Case Principle [aestimatio]';
COMMENT ON COLUMN qm.qave.vfolgeakti IS 'VFOLGEAKTI — Follow-Up Action';
COMMENT ON COLUMN qm.qave.qkennzahl IS 'QKENNZAHL — Quality Score';
COMMENT ON COLUMN qm.qave.txt_iud IS 'LTEXTKZ — Long Text for Usage Decision [textus iudicium usus]';
COMMENT ON COLUMN qm.qave.psn_iud IS 'VNAME — Person who Made the Usage Decision [persona iudicium usus]';
COMMENT ON COLUMN qm.qave.die_cod_iud IS 'VDATUM — Date of Code Used for Usage Decision [dies codex iudicium usus]';
COMMENT ON COLUMN qm.qave.tmp_iud IS 'VEZEITERF — Time when Usage Decision Was Recorded [tempus iudicium usus]';
COMMENT ON COLUMN qm.qave.psn_mut_iud IS 'VAENAME — Person who Changed the Usage Decision [persona mutatus iudicium usus]';
COMMENT ON COLUMN qm.qave.die_iud IS 'VAEDATUM — Change Date of Usage Decision [dies iudicium usus]';
COMMENT ON COLUMN qm.qave.tmp_iud_mut IS 'VEZEITAEN — Time when Usage Decision Changed [tempus iudicium usus mutatus]';
COMMENT ON COLUMN qm.qave.cts_stt IS 'STAFO — Update group for statistics update [coetus statistica]';
COMMENT ON COLUMN qm.qave.num IS 'TEILLOS — Partial lot number [numerus]';
COMMENT ON COLUMN qm.qave.num_mnd_nmr IS 'VORGLFNR — Current Node Number from Order Counter APLZL [numerus mandatum numerator]';

CREATE TABLE IF NOT EXISTS qm.qinf (
  cli char(3),
  mat_num varchar(18),
  nmr varchar(6),
  nom_usr_cre varchar(12),
  die_tin date,
  nom_usr_mut varchar(12),
  die_tin2 date,
  ven_rat_num varchar(10),
  ofc varchar(4),
  die_ems date,
  ems_qnt varchar(1),
  men_mat varchar(3),
  qnt_mat numeric(13,3),
  qnt_mat2 numeric(13,3),
  die_qnt date,
  csa varchar(40),
  lng_clv char(1),
  sperrfkt varchar(2),
  qvvorh varchar(1),
  isp_tin varchar(1),
  ven varchar(4),
  die date,
  isp_gen_org varchar(8),
  nis_txt varchar(1),
  lng_clv2 char(1),
  isp_sta varchar(12),
  isp_sta2 varchar(12),
  sta_tin varchar(8),
  obi_num_sta varchar(22),
  isp_fns varchar(1),
  tmp_fns_isp smallint,
  grd varchar(2),
  sgn varchar(1),
  certcontrol varchar(1),
  CONSTRAINT qinf_pk PRIMARY KEY (cli, mat_num, nmr, ven_rat_num)
);
COMMENT ON TABLE qm.qinf IS 'QINF — Quality info record — material/vendor-level quality agreement: release status, vendor QM system, source inspection control.';
COMMENT ON COLUMN qm.qinf.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN qm.qinf.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN qm.qinf.nmr IS 'ZAEHL — Internal Counter for DB Objects [numerator]';
COMMENT ON COLUMN qm.qinf.nom_usr_cre IS 'ERSTELLER — Name of User who Created the Q-Info Record [nomen usor creatus]';
COMMENT ON COLUMN qm.qinf.die_tin IS 'ERSTELLDAT — Create Date of Q-Info Record [dies tabula informationis]';
COMMENT ON COLUMN qm.qinf.nom_usr_mut IS 'AENDERER — Name of User who Most Recently Changed the Q-Info Record [nomen usor mutatus]';
COMMENT ON COLUMN qm.qinf.die_tin2 IS 'AENDERDAT — Change Date of Q-Info Record [dies tabula informationis]';
COMMENT ON COLUMN qm.qinf.ven_rat_num IS 'LIEFERANT — Vendor Account Number [venditor ratio numerus]';
COMMENT ON COLUMN qm.qinf.ofc IS 'WERK — Plant [officina]';
COMMENT ON COLUMN qm.qinf.die_ems IS 'FREI_DAT — Date Until Which the Release Is Valid [dies emissio]';
COMMENT ON COLUMN qm.qinf.ems_qnt IS 'FREI_MGKZ — Release Quantity Is Active [emissio quantitas]';
COMMENT ON COLUMN qm.qinf.men_mat IS 'ME — Base Unit of Measure for the Material [mensura materia]';
COMMENT ON COLUMN qm.qinf.qnt_mat IS 'FREI_MNG — Quantity Released for the Material [quantitas materia]';
COMMENT ON COLUMN qm.qinf.qnt_mat2 IS 'BEST_MG — Quantity Ordered for the Material [quantitas materia]';
COMMENT ON COLUMN qm.qinf.die_qnt IS 'DAT_RUECK — Date when the Ordered Quantity Was Reset [dies quantitas]';
COMMENT ON COLUMN qm.qinf.csa IS 'SPERRGRUND — Blocking reason [causa]';
COMMENT ON COLUMN qm.qinf.lng_clv IS 'SPRACHE — Language Key [lingua clavis]';
COMMENT ON COLUMN qm.qinf.sperrfkt IS 'SPERRFKT — Function That Will Be Blocked';
COMMENT ON COLUMN qm.qinf.qvvorh IS 'QVVORH — Quality Assurance Agreement Exists';
COMMENT ON COLUMN qm.qinf.isp_tin IS 'NOINSP — Inspection Control in the QM Info Record [inspectio tabula informationis]';
COMMENT ON COLUMN qm.qinf.ven IS 'QSSYSFAM — Vendor''s QM system [venditor]';
COMMENT ON COLUMN qm.qinf.die IS 'QSSYSDAT — Validity date of certification [dies]';
COMMENT ON COLUMN qm.qinf.isp_gen_org IS 'VARIABNAHM — Inspection Type for Insp. Lot Origin (Source Inspection) [inspectio genus origo]';
COMMENT ON COLUMN qm.qinf.nis_txt IS 'LTEXTKZ — Inspection Characteristic Long Text Exists [nota inspectionis textus]';
COMMENT ON COLUMN qm.qinf.lng_clv2 IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN qm.qinf.isp_sta IS 'PLOS — Inspection Lot No. in QINF for Current Status [inspectio status]';
COMMENT ON COLUMN qm.qinf.isp_sta2 IS 'PLOS2 — Inspection Lot No. in QINF for Next Status [inspectio status]';
COMMENT ON COLUMN qm.qinf.sta_tin IS 'STSMA — Status Profile Assigned to Quality Info Record [status tabula informationis]';
COMMENT ON COLUMN qm.qinf.obi_num_sta IS 'OBJNR — QINF Object Number in Status Management [obiectum numerus status]';
COMMENT ON COLUMN qm.qinf.isp_fns IS 'NOINSPABN — No GR Inspection if Source Inspection Lot Exists [inspectio fons]';
COMMENT ON COLUMN qm.qinf.tmp_fns_isp IS 'VORLABN — Lot Creation Lead Time (in Days) for Source Inspection [tempus fons inspectio]';
COMMENT ON COLUMN qm.qinf.grd IS 'REVLV — Revision Level [gradus]';
COMMENT ON COLUMN qm.qinf.sgn IS 'LOEKZ — Deletion Flag [signum]';
COMMENT ON COLUMN qm.qinf.certcontrol IS 'CERTCONTROL — Control of Certificate Receipt';

CREATE TABLE IF NOT EXISTS qm.qmat (
  cli char(3),
  isp_gen varchar(8),
  mat_num varchar(18),
  ofc varchar(4),
  isp_ixp varchar(1),
  mat varchar(1),
  isp varchar(1),
  isp_grx varchar(1),
  asg varchar(1),
  mer varchar(1),
  isp_cpa varchar(1),
  iud varchar(1),
  stichprver varchar(8),
  dynregel varchar(3),
  isp2 numeric(3,0),
  isp3 varchar(1),
  dyn varchar(1),
  exm varchar(1),
  exm2 varchar(1),
  nsr varchar(1),
  isp_mra numeric(3,0),
  isp4 varchar(1),
  qkzverf varchar(2),
  isp5 numeric(6,4),
  tbl_mnd varchar(1),
  mnd_num varchar(12),
  isp_gen_mat varchar(1),
  isp_gen2 varchar(1),
  isp_uni varchar(1),
  cmp varchar(1),
  cmp2 varchar(1),
  cmp3 numeric(3,0),
  cmp4 date,
  idx varchar(1),
  CONSTRAINT qmat_pk PRIMARY KEY (cli, isp_gen, mat_num, ofc)
);
COMMENT ON TABLE qm.qmat IS 'QMAT — Inspection type — material/plant parameters controlling how an inspection type behaves for a given material at a given plant (sampling, task list use, stock posting).';
COMMENT ON COLUMN qm.qmat.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN qm.qmat.isp_gen IS 'ART — Inspection Type [inspectio genus]';
COMMENT ON COLUMN qm.qmat.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN qm.qmat.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN qm.qmat.isp_ixp IS 'PPL — Inspection with Task List [inspectio index pensorum]';
COMMENT ON COLUMN qm.qmat.mat IS 'SPEZUEBER — Inspect with Material Specification [materia]';
COMMENT ON COLUMN qm.qmat.isp IS 'CONF — Inspection Specifications from Configuration [inspectio]';
COMMENT ON COLUMN qm.qmat.isp_grx IS 'TLS — Inspection Specifications from Batch Determination [inspectio grex]';
COMMENT ON COLUMN qm.qmat.asg IS 'APP — Automatic Specification Assignment [assignatio]';
COMMENT ON COLUMN qm.qmat.mer IS 'MER — Inspect by Characteristics';
COMMENT ON COLUMN qm.qmat.isp_cpa IS 'INSMK — Post to Inspection Stock [inspectio copia]';
COMMENT ON COLUMN qm.qmat.iud IS 'AVE — Automatic Usage Decision Planned [iudicium usus]';
COMMENT ON COLUMN qm.qmat.stichprver IS 'STICHPRVER — Sampling Procedure';
COMMENT ON COLUMN qm.qmat.dynregel IS 'DYNREGEL — Dynamic Modification Rule';
COMMENT ON COLUMN qm.qmat.isp2 IS 'SPROZ — Inspection Percentage [inspectio]';
COMMENT ON COLUMN qm.qmat.isp3 IS 'HPZ — 100% Inspection [inspectio]';
COMMENT ON COLUMN qm.qmat.dyn IS 'DYN — Skips Allowed';
COMMENT ON COLUMN qm.qmat.exm IS 'MPB — Enter the Sample Manually [exemplum]';
COMMENT ON COLUMN qm.qmat.exm2 IS 'MST — Trigger Sample Calculation Manually [exemplum]';
COMMENT ON COLUMN qm.qmat.nsr IS 'EIN — Serial Number Management Possible [numerus serialis]';
COMMENT ON COLUMN qm.qmat.isp_mra IS 'MPDAU — Average Inspection Duration [inspectio mora]';
COMMENT ON COLUMN qm.qmat.isp4 IS 'CHG — Control of Inspection Lot Creation (Lot Summary) [inspectio]';
COMMENT ON COLUMN qm.qmat.qkzverf IS 'QKZVERF — Procedure for Calculating Quality Score';
COMMENT ON COLUMN qm.qmat.isp5 IS 'QPMAT — Allowed Share of Scrap (Percent) in Inspection Lot [inspectio]';
COMMENT ON COLUMN qm.qmat.tbl_mnd IS 'KZPRFKOST — Record Appraisal Costs in Individual QM Order [tabula mandatum]';
COMMENT ON COLUMN qm.qmat.mnd_num IS 'AUFNR_CO — Order Number for Recording Appraisal Costs [mandatum numerus]';
COMMENT ON COLUMN qm.qmat.isp_gen_mat IS 'AKTIV — Inspection Type - Material Combination is Active [inspectio genus materia]';
COMMENT ON COLUMN qm.qmat.isp_gen2 IS 'APA — Preferred Inspection Type [inspectio genus]';
COMMENT ON COLUMN qm.qmat.isp_uni IS 'AFR — Inspection for Handling Unit [inspectio unitas]';
COMMENT ON COLUMN qm.qmat.cmp IS 'MMA — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qmat.cmp2 IS 'FEH — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qmat.cmp3 IS 'PRFRQ — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qmat.cmp4 IS 'NKMPR — Field Not Used as of 3.0 Field Reserved for SAP [campus]';
COMMENT ON COLUMN qm.qmat.idx IS 'MS_FLAG — Indicator: Multiple Specifications [index]';

CREATE TABLE IF NOT EXISTS qm.qpmk (
  cli char(3),
  ofc_nis varchar(4),
  isp varchar(8),
  vrs_num_nis varchar(6),
  ofc varchar(4),
  vla_die date,
  cmp varchar(40),
  not_dsc varchar(40),
  sta_tpr varchar(1),
  tbl varchar(1),
  rfr_not varchar(1),
  nom_usr_cre varchar(12),
  die_tbl_cre date,
  nom_usr_mut varchar(12),
  die_tbl_mut date,
  idx varchar(30),
  not_ varchar(2),
  prfql varchar(5),
  txt varchar(10),
  txt2 varchar(20),
  txt3 varchar(40),
  cts varchar(8),
  clv varchar(4),
  num smallint,
  uni_msu varchar(3),
  mta_val_not double precision,
  val varchar(1),
  toleranzob double precision,
  val2 varchar(1),
  toleranzun double precision,
  val3 varchar(1),
  num_val_isp smallint,
  cls double precision,
  val4 varchar(1),
  cls2 double precision,
  val5 varchar(1),
  pri double precision,
  val6 varchar(1),
  pri2 double precision,
  val7 varchar(1),
  grenzeob2 double precision,
  val8 varchar(1),
  grenzeun2 double precision,
  val9 varchar(1),
  plausioben double precision,
  val10 varchar(1),
  plausiunte double precision,
  val11 varchar(1),
  tolerweiob double precision,
  val12 varchar(1),
  tolerweiun double precision,
  val13 varchar(1),
  die date,
  die2 date,
  cod_cts varchar(8),
  cod varchar(4),
  vrs_num varchar(6),
  cod_cts2 varchar(8),
  cod2 varchar(4),
  vrs_num2 varchar(6),
  not2 varchar(10),
  eeantverf varchar(2),
  cod_cts3 varchar(8),
  cod3 varchar(4),
  inpproc varchar(3),
  spec_det_rule varchar(3),
  idx2 varchar(1),
  parameter1 varchar(16),
  parameter2 varchar(16),
  CONSTRAINT qpmk_pk PRIMARY KEY (cli, ofc_nis, isp, vrs_num_nis)
);
COMMENT ON TABLE qm.qpmk IS 'QPMK — Master Inspection Characteristic — the reusable, plant-specific master definition of an inspection characteristic (target value, tolerance/specification limits, class widths, plausibility limits, rejection defect codes, control-indicator string). Referenced by inspection-plan characteristics; its text is carried in QPMT. Wide table — carries the full field set as published by the source (74 fields), including all tolerance/limit/class fields and rejection defect-code assignments; no truncation applied.';
COMMENT ON COLUMN qm.qpmk.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN qm.qpmk.ofc_nis IS 'ZAEHLER — Plant for the Master Inspection Characteristic [officina nota inspectionis]';
COMMENT ON COLUMN qm.qpmk.isp IS 'MKMNR — Master Inspection Characteristics [inspectio]';
COMMENT ON COLUMN qm.qpmk.vrs_num_nis IS 'VERSION — Version Number of the Master Inspection Characteristic [versio numerus nota inspectionis]';
COMMENT ON COLUMN qm.qpmk.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN qm.qpmk.vla_die IS 'GUELTIGAB — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN qm.qpmk.cmp IS 'SORTFELD — Search Field [campus]';
COMMENT ON COLUMN qm.qpmk.not_dsc IS 'CHARACT_ID1 — Characteristic Description for Quality Data Exchange [nota descriptio]';
COMMENT ON COLUMN qm.qpmk.sta_tpr IS 'LOEKZ — Status of Master Record [status tabula principalis]';
COMMENT ON COLUMN qm.qpmk.tbl IS 'LSPER — Data Record Is Used [tabula]';
COMMENT ON COLUMN qm.qpmk.rfr_not IS 'KONSISTENT — Copy Model/Reference Characteristic [referentia nota]';
COMMENT ON COLUMN qm.qpmk.nom_usr_cre IS 'AUTOR — Name of User Who Created the Data Record [nomen usor creatus]';
COMMENT ON COLUMN qm.qpmk.die_tbl_cre IS 'DATES — Date on Which the Data Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN qm.qpmk.nom_usr_mut IS 'AEAUT — Name of User who Most Recently Changed the Data Record [nomen usor mutatus]';
COMMENT ON COLUMN qm.qpmk.die_tbl_mut IS 'DATAE — Date on Which Data Record Was Changed [dies tabula mutatus]';
COMMENT ON COLUMN qm.qpmk.idx IS 'STEUERKZ — Cntrl Indicator String for Insp. Char./Master Insp. Char. [index]';
COMMENT ON COLUMN qm.qpmk.not_ IS 'MERKGEW — Weighting of the Characteristic [nota]';
COMMENT ON COLUMN qm.qpmk.prfql IS 'PRFQL — Inspector Qualification';
COMMENT ON COLUMN qm.qpmk.txt IS 'DUMMY10 — Text Line for Additional Information [textus]';
COMMENT ON COLUMN qm.qpmk.txt2 IS 'DUMMY20 — Text Line for Additional Information [textus]';
COMMENT ON COLUMN qm.qpmk.txt3 IS 'DUMMY40 — Text Line for Additional Information [textus]';
COMMENT ON COLUMN qm.qpmk.cts IS 'QAUTH — Authorization Group QM Basic Data [coetus]';
COMMENT ON COLUMN qm.qpmk.clv IS 'TOLERANZSL — Tolerance Key [clavis]';
COMMENT ON COLUMN qm.qpmk.num IS 'STELLEN — Number of Places to the Right of a Decimal Point (Accuracy) [numerus]';
COMMENT ON COLUMN qm.qpmk.uni_msu IS 'MASSEINHSW — Unit of Measurement, in Which Quantitative Data Is Stored [unitas mensuratio]';
COMMENT ON COLUMN qm.qpmk.mta_val_not IS 'SOLLWERT — Target Value for a Quantitative Characteristic [meta valor nota]';
COMMENT ON COLUMN qm.qpmk.val IS 'SOLLWNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qpmk.toleranzob IS 'TOLERANZOB — Upper Specification Limit';
COMMENT ON COLUMN qm.qpmk.val2 IS 'TOLOBNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qpmk.toleranzun IS 'TOLERANZUN — Lower Tolerance Limit';
COMMENT ON COLUMN qm.qpmk.val3 IS 'TOLUNNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qpmk.num_val_isp IS 'KLASANZAHL — Number of Value Classes for Inspection Results [numerus valor inspectio]';
COMMENT ON COLUMN qm.qpmk.cls IS 'KLASBREITE — Class Width [classis]';
COMMENT ON COLUMN qm.qpmk.val4 IS 'KLASBRNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qpmk.cls2 IS 'KLASMITTE — Class Midpoint [classis]';
COMMENT ON COLUMN qm.qpmk.val5 IS 'KLASMINI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qpmk.pri IS 'GRENZEOB1 — First Upper Specification Limit [primus]';
COMMENT ON COLUMN qm.qpmk.val6 IS 'GRENZOB1NI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qpmk.pri2 IS 'GRENZEUN1 — First Lower Specification Limit [primus]';
COMMENT ON COLUMN qm.qpmk.val7 IS 'GRENZUN1NI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qpmk.grenzeob2 IS 'GRENZEOB2 — Second Upper Specification Limit';
COMMENT ON COLUMN qm.qpmk.val8 IS 'GRENZOB2NI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qpmk.grenzeun2 IS 'GRENZEUN2 — Second Lower Specification Limit';
COMMENT ON COLUMN qm.qpmk.val9 IS 'GRENZUN2NI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qpmk.plausioben IS 'PLAUSIOBEN — Upper Plausibility Limit';
COMMENT ON COLUMN qm.qpmk.val10 IS 'PLAUSIOBNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qpmk.plausiunte IS 'PLAUSIUNTE — Lower Plausibility Limit';
COMMENT ON COLUMN qm.qpmk.val11 IS 'PLAUSIUNNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qpmk.tolerweiob IS 'TOLERWEIOB — Change to Upper Specification Limit';
COMMENT ON COLUMN qm.qpmk.val12 IS 'TOLWOBNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qpmk.tolerweiun IS 'TOLERWEIUN — Change to Lower Specification Limit';
COMMENT ON COLUMN qm.qpmk.val13 IS 'TOLWUNNI — Value Not Initial if Set [valor]';
COMMENT ON COLUMN qm.qpmk.die IS 'TOLERWAB — Date from Which the Tolerance Change Is Valid [dies]';
COMMENT ON COLUMN qm.qpmk.die2 IS 'TOLERWBIS — Date Until Which the Tolerance Change Is Valid [dies]';
COMMENT ON COLUMN qm.qpmk.cod_cts IS 'CODEGR9U — Defect Code Group for Rejection at Lower Tolerance [codex coetus]';
COMMENT ON COLUMN qm.qpmk.cod IS 'CODE9U — Defect Code for Rejection at Lower Specification Limit [codex]';
COMMENT ON COLUMN qm.qpmk.vrs_num IS 'CODEVR9U — Version Number [versio numerus]';
COMMENT ON COLUMN qm.qpmk.cod_cts2 IS 'CODEGR9O — Defect Code Group for Rejection at Upper Tolerance [codex coetus]';
COMMENT ON COLUMN qm.qpmk.cod2 IS 'CODE9O — Defect Code for Rejection at Upper Specification Limit [codex]';
COMMENT ON COLUMN qm.qpmk.vrs_num2 IS 'CODEVR9O — Version Number [versio numerus]';
COMMENT ON COLUMN qm.qpmk.not2 IS 'ATINN — Internal characteristic [nota]';
COMMENT ON COLUMN qm.qpmk.eeantverf IS 'EEANTVERF — Fraction Calculation';
COMMENT ON COLUMN qm.qpmk.cod_cts3 IS 'CODEGRQUAL — Defect Code Group for General Rejection [codex coetus]';
COMMENT ON COLUMN qm.qpmk.cod3 IS 'CODEQUAL — Defect Code for Rejection: General [codex]';
COMMENT ON COLUMN qm.qpmk.inpproc IS 'INPPROC — Parameters for Input Processing in QM Results Recording';
COMMENT ON COLUMN qm.qpmk.spec_det_rule IS 'SPEC_DET_RULE — Specification Determination Rule';
COMMENT ON COLUMN qm.qpmk.idx2 IS 'SPEC_DET_ACTIVE — Active Indicator for Specification Determination Rule [index]';
COMMENT ON COLUMN qm.qpmk.parameter1 IS 'PARAMETER1 — Parameters for Specification Determination';
COMMENT ON COLUMN qm.qpmk.parameter2 IS 'PARAMETER2 — Parameters for Specification Determination';

CREATE TABLE IF NOT EXISTS qm.qpmt (
  cli char(3),
  ofc_nis varchar(4),
  isp varchar(8),
  vrs_num_isp varchar(6),
  lng_clv char(1),
  vla_die date,
  txt varchar(40),
  txt_not varchar(1),
  txt_exm_not varchar(1),
  tbl_del varchar(1),
  CONSTRAINT qpmt_pk PRIMARY KEY (cli, ofc_nis, isp, vrs_num_isp, lng_clv)
);
COMMENT ON TABLE qm.qpmt IS 'QPMT — Master Inspection Characteristic Text — the language-dependent short text (and long-text existence flags) for a master inspection characteristic (QPMK), keyed by plant/characteristic/version/language.';
COMMENT ON COLUMN qm.qpmt.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN qm.qpmt.ofc_nis IS 'ZAEHLER — Plant for the Master Inspection Characteristic [officina nota inspectionis]';
COMMENT ON COLUMN qm.qpmt.isp IS 'MKMNR — Master Inspection Characteristics [inspectio]';
COMMENT ON COLUMN qm.qpmt.vrs_num_isp IS 'VERSION — Version Number of the Inspection Method [versio numerus inspectio]';
COMMENT ON COLUMN qm.qpmt.lng_clv IS 'SPRACHE — Language Key [lingua clavis]';
COMMENT ON COLUMN qm.qpmt.vla_die IS 'GUELTIGAB — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN qm.qpmt.txt IS 'KURZTEXT — Short Text [textus]';
COMMENT ON COLUMN qm.qpmt.txt_not IS 'LTEXTKZ — Long Text Exists for the Characteristic [textus nota]';
COMMENT ON COLUMN qm.qpmt.txt_exm_not IS 'LTEXTEKZ — Long Text for Physical-Sample Drawing of a Characteristic [textus exemplum nota]';
COMMENT ON COLUMN qm.qpmt.tbl_del IS 'GELOESCHT — Data Record Was Deleted [tabula deletus]';

