-- EVE Datasphere Sovereign — PostgreSQL materialisation
-- Generated 2026-08-01T02:19:53Z by scripts/emit_postgres.py. Do not hand-edit; regenerate.
-- Column names are the canonical Latin layer (EgD-LATIN-001). The legacy SAP field name
-- is preserved in COMMENT ON COLUMN and in egd_catalog.field_map, and is the join key.
-- Mirror, never cannibalise. Pour le bien-etre du peuple.

-- module MM

CREATE TABLE IF NOT EXISTS mm.eban (
  cli char(3),
  pem_num varchar(10),
  pos_num_pem varchar(5),
  pem_gdo varchar(4),
  dem_ctg varchar(1),
  idx_dem varchar(1),
  sta_pem varchar(1),
  ems_idx varchar(1),
  ems_sta varchar(8),
  ems_pem varchar(2),
  cts varchar(3),
  nom_psn_cre varchar(12),
  mut date,
  nom varchar(12),
  txt varchar(40),
  mat_num varchar(18),
  ofc varchar(4),
  loc varchar(4),
  mat_cts varchar(9),
  pem_qnt numeric(13,3),
  pem_men varchar(3),
  pet_die date,
  pos_trd_die date,
  pem_ems_die date,
  pre_pem numeric(11,2),
  pre_uni numeric(5,0),
  pos_ctg_dem varchar(1),
  rat_asg_ctg varchar(1),
  amr_idx varchar(1),
  fac_idx varchar(1),
  ven varchar(10),
  ven2 varchar(10),
  oem varchar(4),
  num_emt varchar(10),
  pos_num_emt varchar(5),
  num_tin varchar(10),
  dispo varchar(3),
  mem_num varchar(10),
  mem_pos_num varchar(5),
  mem_die date,
  qnt_pem numeric(13,3),
  aes_gen varchar(10),
  num_rqs varchar(10),
  cpa_idx varchar(1),
  pem varchar(1),
  mem_men varchar(3),
  ems_cts varchar(2),
  ems varchar(1),
  grx_num varchar(10),
  fistl varchar(16),
  geber varchar(10),
  pos varchar(14),
  emp varchar(10),
  cvm varchar(5),
  lng_clv char(1),
  num varchar(40),
  num2 varchar(10),
  trd_tmp numeric(3,0),
  are varchar(10),
  grant_nbr varchar(20),
  pet varchar(2),
  pem2 varchar(1),
  ofc2 varchar(4),
  ndo varchar(10),
  doc_pos varchar(3),
  CONSTRAINT eban_pk PRIMARY KEY (cli, pem_num, pos_num_pem)
);
COMMENT ON TABLE mm.eban IS 'EBAN — Purchase Requisition - internal request to purchasing to procure a material or service.';
COMMENT ON COLUMN mm.eban.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.eban.pem_num IS 'BANFN — Purchase Requisition Number [petitio emptionis numerus]';
COMMENT ON COLUMN mm.eban.pos_num_pem IS 'BNFPO — Item Number of Purchase Requisition [positio numerus petitio emptionis]';
COMMENT ON COLUMN mm.eban.pem_gdo IS 'BSART — Purchase Requisition Document Type [petitio emptionis genus documenti]';
COMMENT ON COLUMN mm.eban.dem_ctg IS 'BSTYP — Purchasing Document Category [documentum emptionis categoria]';
COMMENT ON COLUMN mm.eban.idx_dem IS 'LOEKZ — Deletion Indicator in Purchasing Document [index documentum emptionis]';
COMMENT ON COLUMN mm.eban.sta_pem IS 'STATU — Processing status of purchase requisition [status petitio emptionis]';
COMMENT ON COLUMN mm.eban.ems_idx IS 'FRGKZ — Release Indicator [emissio index]';
COMMENT ON COLUMN mm.eban.ems_sta IS 'FRGZU — Release status [emissio status]';
COMMENT ON COLUMN mm.eban.ems_pem IS 'FRGST — Release Strategy in Purchase Requisition [emissio petitio emptionis]';
COMMENT ON COLUMN mm.eban.cts IS 'EKGRP — Purchasing Group [coetus]';
COMMENT ON COLUMN mm.eban.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN mm.eban.mut IS 'ERDAT — Changed On [mutatus]';
COMMENT ON COLUMN mm.eban.nom IS 'AFNAM — Name of Requisitioner/Requester [nomen]';
COMMENT ON COLUMN mm.eban.txt IS 'TXZ01 — Short Text [textus]';
COMMENT ON COLUMN mm.eban.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.eban.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN mm.eban.loc IS 'LGORT — Storage Location [locus repositionis]';
COMMENT ON COLUMN mm.eban.mat_cts IS 'MATKL — Material Group [materia coetus]';
COMMENT ON COLUMN mm.eban.pem_qnt IS 'MENGE — Purchase Requisition Quantity [petitio emptionis quantitas]';
COMMENT ON COLUMN mm.eban.pem_men IS 'MEINS — Purchase Requisition Unit of Measure [petitio emptionis mensura]';
COMMENT ON COLUMN mm.eban.pet_die IS 'BADAT — Requisition (Request) Date [petitio dies]';
COMMENT ON COLUMN mm.eban.pos_trd_die IS 'LFDAT — Item Delivery Date [positio traditio dies]';
COMMENT ON COLUMN mm.eban.pem_ems_die IS 'FRGDT — Purchase Requisition Release Date [petitio emptionis emissio dies]';
COMMENT ON COLUMN mm.eban.pre_pem IS 'PREIS — Price in Purchase Requisition [pretium petitio emptionis]';
COMMENT ON COLUMN mm.eban.pre_uni IS 'PEINH — Price Unit [pretium unitas]';
COMMENT ON COLUMN mm.eban.pos_ctg_dem IS 'PSTYP — Item Category in Purchasing Document [positio categoria documentum emptionis]';
COMMENT ON COLUMN mm.eban.rat_asg_ctg IS 'KNTTP — Account Assignment Category [ratio assignatio categoria]';
COMMENT ON COLUMN mm.eban.amr_idx IS 'WEPOS — Goods Receipt Indicator [acceptio mercium index]';
COMMENT ON COLUMN mm.eban.fac_idx IS 'REPOS — Invoice Receipt Indicator [factura index]';
COMMENT ON COLUMN mm.eban.ven IS 'LIFNR — Desired Vendor [venditor]';
COMMENT ON COLUMN mm.eban.ven2 IS 'FLIEF — Fixed Vendor [venditor]';
COMMENT ON COLUMN mm.eban.oem IS 'EKORG — Purchasing Organization [organizatio emptionis]';
COMMENT ON COLUMN mm.eban.num_emt IS 'KONNR — Number of Principal Purchase Agreement [numerus emptio]';
COMMENT ON COLUMN mm.eban.pos_num_emt IS 'KTPNR — Item Number of Principal Purchase Agreement [positio numerus emptio]';
COMMENT ON COLUMN mm.eban.num_tin IS 'INFNR — Number of Purchasing Info Record [numerus tabula informationis]';
COMMENT ON COLUMN mm.eban.dispo IS 'DISPO — MRP Controller (Materials Planner)';
COMMENT ON COLUMN mm.eban.mem_num IS 'EBELN — Purchase Order Number [mandatum emptionis numerus]';
COMMENT ON COLUMN mm.eban.mem_pos_num IS 'EBELP — Purchase Order Item Number [mandatum emptionis positio numerus]';
COMMENT ON COLUMN mm.eban.mem_die IS 'BEDAT — Purchase Order Date [mandatum emptionis dies]';
COMMENT ON COLUMN mm.eban.qnt_pem IS 'BSMNG — Quantity Ordered Against this Purchase Requisition [quantitas petitio emptionis]';
COMMENT ON COLUMN mm.eban.aes_gen IS 'BWTAR — Valuation Type [aestimatio genus]';
COMMENT ON COLUMN mm.eban.num_rqs IS 'RSNUM — Number of Reservation/Dependent Requirement [numerus requisitum]';
COMMENT ON COLUMN mm.eban.cpa_idx IS 'SOBKZ — Special Stock Indicator [copia index]';
COMMENT ON COLUMN mm.eban.pem IS 'FIXKZ — Purchase Requisition is Fixed [petitio emptionis]';
COMMENT ON COLUMN mm.eban.mem_men IS 'BMEIN — Purchase Order Unit of Measure [mandatum emptionis mensura]';
COMMENT ON COLUMN mm.eban.ems_cts IS 'FRGGR — Release group [emissio coetus]';
COMMENT ON COLUMN mm.eban.ems IS 'FRGRL — Release Not Yet Completely Effected [emissio]';
COMMENT ON COLUMN mm.eban.grx_num IS 'CHARG — Batch Number [grex numerus]';
COMMENT ON COLUMN mm.eban.fistl IS 'FISTL — Funds Center';
COMMENT ON COLUMN mm.eban.geber IS 'GEBER — Fund';
COMMENT ON COLUMN mm.eban.pos IS 'FIPOS — Commitment Item [positio]';
COMMENT ON COLUMN mm.eban.emp IS 'KUNNR — Customer [emptor]';
COMMENT ON COLUMN mm.eban.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN mm.eban.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN mm.eban.num IS 'MFRPN — Manufacturer Part Number [numerus]';
COMMENT ON COLUMN mm.eban.num2 IS 'MFRNR — Number of a Manufacturer [numerus]';
COMMENT ON COLUMN mm.eban.trd_tmp IS 'PLIFZ — Planned Delivery Time in Days [traditio tempus]';
COMMENT ON COLUMN mm.eban.are IS 'BERID — MRP Area [area]';
COMMENT ON COLUMN mm.eban.grant_nbr IS 'GRANT_NBR — Grant';
COMMENT ON COLUMN mm.eban.pet IS 'BANPR — Requisition Processing State [petitio]';
COMMENT ON COLUMN mm.eban.pem2 IS 'BLCKD — Purchase Requisition Blocked [petitio emptionis]';
COMMENT ON COLUMN mm.eban.ofc2 IS 'BESWK — Procuring Plant [officina]';
COMMENT ON COLUMN mm.eban.ndo IS 'KBLNR — Document Number for Earmarked Funds [numerus documenti]';
COMMENT ON COLUMN mm.eban.doc_pos IS 'KBLPOS — Earmarked Funds: Document Item [documentum positio]';

CREATE TABLE IF NOT EXISTS mm.ebkn (
  cli char(3),
  pem_num varchar(10),
  pos_num_pem varchar(5),
  nsr_rat_asg varchar(2),
  idx_dem varchar(1),
  die_tbl_cre date,
  nom_psn_cre varchar(12),
  pem_qnt numeric(13,3),
  dtb_rat numeric(3,1),
  rat_num varchar(10),
  ang varchar(4),
  csm varchar(10),
  prp_num varchar(16),
  vdt_dtb_ndo varchar(10),
  dvd_pos varchar(6),
  trd_lor_num varchar(4),
  ptm_num varchar(12),
  ptm varchar(4),
  mnd_num varchar(12),
  mrc_psn varchar(12),
  ablad varchar(25),
  amd varchar(4),
  ins_csm varchar(1),
  mnd varchar(1),
  prp varchar(1),
  smp_obi varchar(12),
  seg_num varchar(10),
  clu varchar(10),
  ops_elm_eop varchar(8),
  ret_num_rat varchar(12),
  itn_num_mnd varchar(10),
  clv_obi varchar(8),
  nmr varchar(8),
  scs_rat_num varchar(10),
  pos varchar(14),
  idx varchar(2),
  fistl varchar(16),
  geber varchar(10),
  afn varchar(16),
  rfr_die_tsc date,
  net_mnd_val numeric(13,2),
  ndo varchar(10),
  doc_pos varchar(3),
  act_gen varchar(6),
  prznr varchar(12),
  grant_nbr varchar(20),
  CONSTRAINT ebkn_pk PRIMARY KEY (cli, pem_num, pos_num_pem, nsr_rat_asg)
);
COMMENT ON TABLE mm.ebkn IS 'EBKN — Purchase Requisition Account Assignment — one row per purchase-requisition item per account-assignment sequence, the requisition-side mirror of EKKN: it carries the same cost-object dimensions (G/L account, cost center, order, asset, WBS element, profit center, controlling area) but attaches them to a purchase requisition (EBAN) rather than a purchase order (EKPO). When a requisition converts to a PO, its EBKN account assignment becomes the PO''s EKKN account assignment — the two tables are structurally near-identical by design. SAP''s real table also carries a handful of customer-namespace Z-fi';
COMMENT ON COLUMN mm.ebkn.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.ebkn.pem_num IS 'BANFN — Purchase Requisition Number [petitio emptionis numerus]';
COMMENT ON COLUMN mm.ebkn.pos_num_pem IS 'BNFPO — Item Number of Purchase Requisition [positio numerus petitio emptionis]';
COMMENT ON COLUMN mm.ebkn.nsr_rat_asg IS 'ZEBKN — Serial number for PReq account assignment segment [numerus serialis ratio assignatio]';
COMMENT ON COLUMN mm.ebkn.idx_dem IS 'LOEKZ — Deletion Indicator in Purchasing Document [index documentum emptionis]';
COMMENT ON COLUMN mm.ebkn.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN mm.ebkn.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN mm.ebkn.pem_qnt IS 'MENGE — Purchase Requisition Quantity [petitio emptionis quantitas]';
COMMENT ON COLUMN mm.ebkn.dtb_rat IS 'VPROZ — Distribution Percentage in Case of Multiple Account Assgt [distributio ratio]';
COMMENT ON COLUMN mm.ebkn.rat_num IS 'SAKTO — G/L Account Number [ratio numerus]';
COMMENT ON COLUMN mm.ebkn.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN mm.ebkn.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN mm.ebkn.prp_num IS 'PROJN — Old: Project number : No longer used --> PS_POSNR [propositum numerus]';
COMMENT ON COLUMN mm.ebkn.vdt_dtb_ndo IS 'VBELN — Sales and Distribution Document Number [venditio distributio numerus documenti]';
COMMENT ON COLUMN mm.ebkn.dvd_pos IS 'VBELP — Sales Document Item [documentum venditionis positio]';
COMMENT ON COLUMN mm.ebkn.trd_lor_num IS 'VETEN — Delivery Schedule Line Number [traditio linea ordinis numerus]';
COMMENT ON COLUMN mm.ebkn.ptm_num IS 'ANLN1 — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN mm.ebkn.ptm IS 'ANLN2 — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN mm.ebkn.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN mm.ebkn.mrc_psn IS 'WEMPF — Goods Recipient/Ship-To Party [merces persona]';
COMMENT ON COLUMN mm.ebkn.ablad IS 'ABLAD — Unloading Point';
COMMENT ON COLUMN mm.ebkn.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN mm.ebkn.ins_csm IS 'XBKST — Posting to cost center? [inscriptio centrum sumptus]';
COMMENT ON COLUMN mm.ebkn.mnd IS 'XBAUF — Post To Order [mandatum]';
COMMENT ON COLUMN mm.ebkn.prp IS 'XBPRO — Post to project [propositum]';
COMMENT ON COLUMN mm.ebkn.smp_obi IS 'KSTRG — Cost Object [sumptus obiectum]';
COMMENT ON COLUMN mm.ebkn.seg_num IS 'PAOBJNR — Profitability Segment Number (CO-PA) [segmentum numerus]';
COMMENT ON COLUMN mm.ebkn.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN mm.ebkn.ops_elm_eop IS 'PS_PSP_PNR — Work Breakdown Structure Element (WBS Element) [opus elementum elementum operis]';
COMMENT ON COLUMN mm.ebkn.ret_num_rat IS 'NPLNR — Network Number for Account Assignment [rete numerus ratio]';
COMMENT ON COLUMN mm.ebkn.itn_num_mnd IS 'AUFPL — Routing number of operations in the order [itinerarium numerus mandatum]';
COMMENT ON COLUMN mm.ebkn.clv_obi IS 'IMKEY — Internal Key for Real Estate Object [clavis obiectum]';
COMMENT ON COLUMN mm.ebkn.nmr IS 'APLZL — Internal counter [numerator]';
COMMENT ON COLUMN mm.ebkn.scs_rat_num IS 'VPTNR — Partner account number [socius ratio numerus]';
COMMENT ON COLUMN mm.ebkn.pos IS 'FIPOS — Commitment Item [positio]';
COMMENT ON COLUMN mm.ebkn.idx IS 'RECID — Recovery Indicator [index]';
COMMENT ON COLUMN mm.ebkn.fistl IS 'FISTL — Funds Center';
COMMENT ON COLUMN mm.ebkn.geber IS 'GEBER — Fund';
COMMENT ON COLUMN mm.ebkn.afn IS 'FKBER — Functional Area [area functionis]';
COMMENT ON COLUMN mm.ebkn.rfr_die_tsc IS 'DABRZ — Reference Date for Settlement [referentia dies transactio]';
COMMENT ON COLUMN mm.ebkn.net_mnd_val IS 'NETWR — Net Order Value in PO Currency [netus mandatum valor]';
COMMENT ON COLUMN mm.ebkn.ndo IS 'KBLNR — Document Number for Earmarked Funds [numerus documenti]';
COMMENT ON COLUMN mm.ebkn.doc_pos IS 'KBLPOS — Earmarked Funds: Document Item [documentum positio]';
COMMENT ON COLUMN mm.ebkn.act_gen IS 'LSTAR — Activity Type [actio genus]';
COMMENT ON COLUMN mm.ebkn.prznr IS 'PRZNR — Business Process';
COMMENT ON COLUMN mm.ebkn.grant_nbr IS 'GRANT_NBR — Grant';

CREATE TABLE IF NOT EXISTS mm.eina (
  cli char(3),
  num_tin varchar(10),
  mat_num varchar(18),
  mat_cts varchar(9),
  ven_rat_num varchar(10),
  loekz varchar(1),
  die_tbl_cre date,
  nom_psn_cre varchar(12),
  txt_tin varchar(40),
  cpa varchar(10),
  mem_men varchar(3),
  mnd_uni numeric(5,0),
  mnd_uni2 numeric(5,0),
  mat_num_ven varchar(35),
  verkf varchar(30),
  ven_tel_num varchar(16),
  num_pri numeric(3,0),
  num numeric(3,0),
  num2 numeric(3,0),
  num3 varchar(10),
  org date,
  ptr_org varchar(3),
  ctg varchar(1),
  num4 varchar(16),
  men varchar(3),
  reg varchar(3),
  mem_uni varchar(1),
  ven varchar(6),
  ord_num varchar(5),
  ven_mat_cts varchar(18),
  rueck varchar(2),
  lifab date,
  lifbi date,
  ven2 varchar(10),
  num5 numeric(13,3),
  uni varchar(3),
  ven3 varchar(1),
  mfrnr varchar(10),
  CONSTRAINT eina_pk PRIMARY KEY (cli, num_tin)
);
COMMENT ON TABLE mm.eina IS 'EINA — Purchasing Info Record: General Data — the client-wide, purchasing-organization-independent half of a purchasing info record, one row per info-record number, carrying the vendor/material pairing and general facts (vendor''s material number, base unit of measure, reminder days, certificate of origin, regular-vendor flag) that hold true across every purchasing organization. Paired one-to-many with EINE, which carries the organization-specific pricing and conditions; together they form the purchasing-info-record lane a sourcing or vendor-evaluation lane consumes.';
COMMENT ON COLUMN mm.eina.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.eina.num_tin IS 'INFNR — Number of Purchasing Info Record [numerus tabula informationis]';
COMMENT ON COLUMN mm.eina.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.eina.mat_cts IS 'MATKL — Material Group [materia coetus]';
COMMENT ON COLUMN mm.eina.ven_rat_num IS 'LIFNR — Vendor Account Number [venditor ratio numerus]';
COMMENT ON COLUMN mm.eina.loekz IS 'LOEKZ — Purchasing info: General data flagged for deletion';
COMMENT ON COLUMN mm.eina.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN mm.eina.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN mm.eina.txt_tin IS 'TXZ01 — Short Text for Purchasing Info Record [textus tabula informationis]';
COMMENT ON COLUMN mm.eina.cpa IS 'SORTL — Sort Term for Non-Stock Info Records [copia]';
COMMENT ON COLUMN mm.eina.mem_men IS 'MEINS — Purchase Order Unit of Measure [mandatum emptionis mensura]';
COMMENT ON COLUMN mm.eina.mnd_uni IS 'UMREZ — Numerator for Conversion of Order Unit to Base Unit [mandatum unitas]';
COMMENT ON COLUMN mm.eina.mnd_uni2 IS 'UMREN — Denominator for Conversion of Order Unit to Base Unit [mandatum unitas]';
COMMENT ON COLUMN mm.eina.mat_num_ven IS 'IDNLF — Material Number Used by Vendor [materia numerus venditor]';
COMMENT ON COLUMN mm.eina.verkf IS 'VERKF — Salesperson Responsible in the Event of Queries';
COMMENT ON COLUMN mm.eina.ven_tel_num IS 'TELF1 — Vendor''s Telephone Number [venditor telephonum numerus]';
COMMENT ON COLUMN mm.eina.num_pri IS 'MAHN1 — Number of Days for First Reminder/Expediter [numerus primus]';
COMMENT ON COLUMN mm.eina.num IS 'MAHN2 — Number of Days for Second Reminder/Expediter [numerus]';
COMMENT ON COLUMN mm.eina.num2 IS 'MAHN3 — Number of Days for Third Reminder/Expediter [numerus]';
COMMENT ON COLUMN mm.eina.num3 IS 'URZNR — Certificate Number [numerus]';
COMMENT ON COLUMN mm.eina.org IS 'URZDT — Certificate of Origin Valid Until [origo]';
COMMENT ON COLUMN mm.eina.ptr_org IS 'URZLA — Country of Issue of Certificate of Origin [patria origo]';
COMMENT ON COLUMN mm.eina.ctg IS 'URZTP — Certificate Category [categoria]';
COMMENT ON COLUMN mm.eina.num4 IS 'URZZT — Number [numerus]';
COMMENT ON COLUMN mm.eina.men IS 'LMEIN — Base Unit of Measure [mensura]';
COMMENT ON COLUMN mm.eina.reg IS 'REGIO — Region (State, Province, County) [regio]';
COMMENT ON COLUMN mm.eina.mem_uni IS 'VABME — Variable Purchase Order Unit Active [mandatum emptionis unitas]';
COMMENT ON COLUMN mm.eina.ven IS 'LTSNR — Vendor Subrange [venditor]';
COMMENT ON COLUMN mm.eina.ord_num IS 'LTSSF — Sort Sequence Number [ordo numerus]';
COMMENT ON COLUMN mm.eina.ven_mat_cts IS 'WGLIF — Vendor Material Group [venditor materia coetus]';
COMMENT ON COLUMN mm.eina.rueck IS 'RUECK — Return Agreement';
COMMENT ON COLUMN mm.eina.lifab IS 'LIFAB — Available (Deliverable) From';
COMMENT ON COLUMN mm.eina.lifbi IS 'LIFBI — Available (Deliverable) Until';
COMMENT ON COLUMN mm.eina.ven2 IS 'KOLIF — Prior Vendor [venditor]';
COMMENT ON COLUMN mm.eina.num5 IS 'ANZPU — Number of Points [numerus]';
COMMENT ON COLUMN mm.eina.uni IS 'PUNEI — Points unit [unitas]';
COMMENT ON COLUMN mm.eina.ven3 IS 'RELIF — Regular Vendor [venditor]';
COMMENT ON COLUMN mm.eina.mfrnr IS 'MFRNR — Manufacturer';

CREATE TABLE IF NOT EXISTS mm.eine (
  cli char(3),
  num_tin varchar(10),
  oem varchar(4),
  tin_ctg varchar(1),
  ofc varchar(4),
  loekz varchar(1),
  die_tbl_cre date,
  nom_psn_cre varchar(12),
  cts varchar(3),
  cvm varchar(5),
  idx_vlm varchar(1),
  idx_qnt_vlm varchar(1),
  mem_qnt numeric(13,3),
  nrm_mem_qnt numeric(13,3),
  trd_tmp numeric(3,0),
  uebto numeric(3,1),
  idx varchar(1),
  untto numeric(3,1),
  num varchar(10),
  die date,
  num2 varchar(10),
  pos_num varchar(5),
  idx2 varchar(1),
  dem_ctg varchar(1),
  dem_num varchar(10),
  pos_num_dem varchar(5),
  die_ult_doc date,
  net_pre_tin numeric(11,2),
  pre_uni numeric(5,0),
  mnd_pre_uni varchar(3),
  pre date,
  mnd_pre_uni2 numeric(5,0),
  mnd_pre_uni3 numeric(5,0),
  mat_tpr_txt varchar(1),
  idx_fac_vrf varchar(1),
  pre_tin numeric(11,2),
  cnd_cts_ven varchar(4),
  pos_ddc varchar(1),
  mnd_rqs varchar(1),
  trb_vdt_cod varchar(2),
  aes_gen varchar(10),
  tsc_cts varchar(2),
  evers varchar(2),
  exprf varchar(8),
  cnf_clv varchar(4),
  pre_tax_die varchar(1),
  inco1 varchar(3),
  inco2 varchar(28),
  tsc varchar(1),
  tsc_cts2 varchar(2),
  tsc_cts3 varchar(2),
  pos_per_fin varchar(1),
  mhdrz numeric(4,0),
  prd_vrs varchar(4),
  mem_qnt2 numeric(13,3),
  rdprf varchar(4),
  men_cts varchar(4),
  CONSTRAINT eine_pk PRIMARY KEY (cli, num_tin, oem, tin_ctg, ofc)
);
COMMENT ON TABLE mm.eine IS 'EINE — Purchasing Info Record: Purchasing Organization Data — the purchasing-organization-specific half of a purchasing info record, one row per info record per purchasing org per info-record category per plant, carrying the pricing and procurement conditions (net price, price unit, planned delivery time, over/underdelivery tolerances, incoterms, tax code, GR-based invoice-verification flag) that a sourcing or price-comparison lane consumes. Paired one-to-many back to EINA, which carries the organization-independent vendor/material facts; together they are the purchasing-info-record lane. SAP''s real ';
COMMENT ON COLUMN mm.eine.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.eine.num_tin IS 'INFNR — Number of Purchasing Info Record [numerus tabula informationis]';
COMMENT ON COLUMN mm.eine.oem IS 'EKORG — Purchasing Organization [organizatio emptionis]';
COMMENT ON COLUMN mm.eine.tin_ctg IS 'ESOKZ — Purchasing info record category [tabula informationis categoria]';
COMMENT ON COLUMN mm.eine.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN mm.eine.loekz IS 'LOEKZ — Purch. info: Purch. organization data flagged for deletion';
COMMENT ON COLUMN mm.eine.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN mm.eine.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN mm.eine.cts IS 'EKGRP — Purchasing Group [coetus]';
COMMENT ON COLUMN mm.eine.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN mm.eine.idx_vlm IS 'BONUS — Indicator: Volume-Based Rebate [index volumen]';
COMMENT ON COLUMN mm.eine.idx_qnt_vlm IS 'MGBON — Indicator: Quantity-Based Volume Rebate [index quantitas volumen]';
COMMENT ON COLUMN mm.eine.mem_qnt IS 'MINBM — Minimum Purchase Order Quantity [mandatum emptionis quantitas]';
COMMENT ON COLUMN mm.eine.nrm_mem_qnt IS 'NORBM — Standard Purchase Order Quantity [norma mandatum emptionis quantitas]';
COMMENT ON COLUMN mm.eine.trd_tmp IS 'APLFZ — Planned Delivery Time in Days [traditio tempus]';
COMMENT ON COLUMN mm.eine.uebto IS 'UEBTO — Overdelivery Tolerance Limit';
COMMENT ON COLUMN mm.eine.idx IS 'UEBTK — Indicator: Unlimited Overdelivery Allowed [index]';
COMMENT ON COLUMN mm.eine.untto IS 'UNTTO — Underdelivery Tolerance Limit';
COMMENT ON COLUMN mm.eine.num IS 'ANGNR — Quotation Number [numerus]';
COMMENT ON COLUMN mm.eine.die IS 'ANGDT — Quotation Validity Date [dies]';
COMMENT ON COLUMN mm.eine.num2 IS 'ANFNR — RFQ Number [numerus]';
COMMENT ON COLUMN mm.eine.pos_num IS 'ANFPS — Item Number of RFQ [positio numerus]';
COMMENT ON COLUMN mm.eine.idx2 IS 'ABSKZ — Rejection Indicator [index]';
COMMENT ON COLUMN mm.eine.dem_ctg IS 'BSTYP — Purchasing Document Category [documentum emptionis categoria]';
COMMENT ON COLUMN mm.eine.dem_num IS 'EBELN — Purchasing Document Number [documentum emptionis numerus]';
COMMENT ON COLUMN mm.eine.pos_num_dem IS 'EBELP — Item Number of Purchasing Document [positio numerus documentum emptionis]';
COMMENT ON COLUMN mm.eine.die_ult_doc IS 'DATLB — Date of Last PO or Sched. Agreement Document in Info Record [dies ultimus documentum]';
COMMENT ON COLUMN mm.eine.net_pre_tin IS 'NETPR — Net Price in Purchasing Info Record [netus pretium tabula informationis]';
COMMENT ON COLUMN mm.eine.pre_uni IS 'PEINH — Price Unit [pretium unitas]';
COMMENT ON COLUMN mm.eine.mnd_pre_uni IS 'BPRME — Order Price Unit (Purchasing) [mandatum pretium unitas]';
COMMENT ON COLUMN mm.eine.pre IS 'PRDAT — Price Valid Until [pretium]';
COMMENT ON COLUMN mm.eine.mnd_pre_uni2 IS 'BPUMZ — Numerator for Conversion of Order Price Unit into Order Unit [mandatum pretium unitas]';
COMMENT ON COLUMN mm.eine.mnd_pre_uni3 IS 'BPUMN — Denominator for Conv. of Order Price Unit into Order Unit [mandatum pretium unitas]';
COMMENT ON COLUMN mm.eine.mat_tpr_txt IS 'MTXNO — Material Master Record PO Text Not Relevant [materia tabula principalis textus]';
COMMENT ON COLUMN mm.eine.idx_fac_vrf IS 'WEBRE — Indicator: GR-Based Invoice Verification [index factura verificatio]';
COMMENT ON COLUMN mm.eine.pre_tin IS 'EFFPR — Effective Price in Purchasing Info Record [pretium tabula informationis]';
COMMENT ON COLUMN mm.eine.cnd_cts_ven IS 'EKKOL — Condition Group with Vendor [condicio coetus venditor]';
COMMENT ON COLUMN mm.eine.pos_ddc IS 'SKTOF — Item Does Not Qualify for Cash Discount [positio deductio]';
COMMENT ON COLUMN mm.eine.mnd_rqs IS 'KZABS — Order Acknowledgment Requirement [mandatum requisitum]';
COMMENT ON COLUMN mm.eine.trb_vdt_cod IS 'MWSKZ — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN mm.eine.aes_gen IS 'BWTAR — Valuation Type [aestimatio genus]';
COMMENT ON COLUMN mm.eine.tsc_cts IS 'EBONU — Settlement Group 1 (Purchasing) [transactio coetus]';
COMMENT ON COLUMN mm.eine.evers IS 'EVERS — Shipping Instructions';
COMMENT ON COLUMN mm.eine.exprf IS 'EXPRF — Export/Import Procedure for Foreign Trade';
COMMENT ON COLUMN mm.eine.cnf_clv IS 'BSTAE — Confirmation Control Key [confirmatio clavis]';
COMMENT ON COLUMN mm.eine.pre_tax_die IS 'MEPRF — Price Determination (Pricing) Date Control [pretium taxatio dies]';
COMMENT ON COLUMN mm.eine.inco1 IS 'INCO1 — Incoterms (Part 1)';
COMMENT ON COLUMN mm.eine.inco2 IS 'INCO2 — Incoterms (Part 2)';
COMMENT ON COLUMN mm.eine.tsc IS 'XERSN — No Evaluated Receipt Settlement (ERS) [transactio]';
COMMENT ON COLUMN mm.eine.tsc_cts2 IS 'EBON2 — Settlement Group 2 (Rebate Settlement, Purchasing) [transactio coetus]';
COMMENT ON COLUMN mm.eine.tsc_cts3 IS 'EBON3 — Settlement Group 3 (Rebate Settlement, Purchasing) [transactio coetus]';
COMMENT ON COLUMN mm.eine.pos_per_fin IS 'EBONF — Item Not Relevant to Subseq. (Period-End Rebate) Settlement [positio periodus finis]';
COMMENT ON COLUMN mm.eine.mhdrz IS 'MHDRZ — Minimum Remaining Shelf Life';
COMMENT ON COLUMN mm.eine.prd_vrs IS 'VERID — Production Version [productio versio]';
COMMENT ON COLUMN mm.eine.mem_qnt2 IS 'BSTMA — Maximum Purchase Order Quantity [mandatum emptionis quantitas]';
COMMENT ON COLUMN mm.eine.rdprf IS 'RDPRF — Rounding Profile';
COMMENT ON COLUMN mm.eine.men_cts IS 'MEGRU — Unit of Measure Group [mensura coetus]';

CREATE TABLE IF NOT EXISTS mm.ekbe (
  cli char(3),
  dem_num varchar(10),
  pos_num_dem varchar(5),
  num_rat_asg varchar(2),
  gen_mem varchar(1),
  mat_doc_ann varchar(4),
  num_mat_doc varchar(10),
  pos_mat_doc varchar(4),
  ctg varchar(1),
  mtm_gen varchar(3),
  din_doc date,
  qnt numeric(13,3),
  qnt_mem_pre numeric(13,3),
  sum_mon numeric(13,2),
  sum_doc_mon numeric(13,2),
  cvm varchar(5),
  rat_cpn_val numeric(13,2),
  amr_cpa_mnd numeric(13,3),
  qnt_cpa_mnd numeric(13,3),
  dbt_crd_idx varchar(1),
  aes_gen varchar(10),
  trd_idx varchar(1),
  rfr_ndo varchar(16),
  anf_rfr_doc varchar(4),
  doc_rfr varchar(10),
  pos_rfr_doc varchar(4),
  csa_mtm varchar(4),
  die_doc date,
  tmp time,
  fac_val_mon numeric(13,2),
  evere varchar(2),
  fac_val_mon2 numeric(13,2),
  mat_num varchar(18),
  ofc varchar(4),
  num_doc_cnd varchar(10),
  trb_vdt_cod varchar(2),
  grx_num varchar(10),
  ddc_doc date,
  CONSTRAINT ekbe_pk PRIMARY KEY (cli, dem_num, pos_num_dem, num_rat_asg, gen_mem)
);
COMMENT ON TABLE mm.ekbe IS 'EKBE — History per Purchasing Document — the PO-history table that records every goods-movement and invoice event against a purchase-order line, one row per PO item per account-assignment sequence per history-event type per material-document reference. This is the goods-receipt/invoice-receipt (GR/IR) tie-out table: the lane that reconciles what was ordered (EKPO), what was received (linked via GJAHR/BELNR/BUZEI back to the material document, MKPF/MSEG on ECC or MATDOC on S/4), and what was invoiced (REEWR/REFWR) against the GR/IR clearing account. SAP''s real table carries 90+ fields including countr';
COMMENT ON COLUMN mm.ekbe.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.ekbe.dem_num IS 'EBELN — Purchasing Document Number [documentum emptionis numerus]';
COMMENT ON COLUMN mm.ekbe.pos_num_dem IS 'EBELP — Item Number of Purchasing Document [positio numerus documentum emptionis]';
COMMENT ON COLUMN mm.ekbe.num_rat_asg IS 'ZEKKN — Sequential Number of Account Assignment [numerus ratio assignatio]';
COMMENT ON COLUMN mm.ekbe.gen_mem IS 'VGABE — Transaction/event type, purchase order history [genus mandatum emptionis]';
COMMENT ON COLUMN mm.ekbe.mat_doc_ann IS 'GJAHR — Material Document Year [materia documentum annus]';
COMMENT ON COLUMN mm.ekbe.num_mat_doc IS 'BELNR — Number of Material Document [numerus materia documentum]';
COMMENT ON COLUMN mm.ekbe.pos_mat_doc IS 'BUZEI — Item in Material Document [positio materia documentum]';
COMMENT ON COLUMN mm.ekbe.ctg IS 'BEWTP — PO history category [categoria]';
COMMENT ON COLUMN mm.ekbe.mtm_gen IS 'BWART — Movement Type (Inventory Management) [motus genus]';
COMMENT ON COLUMN mm.ekbe.din_doc IS 'BUDAT — Posting Date in the Document [dies inscriptionis documentum]';
COMMENT ON COLUMN mm.ekbe.qnt IS 'MENGE — Quantity [quantitas]';
COMMENT ON COLUMN mm.ekbe.qnt_mem_pre IS 'BPMNG — Quantity in purchase order price unit [quantitas mandatum emptionis pretium]';
COMMENT ON COLUMN mm.ekbe.sum_mon IS 'DMBTR — Amount in Local Currency [summa moneta]';
COMMENT ON COLUMN mm.ekbe.sum_doc_mon IS 'WRBTR — Amount in document currency [summa documentum moneta]';
COMMENT ON COLUMN mm.ekbe.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN mm.ekbe.rat_cpn_val IS 'AREWR — GR/IR account clearing value in local currency [ratio compensatio valor]';
COMMENT ON COLUMN mm.ekbe.amr_cpa_mnd IS 'WESBS — Goods Receipt Blocked Stock in Order Unit [acceptio mercium copia mandatum]';
COMMENT ON COLUMN mm.ekbe.qnt_cpa_mnd IS 'BPWES — Quantity in GR blocked stock in order price unit [quantitas copia mandatum]';
COMMENT ON COLUMN mm.ekbe.dbt_crd_idx IS 'SHKZG — Debit/Credit Indicator [debitum creditum index]';
COMMENT ON COLUMN mm.ekbe.aes_gen IS 'BWTAR — Valuation Type [aestimatio genus]';
COMMENT ON COLUMN mm.ekbe.trd_idx IS 'ELIKZ — ''Delivery Completed'' Indicator [traditio index]';
COMMENT ON COLUMN mm.ekbe.rfr_ndo IS 'XBLNR — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN mm.ekbe.anf_rfr_doc IS 'LFGJA — Fiscal Year of a Reference Document [annus fiscalis referentia documentum]';
COMMENT ON COLUMN mm.ekbe.doc_rfr IS 'LFBNR — Document No. of a Reference Document [documentum referentia]';
COMMENT ON COLUMN mm.ekbe.pos_rfr_doc IS 'LFPOS — Item of a Reference Document [positio referentia documentum]';
COMMENT ON COLUMN mm.ekbe.csa_mtm IS 'GRUND — Reason for Movement [causa motus]';
COMMENT ON COLUMN mm.ekbe.die_doc IS 'CPUDT — Day On Which Accounting Document Was Entered [dies documentum]';
COMMENT ON COLUMN mm.ekbe.tmp IS 'CPUTM — Time of Entry [tempus]';
COMMENT ON COLUMN mm.ekbe.fac_val_mon IS 'REEWR — Invoice Value Entered (in Local Currency) [factura valor moneta]';
COMMENT ON COLUMN mm.ekbe.evere IS 'EVERE — Compliance with Shipping Instructions';
COMMENT ON COLUMN mm.ekbe.fac_val_mon2 IS 'REFWR — Invoice value in foreign currency [factura valor moneta]';
COMMENT ON COLUMN mm.ekbe.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.ekbe.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN mm.ekbe.num_doc_cnd IS 'KNUMV — Number of the document condition [numerus documentum condicio]';
COMMENT ON COLUMN mm.ekbe.trb_vdt_cod IS 'MWSKZ — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN mm.ekbe.grx_num IS 'CHARG — Batch Number [grex numerus]';
COMMENT ON COLUMN mm.ekbe.ddc_doc IS 'BLDAT — Document Date in Document [dies documenti documentum]';

CREATE TABLE IF NOT EXISTS mm.eket (
  cli char(3),
  dem_num varchar(10),
  pos_num_dem varchar(5),
  trd_lor_nmr varchar(4),
  pos_trd_die date,
  stt_trd_die date,
  ctg_trd_die varchar(1),
  qnt numeric(13,3),
  qnt_trd numeric(13,3),
  qnt_mrc numeric(13,3),
  qnt2 numeric(13,3),
  trd_die_tmp time,
  pem_num varchar(10),
  pos_num_pem varchar(5),
  idx_pem varchar(1),
  num varchar(10),
  pos varchar(3),
  lor numeric(3,0),
  mnd_die_lor date,
  num_rqs varchar(10),
  num2 varchar(8),
  lor2 varchar(1),
  qnt_cpa numeric(13,3),
  qnt3 numeric(13,3),
  grx_num varchar(10),
  ven_grx_num varchar(15),
  prd_vrs varchar(4),
  ems_gen varchar(1),
  mrc_die date,
  aulwe varchar(10),
  CONSTRAINT eket_pk PRIMARY KEY (cli, dem_num, pos_num_dem, trd_lor_nmr)
);
COMMENT ON TABLE mm.eket IS 'EKET — Scheduling Agreement Schedule Lines — the delivery-schedule detail beneath a PO/scheduling-agreement item, one row per PO item per schedule-line counter, carrying the promised delivery date, scheduled/received/issued quantities, and (for scheduling agreements specifically) the forecast-versus-JIT delivery mechanics that a supply-planning or on-time-delivery lane consumes. SAP''s real table carries 75+ fields including SAP Global Trade Services routing, APO location, and open-to-buy (OTB) budget-check extensions; this definition is scoped to the full key, the core date/quantity schedule fields, ';
COMMENT ON COLUMN mm.eket.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.eket.dem_num IS 'EBELN — Purchasing Document Number [documentum emptionis numerus]';
COMMENT ON COLUMN mm.eket.pos_num_dem IS 'EBELP — Item Number of Purchasing Document [positio numerus documentum emptionis]';
COMMENT ON COLUMN mm.eket.trd_lor_nmr IS 'ETENR — Delivery Schedule Line Counter [traditio linea ordinis numerator]';
COMMENT ON COLUMN mm.eket.pos_trd_die IS 'EINDT — Item Delivery Date [positio traditio dies]';
COMMENT ON COLUMN mm.eket.stt_trd_die IS 'SLFDT — Statistics-Relevant Delivery Date [statistica traditio dies]';
COMMENT ON COLUMN mm.eket.ctg_trd_die IS 'LPEIN — Category of Delivery Date [categoria traditio dies]';
COMMENT ON COLUMN mm.eket.qnt IS 'MENGE — Scheduled Quantity [quantitas]';
COMMENT ON COLUMN mm.eket.qnt_trd IS 'AMENG — Previous Quantity (Delivery Schedule Lines) [quantitas traditio]';
COMMENT ON COLUMN mm.eket.qnt_mrc IS 'WEMNG — Quantity of Goods Received [quantitas merces]';
COMMENT ON COLUMN mm.eket.qnt2 IS 'WAMNG — Issued Quantity [quantitas]';
COMMENT ON COLUMN mm.eket.trd_die_tmp IS 'UZEIT — Delivery Date Time-Spot [traditio dies tempus]';
COMMENT ON COLUMN mm.eket.pem_num IS 'BANFN — Purchase Requisition Number [petitio emptionis numerus]';
COMMENT ON COLUMN mm.eket.pos_num_pem IS 'BNFPO — Item Number of Purchase Requisition [positio numerus petitio emptionis]';
COMMENT ON COLUMN mm.eket.idx_pem IS 'ESTKZ — Creation Indicator (Purchase Requisition/Schedule Lines) [index petitio emptionis]';
COMMENT ON COLUMN mm.eket.num IS 'QUNUM — Number of Quota Arrangement [numerus]';
COMMENT ON COLUMN mm.eket.pos IS 'QUPOS — Quota Arrangement Item [positio]';
COMMENT ON COLUMN mm.eket.lor IS 'MAHNZ — No. of Reminders/Expediters for Schedule Line [linea ordinis]';
COMMENT ON COLUMN mm.eket.mnd_die_lor IS 'BEDAT — Order date of schedule line [mandatum dies linea ordinis]';
COMMENT ON COLUMN mm.eket.num_rqs IS 'RSNUM — Number of Reservation/Dependent Requirement [numerus requisitum]';
COMMENT ON COLUMN mm.eket.num2 IS 'SERNR — BOM explosion number [numerus]';
COMMENT ON COLUMN mm.eket.lor2 IS 'FIXKZ — Schedule Line is "Fixed" [linea ordinis]';
COMMENT ON COLUMN mm.eket.qnt_cpa IS 'GLMNG — Quantity Delivered (Stock Transfer) [quantitas copia]';
COMMENT ON COLUMN mm.eket.qnt3 IS 'DABMG — Quantity Reduced (MRP) [quantitas]';
COMMENT ON COLUMN mm.eket.grx_num IS 'CHARG — Batch Number [grex numerus]';
COMMENT ON COLUMN mm.eket.ven_grx_num IS 'LICHA — Vendor Batch Number [venditor grex numerus]';
COMMENT ON COLUMN mm.eket.prd_vrs IS 'VERID — Production Version [productio versio]';
COMMENT ON COLUMN mm.eket.ems_gen IS 'ABART — Scheduling agreement release type [emissio genus]';
COMMENT ON COLUMN mm.eket.mrc_die IS 'WADAT — Goods Issue Date [merces dies]';
COMMENT ON COLUMN mm.eket.aulwe IS 'AULWE — Route Schedule';

CREATE TABLE IF NOT EXISTS mm.ekkn (
  cli char(3),
  dem_num varchar(10),
  pos_num_dem varchar(5),
  num_rat_asg varchar(2),
  idx_dem_rat varchar(1),
  die_tbl_cre date,
  qnt numeric(13,3),
  dtb_rat numeric(3,1),
  net_mnd_val numeric(13,2),
  rat_num varchar(10),
  ang varchar(4),
  csm varchar(10),
  prp_num varchar(16),
  vdt_dtb_ndo varchar(10),
  dvd_pos varchar(6),
  trd_lor_num varchar(4),
  grs_idx varchar(1),
  ptm_num varchar(12),
  ptm varchar(4),
  mnd_num varchar(12),
  mrc_psn varchar(12),
  ablad varchar(25),
  amd varchar(4),
  ins_csm varchar(1),
  mnd varchar(1),
  prp varchar(1),
  fac_idx varchar(1),
  smp_obi varchar(12),
  seg_num varchar(10),
  clu varchar(10),
  ops_elm_eop varchar(8),
  ret_num_rat varchar(12),
  itn_num_mnd varchar(10),
  clv_obi varchar(8),
  nmr varchar(8),
  scs_rat_num varchar(10),
  pos varchar(14),
  idx varchar(2),
  fistl varchar(16),
  geber varchar(10),
  afn varchar(16),
  rfr_die_tsc date,
  trb_vdt_cod varchar(2),
  trb varchar(15),
  ndo varchar(10),
  doc_pos varchar(3),
  act_gen varchar(6),
  prznr varchar(12),
  grant_nbr varchar(20),
  CONSTRAINT ekkn_pk PRIMARY KEY (cli, dem_num, pos_num_dem, num_rat_asg)
);
COMMENT ON TABLE mm.ekkn IS 'EKKN — Account Assignment in Purchasing Document — one row per PO item per account-assignment sequence, carrying the cost object (G/L account, cost center, order, asset, WBS element, profit center, controlling area) that a purchase-order line is charged against. This is the table where a purchase line acquires its cost object and therefore its ACDOCA coordinates: SAKTO/KOSTL/AUFNR/ANLN1+ANLN2/PS_PSP_PNR/PRCTR here are the same dimensions the Universal Journal (ACDOCA) posts against once the invoice or goods receipt clears, making EKKN the crosswalk between procurement and the FI/CO lane. Parallels EB';
COMMENT ON COLUMN mm.ekkn.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.ekkn.dem_num IS 'EBELN — Purchasing Document Number [documentum emptionis numerus]';
COMMENT ON COLUMN mm.ekkn.pos_num_dem IS 'EBELP — Item Number of Purchasing Document [positio numerus documentum emptionis]';
COMMENT ON COLUMN mm.ekkn.num_rat_asg IS 'ZEKKN — Sequential Number of Account Assignment [numerus ratio assignatio]';
COMMENT ON COLUMN mm.ekkn.idx_dem_rat IS 'LOEKZ — Deletion Indicator: Purchasing Document Account Assignment [index documentum emptionis ratio]';
COMMENT ON COLUMN mm.ekkn.die_tbl_cre IS 'AEDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN mm.ekkn.qnt IS 'MENGE — Quantity [quantitas]';
COMMENT ON COLUMN mm.ekkn.dtb_rat IS 'VPROZ — Distribution Percentage in Case of Multiple Account Assgt [distributio ratio]';
COMMENT ON COLUMN mm.ekkn.net_mnd_val IS 'NETWR — Net Order Value in PO Currency [netus mandatum valor]';
COMMENT ON COLUMN mm.ekkn.rat_num IS 'SAKTO — G/L Account Number [ratio numerus]';
COMMENT ON COLUMN mm.ekkn.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN mm.ekkn.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN mm.ekkn.prp_num IS 'PROJN — Old: Project number : No longer used --> PS_POSNR [propositum numerus]';
COMMENT ON COLUMN mm.ekkn.vdt_dtb_ndo IS 'VBELN — Sales and Distribution Document Number [venditio distributio numerus documenti]';
COMMENT ON COLUMN mm.ekkn.dvd_pos IS 'VBELP — Sales Document Item [documentum venditionis positio]';
COMMENT ON COLUMN mm.ekkn.trd_lor_num IS 'VETEN — Delivery Schedule Line Number [traditio linea ordinis numerus]';
COMMENT ON COLUMN mm.ekkn.grs_idx IS 'KZBRB — Gross requirements indicator [crassus index]';
COMMENT ON COLUMN mm.ekkn.ptm_num IS 'ANLN1 — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN mm.ekkn.ptm IS 'ANLN2 — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN mm.ekkn.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN mm.ekkn.mrc_psn IS 'WEMPF — Goods Recipient/Ship-To Party [merces persona]';
COMMENT ON COLUMN mm.ekkn.ablad IS 'ABLAD — Unloading Point';
COMMENT ON COLUMN mm.ekkn.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN mm.ekkn.ins_csm IS 'XBKST — Posting to cost center? [inscriptio centrum sumptus]';
COMMENT ON COLUMN mm.ekkn.mnd IS 'XBAUF — Post To Order [mandatum]';
COMMENT ON COLUMN mm.ekkn.prp IS 'XBPRO — Post to project [propositum]';
COMMENT ON COLUMN mm.ekkn.fac_idx IS 'EREKZ — Final Invoice Indicator [factura index]';
COMMENT ON COLUMN mm.ekkn.smp_obi IS 'KSTRG — Cost Object [sumptus obiectum]';
COMMENT ON COLUMN mm.ekkn.seg_num IS 'PAOBJNR — Profitability Segment Number (CO-PA) [segmentum numerus]';
COMMENT ON COLUMN mm.ekkn.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN mm.ekkn.ops_elm_eop IS 'PS_PSP_PNR — Work Breakdown Structure Element (WBS Element) [opus elementum elementum operis]';
COMMENT ON COLUMN mm.ekkn.ret_num_rat IS 'NPLNR — Network Number for Account Assignment [rete numerus ratio]';
COMMENT ON COLUMN mm.ekkn.itn_num_mnd IS 'AUFPL — Routing number of operations in the order [itinerarium numerus mandatum]';
COMMENT ON COLUMN mm.ekkn.clv_obi IS 'IMKEY — Internal Key for Real Estate Object [clavis obiectum]';
COMMENT ON COLUMN mm.ekkn.nmr IS 'APLZL — Internal counter [numerator]';
COMMENT ON COLUMN mm.ekkn.scs_rat_num IS 'VPTNR — Partner account number [socius ratio numerus]';
COMMENT ON COLUMN mm.ekkn.pos IS 'FIPOS — Commitment Item [positio]';
COMMENT ON COLUMN mm.ekkn.idx IS 'RECID — Recovery Indicator [index]';
COMMENT ON COLUMN mm.ekkn.fistl IS 'FISTL — Funds Center';
COMMENT ON COLUMN mm.ekkn.geber IS 'GEBER — Fund';
COMMENT ON COLUMN mm.ekkn.afn IS 'FKBER — Functional Area [area functionis]';
COMMENT ON COLUMN mm.ekkn.rfr_die_tsc IS 'DABRZ — Reference Date for Settlement [referentia dies transactio]';
COMMENT ON COLUMN mm.ekkn.trb_vdt_cod IS 'MWSKZ — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN mm.ekkn.trb IS 'TXJCD — Tax Jurisdiction [tributum]';
COMMENT ON COLUMN mm.ekkn.ndo IS 'KBLNR — Document Number for Earmarked Funds [numerus documenti]';
COMMENT ON COLUMN mm.ekkn.doc_pos IS 'KBLPOS — Earmarked Funds: Document Item [documentum positio]';
COMMENT ON COLUMN mm.ekkn.act_gen IS 'LSTAR — Activity Type [actio genus]';
COMMENT ON COLUMN mm.ekkn.prznr IS 'PRZNR — Business Process';
COMMENT ON COLUMN mm.ekkn.grant_nbr IS 'GRANT_NBR — Grant';

CREATE TABLE IF NOT EXISTS mm.ekko (
  cli char(3),
  dem_num varchar(10),
  soc varchar(4),
  dem_ctg varchar(1),
  dem_gen varchar(4),
  idx_dem varchar(1),
  sta_dem varchar(1),
  die_tbl_cre date,
  nom_psn_cre varchar(12),
  ven_rat_num varchar(10),
  lng_clv char(1),
  sol_clv varchar(4),
  oem varchar(4),
  cts varchar(3),
  cvm varchar(5),
  rpm numeric(9,5),
  dem_die date,
  ini_per date,
  fin_per date,
  num varchar(10),
  ven varchar(10),
  emp_num varchar(10),
  num_emt varchar(10),
  trd_mem varchar(1),
  idx_amr varchar(1),
  ofc_cpa_mnd varchar(4),
  inco1 varchar(3),
  inco2 varchar(28),
  num_doc_cnd varchar(10),
  tax varchar(6),
  psn varchar(10),
  num2 varchar(10),
  logsy varchar(10),
  ems_cts varchar(2),
  ems varchar(2),
  ems_idx_dem varchar(1),
  ems_sta varchar(8),
  ems2 varchar(1),
  ptr_trb varchar(3),
  dml_num varchar(10),
  num3 varchar(20),
  dem varchar(2),
  tot_val_tmp numeric(15,2),
  vrs_num varchar(8),
  sol_idx varchar(4),
  sol numeric(5,2),
  sol_sum_doc numeric(11,2),
  die_sol date,
  pct_num varchar(40),
  pct_nom varchar(40),
  ems_die_pct date,
  gen varchar(2),
  num4 varchar(10),
  mem varchar(1),
  CONSTRAINT ekko_pk PRIMARY KEY (cli, dem_num)
);
COMMENT ON TABLE mm.ekko IS 'EKKO — Purchasing Document Header - header data (vendor, terms, org) for POs, contracts, and scheduling agreements.';
COMMENT ON COLUMN mm.ekko.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.ekko.dem_num IS 'EBELN — Purchasing Document Number [documentum emptionis numerus]';
COMMENT ON COLUMN mm.ekko.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN mm.ekko.dem_ctg IS 'BSTYP — Purchasing Document Category [documentum emptionis categoria]';
COMMENT ON COLUMN mm.ekko.dem_gen IS 'BSART — Purchasing Document Type [documentum emptionis genus]';
COMMENT ON COLUMN mm.ekko.idx_dem IS 'LOEKZ — Deletion Indicator in Purchasing Document [index documentum emptionis]';
COMMENT ON COLUMN mm.ekko.sta_dem IS 'STATU — Status of Purchasing Document [status documentum emptionis]';
COMMENT ON COLUMN mm.ekko.die_tbl_cre IS 'AEDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN mm.ekko.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN mm.ekko.ven_rat_num IS 'LIFNR — Vendor Account Number [venditor ratio numerus]';
COMMENT ON COLUMN mm.ekko.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN mm.ekko.sol_clv IS 'ZTERM — Terms of Payment Key [solutio clavis]';
COMMENT ON COLUMN mm.ekko.oem IS 'EKORG — Purchasing Organization [organizatio emptionis]';
COMMENT ON COLUMN mm.ekko.cts IS 'EKGRP — Purchasing Group [coetus]';
COMMENT ON COLUMN mm.ekko.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN mm.ekko.rpm IS 'WKURS — Exchange Rate [ratio permutationis]';
COMMENT ON COLUMN mm.ekko.dem_die IS 'BEDAT — Purchasing Document Date [documentum emptionis dies]';
COMMENT ON COLUMN mm.ekko.ini_per IS 'KDATB — Start of Validity Period [initium periodus]';
COMMENT ON COLUMN mm.ekko.fin_per IS 'KDATE — End of Validity Period [finis periodus]';
COMMENT ON COLUMN mm.ekko.num IS 'ANGNR — Quotation Number [numerus]';
COMMENT ON COLUMN mm.ekko.ven IS 'LLIEF — Supplying Vendor [venditor]';
COMMENT ON COLUMN mm.ekko.emp_num IS 'KUNNR — Customer Number [emptor numerus]';
COMMENT ON COLUMN mm.ekko.num_emt IS 'KONNR — Number of Principal Purchase Agreement [numerus emptio]';
COMMENT ON COLUMN mm.ekko.trd_mem IS 'AUTLF — Complete Delivery Stipulated for Each Purchase Order [traditio mandatum emptionis]';
COMMENT ON COLUMN mm.ekko.idx_amr IS 'WEAKT — Indicator: Goods Receipt Message [index acceptio mercium]';
COMMENT ON COLUMN mm.ekko.ofc_cpa_mnd IS 'RESWK — Supplying (Issuing) Plant in Stock Transport Order [officina copia mandatum]';
COMMENT ON COLUMN mm.ekko.inco1 IS 'INCO1 — Incoterms (Part 1)';
COMMENT ON COLUMN mm.ekko.inco2 IS 'INCO2 — Incoterms (Part 2)';
COMMENT ON COLUMN mm.ekko.num_doc_cnd IS 'KNUMV — Number of the document condition [numerus documentum condicio]';
COMMENT ON COLUMN mm.ekko.tax IS 'KALSM — Procedure (Pricing, Output Control, Acct. Det., Costing,...) [taxatio]';
COMMENT ON COLUMN mm.ekko.psn IS 'LIFRE — Different Invoicing Party [persona]';
COMMENT ON COLUMN mm.ekko.num2 IS 'EXNUM — Number of foreign trade data in MM and SD documents [numerus]';
COMMENT ON COLUMN mm.ekko.logsy IS 'LOGSY — Logical System';
COMMENT ON COLUMN mm.ekko.ems_cts IS 'FRGGR — Release group [emissio coetus]';
COMMENT ON COLUMN mm.ekko.ems IS 'FRGSX — Release Strategy [emissio]';
COMMENT ON COLUMN mm.ekko.ems_idx_dem IS 'FRGKE — Release Indicator: Purchasing Document [emissio index documentum emptionis]';
COMMENT ON COLUMN mm.ekko.ems_sta IS 'FRGZU — Release status [emissio status]';
COMMENT ON COLUMN mm.ekko.ems2 IS 'FRGRL — Release Not Yet Completely Effected [emissio]';
COMMENT ON COLUMN mm.ekko.ptr_trb IS 'LANDS — Country for Tax Return [patria tributum]';
COMMENT ON COLUMN mm.ekko.dml_num IS 'ADRNR — Address number [domicilium numerus]';
COMMENT ON COLUMN mm.ekko.num3 IS 'STCEG — VAT Registration Number [numerus]';
COMMENT ON COLUMN mm.ekko.dem IS 'PROCSTAT — Purchasing document processing state [documentum emptionis]';
COMMENT ON COLUMN mm.ekko.tot_val_tmp IS 'RLWRT — Total value at time of release [summa totalis valor tempus]';
COMMENT ON COLUMN mm.ekko.vrs_num IS 'REVNO — Version number in Purchasing [versio numerus]';
COMMENT ON COLUMN mm.ekko.sol_idx IS 'DPTYP — Down Payment Indicator [solutio index]';
COMMENT ON COLUMN mm.ekko.sol IS 'DPPCT — Down Payment Percentage [solutio]';
COMMENT ON COLUMN mm.ekko.sol_sum_doc IS 'DPAMT — Down Payment Amount in Document Currency [solutio summa documentum]';
COMMENT ON COLUMN mm.ekko.die_sol IS 'DPDAT — Due Date for Down Payment [dies solutio]';
COMMENT ON COLUMN mm.ekko.pct_num IS 'LEGAL_CONTRACT — Legal Contract Number [pactum numerus]';
COMMENT ON COLUMN mm.ekko.pct_nom IS 'DESCRIPTION — Contract Name [pactum nomen]';
COMMENT ON COLUMN mm.ekko.ems_die_pct IS 'RELEASE_DATE — Release Date of Contract [emissio dies pactum]';
COMMENT ON COLUMN mm.ekko.gen IS 'VSART — Shipping type [genus]';
COMMENT ON COLUMN mm.ekko.num4 IS 'SUBMI — Collective Number [numerus]';
COMMENT ON COLUMN mm.ekko.mem IS 'MEMORY — Purchase order not yet complete [mandatum emptionis]';

CREATE TABLE IF NOT EXISTS mm.ekpo (
  cli char(3),
  dem_num varchar(10),
  pos_num_dem varchar(5),
  idx_dem varchar(1),
  sta varchar(1),
  dem_pos_die date,
  txt varchar(40),
  mat_num varchar(18),
  mat_num2 varchar(18),
  soc varchar(4),
  ofc varchar(4),
  loc varchar(4),
  rqs_num varchar(10),
  mat_cts varchar(9),
  num_tin varchar(10),
  mem_qnt numeric(13,3),
  mem_men varchar(3),
  net_pre_dem numeric(11,2),
  pre_uni numeric(5,0),
  net_mnd_val numeric(13,2),
  grs_mnd_val numeric(13,2),
  trb_vdt_cod varchar(2),
  cpa_gen varchar(1),
  aes_gen varchar(10),
  aes_ctg varchar(1),
  trd_idx varchar(1),
  fac_idx varchar(1),
  pos_ctg_dem varchar(1),
  rat_asg_ctg varchar(1),
  ins varchar(1),
  amr_idx varchar(1),
  amr varchar(1),
  fac_idx2 varchar(1),
  idx_fac_vrf varchar(1),
  num_emt varchar(10),
  pos_num_emt varchar(5),
  men varchar(3),
  dem_ctg varchar(1),
  emp varchar(10),
  trd_tmp numeric(3,0),
  net_pnd numeric(13,3),
  uni_pnd varchar(3),
  trb varchar(15),
  cpa_idx varchar(1),
  cnf_clv varchar(4),
  clu varchar(10),
  grs_pnd numeric(13,3),
  vlm numeric(13,3),
  vlm_uni varchar(3),
  inco1 varchar(3),
  ven_trd varchar(10),
  ofc_mat varchar(18),
  pem_num varchar(10),
  pos_num_pem varchar(5),
  mat_gen varchar(4),
  pos varchar(1),
  num varchar(40),
  num2 varchar(10),
  grant_nbr varchar(20),
  afn varchar(16),
  loc_cpa_mnd varchar(4),
  num3 integer,
  org varchar(1),
  CONSTRAINT ekpo_pk PRIMARY KEY (cli, dem_num, pos_num_dem)
);
COMMENT ON TABLE mm.ekpo IS 'EKPO — Purchasing Document Item - line-item data (material, quantity, price, account assignment) for purchasing documents.';
COMMENT ON COLUMN mm.ekpo.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.ekpo.dem_num IS 'EBELN — Purchasing Document Number [documentum emptionis numerus]';
COMMENT ON COLUMN mm.ekpo.pos_num_dem IS 'EBELP — Item Number of Purchasing Document [positio numerus documentum emptionis]';
COMMENT ON COLUMN mm.ekpo.idx_dem IS 'LOEKZ — Deletion Indicator in Purchasing Document [index documentum emptionis]';
COMMENT ON COLUMN mm.ekpo.sta IS 'STATUR — FQ status [status]';
COMMENT ON COLUMN mm.ekpo.dem_pos_die IS 'AEDAT — Purchasing Document Item Change Date [documentum emptionis positio dies]';
COMMENT ON COLUMN mm.ekpo.txt IS 'TXZ01 — Short Text [textus]';
COMMENT ON COLUMN mm.ekpo.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.ekpo.mat_num2 IS 'EMATN — Material Number [materia numerus]';
COMMENT ON COLUMN mm.ekpo.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN mm.ekpo.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN mm.ekpo.loc IS 'LGORT — Storage Location [locus repositionis]';
COMMENT ON COLUMN mm.ekpo.rqs_num IS 'BEDNR — Requirement Tracking Number [requisitum numerus]';
COMMENT ON COLUMN mm.ekpo.mat_cts IS 'MATKL — Material Group [materia coetus]';
COMMENT ON COLUMN mm.ekpo.num_tin IS 'INFNR — Number of Purchasing Info Record [numerus tabula informationis]';
COMMENT ON COLUMN mm.ekpo.mem_qnt IS 'MENGE — Purchase Order Quantity [mandatum emptionis quantitas]';
COMMENT ON COLUMN mm.ekpo.mem_men IS 'MEINS — Purchase Order Unit of Measure [mandatum emptionis mensura]';
COMMENT ON COLUMN mm.ekpo.net_pre_dem IS 'NETPR — Net Price in Purchasing Document (in Document Currency) [netus pretium documentum emptionis]';
COMMENT ON COLUMN mm.ekpo.pre_uni IS 'PEINH — Price Unit [pretium unitas]';
COMMENT ON COLUMN mm.ekpo.net_mnd_val IS 'NETWR — Net Order Value in PO Currency [netus mandatum valor]';
COMMENT ON COLUMN mm.ekpo.grs_mnd_val IS 'BRTWR — Gross order value in PO currency [crassus mandatum valor]';
COMMENT ON COLUMN mm.ekpo.trb_vdt_cod IS 'MWSKZ — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN mm.ekpo.cpa_gen IS 'INSMK — Stock Type [copia genus]';
COMMENT ON COLUMN mm.ekpo.aes_gen IS 'BWTAR — Valuation Type [aestimatio genus]';
COMMENT ON COLUMN mm.ekpo.aes_ctg IS 'BWTTY — Valuation Category [aestimatio categoria]';
COMMENT ON COLUMN mm.ekpo.trd_idx IS 'ELIKZ — ''Delivery Completed'' Indicator [traditio index]';
COMMENT ON COLUMN mm.ekpo.fac_idx IS 'EREKZ — Final Invoice Indicator [factura index]';
COMMENT ON COLUMN mm.ekpo.pos_ctg_dem IS 'PSTYP — Item Category in Purchasing Document [positio categoria documentum emptionis]';
COMMENT ON COLUMN mm.ekpo.rat_asg_ctg IS 'KNTTP — Account Assignment Category [ratio assignatio categoria]';
COMMENT ON COLUMN mm.ekpo.ins IS 'KZVBR — Consumption Posting [inscriptio]';
COMMENT ON COLUMN mm.ekpo.amr_idx IS 'WEPOS — Goods Receipt Indicator [acceptio mercium index]';
COMMENT ON COLUMN mm.ekpo.amr IS 'WEUNB — Goods Receipt, Non-Valuated [acceptio mercium]';
COMMENT ON COLUMN mm.ekpo.fac_idx2 IS 'REPOS — Invoice Receipt Indicator [factura index]';
COMMENT ON COLUMN mm.ekpo.idx_fac_vrf IS 'WEBRE — Indicator: GR-Based Invoice Verification [index factura verificatio]';
COMMENT ON COLUMN mm.ekpo.num_emt IS 'KONNR — Number of Principal Purchase Agreement [numerus emptio]';
COMMENT ON COLUMN mm.ekpo.pos_num_emt IS 'KTPNR — Item Number of Principal Purchase Agreement [positio numerus emptio]';
COMMENT ON COLUMN mm.ekpo.men IS 'LMEIN — Base Unit of Measure [mensura]';
COMMENT ON COLUMN mm.ekpo.dem_ctg IS 'BSTYP — Purchasing Document Category [documentum emptionis categoria]';
COMMENT ON COLUMN mm.ekpo.emp IS 'KUNNR — Customer [emptor]';
COMMENT ON COLUMN mm.ekpo.trd_tmp IS 'PLIFZ — Planned Delivery Time in Days [traditio tempus]';
COMMENT ON COLUMN mm.ekpo.net_pnd IS 'NTGEW — Net Weight [netus pondus]';
COMMENT ON COLUMN mm.ekpo.uni_pnd IS 'GEWEI — Unit of Weight [unitas pondus]';
COMMENT ON COLUMN mm.ekpo.trb IS 'TXJCD — Tax Jurisdiction [tributum]';
COMMENT ON COLUMN mm.ekpo.cpa_idx IS 'SOBKZ — Special Stock Indicator [copia index]';
COMMENT ON COLUMN mm.ekpo.cnf_clv IS 'BSTAE — Confirmation Control Key [confirmatio clavis]';
COMMENT ON COLUMN mm.ekpo.clu IS 'KO_PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN mm.ekpo.grs_pnd IS 'BRGEW — Gross Weight [crassus pondus]';
COMMENT ON COLUMN mm.ekpo.vlm IS 'VOLUM — Volume [volumen]';
COMMENT ON COLUMN mm.ekpo.vlm_uni IS 'VOLEH — Volume unit [volumen unitas]';
COMMENT ON COLUMN mm.ekpo.inco1 IS 'INCO1 — Incoterms (Part 1)';
COMMENT ON COLUMN mm.ekpo.ven_trd IS 'EMLIF — Vendor to be supplied/who is to receive delivery [venditor traditio]';
COMMENT ON COLUMN mm.ekpo.ofc_mat IS 'SATNR — Cross-Plant Configurable Material [officina materia]';
COMMENT ON COLUMN mm.ekpo.pem_num IS 'BANFN — Purchase Requisition Number [petitio emptionis numerus]';
COMMENT ON COLUMN mm.ekpo.pos_num_pem IS 'BNFPO — Item Number of Purchase Requisition [positio numerus petitio emptionis]';
COMMENT ON COLUMN mm.ekpo.mat_gen IS 'MTART — Material Type [materia genus]';
COMMENT ON COLUMN mm.ekpo.pos IS 'RETPO — Returns Item [positio]';
COMMENT ON COLUMN mm.ekpo.num IS 'MFRPN — Manufacturer Part Number [numerus]';
COMMENT ON COLUMN mm.ekpo.num2 IS 'MFRNR — Number of a Manufacturer [numerus]';
COMMENT ON COLUMN mm.ekpo.grant_nbr IS 'GRANT_NBR — Grant';
COMMENT ON COLUMN mm.ekpo.afn IS 'FKBER — Functional Area [area functionis]';
COMMENT ON COLUMN mm.ekpo.loc_cpa_mnd IS 'RESLO — Issuing Storage Location for Stock Transport Order [locus repositionis copia mandatum]';
COMMENT ON COLUMN mm.ekpo.num3 IS 'ANZSN — Number of serial numbers [numerus]';
COMMENT ON COLUMN mm.ekpo.org IS 'WEORA — Acceptance At Origin [origo]';

CREATE TABLE IF NOT EXISTS mm.eord (
  cli char(3),
  mat_num varchar(18),
  ofc varchar(4),
  num_fns_tbl varchar(5),
  die_tbl_cre date,
  nom_psn_cre varchar(12),
  fns_tbl_vla date,
  fns_tbl_vld date,
  ven_rat_num varchar(10),
  idx_ven varchar(1),
  num varchar(10),
  pos varchar(5),
  emt_pos varchar(1),
  ofc_mat varchar(4),
  ofc_cpa_mnd varchar(1),
  mat_num2 varchar(18),
  fns_cpa varchar(1),
  oem varchar(4),
  dem_ctg varchar(1),
  ctg_fns_tbl varchar(1),
  fns_cns varchar(1),
  mem_men varchar(3),
  logsy varchar(10),
  cpa_idx varchar(1),
  pct varchar(10),
  pct_pos_num varchar(10),
  CONSTRAINT eord_pk PRIMARY KEY (cli, mat_num, ofc, num_fns_tbl)
);
COMMENT ON TABLE mm.eord IS 'EORD — Purchasing Source List — one row per material/plant source-of-supply record, defining which vendor, outline agreement, or issuing plant is the valid (and optionally fixed or blocked) source for procuring a material at a plant over a validity period. This is a small, complete customizing/master table carried in full.';
COMMENT ON COLUMN mm.eord.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.eord.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.eord.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN mm.eord.num_fns_tbl IS 'ZEORD — Number of Source List Record [numerus fons tabula]';
COMMENT ON COLUMN mm.eord.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN mm.eord.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN mm.eord.fns_tbl_vla IS 'VDATU — Source List Record Valid From [fons tabula validus ab]';
COMMENT ON COLUMN mm.eord.fns_tbl_vld IS 'BDATU — Source List Record Valid To [fons tabula validus ad]';
COMMENT ON COLUMN mm.eord.ven_rat_num IS 'LIFNR — Vendor Account Number [venditor ratio numerus]';
COMMENT ON COLUMN mm.eord.idx_ven IS 'FLIFN — Indicator: Fixed vendor [index venditor]';
COMMENT ON COLUMN mm.eord.num IS 'EBELN — Agreement Number [numerus]';
COMMENT ON COLUMN mm.eord.pos IS 'EBELP — Agreement Item [positio]';
COMMENT ON COLUMN mm.eord.emt_pos IS 'FEBEL — Fixed Outline Purchase Agreement Item [emptio positio]';
COMMENT ON COLUMN mm.eord.ofc_mat IS 'RESWK — Plant from Which Material is Procured [officina materia]';
COMMENT ON COLUMN mm.eord.ofc_cpa_mnd IS 'FRESW — Fixed issuing plant in case of stock transport order [officina copia mandatum]';
COMMENT ON COLUMN mm.eord.mat_num2 IS 'EMATN — Material Number Corresponding to Manufacturer Part Number [materia numerus]';
COMMENT ON COLUMN mm.eord.fns_cpa IS 'NOTKZ — Blocked Source of Supply [fons copia]';
COMMENT ON COLUMN mm.eord.oem IS 'EKORG — Purchasing Organization [organizatio emptionis]';
COMMENT ON COLUMN mm.eord.dem_ctg IS 'VRTYP — Purchasing Document Category [documentum emptionis categoria]';
COMMENT ON COLUMN mm.eord.ctg_fns_tbl IS 'EORTP — Category of Source List Record [categoria fons tabula]';
COMMENT ON COLUMN mm.eord.fns_cns IS 'AUTET — Source List Usage in Materials Planning [fons consilium]';
COMMENT ON COLUMN mm.eord.mem_men IS 'MEINS — Purchase Order Unit of Measure [mandatum emptionis mensura]';
COMMENT ON COLUMN mm.eord.logsy IS 'LOGSY — Logical System';
COMMENT ON COLUMN mm.eord.cpa_idx IS 'SOBKZ — Special Stock Indicator [copia index]';
COMMENT ON COLUMN mm.eord.pct IS 'SRM_CONTRACT_ID — Central Contract [pactum]';
COMMENT ON COLUMN mm.eord.pct_pos_num IS 'SRM_CONTRACT_ITM — Central Contract Item Number [pactum positio numerus]';

CREATE TABLE IF NOT EXISTS mm.makt (
  cli char(3),
  mat_num varchar(18),
  lng_clv char(1),
  mat_dsc_txt varchar(40),
  mat_dsc varchar(40),
  CONSTRAINT makt_pk PRIMARY KEY (cli, mat_num, lng_clv)
);
COMMENT ON TABLE mm.makt IS 'MAKT — Material Descriptions — the language-dependent short-text description of a material, keyed by material number and language. Small text table joined onto MARA wherever a material-level line item needs a human-readable description.';
COMMENT ON COLUMN mm.makt.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.makt.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.makt.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN mm.makt.mat_dsc_txt IS 'MAKTX — Material Description (Short Text) [materia descriptio textus]';
COMMENT ON COLUMN mm.makt.mat_dsc IS 'MAKTG — Material description in upper case for matchcodes [materia descriptio]';

CREATE TABLE IF NOT EXISTS mm.mara (
  cli char(3),
  mat_num varchar(18),
  cre date,
  nom_psn_cre varchar(12),
  die_ult date,
  nom_psn_mut varchar(12),
  cur_sta_mat varchar(15),
  cur_sta varchar(15),
  sgn_mat_cli varchar(1),
  mat_gen varchar(4),
  mbrsh varchar(1),
  mat_cts varchar(9),
  mat_num2 varchar(18),
  men varchar(3),
  mem_men varchar(3),
  mat varchar(48),
  nrm_dsc varchar(18),
  labor varchar(3),
  val_clv varchar(4),
  grs_pnd numeric(13,3),
  net_pnd numeric(13,3),
  pnd_uni varchar(3),
  vlm numeric(13,3),
  vlm_uni varchar(3),
  behvo varchar(2),
  raube varchar(2),
  idx varchar(2),
  grd_cod varchar(3),
  cts varchar(4),
  mat_num3 varchar(18),
  dvs varchar(2),
  num varchar(13),
  bwvor varchar(1),
  ctg varchar(4),
  num2 varchar(18),
  ctg_num varchar(2),
  laeng numeric(13,3),
  breit numeric(13,3),
  hoehe numeric(13,3),
  uni varchar(3),
  hir varchar(18),
  idx2 varchar(1),
  qmpur varchar(1),
  grx_rqs_idx varchar(1),
  mat2 varchar(1),
  cts2 varchar(4),
  vla_die date,
  die date,
  mat_cts2 varchar(18),
  ofc_mat varchar(18),
  mat_ctg varchar(2),
  ofc_mat_sta varchar(2),
  dtb_mat_sta varchar(2),
  die_ofc_mat date,
  die_mat_sta date,
  mhdrz numeric(4,0),
  tot numeric(4,0),
  num3 varchar(40),
  num4 varchar(10),
  mrc_idx varchar(3),
  grd_nsr varchar(1),
  pos_ctg_cts varchar(4),
  die2 varchar(1),
  pos_num varchar(2),
  org varchar(1),
  ptr_org_mat varchar(3),
  tax_rfr_mat varchar(18),
  CONSTRAINT mara_pk PRIMARY KEY (cli, mat_num)
);
COMMENT ON TABLE mm.mara IS 'MARA — General Material Data - client-level material master (core attributes shared across all plants).';
COMMENT ON COLUMN mm.mara.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.mara.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.mara.cre IS 'ERSDA — Created On [creatus]';
COMMENT ON COLUMN mm.mara.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN mm.mara.die_ult IS 'LAEDA — Date of Last Change [dies ultimus]';
COMMENT ON COLUMN mm.mara.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN mm.mara.cur_sta_mat IS 'VPSTA — Maintenance status of complete material [curatio status materia]';
COMMENT ON COLUMN mm.mara.cur_sta IS 'PSTAT — Maintenance status [curatio status]';
COMMENT ON COLUMN mm.mara.sgn_mat_cli IS 'LVORM — Flag Material for Deletion at Client Level [signum materia cliens]';
COMMENT ON COLUMN mm.mara.mat_gen IS 'MTART — Material Type [materia genus]';
COMMENT ON COLUMN mm.mara.mbrsh IS 'MBRSH — Industry sector';
COMMENT ON COLUMN mm.mara.mat_cts IS 'MATKL — Material Group [materia coetus]';
COMMENT ON COLUMN mm.mara.mat_num2 IS 'BISMT — Old material number [materia numerus]';
COMMENT ON COLUMN mm.mara.men IS 'MEINS — Base Unit of Measure [mensura]';
COMMENT ON COLUMN mm.mara.mem_men IS 'BSTME — Purchase Order Unit of Measure [mandatum emptionis mensura]';
COMMENT ON COLUMN mm.mara.mat IS 'WRKST — Basic Material [materia]';
COMMENT ON COLUMN mm.mara.nrm_dsc IS 'NORMT — Industry Standard Description [norma descriptio]';
COMMENT ON COLUMN mm.mara.labor IS 'LABOR — Laboratory/design office';
COMMENT ON COLUMN mm.mara.val_clv IS 'EKWSL — Purchasing Value Key [valor clavis]';
COMMENT ON COLUMN mm.mara.grs_pnd IS 'BRGEW — Gross Weight [crassus pondus]';
COMMENT ON COLUMN mm.mara.net_pnd IS 'NTGEW — Net Weight [netus pondus]';
COMMENT ON COLUMN mm.mara.pnd_uni IS 'GEWEI — Weight Unit [pondus unitas]';
COMMENT ON COLUMN mm.mara.vlm IS 'VOLUM — Volume [volumen]';
COMMENT ON COLUMN mm.mara.vlm_uni IS 'VOLEH — Volume unit [volumen unitas]';
COMMENT ON COLUMN mm.mara.behvo IS 'BEHVO — Container requirements';
COMMENT ON COLUMN mm.mara.raube IS 'RAUBE — Storage conditions';
COMMENT ON COLUMN mm.mara.idx IS 'TEMPB — Temperature conditions indicator [index]';
COMMENT ON COLUMN mm.mara.grd_cod IS 'DISST — Low-Level Code [gradus codex]';
COMMENT ON COLUMN mm.mara.cts IS 'TRAGR — Transportation Group [coetus]';
COMMENT ON COLUMN mm.mara.mat_num3 IS 'STOFF — Hazardous material number [materia numerus]';
COMMENT ON COLUMN mm.mara.dvs IS 'SPART — Division [divisio]';
COMMENT ON COLUMN mm.mara.num IS 'EANNR — European Article Number (EAN) [numerus]';
COMMENT ON COLUMN mm.mara.bwvor IS 'BWVOR — Procurement rule';
COMMENT ON COLUMN mm.mara.ctg IS 'SAISO — Season Category [categoria]';
COMMENT ON COLUMN mm.mara.num2 IS 'EAN11 — International Article Number (EAN/UPC) [numerus]';
COMMENT ON COLUMN mm.mara.ctg_num IS 'NUMTP — Category of International Article Number (EAN) [categoria numerus]';
COMMENT ON COLUMN mm.mara.laeng IS 'LAENG — Length';
COMMENT ON COLUMN mm.mara.breit IS 'BREIT — Width';
COMMENT ON COLUMN mm.mara.hoehe IS 'HOEHE — Height';
COMMENT ON COLUMN mm.mara.uni IS 'MEABM — Unit of Dimension for Length/Width/Height [unitas]';
COMMENT ON COLUMN mm.mara.hir IS 'PRDHA — Product hierarchy [hierarchia]';
COMMENT ON COLUMN mm.mara.idx2 IS 'CADKZ — CAD Indicator [index]';
COMMENT ON COLUMN mm.mara.qmpur IS 'QMPUR — QM in Procurement is Active';
COMMENT ON COLUMN mm.mara.grx_rqs_idx IS 'XCHPF — Batch management requirement indicator [grex requisitum index]';
COMMENT ON COLUMN mm.mara.mat2 IS 'KZKFG — Configurable Material [materia]';
COMMENT ON COLUMN mm.mara.cts2 IS 'BEGRU — Authorization Group [coetus]';
COMMENT ON COLUMN mm.mara.vla_die IS 'DATAB — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN mm.mara.die IS 'LIQDT — Deletion date [dies]';
COMMENT ON COLUMN mm.mara.mat_cts2 IS 'EXTWG — External Material Group [materia coetus]';
COMMENT ON COLUMN mm.mara.ofc_mat IS 'SATNR — Cross-Plant Configurable Material [officina materia]';
COMMENT ON COLUMN mm.mara.mat_ctg IS 'ATTYP — Material Category [materia categoria]';
COMMENT ON COLUMN mm.mara.ofc_mat_sta IS 'MSTAE — Cross-Plant Material Status [officina materia status]';
COMMENT ON COLUMN mm.mara.dtb_mat_sta IS 'MSTAV — Cross-distribution-chain material status [distributio materia status]';
COMMENT ON COLUMN mm.mara.die_ofc_mat IS 'MSTDE — Date from which the cross-plant material status is valid [dies officina materia]';
COMMENT ON COLUMN mm.mara.die_mat_sta IS 'MSTDV — Date from which the X-distr.-chain material status is valid [dies materia status]';
COMMENT ON COLUMN mm.mara.mhdrz IS 'MHDRZ — Minimum Remaining Shelf Life';
COMMENT ON COLUMN mm.mara.tot IS 'MHDHB — Total shelf life [summa totalis]';
COMMENT ON COLUMN mm.mara.num3 IS 'MFRPN — Manufacturer Part Number [numerus]';
COMMENT ON COLUMN mm.mara.num4 IS 'MFRNR — Number of a Manufacturer [numerus]';
COMMENT ON COLUMN mm.mara.mrc_idx IS 'PROFL — Dangerous Goods Indicator Profile [merces index]';
COMMENT ON COLUMN mm.mara.grd_nsr IS 'SERLV — Level of Explicitness for Serial Number [gradus numerus serialis]';
COMMENT ON COLUMN mm.mara.pos_ctg_cts IS 'MTPOS_MARA — General item category group [positio categoria coetus]';
COMMENT ON COLUMN mm.mara.die2 IS 'SLED_BBD — Expiration Date [dies]';
COMMENT ON COLUMN mm.mara.pos_num IS 'GTIN_VARIANT — Global Trade Item Number Variant [positio numerus]';
COMMENT ON COLUMN mm.mara.org IS 'WEORA — Acceptance At Origin [origo]';
COMMENT ON COLUMN mm.mara.ptr_org_mat IS 'HERKL — Country of origin of the material [patria origo materia]';
COMMENT ON COLUMN mm.mara.tax_rfr_mat IS 'PMATA — Pricing Reference Material [taxatio referentia materia]';

CREATE TABLE IF NOT EXISTS mm.marc (
  cli char(3),
  mat_num varchar(18),
  ofc varchar(4),
  cur_sta varchar(15),
  sgn_mat_ofc varchar(1),
  aes_ctg varchar(1),
  grx_idx varchar(1),
  ofc_mat_sta varchar(2),
  die_ofc_mat date,
  idx varchar(1),
  cts varchar(3),
  uni varchar(3),
  mat varchar(4),
  gen varchar(2),
  dispo varchar(3),
  trd_tmp numeric(3,0),
  amr_tmp numeric(3,0),
  per_idx varchar(1),
  ausss numeric(5,2),
  mgn_cns varchar(2),
  gen2 varchar(1),
  gen3 varchar(2),
  minbe numeric(13,3),
  sec_cpa numeric(13,3),
  mgn numeric(13,3),
  mgn2 numeric(13,3),
  mgn3 numeric(13,3),
  val_mem_qnt numeric(13,3),
  cpa_grd numeric(13,3),
  mat2 varchar(1),
  idx2 varchar(1),
  die date,
  mat3 varchar(18),
  clv varchar(3),
  prd varchar(3),
  tmp numeric(5,2),
  tmp2 numeric(5,2),
  prd_tmp numeric(3,0),
  ueeto numeric(3,1),
  idx3 varchar(1),
  uneto numeric(3,1),
  tot_tmp numeric(3,0),
  isp_cpa varchar(1),
  clv2 varchar(8),
  cts2 varchar(4),
  grx_rqs_idx varchar(1),
  cns_vrs varchar(2),
  cts3 varchar(2),
  anf varchar(2),
  fns_cpa varchar(1),
  idx_mem varchar(1),
  idx_fns_rqs varchar(1),
  cod_num varchar(17),
  ptr_org_mat varchar(3),
  clu varchar(10),
  stlan varchar(1),
  clv_ixp_cts varchar(8),
  loc varchar(4),
  cts4 varchar(4),
  rwpro varchar(3),
  nsr varchar(4),
  rdprf varchar(4),
  cns_cts varchar(2),
  loc2 varchar(4),
  men_cts varchar(4),
  mat_cts varchar(8),
  idx_are varchar(1),
  ofc2 varchar(1),
  sec_tmp_idx varchar(1),
  sec_tmp varchar(2),
  cpa_are_mat varchar(10),
  per_ins varchar(2),
  anf_per varchar(4),
  sec_cpa2 numeric(13,3),
  CONSTRAINT marc_pk PRIMARY KEY (cli, mat_num, ofc)
);
COMMENT ON TABLE mm.marc IS 'MARC — Plant Data for Material - plant-specific material master extension (MRP, procurement, valuation control).';
COMMENT ON COLUMN mm.marc.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.marc.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.marc.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN mm.marc.cur_sta IS 'PSTAT — Maintenance status [curatio status]';
COMMENT ON COLUMN mm.marc.sgn_mat_ofc IS 'LVORM — Flag Material for Deletion at Plant Level [signum materia officina]';
COMMENT ON COLUMN mm.marc.aes_ctg IS 'BWTTY — Valuation Category [aestimatio categoria]';
COMMENT ON COLUMN mm.marc.grx_idx IS 'XCHAR — Batch management indicator (internal) [grex index]';
COMMENT ON COLUMN mm.marc.ofc_mat_sta IS 'MMSTA — Plant-Specific Material Status [officina materia status]';
COMMENT ON COLUMN mm.marc.die_ofc_mat IS 'MMSTD — Date from which the plant-specific material status is valid [dies officina materia]';
COMMENT ON COLUMN mm.marc.idx IS 'MAABC — ABC Indicator [index]';
COMMENT ON COLUMN mm.marc.cts IS 'EKGRP — Purchasing Group [coetus]';
COMMENT ON COLUMN mm.marc.uni IS 'AUSME — Unit of issue [unitas]';
COMMENT ON COLUMN mm.marc.mat IS 'DISPR — Material: MRP profile [materia]';
COMMENT ON COLUMN mm.marc.gen IS 'DISMM — MRP Type [genus]';
COMMENT ON COLUMN mm.marc.dispo IS 'DISPO — MRP Controller (Materials Planner)';
COMMENT ON COLUMN mm.marc.trd_tmp IS 'PLIFZ — Planned Delivery Time in Days [traditio tempus]';
COMMENT ON COLUMN mm.marc.amr_tmp IS 'WEBAZ — Goods Receipt Processing Time in Days [acceptio mercium tempus]';
COMMENT ON COLUMN mm.marc.per_idx IS 'PERKZ — Period Indicator [periodus index]';
COMMENT ON COLUMN mm.marc.ausss IS 'AUSSS — Assembly scrap in percent';
COMMENT ON COLUMN mm.marc.mgn_cns IS 'DISLS — Lot size (materials planning) [magnitudo consilium]';
COMMENT ON COLUMN mm.marc.gen2 IS 'BESKZ — Procurement Type [genus]';
COMMENT ON COLUMN mm.marc.gen3 IS 'SOBSL — Special procurement type [genus]';
COMMENT ON COLUMN mm.marc.minbe IS 'MINBE — Reorder Point';
COMMENT ON COLUMN mm.marc.sec_cpa IS 'EISBE — Safety Stock [securitas copia]';
COMMENT ON COLUMN mm.marc.mgn IS 'BSTMI — Minimum Lot Size [magnitudo]';
COMMENT ON COLUMN mm.marc.mgn2 IS 'BSTMA — Maximum Lot Size [magnitudo]';
COMMENT ON COLUMN mm.marc.mgn3 IS 'BSTFE — Fixed lot size [magnitudo]';
COMMENT ON COLUMN mm.marc.val_mem_qnt IS 'BSTRF — Rounding value for purchase order quantity [valor mandatum emptionis quantitas]';
COMMENT ON COLUMN mm.marc.cpa_grd IS 'MABST — Maximum stock level [copia gradus]';
COMMENT ON COLUMN mm.marc.mat2 IS 'ALTSL — Method for Selecting Alternative Bills of Material [materia]';
COMMENT ON COLUMN mm.marc.idx2 IS 'KZAUS — Discontinuation indicator [index]';
COMMENT ON COLUMN mm.marc.die IS 'AUSDT — Effective-Out Date [dies]';
COMMENT ON COLUMN mm.marc.mat3 IS 'NFMAT — Follow-Up Material [materia]';
COMMENT ON COLUMN mm.marc.clv IS 'FHORI — Scheduling Margin Key for Floats [clavis]';
COMMENT ON COLUMN mm.marc.prd IS 'FEVOR — Production Supervisor [productio]';
COMMENT ON COLUMN mm.marc.tmp IS 'BEARZ — Processing time [tempus]';
COMMENT ON COLUMN mm.marc.tmp2 IS 'RUEZT — Setup and teardown time [tempus]';
COMMENT ON COLUMN mm.marc.prd_tmp IS 'DZEIT — In-house production time [productio tempus]';
COMMENT ON COLUMN mm.marc.ueeto IS 'UEETO — Overdelivery tolerance limit';
COMMENT ON COLUMN mm.marc.idx3 IS 'UEETK — Indicator: Unlimited Overdelivery Allowed [index]';
COMMENT ON COLUMN mm.marc.uneto IS 'UNETO — Underdelivery tolerance limit';
COMMENT ON COLUMN mm.marc.tot_tmp IS 'WZEIT — Total replenishment lead time (in workdays) [summa totalis tempus]';
COMMENT ON COLUMN mm.marc.isp_cpa IS 'INSMK — Post to Inspection Stock [inspectio copia]';
COMMENT ON COLUMN mm.marc.clv2 IS 'SSQSS — Control Key for Quality Management in Procurement [clavis]';
COMMENT ON COLUMN mm.marc.cts2 IS 'LADGR — Loading Group [coetus]';
COMMENT ON COLUMN mm.marc.grx_rqs_idx IS 'XCHPF — Batch management requirement indicator [grex requisitum index]';
COMMENT ON COLUMN mm.marc.cns_vrs IS 'PLVAR — Plan Version [consilium versio]';
COMMENT ON COLUMN mm.marc.cts3 IS 'MTVFP — Checking Group for Availability Check [coetus]';
COMMENT ON COLUMN mm.marc.anf IS 'PERIV — Fiscal Year Variant [annus fiscalis]';
COMMENT ON COLUMN mm.marc.fns_cpa IS 'BWSCL — Source of Supply [fons copia]';
COMMENT ON COLUMN mm.marc.idx_mem IS 'KAUTB — Indicator: automatic purchase order allowed [index mandatum emptionis]';
COMMENT ON COLUMN mm.marc.idx_fns_rqs IS 'KORDB — Indicator: Source list requirement [index fons requisitum]';
COMMENT ON COLUMN mm.marc.cod_num IS 'STAWN — Commodity Code/Import Code Number for Foreign Trade [codex numerus]';
COMMENT ON COLUMN mm.marc.ptr_org_mat IS 'HERKL — Country of origin of the material [patria origo materia]';
COMMENT ON COLUMN mm.marc.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN mm.marc.stlan IS 'STLAN — BOM Usage';
COMMENT ON COLUMN mm.marc.clv_ixp_cts IS 'PLNNR — Key for Task List Group [clavis index pensorum coetus]';
COMMENT ON COLUMN mm.marc.loc IS 'LGPRO — Issue Storage Location [locus repositionis]';
COMMENT ON COLUMN mm.marc.cts4 IS 'DISGR — MRP Group [coetus]';
COMMENT ON COLUMN mm.marc.rwpro IS 'RWPRO — Range of coverage profile';
COMMENT ON COLUMN mm.marc.nsr IS 'SERNP — Serial Number Profile [numerus serialis]';
COMMENT ON COLUMN mm.marc.rdprf IS 'RDPRF — Rounding Profile';
COMMENT ON COLUMN mm.marc.cns_cts IS 'STRGR — Planning strategy group [consilium coetus]';
COMMENT ON COLUMN mm.marc.loc2 IS 'LGFSB — Default storage location for external procurement [locus repositionis]';
COMMENT ON COLUMN mm.marc.men_cts IS 'MEGRU — Unit of Measure Group [mensura coetus]';
COMMENT ON COLUMN mm.marc.mat_cts IS 'MFRGR — Material freight group [materia coetus]';
COMMENT ON COLUMN mm.marc.idx_are IS 'DIBER — Indicator: MRP area exists [index area]';
COMMENT ON COLUMN mm.marc.ofc2 IS 'XMCNG — Negative stocks allowed in plant [officina]';
COMMENT ON COLUMN mm.marc.sec_tmp_idx IS 'SHFLG — Safety time indicator (with or without safety time) [securitas tempus index]';
COMMENT ON COLUMN mm.marc.sec_tmp IS 'SHZET — Safety time (in workdays) [securitas tempus]';
COMMENT ON COLUMN mm.marc.cpa_are_mat IS 'VSPVB — Proposed Supply Area in Material Master Record [copia area materia]';
COMMENT ON COLUMN mm.marc.per_ins IS 'LFMON — Current period (posting period) [periodus inscriptio]';
COMMENT ON COLUMN mm.marc.anf_per IS 'LFGJA — Fiscal Year of Current Period [annus fiscalis periodus]';
COMMENT ON COLUMN mm.marc.sec_cpa2 IS 'EISLO — Minimum Safety Stock [securitas copia]';

CREATE TABLE IF NOT EXISTS mm.mard (
  cli char(3),
  mat_num varchar(18),
  ofc varchar(4),
  loc varchar(4),
  cur_sta varchar(15),
  sgn_mat_loc varchar(1),
  anf_per varchar(4),
  per_ins varchar(2),
  idx varchar(1),
  cpa numeric(13,3),
  cpa_loc numeric(13,3),
  cpa_isp numeric(13,3),
  tot_cpa numeric(13,3),
  cpa2 numeric(13,3),
  cpa3 numeric(13,3),
  cpa_per numeric(13,3),
  cpa_per2 numeric(13,3),
  cpa_isp_per numeric(13,3),
  cpa_per3 numeric(13,3),
  cpa_per4 numeric(13,3),
  cpa_per5 numeric(13,3),
  idx_cpa_ann varchar(3),
  cpa_ann varchar(3),
  idx_cpa varchar(3),
  idx_cpa2 varchar(3),
  idx_cpa_ann2 varchar(3),
  cpa_per6 varchar(3),
  cpa4 varchar(3),
  idx_cpa_per varchar(3),
  loc_idx varchar(1),
  gen_loc_grd varchar(2),
  loc2 numeric(13,3),
  qnt_loc numeric(13,3),
  ptr_org_mat varchar(3),
  idx2 varchar(1),
  idx3 varchar(2),
  lgpbe varchar(10),
  cpa5 numeric(13,3),
  cpa_isp2 numeric(13,3),
  cpa6 numeric(13,3),
  cpa7 numeric(13,3),
  die_ult_cpa date,
  clu varchar(10),
  cre date,
  cpa_val_mat numeric(13,2),
  vdt_val_cpa numeric(13,2),
  are varchar(3),
  bskrf double precision,
  ult varchar(1),
  anf_idx varchar(4),
  CONSTRAINT mard_pk PRIMARY KEY (cli, mat_num, ofc, loc)
);
COMMENT ON TABLE mm.mard IS 'MARD — Storage Location Data for Material — carries stock quantities and physical-inventory status at the storage-location level, one row per material per plant per storage location, sitting directly beside the already-defined MARC (plant-level) data. Where MARC governs planning and procurement parameters for a material at a plant, MARD tracks the actual stock buckets (unrestricted, quality inspection, blocked, in-transfer, consignment) that a warehouse or inventory-management lane consumes for on-hand-quantity and physical-inventory reporting.';
COMMENT ON COLUMN mm.mard.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.mard.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.mard.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN mm.mard.loc IS 'LGORT — Storage Location [locus repositionis]';
COMMENT ON COLUMN mm.mard.cur_sta IS 'PSTAT — Maintenance status [curatio status]';
COMMENT ON COLUMN mm.mard.sgn_mat_loc IS 'LVORM — Flag Material for Deletion at Storage Location Level [signum materia locus repositionis]';
COMMENT ON COLUMN mm.mard.anf_per IS 'LFGJA — Fiscal Year of Current Period [annus fiscalis periodus]';
COMMENT ON COLUMN mm.mard.per_ins IS 'LFMON — Current period (posting period) [periodus inscriptio]';
COMMENT ON COLUMN mm.mard.idx IS 'SPERR — Physical Inventory Blocking Indicator [index]';
COMMENT ON COLUMN mm.mard.cpa IS 'LABST — Valuated Unrestricted-Use Stock [copia]';
COMMENT ON COLUMN mm.mard.cpa_loc IS 'UMLME — Stock in transfer (from one storage location to another) [copia locus repositionis]';
COMMENT ON COLUMN mm.mard.cpa_isp IS 'INSME — Stock in Quality Inspection [copia inspectio]';
COMMENT ON COLUMN mm.mard.tot_cpa IS 'EINME — Total Stock of All Restricted Batches [summa totalis copia]';
COMMENT ON COLUMN mm.mard.cpa2 IS 'SPEME — Blocked Stock [copia]';
COMMENT ON COLUMN mm.mard.cpa3 IS 'RETME — Blocked Stock Returns [copia]';
COMMENT ON COLUMN mm.mard.cpa_per IS 'VMLAB — Valuated unrestricted-use stock in previous period [copia periodus]';
COMMENT ON COLUMN mm.mard.cpa_per2 IS 'VMUML — Stock in Transfer in Previous Period [copia periodus]';
COMMENT ON COLUMN mm.mard.cpa_isp_per IS 'VMINS — Stock in Quality Inspection in Previous Period [copia inspectio periodus]';
COMMENT ON COLUMN mm.mard.cpa_per3 IS 'VMEIN — Restricted-Use Stock in Previous Period [copia periodus]';
COMMENT ON COLUMN mm.mard.cpa_per4 IS 'VMSPE — Blocked stock of previous period [copia periodus]';
COMMENT ON COLUMN mm.mard.cpa_per5 IS 'VMRET — Blocked Stock Returns in Previous Period [copia periodus]';
COMMENT ON COLUMN mm.mard.idx_cpa_ann IS 'KZILL — Physical inventory indicator for whse stock in current year [index copia annus]';
COMMENT ON COLUMN mm.mard.cpa_ann IS 'KZILQ — Phys. inventory ind. f. stock in qual. insp. in current year [copia annus]';
COMMENT ON COLUMN mm.mard.idx_cpa IS 'KZILE — Physical inventory indicator for restricted-use stock [index copia]';
COMMENT ON COLUMN mm.mard.idx_cpa2 IS 'KZILS — Physical inventory indicator for blocked stock [index copia]';
COMMENT ON COLUMN mm.mard.idx_cpa_ann2 IS 'KZVLL — Physical inventory indicator for stock in previous year [index copia annus]';
COMMENT ON COLUMN mm.mard.cpa_per6 IS 'KZVLQ — Phys. inventory ind. f. stock in qual. insp. in prev. period [copia periodus]';
COMMENT ON COLUMN mm.mard.cpa4 IS 'KZVLE — Physical inventory ind. for restricted-use stock, prev.pd [copia]';
COMMENT ON COLUMN mm.mard.idx_cpa_per IS 'KZVLS — Phys. inventory indicator for blocked stock in prev. period [index copia periodus]';
COMMENT ON COLUMN mm.mard.loc_idx IS 'DISKZ — Storage location MRP indicator [locus repositionis index]';
COMMENT ON COLUMN mm.mard.gen_loc_grd IS 'LSOBS — Special procurement type at storage location level [genus locus repositionis gradus]';
COMMENT ON COLUMN mm.mard.loc2 IS 'LMINB — Reorder point for storage location MRP [locus repositionis]';
COMMENT ON COLUMN mm.mard.qnt_loc IS 'LBSTF — Replenishment quantity for storage location MRP [quantitas locus repositionis]';
COMMENT ON COLUMN mm.mard.ptr_org_mat IS 'HERKL — Country of origin of the material [patria origo materia]';
COMMENT ON COLUMN mm.mard.idx2 IS 'EXPPG — Preference indicator (deactivated) [index]';
COMMENT ON COLUMN mm.mard.idx3 IS 'EXVER — Export indicator (deactivated) [index]';
COMMENT ON COLUMN mm.mard.lgpbe IS 'LGPBE — Storage Bin';
COMMENT ON COLUMN mm.mard.cpa5 IS 'KLABS — Unrestricted-Use Consignment Stock [copia]';
COMMENT ON COLUMN mm.mard.cpa_isp2 IS 'KINSM — Consignment Stock in Quality Inspection [copia inspectio]';
COMMENT ON COLUMN mm.mard.cpa6 IS 'KEINM — Restricted-Use Consignment Stock [copia]';
COMMENT ON COLUMN mm.mard.cpa7 IS 'KSPEM — Blocked Consignment Stock [copia]';
COMMENT ON COLUMN mm.mard.die_ult_cpa IS 'DLINL — Date of Last Posted Count for Unrestricted-Use Stock [dies ultimus copia]';
COMMENT ON COLUMN mm.mard.clu IS 'PRCTL — Profit Center [centrum lucri]';
COMMENT ON COLUMN mm.mard.cre IS 'ERSDA — Created On [creatus]';
COMMENT ON COLUMN mm.mard.cpa_val_mat IS 'VKLAB — Stock value of a value-only material at sales price [copia valor materia]';
COMMENT ON COLUMN mm.mard.vdt_val_cpa IS 'VKUML — Sales value in stock transfer (SLOc to SLoc) [venditio valor copia]';
COMMENT ON COLUMN mm.mard.are IS 'LWMKB — Picking area for lean WM [area]';
COMMENT ON COLUMN mm.mard.bskrf IS 'BSKRF — Inventory correction factor';
COMMENT ON COLUMN mm.mard.ult IS 'MDRUE — MARDH rec. already exists for per. before last of MARD per. [ultimus]';
COMMENT ON COLUMN mm.mard.anf_idx IS 'MDJIN — Fiscal year of current physical inventory indicator [annus fiscalis index]';

CREATE TABLE IF NOT EXISTS mm.matdoc (
  cli char(3),
  key1 bytea,
  key2 bytea,
  key3 bytea,
  key4 bytea,
  key5 bytea,
  key6 bytea,
  tbl_gen varchar(60),
  mat_doc_nmr bytea,
  num_mat_doc varchar(20),
  mat_doc_ann varchar(8),
  pos_mat_doc varchar(8),
  mat_num varchar(80),
  ofc varchar(8),
  loc varchar(8),
  grx_num varchar(20),
  aes_gen varchar(20),
  mtm_gen varchar(6),
  soc varchar(8),
  qnt numeric(7,0),
  men varchar(6),
  sum_mon numeric(7,0),
  cvm varchar(10),
  din_doc date,
  ddc_doc date,
  die_doc date,
  anf varchar(8),
  rfr_ndo varchar(32),
  mem_num varchar(20),
  pos_num_dem varchar(10),
  ven_rat_num varchar(20),
  rat_num_emp varchar(20),
  mnd_num varchar(24),
  ptm_num varchar(24),
  ptm varchar(8),
  csm varchar(20),
  amd varchar(8),
  ops_elm_eop varchar(16),
  clu varchar(20),
  rat_num varchar(20),
  smp_obi varchar(24),
  num_rat_asg varchar(4),
  dbt_crd_idx varchar(2),
  cpa_gen varchar(2),
  cpa_idx varchar(2),
  csa_mtm varchar(8),
  trb_vdt_cod varchar(4),
  trb varchar(30),
  num_doc_cnd varchar(20),
  pos_cre varchar(2),
  nhr_hor varchar(6),
  CONSTRAINT matdoc_pk PRIMARY KEY (cli, key1, key2, key3, key4, key5, key6, tbl_gen, mat_doc_nmr)
);
COMMENT ON TABLE mm.matdoc IS 'MATDOC — Material Document Segment (S/4HANA universal material-movement table) — the S/4HANA replacement for the classic ECC pairing of MKPF (material document header) and MSEG (material document item). MATDOC supersedes MKPF/MSEG outright: a customer running classic ECC mirrors MKPF/MSEG, while a customer on S/4HANA mirrors MATDOC — the model must read both to cover the MM inventory-movement lane across a customer''s install base, the exact same duality FAGLFLEXA vs ACDOCA covers on the FI side (a customer running classic ECC mirrors FAGLFLEXA; a customer on S/4HANA mirrors ACDOCA). Structurally MATDOC';
COMMENT ON COLUMN mm.matdoc.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.matdoc.key1 IS 'KEY1 — Split GUID, Part 1';
COMMENT ON COLUMN mm.matdoc.key2 IS 'KEY2 — Split GUID, Part 2';
COMMENT ON COLUMN mm.matdoc.key3 IS 'KEY3 — Split GUID, Part 3';
COMMENT ON COLUMN mm.matdoc.key4 IS 'KEY4 — Split GUID, Part 4';
COMMENT ON COLUMN mm.matdoc.key5 IS 'KEY5 — Split GUID, Part 5';
COMMENT ON COLUMN mm.matdoc.key6 IS 'KEY6 — Split GUID, Part 6';
COMMENT ON COLUMN mm.matdoc.tbl_gen IS 'RECORD_TYPE — Record Type [tabula genus]';
COMMENT ON COLUMN mm.matdoc.mat_doc_nmr IS 'HEADER_COUNTER — Material Document Counter [materia documentum numerator]';
COMMENT ON COLUMN mm.matdoc.num_mat_doc IS 'MBLNR — Number of Material Document (legacy-compatibility reference field, non-key) [numerus materia documentum]';
COMMENT ON COLUMN mm.matdoc.mat_doc_ann IS 'MJAHR — Material Document Year (legacy-compatibility reference field, non-key) [materia documentum annus]';
COMMENT ON COLUMN mm.matdoc.pos_mat_doc IS 'ZEILE — Item in Material Document (legacy-compatibility reference field, non-key) [positio materia documentum]';
COMMENT ON COLUMN mm.matdoc.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.matdoc.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN mm.matdoc.loc IS 'LGORT — Storage Location [locus repositionis]';
COMMENT ON COLUMN mm.matdoc.grx_num IS 'CHARG — Batch Number [grex numerus]';
COMMENT ON COLUMN mm.matdoc.aes_gen IS 'BWTAR — Valuation Type [aestimatio genus]';
COMMENT ON COLUMN mm.matdoc.mtm_gen IS 'BWART — Movement Type (Inventory Management) [motus genus]';
COMMENT ON COLUMN mm.matdoc.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN mm.matdoc.qnt IS 'MENGE — Quantity [quantitas]';
COMMENT ON COLUMN mm.matdoc.men IS 'MEINS — Base Unit of Measure [mensura]';
COMMENT ON COLUMN mm.matdoc.sum_mon IS 'DMBTR — Amount in Local Currency [summa moneta]';
COMMENT ON COLUMN mm.matdoc.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN mm.matdoc.din_doc IS 'BUDAT — Posting Date in the Document [dies inscriptionis documentum]';
COMMENT ON COLUMN mm.matdoc.ddc_doc IS 'BLDAT — Document Date in Document [dies documenti documentum]';
COMMENT ON COLUMN mm.matdoc.die_doc IS 'CPUDT — Day On Which Accounting Document Was Entered [dies documentum]';
COMMENT ON COLUMN mm.matdoc.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN mm.matdoc.rfr_ndo IS 'XBLNR — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN mm.matdoc.mem_num IS 'EBELN — Purchase order number [mandatum emptionis numerus]';
COMMENT ON COLUMN mm.matdoc.pos_num_dem IS 'EBELP — Item Number of Purchasing Document [positio numerus documentum emptionis]';
COMMENT ON COLUMN mm.matdoc.ven_rat_num IS 'LIFNR — Supplier''s Account Number [venditor ratio numerus]';
COMMENT ON COLUMN mm.matdoc.rat_num_emp IS 'KUNNR — Account number of customer [ratio numerus emptor]';
COMMENT ON COLUMN mm.matdoc.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN mm.matdoc.ptm_num IS 'ANLN1 — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN mm.matdoc.ptm IS 'ANLN2 — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN mm.matdoc.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN mm.matdoc.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN mm.matdoc.ops_elm_eop IS 'PS_PSP_PNR — Work Breakdown Structure Element (WBS Element) [opus elementum elementum operis]';
COMMENT ON COLUMN mm.matdoc.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN mm.matdoc.rat_num IS 'SAKTO — G/L Account Number [ratio numerus]';
COMMENT ON COLUMN mm.matdoc.smp_obi IS 'KSTRG — Cost Object [sumptus obiectum]';
COMMENT ON COLUMN mm.matdoc.num_rat_asg IS 'ZEKKN — Sequential Number of Account Assignment [numerus ratio assignatio]';
COMMENT ON COLUMN mm.matdoc.dbt_crd_idx IS 'SHKZG — Debit/Credit Indicator [debitum creditum index]';
COMMENT ON COLUMN mm.matdoc.cpa_gen IS 'INSMK — Stock Type [copia genus]';
COMMENT ON COLUMN mm.matdoc.cpa_idx IS 'SOBKZ — Special Stock Indicator [copia index]';
COMMENT ON COLUMN mm.matdoc.csa_mtm IS 'GRUND — Reason for Movement [causa motus]';
COMMENT ON COLUMN mm.matdoc.trb_vdt_cod IS 'MWSKZ — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN mm.matdoc.trb IS 'TXJCD — Tax Jurisdiction [tributum]';
COMMENT ON COLUMN mm.matdoc.num_doc_cnd IS 'KNUMV — Number of the Document Condition [numerus documentum condicio]';
COMMENT ON COLUMN mm.matdoc.pos_cre IS 'XAUTO — Item automatically created [positio creatus]';
COMMENT ON COLUMN mm.matdoc.nhr_hor IS 'LGNUM — Warehouse Number / Warehouse Complex [numerus horrei horreum]';

CREATE TABLE IF NOT EXISTS mm.mbew (
  cli char(3),
  mat_num varchar(18),
  aes_are varchar(4),
  aes_gen varchar(10),
  sgn_mat_aes varchar(1),
  tot_cpa numeric(13,3),
  val_tot_cpa numeric(13,2),
  pre_idx varchar(1),
  pre_uni numeric(11,2),
  nrm_pre numeric(11,2),
  pre_uni2 numeric(5,0),
  aes_cls varchar(4),
  val_pre numeric(13,2),
  tot_cpa_per numeric(13,3),
  val_tot_cpa2 numeric(13,2),
  tot_cpa_ann numeric(13,3),
  val_tot_cpa3 numeric(13,2),
  anf_per varchar(4),
  per_ins varchar(2),
  aes_ctg varchar(1),
  pre numeric(11,2),
  die_ult_pre date,
  pre2 numeric(11,2),
  die_pre date,
  aes_pre_trb numeric(11,2),
  aes_pre_grd numeric(11,2),
  clv varchar(6),
  xlifo varchar(1),
  cur_sta varchar(15),
  smp_num varchar(12),
  smp_num2 varchar(12),
  org_cts_smp varchar(4),
  mat_qnt varchar(1),
  pre3 numeric(11,2),
  mat_lbr_grd varchar(1),
  mat_pre varchar(1),
  pre4 numeric(11,2),
  val_tot_cpa4 numeric(13,2),
  idx varchar(1),
  aes_cls_vdt varchar(4),
  aes_cls_prp varchar(4),
  pre_uni_aes numeric(5,0),
  aes_cls_cpa varchar(4),
  CONSTRAINT mbew_pk PRIMARY KEY (cli, mat_num, aes_are, aes_gen)
);
COMMENT ON TABLE mm.mbew IS 'MBEW — Material Valuation - valuation-area-level pricing, stock value, and valuation class for a material.';
COMMENT ON COLUMN mm.mbew.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.mbew.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.mbew.aes_are IS 'BWKEY — Valuation Area [aestimatio area]';
COMMENT ON COLUMN mm.mbew.aes_gen IS 'BWTAR — Valuation Type [aestimatio genus]';
COMMENT ON COLUMN mm.mbew.sgn_mat_aes IS 'LVORM — Deletion flag for all material data of a valuation type [signum materia aestimatio]';
COMMENT ON COLUMN mm.mbew.tot_cpa IS 'LBKUM — Total Valuated Stock [summa totalis copia]';
COMMENT ON COLUMN mm.mbew.val_tot_cpa IS 'SALK3 — Value of Total Valuated Stock [valor summa totalis copia]';
COMMENT ON COLUMN mm.mbew.pre_idx IS 'VPRSV — Price control indicator [pretium index]';
COMMENT ON COLUMN mm.mbew.pre_uni IS 'VERPR — Moving Average Price/Periodic Unit Price [pretium unitas]';
COMMENT ON COLUMN mm.mbew.nrm_pre IS 'STPRS — Standard price [norma pretium]';
COMMENT ON COLUMN mm.mbew.pre_uni2 IS 'PEINH — Price Unit [pretium unitas]';
COMMENT ON COLUMN mm.mbew.aes_cls IS 'BKLAS — Valuation Class [aestimatio classis]';
COMMENT ON COLUMN mm.mbew.val_pre IS 'SALKV — Value based on moving average price (only with price ctrl S) [valor pretium]';
COMMENT ON COLUMN mm.mbew.tot_cpa_per IS 'VMKUM — Total valuated stock in previous period [summa totalis copia periodus]';
COMMENT ON COLUMN mm.mbew.val_tot_cpa2 IS 'VMSAL — Value of total valuated stock in previous period [valor summa totalis copia]';
COMMENT ON COLUMN mm.mbew.tot_cpa_ann IS 'VJKUM — Total Valuated Stock in Previous Year [summa totalis copia annus]';
COMMENT ON COLUMN mm.mbew.val_tot_cpa3 IS 'VJSAL — Value of total valuated stock in previous year [valor summa totalis copia]';
COMMENT ON COLUMN mm.mbew.anf_per IS 'LFGJA — Fiscal Year of Current Period [annus fiscalis periodus]';
COMMENT ON COLUMN mm.mbew.per_ins IS 'LFMON — Current period (posting period) [periodus inscriptio]';
COMMENT ON COLUMN mm.mbew.aes_ctg IS 'BWTTY — Valuation Category [aestimatio categoria]';
COMMENT ON COLUMN mm.mbew.pre IS 'STPRV — Previous price [pretium]';
COMMENT ON COLUMN mm.mbew.die_ult_pre IS 'LAEPR — Date of the last price change [dies ultimus pretium]';
COMMENT ON COLUMN mm.mbew.pre2 IS 'ZKPRS — Future price [pretium]';
COMMENT ON COLUMN mm.mbew.die_pre IS 'ZKDAT — Date as of which the price is valid [dies pretium]';
COMMENT ON COLUMN mm.mbew.aes_pre_trb IS 'BWPRS — Valuation price based on tax law: level 1 [aestimatio pretium tributum]';
COMMENT ON COLUMN mm.mbew.aes_pre_grd IS 'BWPRH — Valuation price based on commercial law: level 1 [aestimatio pretium gradus]';
COMMENT ON COLUMN mm.mbew.clv IS 'KALSC — Overhead key (deactivated) [clavis]';
COMMENT ON COLUMN mm.mbew.xlifo IS 'XLIFO — LIFO/FIFO-Relevant';
COMMENT ON COLUMN mm.mbew.cur_sta IS 'PSTAT — Maintenance status [curatio status]';
COMMENT ON COLUMN mm.mbew.smp_num IS 'KALN1 — Cost Estimate Number - Product Costing [sumptus numerus]';
COMMENT ON COLUMN mm.mbew.smp_num2 IS 'KALNR — Cost Estimate Number for Cost Est. w/o Qty Structure [sumptus numerus]';
COMMENT ON COLUMN mm.mbew.org_cts_smp IS 'HRKFT — Origin Group as Subdivision of Cost Element [origo coetus sumptus]';
COMMENT ON COLUMN mm.mbew.mat_qnt IS 'EKALR — Material Is Costed with Quantity Structure [materia quantitas]';
COMMENT ON COLUMN mm.mbew.pre3 IS 'VPLPR — Previous planned price [pretium]';
COMMENT ON COLUMN mm.mbew.mat_lbr_grd IS 'MLMAA — Material ledger activated at material level [materia liber gradus]';
COMMENT ON COLUMN mm.mbew.mat_pre IS 'MLAST — Material Price Determination: Control [materia pretium]';
COMMENT ON COLUMN mm.mbew.pre4 IS 'LPLPR — Current Planned Price [pretium]';
COMMENT ON COLUMN mm.mbew.val_tot_cpa4 IS 'VKSAL — Value of Total Valuated Stock at Sales Price [valor summa totalis copia]';
COMMENT ON COLUMN mm.mbew.idx IS 'SPERW — Physical Inventory Blocking Indicator [index]';
COMMENT ON COLUMN mm.mbew.aes_cls_vdt IS 'EKLAS — Valuation Class for Sales Order Stock [aestimatio classis venditio]';
COMMENT ON COLUMN mm.mbew.aes_cls_prp IS 'QKLAS — Valuation Class for Project Stock [aestimatio classis propositum]';
COMMENT ON COLUMN mm.mbew.pre_uni_aes IS 'BWPEI — Price unit for valuation prices based on tax/commercial law [pretium unitas aestimatio]';
COMMENT ON COLUMN mm.mbew.aes_cls_cpa IS 'OKLAS — Valuation Class for Special Stock at the Vendor [aestimatio classis copia]';

CREATE TABLE IF NOT EXISTS mm.mch1 (
  cli char(3),
  mat_num varchar(18),
  grx_num varchar(10),
  sgn_grx varchar(1),
  cre date,
  nom_psn_cre varchar(12),
  nom_psn_mut varchar(12),
  die_ult date,
  die date,
  die2 date,
  grx_sta_clv varchar(1),
  grx_cpa varchar(1),
  die_ult_sta date,
  ven_rat_num varchar(10),
  ven_grx_num varchar(15),
  grx_num2 varchar(10),
  ofc varchar(4),
  mat varchar(18),
  uni_grx varchar(3),
  die_ult_amr date,
  die3 date,
  die4 date,
  die5 date,
  die6 date,
  die7 date,
  die8 date,
  ptr_org_mat varchar(3),
  reg_org_mat varchar(3),
  mat_cts varchar(4),
  isp_die date,
  die9 date,
  obi_grx varchar(18),
  grx varchar(1),
  gen_grx varchar(1),
  CONSTRAINT mch1_pk PRIMARY KEY (cli, mat_num, grx_num)
);
COMMENT ON TABLE mm.mch1 IS 'MCH1 — Batches (if Batch Management Cross-Plant) — the plant-independent batch master, one row per material per batch, carrying batch-level shelf-life, origin, and classification attributes that hold true regardless of which plant stocks the batch. Feeds the batch lane alongside the plant-specific MCHA and the storage-location batch-stock table MCHB, and is only populated when a client is configured for cross-plant batch management (batch number unique per material rather than per plant).';
COMMENT ON COLUMN mm.mch1.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.mch1.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.mch1.grx_num IS 'CHARG — Batch Number [grex numerus]';
COMMENT ON COLUMN mm.mch1.sgn_grx IS 'LVORM — Deletion Flag for All Data in a Batch [signum grex]';
COMMENT ON COLUMN mm.mch1.cre IS 'ERSDA — Created On [creatus]';
COMMENT ON COLUMN mm.mch1.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN mm.mch1.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN mm.mch1.die_ult IS 'LAEDA — Date of Last Change [dies ultimus]';
COMMENT ON COLUMN mm.mch1.die IS 'VERAB — Availability date [dies]';
COMMENT ON COLUMN mm.mch1.die2 IS 'VFDAT — Shelf Life Expiration or Best-Before Date [dies]';
COMMENT ON COLUMN mm.mch1.grx_sta_clv IS 'ZUSCH — Batch status key [grex status clavis]';
COMMENT ON COLUMN mm.mch1.grx_cpa IS 'ZUSTD — Batch in Restricted-Use Stock [grex copia]';
COMMENT ON COLUMN mm.mch1.die_ult_sta IS 'ZAEDT — Date of last status change [dies ultimus status]';
COMMENT ON COLUMN mm.mch1.ven_rat_num IS 'LIFNR — Vendor Account Number [venditor ratio numerus]';
COMMENT ON COLUMN mm.mch1.ven_grx_num IS 'LICHA — Vendor Batch Number [venditor grex numerus]';
COMMENT ON COLUMN mm.mch1.grx_num2 IS 'VLCHA — Original batch number (deactivated) [grex numerus]';
COMMENT ON COLUMN mm.mch1.ofc IS 'VLWRK — Original plant (deactivated) [officina]';
COMMENT ON COLUMN mm.mch1.mat IS 'VLMAT — Original material (deactivated) [materia]';
COMMENT ON COLUMN mm.mch1.uni_grx IS 'CHAME — Unit of issue for batch (deactivated) [unitas grex]';
COMMENT ON COLUMN mm.mch1.die_ult_amr IS 'LWEDT — Date of last goods receipt [dies ultimus acceptio mercium]';
COMMENT ON COLUMN mm.mch1.die3 IS 'FVDT1 — Date for unrestricted use [dies]';
COMMENT ON COLUMN mm.mch1.die4 IS 'FVDT2 — Date for unrestricted use [dies]';
COMMENT ON COLUMN mm.mch1.die5 IS 'FVDT3 — Date for unrestricted use [dies]';
COMMENT ON COLUMN mm.mch1.die6 IS 'FVDT4 — Date for unrestricted use [dies]';
COMMENT ON COLUMN mm.mch1.die7 IS 'FVDT5 — Date for unrestricted use [dies]';
COMMENT ON COLUMN mm.mch1.die8 IS 'FVDT6 — Date for unrestricted use [dies]';
COMMENT ON COLUMN mm.mch1.ptr_org_mat IS 'HERKL — Country of origin of the material [patria origo materia]';
COMMENT ON COLUMN mm.mch1.reg_org_mat IS 'HERKR — Region of origin of material (non-preferential origin) [regio origo materia]';
COMMENT ON COLUMN mm.mch1.mat_cts IS 'MTVER — Export/import material group [materia coetus]';
COMMENT ON COLUMN mm.mch1.isp_die IS 'QNDAT — Next Inspection Date [inspectio dies]';
COMMENT ON COLUMN mm.mch1.die9 IS 'HSDAT — Date of Manufacture [dies]';
COMMENT ON COLUMN mm.mch1.obi_grx IS 'CUOBJ_BM — Internal object no.: Batch classification [obiectum grex]';
COMMENT ON COLUMN mm.mch1.grx IS 'DEACT_BM — Batch is no longer active [grex]';
COMMENT ON COLUMN mm.mch1.gen_grx IS 'BATCH_TYPE — Type of Batch [genus grex]';

CREATE TABLE IF NOT EXISTS mm.mcha (
  cli char(3),
  mat_num varchar(18),
  ofc varchar(4),
  grx_num varchar(10),
  sgn_grx_ofc varchar(1),
  cre date,
  nom_psn_cre varchar(12),
  nom_psn_mut varchar(12),
  die_ult date,
  die date,
  die2 date,
  grx_sta_clv varchar(1),
  grx_cpa varchar(1),
  die_ult_sta date,
  ven_rat_num varchar(10),
  ven_grx_num varchar(15),
  grx_num2 varchar(10),
  ofc2 varchar(4),
  mat varchar(18),
  aes_gen varchar(10),
  uni_grx varchar(3),
  die_ult_amr date,
  die3 date,
  die4 date,
  die5 date,
  die6 date,
  die7 date,
  die8 date,
  ptr_org_mat varchar(3),
  reg_org_mat varchar(3),
  mat_cts varchar(4),
  isp_die date,
  die9 date,
  obi_grx varchar(18),
  grx varchar(1),
  gen_grx varchar(1),
  CONSTRAINT mcha_pk PRIMARY KEY (cli, mat_num, ofc, grx_num)
);
COMMENT ON TABLE mm.mcha IS 'MCHA — Batches — the plant-specific batch master, one row per material per plant per batch, extending MCH1''s cross-plant batch attributes with plant-level facts (valuation type via BWTAR) needed once a batch is stocked at a given plant. Sits between MCH1 (batch header) and MCHB (batch stock quantities by storage location) in the batch lane.';
COMMENT ON COLUMN mm.mcha.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.mcha.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.mcha.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN mm.mcha.grx_num IS 'CHARG — Batch Number [grex numerus]';
COMMENT ON COLUMN mm.mcha.sgn_grx_ofc IS 'LVORM — Deletion Flag for All Data on a Batch at a Plant [signum grex officina]';
COMMENT ON COLUMN mm.mcha.cre IS 'ERSDA — Created On [creatus]';
COMMENT ON COLUMN mm.mcha.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN mm.mcha.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN mm.mcha.die_ult IS 'LAEDA — Date of Last Change [dies ultimus]';
COMMENT ON COLUMN mm.mcha.die IS 'VERAB — Availability date [dies]';
COMMENT ON COLUMN mm.mcha.die2 IS 'VFDAT — Shelf Life Expiration or Best-Before Date [dies]';
COMMENT ON COLUMN mm.mcha.grx_sta_clv IS 'ZUSCH — Batch status key [grex status clavis]';
COMMENT ON COLUMN mm.mcha.grx_cpa IS 'ZUSTD — Batch in Restricted-Use Stock [grex copia]';
COMMENT ON COLUMN mm.mcha.die_ult_sta IS 'ZAEDT — Date of last status change [dies ultimus status]';
COMMENT ON COLUMN mm.mcha.ven_rat_num IS 'LIFNR — Vendor Account Number [venditor ratio numerus]';
COMMENT ON COLUMN mm.mcha.ven_grx_num IS 'LICHA — Vendor Batch Number [venditor grex numerus]';
COMMENT ON COLUMN mm.mcha.grx_num2 IS 'VLCHA — Original batch number (deactivated) [grex numerus]';
COMMENT ON COLUMN mm.mcha.ofc2 IS 'VLWRK — Original plant (deactivated) [officina]';
COMMENT ON COLUMN mm.mcha.mat IS 'VLMAT — Original material (deactivated) [materia]';
COMMENT ON COLUMN mm.mcha.aes_gen IS 'BWTAR — Valuation Type [aestimatio genus]';
COMMENT ON COLUMN mm.mcha.uni_grx IS 'CHAME — Unit of issue for batch (deactivated) [unitas grex]';
COMMENT ON COLUMN mm.mcha.die_ult_amr IS 'LWEDT — Date of last goods receipt [dies ultimus acceptio mercium]';
COMMENT ON COLUMN mm.mcha.die3 IS 'FVDT1 — Date for unrestricted use [dies]';
COMMENT ON COLUMN mm.mcha.die4 IS 'FVDT2 — Date for unrestricted use [dies]';
COMMENT ON COLUMN mm.mcha.die5 IS 'FVDT3 — Date for unrestricted use [dies]';
COMMENT ON COLUMN mm.mcha.die6 IS 'FVDT4 — Date for unrestricted use [dies]';
COMMENT ON COLUMN mm.mcha.die7 IS 'FVDT5 — Date for unrestricted use [dies]';
COMMENT ON COLUMN mm.mcha.die8 IS 'FVDT6 — Date for unrestricted use [dies]';
COMMENT ON COLUMN mm.mcha.ptr_org_mat IS 'HERKL — Country of origin of the material [patria origo materia]';
COMMENT ON COLUMN mm.mcha.reg_org_mat IS 'HERKR — Region of origin of material (non-preferential origin) [regio origo materia]';
COMMENT ON COLUMN mm.mcha.mat_cts IS 'MTVER — Export/import material group [materia coetus]';
COMMENT ON COLUMN mm.mcha.isp_die IS 'QNDAT — Next Inspection Date [inspectio dies]';
COMMENT ON COLUMN mm.mcha.die9 IS 'HSDAT — Date of Manufacture [dies]';
COMMENT ON COLUMN mm.mcha.obi_grx IS 'CUOBJ_BM — Internal object no.: Batch classification [obiectum grex]';
COMMENT ON COLUMN mm.mcha.grx IS 'DEACT_BM — Batch is no longer active [grex]';
COMMENT ON COLUMN mm.mcha.gen_grx IS 'BATCH_TYPE — Type of Batch [genus grex]';

CREATE TABLE IF NOT EXISTS mm.mchb (
  cli char(3),
  mat_num varchar(18),
  ofc varchar(4),
  loc varchar(4),
  grx_num varchar(10),
  sgn_grx_cpa varchar(1),
  cre date,
  nom_psn_cre varchar(12),
  die_ult date,
  nom_psn_mut varchar(12),
  anf_per varchar(4),
  per_ins varchar(2),
  idx varchar(1),
  cpa numeric(13,3),
  cpa_loc numeric(13,3),
  cpa_isp numeric(13,3),
  tot_cpa numeric(13,3),
  cpa2 numeric(13,3),
  cpa3 numeric(13,3),
  cpa_per numeric(13,3),
  cpa_per2 numeric(13,3),
  cpa_isp_per numeric(13,3),
  cpa_per3 numeric(13,3),
  cpa_per4 numeric(13,3),
  cpa_per5 numeric(13,3),
  idx_cpa_ann varchar(3),
  cpa_ann varchar(3),
  idx_cpa varchar(3),
  idx_cpa2 varchar(3),
  idx_cpa_ann2 varchar(3),
  cpa_per6 varchar(3),
  cpa4 varchar(3),
  idx_cpa_per varchar(3),
  ptr_org_mat varchar(3),
  die_ult_cpa date,
  anf_idx varchar(4),
  ult varchar(1),
  CONSTRAINT mchb_pk PRIMARY KEY (cli, mat_num, ofc, loc, grx_num)
);
COMMENT ON TABLE mm.mchb IS 'MCHB — Batch Stocks — the storage-location-level stock quantities for a batch, one row per material per plant per storage location per batch, mirroring MARD''s stock-bucket structure (unrestricted, quality inspection, blocked, in-transfer, returns) but scoped down to a single batch. Completes the batch lane started by MCH1 (cross-plant batch header) and MCHA (plant-level batch); this is the table a batch-aware inventory query joins against for on-hand quantity.';
COMMENT ON COLUMN mm.mchb.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.mchb.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.mchb.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN mm.mchb.loc IS 'LGORT — Storage Location [locus repositionis]';
COMMENT ON COLUMN mm.mchb.grx_num IS 'CHARG — Batch Number [grex numerus]';
COMMENT ON COLUMN mm.mchb.sgn_grx_cpa IS 'LVORM — Deletion Flag for All Data on a Batch Stock [signum grex copia]';
COMMENT ON COLUMN mm.mchb.cre IS 'ERSDA — Created On [creatus]';
COMMENT ON COLUMN mm.mchb.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN mm.mchb.die_ult IS 'LAEDA — Date of Last Change [dies ultimus]';
COMMENT ON COLUMN mm.mchb.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN mm.mchb.anf_per IS 'LFGJA — Fiscal Year of Current Period [annus fiscalis periodus]';
COMMENT ON COLUMN mm.mchb.per_ins IS 'LFMON — Current period (posting period) [periodus inscriptio]';
COMMENT ON COLUMN mm.mchb.idx IS 'SPERC — Physical Inventory Blocking Indicator [index]';
COMMENT ON COLUMN mm.mchb.cpa IS 'CLABS — Valuated Unrestricted-Use Stock [copia]';
COMMENT ON COLUMN mm.mchb.cpa_loc IS 'CUMLM — Stock in transfer (from one storage location to another) [copia locus repositionis]';
COMMENT ON COLUMN mm.mchb.cpa_isp IS 'CINSM — Stock in Quality Inspection [copia inspectio]';
COMMENT ON COLUMN mm.mchb.tot_cpa IS 'CEINM — Total Stock of All Restricted Batches [summa totalis copia]';
COMMENT ON COLUMN mm.mchb.cpa2 IS 'CSPEM — Blocked Stock [copia]';
COMMENT ON COLUMN mm.mchb.cpa3 IS 'CRETM — Blocked Stock Returns [copia]';
COMMENT ON COLUMN mm.mchb.cpa_per IS 'CVMLA — Valuated unrestricted-use stock in previous period [copia periodus]';
COMMENT ON COLUMN mm.mchb.cpa_per2 IS 'CVMUM — Stock in Transfer in Previous Period [copia periodus]';
COMMENT ON COLUMN mm.mchb.cpa_isp_per IS 'CVMIN — Stock in Quality Inspection in Previous Period [copia inspectio periodus]';
COMMENT ON COLUMN mm.mchb.cpa_per3 IS 'CVMEI — Restricted-Use Stock in Previous Period [copia periodus]';
COMMENT ON COLUMN mm.mchb.cpa_per4 IS 'CVMSP — Blocked stock of previous period [copia periodus]';
COMMENT ON COLUMN mm.mchb.cpa_per5 IS 'CVMRE — Blocked Stock Returns in Previous Period [copia periodus]';
COMMENT ON COLUMN mm.mchb.idx_cpa_ann IS 'KZICL — Physical inventory indicator for whse stock in current year [index copia annus]';
COMMENT ON COLUMN mm.mchb.cpa_ann IS 'KZICQ — Phys. inventory ind. f. stock in qual. insp. in current year [copia annus]';
COMMENT ON COLUMN mm.mchb.idx_cpa IS 'KZICE — Physical inventory indicator for restricted-use stock [index copia]';
COMMENT ON COLUMN mm.mchb.idx_cpa2 IS 'KZICS — Physical inventory indicator for blocked stock [index copia]';
COMMENT ON COLUMN mm.mchb.idx_cpa_ann2 IS 'KZVCL — Physical inventory indicator for stock in previous year [index copia annus]';
COMMENT ON COLUMN mm.mchb.cpa_per6 IS 'KZVCQ — Phys. inventory ind. f. stock in qual. insp. in prev. period [copia periodus]';
COMMENT ON COLUMN mm.mchb.cpa4 IS 'KZVCE — Physical inventory ind. for restricted-use stock, prev.pd [copia]';
COMMENT ON COLUMN mm.mchb.idx_cpa_per IS 'KZVCS — Phys. inventory indicator for blocked stock in prev. period [index copia periodus]';
COMMENT ON COLUMN mm.mchb.ptr_org_mat IS 'HERKL — Country of origin of the material [patria origo materia]';
COMMENT ON COLUMN mm.mchb.die_ult_cpa IS 'CHDLL — Date of Last Posted Count for Unrestricted-Use Stock [dies ultimus copia]';
COMMENT ON COLUMN mm.mchb.anf_idx IS 'CHJIN — Fiscal year of current physical inventory indicator [annus fiscalis index]';
COMMENT ON COLUMN mm.mchb.ult IS 'CHRUE — MCHBH rec. already exists for per. before last of MCHB per. [ultimus]';

CREATE TABLE IF NOT EXISTS mm.mkpf (
  cli char(3),
  num_mat_doc varchar(10),
  mat_doc_ann varchar(4),
  gen varchar(2),
  gdo varchar(2),
  gdo_doc varchar(2),
  ddc_doc date,
  din_doc date,
  die_doc date,
  tmp time,
  mut date,
  usr_nom varchar(12),
  are varchar(4),
  rfr_ndo varchar(16),
  doc_cap_txt varchar(25),
  trd numeric(13,2),
  num_tmp_amr varchar(16),
  vrs varchar(1),
  amr_num varchar(10),
  awsys varchar(10),
  cod varchar(20),
  num varchar(10),
  trd2 varchar(10),
  num_doc_cnd varchar(10),
  num_trd_adn varchar(16),
  CONSTRAINT mkpf_pk PRIMARY KEY (cli, num_mat_doc, mat_doc_ann)
);
COMMENT ON TABLE mm.mkpf IS 'MKPF — Header: Material Document - header data for a goods movement document (date, user, reference).';
COMMENT ON COLUMN mm.mkpf.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.mkpf.num_mat_doc IS 'MBLNR — Number of Material Document [numerus materia documentum]';
COMMENT ON COLUMN mm.mkpf.mat_doc_ann IS 'MJAHR — Material Document Year [materia documentum annus]';
COMMENT ON COLUMN mm.mkpf.gen IS 'VGART — Transaction/Event Type [genus]';
COMMENT ON COLUMN mm.mkpf.gdo IS 'BLART — Document Type [genus documenti]';
COMMENT ON COLUMN mm.mkpf.gdo_doc IS 'BLAUM — Document type of revaluation document [genus documenti documentum]';
COMMENT ON COLUMN mm.mkpf.ddc_doc IS 'BLDAT — Document Date in Document [dies documenti documentum]';
COMMENT ON COLUMN mm.mkpf.din_doc IS 'BUDAT — Posting Date in the Document [dies inscriptionis documentum]';
COMMENT ON COLUMN mm.mkpf.die_doc IS 'CPUDT — Day On Which Accounting Document Was Entered [dies documentum]';
COMMENT ON COLUMN mm.mkpf.tmp IS 'CPUTM — Time of Entry [tempus]';
COMMENT ON COLUMN mm.mkpf.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN mm.mkpf.usr_nom IS 'USNAM — User name [usor nomen]';
COMMENT ON COLUMN mm.mkpf.are IS 'TCODE — Not More Closely Defined Area [area]';
COMMENT ON COLUMN mm.mkpf.rfr_ndo IS 'XBLNR — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN mm.mkpf.doc_cap_txt IS 'BKTXT — Document Header Text [documentum caput textus]';
COMMENT ON COLUMN mm.mkpf.trd IS 'FRATH — Unplanned delivery costs [traditio]';
COMMENT ON COLUMN mm.mkpf.num_tmp_amr IS 'FRBNR — Number of Bill of Lading at Time of Goods Receipt [numerus tempus acceptio mercium]';
COMMENT ON COLUMN mm.mkpf.vrs IS 'WEVER — Version for Printing GR/GI Slip [versio]';
COMMENT ON COLUMN mm.mkpf.amr_num IS 'XABLN — Goods Receipt/Issue Slip Number [acceptio mercium numerus]';
COMMENT ON COLUMN mm.mkpf.awsys IS 'AWSYS — Logical System';
COMMENT ON COLUMN mm.mkpf.cod IS 'TCODE2 — Transaction Code [codex]';
COMMENT ON COLUMN mm.mkpf.num IS 'EXNUM — Number of foreign trade data in MM and SD documents [numerus]';
COMMENT ON COLUMN mm.mkpf.trd2 IS 'LE_VBELN — Delivery [traditio]';
COMMENT ON COLUMN mm.mkpf.num_doc_cnd IS 'KNUMV — Number of the document condition [numerus documentum condicio]';
COMMENT ON COLUMN mm.mkpf.num_trd_adn IS 'LFSNR — Number of External Delivery Note [numerus traditio adnotatio]';

CREATE TABLE IF NOT EXISTS mm.mlgn (
  cli char(3),
  mat_num varchar(18),
  nhr_hor varchar(3),
  sgn_mat_nhr varchar(1),
  lgbkz varchar(3),
  grp_idx_cpa varchar(3),
  grp_idx_cpa2 varchar(3),
  inm_qnt numeric(13,3),
  inm_qnt2 numeric(13,3),
  inm_qnt3 numeric(13,3),
  men_inm_qnt varchar(3),
  men_inm_qnt2 varchar(3),
  men_inm_qnt3 varchar(3),
  uni_gen varchar(3),
  uni_gen2 varchar(3),
  uni_gen3 varchar(3),
  hor_men varchar(3),
  idx_cpa varchar(1),
  idx varchar(2),
  idx2 varchar(1),
  mtm_idx_hor varchar(1),
  cpc numeric(11,3),
  men_cpc varchar(3),
  grp_cns varchar(3),
  men_mat_tpr varchar(1),
  mat varchar(1),
  CONSTRAINT mlgn_pk PRIMARY KEY (cli, mat_num, nhr_hor)
);
COMMENT ON TABLE mm.mlgn IS 'MLGN — Material Data for Each Warehouse Number — the warehouse-level (WM) master data for a material, one row per material per warehouse number, carrying the storage-strategy defaults (put-away/picking storage-type indicators, loading-equipment quantities and units, storage-unit types, bulk-storage and 2-step-picking flags) that classic Warehouse Management uses to place and remove stock. Paired with MLGT for the storage-type-specific bin assignment; together they are the WM-material lane that sits alongside MARD''s IM-level stock quantities.';
COMMENT ON COLUMN mm.mlgn.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.mlgn.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.mlgn.nhr_hor IS 'LGNUM — Warehouse Number / Warehouse Complex [numerus horrei horreum]';
COMMENT ON COLUMN mm.mlgn.sgn_mat_nhr IS 'LVORM — Deletion flag for all material data of a warehouse number [signum materia numerus horrei]';
COMMENT ON COLUMN mm.mlgn.lgbkz IS 'LGBKZ — Storage Section Indicators';
COMMENT ON COLUMN mm.mlgn.grp_idx_cpa IS 'LTKZE — Storage type indicator for stock placement [genus repositionis index copia]';
COMMENT ON COLUMN mm.mlgn.grp_idx_cpa2 IS 'LTKZA — Storage type indicator for stock removal [genus repositionis index copia]';
COMMENT ON COLUMN mm.mlgn.inm_qnt IS 'LHMG1 — Loading equipment quantity 1 [instrumentum quantitas]';
COMMENT ON COLUMN mm.mlgn.inm_qnt2 IS 'LHMG2 — Loading equipment quantity 2 [instrumentum quantitas]';
COMMENT ON COLUMN mm.mlgn.inm_qnt3 IS 'LHMG3 — Loading equipment quantity 3 [instrumentum quantitas]';
COMMENT ON COLUMN mm.mlgn.men_inm_qnt IS 'LHME1 — Unit of measure for loading equipment quantity 1 [mensura instrumentum quantitas]';
COMMENT ON COLUMN mm.mlgn.men_inm_qnt2 IS 'LHME2 — Unit of measure for loading equipment quantity 2 [mensura instrumentum quantitas]';
COMMENT ON COLUMN mm.mlgn.men_inm_qnt3 IS 'LHME3 — Unit of measure for loading equipment quantity 3 [mensura instrumentum quantitas]';
COMMENT ON COLUMN mm.mlgn.uni_gen IS 'LETY1 — 1st storage unit type [unitas genus]';
COMMENT ON COLUMN mm.mlgn.uni_gen2 IS 'LETY2 — 2nd storage unit type [unitas genus]';
COMMENT ON COLUMN mm.mlgn.uni_gen3 IS 'LETY3 — 3rd storage unit type [unitas genus]';
COMMENT ON COLUMN mm.mlgn.hor_men IS 'LVSME — Warehouse Management Unit of Measure [horreum mensura]';
COMMENT ON COLUMN mm.mlgn.idx_cpa IS 'KZZUL — Indicator: Allow addition to existing stock [index copia]';
COMMENT ON COLUMN mm.mlgn.idx IS 'BLOCK — Bulk storage indicator [index]';
COMMENT ON COLUMN mm.mlgn.idx2 IS 'KZMBF — Indicator: Message to inventory management [index]';
COMMENT ON COLUMN mm.mlgn.mtm_idx_hor IS 'BSSKZ — Special movement indicator for warehouse management [motus index horreum]';
COMMENT ON COLUMN mm.mlgn.cpc IS 'MKAPV — Capacity usage [capacitas]';
COMMENT ON COLUMN mm.mlgn.men_cpc IS 'BEZME — Unit of measure for capacity consumption [mensura capacitas]';
COMMENT ON COLUMN mm.mlgn.grp_cns IS 'PLKPT — Picking storage type for rough-cut and detailed planning [genus repositionis consilium]';
COMMENT ON COLUMN mm.mlgn.men_mat_tpr IS 'VOMEM — Default for unit of measure from material master record [mensura materia tabula principalis]';
COMMENT ON COLUMN mm.mlgn.mat IS 'L2SKR — Material relevance for 2-step picking [materia]';

CREATE TABLE IF NOT EXISTS mm.mlgt (
  cli char(3),
  mat_num varchar(18),
  nhr_hor varchar(3),
  grp varchar(3),
  sgn_mat_grp varchar(1),
  lgpla varchar(10),
  qnt numeric(13,3),
  qnt2 numeric(13,3),
  qnt3 numeric(13,3),
  qnt4 numeric(13,3),
  are varchar(3),
  rdmng numeric(13,3),
  CONSTRAINT mlgt_pk PRIMARY KEY (cli, mat_num, nhr_hor, grp)
);
COMMENT ON TABLE mm.mlgt IS 'MLGT — Material Data for Each Storage Type — the storage-type-specific bin and quantity control data for a material within a warehouse number, one row per material per warehouse number per storage type. Completes the warehouse-management material pair started by MLGN (warehouse-number-level defaults), narrowing down to the fixed bin, min/max/control/replenishment quantities, and picking area a specific storage type uses for that material. A small, complete check/control table by SAP''s own standard — carried in full.';
COMMENT ON COLUMN mm.mlgt.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.mlgt.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.mlgt.nhr_hor IS 'LGNUM — Warehouse Number / Warehouse Complex [numerus horrei horreum]';
COMMENT ON COLUMN mm.mlgt.grp IS 'LGTYP — Storage Type [genus repositionis]';
COMMENT ON COLUMN mm.mlgt.sgn_mat_grp IS 'LVORM — Deletion flag for all material data of a storage type [signum materia genus repositionis]';
COMMENT ON COLUMN mm.mlgt.lgpla IS 'LGPLA — Storage Bin';
COMMENT ON COLUMN mm.mlgt.qnt IS 'LPMAX — Maximum storage bin quantity [quantitas]';
COMMENT ON COLUMN mm.mlgt.qnt2 IS 'LPMIN — Minimum storage bin quantity [quantitas]';
COMMENT ON COLUMN mm.mlgt.qnt3 IS 'MAMNG — Control quantity [quantitas]';
COMMENT ON COLUMN mm.mlgt.qnt4 IS 'NSMNG — Replenishment quantity [quantitas]';
COMMENT ON COLUMN mm.mlgt.are IS 'KOBER — Picking Area [area]';
COMMENT ON COLUMN mm.mlgt.rdmng IS 'RDMNG — Rounding qty';

CREATE TABLE IF NOT EXISTS mm.mseg (
  cli char(3),
  num_mat_doc varchar(10),
  mat_doc_ann varchar(4),
  pos_mat_doc varchar(4),
  mtm_gen varchar(3),
  mat_num varchar(18),
  ofc varchar(4),
  loc varchar(4),
  grx_num varchar(10),
  cpa_gen varchar(1),
  cpa_idx varchar(1),
  ven_rat_num varchar(10),
  rat_num_emp varchar(10),
  vdt_mnd_num varchar(10),
  pos_num_vdt varchar(6),
  dbt_crd_idx varchar(1),
  cvm varchar(5),
  sum_mon numeric(13,2),
  aes_gen varchar(10),
  qnt numeric(13,3),
  men varchar(3),
  qnt_uni numeric(13,3),
  uni varchar(3),
  mem_num varchar(10),
  pos_num_dem varchar(5),
  anf_rfr_doc varchar(4),
  doc_rfr varchar(10),
  pos_rfr_doc varchar(4),
  num_mat_doc2 varchar(10),
  pos_mat_doc2 varchar(4),
  trd_idx varchar(1),
  pos_txt varchar(50),
  inm_num varchar(18),
  ang varchar(4),
  amd varchar(4),
  csm varchar(10),
  mnd_num varchar(12),
  ptm_num varchar(12),
  ptm varchar(4),
  anf varchar(4),
  soc varchar(4),
  ndo varchar(10),
  num_pos_doc varchar(3),
  num_rqs varchar(10),
  pos_num_rqs varchar(4),
  mat varchar(18),
  ofc2 varchar(4),
  loc2 varchar(4),
  grx varchar(10),
  aes_gen_grx varchar(10),
  nhr_hor varchar(3),
  grp varchar(3),
  lgpla varchar(10),
  rqs_num varchar(10),
  mnd_num2 varchar(10),
  csa_mtm varchar(4),
  clu varchar(10),
  ops_elm_eop varchar(8),
  rat_num varchar(10),
  die date,
  geber varchar(10),
  fistl varchar(16),
  pos varchar(14),
  trb_vdt_cod varchar(2),
  trb varchar(15),
  grant_nbr varchar(20),
  ndo2 varchar(10),
  doc_pos varchar(3),
  CONSTRAINT mseg_pk PRIMARY KEY (cli, num_mat_doc, mat_doc_ann, pos_mat_doc)
);
COMMENT ON TABLE mm.mseg IS 'MSEG — Document Segment: Material - line-item goods movement data; feeds FI via the BSEG posting chain.';
COMMENT ON COLUMN mm.mseg.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.mseg.num_mat_doc IS 'MBLNR — Number of Material Document [numerus materia documentum]';
COMMENT ON COLUMN mm.mseg.mat_doc_ann IS 'MJAHR — Material Document Year [materia documentum annus]';
COMMENT ON COLUMN mm.mseg.pos_mat_doc IS 'ZEILE — Item in Material Document [positio materia documentum]';
COMMENT ON COLUMN mm.mseg.mtm_gen IS 'BWART — Movement Type (Inventory Management) [motus genus]';
COMMENT ON COLUMN mm.mseg.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.mseg.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN mm.mseg.loc IS 'LGORT — Storage Location [locus repositionis]';
COMMENT ON COLUMN mm.mseg.grx_num IS 'CHARG — Batch Number [grex numerus]';
COMMENT ON COLUMN mm.mseg.cpa_gen IS 'INSMK — Stock Type [copia genus]';
COMMENT ON COLUMN mm.mseg.cpa_idx IS 'SOBKZ — Special Stock Indicator [copia index]';
COMMENT ON COLUMN mm.mseg.ven_rat_num IS 'LIFNR — Vendor Account Number [venditor ratio numerus]';
COMMENT ON COLUMN mm.mseg.rat_num_emp IS 'KUNNR — Account Number of Customer [ratio numerus emptor]';
COMMENT ON COLUMN mm.mseg.vdt_mnd_num IS 'KDAUF — Sales Order Number [venditio mandatum numerus]';
COMMENT ON COLUMN mm.mseg.pos_num_vdt IS 'KDPOS — Item Number in Sales Order [positio numerus venditio]';
COMMENT ON COLUMN mm.mseg.dbt_crd_idx IS 'SHKZG — Debit/Credit Indicator [debitum creditum index]';
COMMENT ON COLUMN mm.mseg.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN mm.mseg.sum_mon IS 'DMBTR — Amount in Local Currency [summa moneta]';
COMMENT ON COLUMN mm.mseg.aes_gen IS 'BWTAR — Valuation Type [aestimatio genus]';
COMMENT ON COLUMN mm.mseg.qnt IS 'MENGE — Quantity [quantitas]';
COMMENT ON COLUMN mm.mseg.men IS 'MEINS — Base Unit of Measure [mensura]';
COMMENT ON COLUMN mm.mseg.qnt_uni IS 'ERFMG — Quantity in Unit of Entry [quantitas unitas]';
COMMENT ON COLUMN mm.mseg.uni IS 'ERFME — Unit of Entry [unitas]';
COMMENT ON COLUMN mm.mseg.mem_num IS 'EBELN — Purchase Order Number [mandatum emptionis numerus]';
COMMENT ON COLUMN mm.mseg.pos_num_dem IS 'EBELP — Item Number of Purchasing Document [positio numerus documentum emptionis]';
COMMENT ON COLUMN mm.mseg.anf_rfr_doc IS 'LFBJA — Fiscal Year of a Reference Document [annus fiscalis referentia documentum]';
COMMENT ON COLUMN mm.mseg.doc_rfr IS 'LFBNR — Document No. of a Reference Document [documentum referentia]';
COMMENT ON COLUMN mm.mseg.pos_rfr_doc IS 'LFPOS — Item of a Reference Document [positio referentia documentum]';
COMMENT ON COLUMN mm.mseg.num_mat_doc2 IS 'SMBLN — Number of Material Document [numerus materia documentum]';
COMMENT ON COLUMN mm.mseg.pos_mat_doc2 IS 'SMBLP — Item in Material Document [positio materia documentum]';
COMMENT ON COLUMN mm.mseg.trd_idx IS 'ELIKZ — ''Delivery Completed'' Indicator [traditio index]';
COMMENT ON COLUMN mm.mseg.pos_txt IS 'SGTXT — Item Text [positio textus]';
COMMENT ON COLUMN mm.mseg.inm_num IS 'EQUNR — Equipment Number [instrumentum numerus]';
COMMENT ON COLUMN mm.mseg.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN mm.mseg.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN mm.mseg.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN mm.mseg.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN mm.mseg.ptm_num IS 'ANLN1 — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN mm.mseg.ptm IS 'ANLN2 — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN mm.mseg.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN mm.mseg.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN mm.mseg.ndo IS 'BELNR — Accounting Document Number [numerus documenti]';
COMMENT ON COLUMN mm.mseg.num_pos_doc IS 'BUZEI — Number of Line Item Within Accounting Document [numerus positio documentum]';
COMMENT ON COLUMN mm.mseg.num_rqs IS 'RSNUM — Number of Reservation/Dependent Requirement [numerus requisitum]';
COMMENT ON COLUMN mm.mseg.pos_num_rqs IS 'RSPOS — Item Number of Reservation/Dependent Requirement [positio numerus requisitum]';
COMMENT ON COLUMN mm.mseg.mat IS 'UMMAT — Receiving/Issuing Material [materia]';
COMMENT ON COLUMN mm.mseg.ofc2 IS 'UMWRK — Receiving/Issuing Plant [officina]';
COMMENT ON COLUMN mm.mseg.loc2 IS 'UMLGO — Receiving/Issuing Storage Location [locus repositionis]';
COMMENT ON COLUMN mm.mseg.grx IS 'UMCHA — Receiving/Issuing Batch [grex]';
COMMENT ON COLUMN mm.mseg.aes_gen_grx IS 'UMBAR — Valuation Type of Transfer Batch [aestimatio genus grex]';
COMMENT ON COLUMN mm.mseg.nhr_hor IS 'LGNUM — Warehouse Number / Warehouse Complex [numerus horrei horreum]';
COMMENT ON COLUMN mm.mseg.grp IS 'LGTYP — Storage Type [genus repositionis]';
COMMENT ON COLUMN mm.mseg.lgpla IS 'LGPLA — Storage Bin';
COMMENT ON COLUMN mm.mseg.rqs_num IS 'TBNUM — Transfer Requirement Number [requisitum numerus]';
COMMENT ON COLUMN mm.mseg.mnd_num2 IS 'TANUM — Transfer Order Number [mandatum numerus]';
COMMENT ON COLUMN mm.mseg.csa_mtm IS 'GRUND — Reason for Movement [causa motus]';
COMMENT ON COLUMN mm.mseg.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN mm.mseg.ops_elm_eop IS 'PS_PSP_PNR — Work Breakdown Structure Element (WBS Element) [opus elementum elementum operis]';
COMMENT ON COLUMN mm.mseg.rat_num IS 'SAKTO — G/L Account Number [ratio numerus]';
COMMENT ON COLUMN mm.mseg.die IS 'VFDAT — Shelf Life Expiration or Best-Before Date [dies]';
COMMENT ON COLUMN mm.mseg.geber IS 'GEBER — Fund';
COMMENT ON COLUMN mm.mseg.fistl IS 'FISTL — Funds Center';
COMMENT ON COLUMN mm.mseg.pos IS 'FIPOS — Commitment Item [positio]';
COMMENT ON COLUMN mm.mseg.trb_vdt_cod IS 'MWSKZ — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN mm.mseg.trb IS 'TXJCD — Tax Jurisdiction [tributum]';
COMMENT ON COLUMN mm.mseg.grant_nbr IS 'GRANT_NBR — Grant';
COMMENT ON COLUMN mm.mseg.ndo2 IS 'KBLNR — Document Number for Earmarked Funds [numerus documenti]';
COMMENT ON COLUMN mm.mseg.doc_pos IS 'KBLPOS — Earmarked Funds: Document Item [documentum positio]';

CREATE TABLE IF NOT EXISTS mm.mvke (
  cli char(3),
  mat_num varchar(18),
  ovd varchar(4),
  cds varchar(2),
  sgn_mat_dtb varchar(1),
  mat_stt_cts varchar(1),
  vlm_cts varchar(2),
  cts varchar(2),
  ddc_idx varchar(1),
  dtb_mat_sta varchar(2),
  die_mat_sta date,
  mnd_qnt_men numeric(13,3),
  trd_qnt_adn numeric(13,3),
  mnd_qnt numeric(13,3),
  trd_uni numeric(13,3),
  men_trd_uni varchar(3),
  vdt_uni varchar(3),
  pos_ctg_cts varchar(4),
  ofc varchar(4),
  hir varchar(18),
  tax_rfr_mat varchar(18),
  mat_tax_cts varchar(2),
  rat_asg_cts varchar(2),
  mat_cts varchar(3),
  mat_cts2 varchar(3),
  mat_cts3 varchar(3),
  mat_cts4 varchar(3),
  mat_cts5 varchar(3),
  sstuf varchar(2),
  pri varchar(1),
  lstfl varchar(2),
  lstvz varchar(2),
  lstak varchar(1),
  die date,
  die2 date,
  die_dtb date,
  die_hor date,
  die3 date,
  die4 date,
  die_dtb2 date,
  die_dtb3 date,
  prat1 varchar(1),
  prat2 varchar(1),
  prat3 varchar(1),
  prat4 varchar(1),
  prat5 varchar(1),
  prat6 varchar(1),
  prat7 varchar(1),
  prat8 varchar(1),
  prat9 varchar(1),
  prata varchar(1),
  rdprf varchar(4),
  men_cts varchar(4),
  trd_qnt_mnd numeric(13,3),
  sgn_mat varchar(1),
  idx_pre varchar(1),
  vdt_uni2 varchar(1),
  mat varchar(1),
  mat2 varchar(8),
  pre_ctg varchar(2),
  CONSTRAINT mvke_pk PRIMARY KEY (cli, mat_num, ovd, cds)
);
COMMENT ON TABLE mm.mvke IS 'MVKE — Sales Data for Material — the sales-organization/distribution-channel view of a material, one row per material per sales org per distribution channel, sitting alongside the plant-level MARC and storage-location MARD data already defined here. MVKE carries the commercial attributes (sales status, delivering plant, minimum order/delivery quantities, material pricing/rebate/commission groups, product hierarchy) that an order-to-cash or pricing lane consumes when a material is sold rather than merely stocked or procured.';
COMMENT ON COLUMN mm.mvke.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN mm.mvke.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN mm.mvke.ovd IS 'VKORG — Sales Organization [organizatio venditionis]';
COMMENT ON COLUMN mm.mvke.cds IS 'VTWEG — Distribution Channel [canalis distributionis]';
COMMENT ON COLUMN mm.mvke.sgn_mat_dtb IS 'LVORM — Ind.: Flag material for deletion at distribution chain level [signum materia distributio]';
COMMENT ON COLUMN mm.mvke.mat_stt_cts IS 'VERSG — Material statistics group [materia statistica coetus]';
COMMENT ON COLUMN mm.mvke.vlm_cts IS 'BONUS — Volume rebate group [volumen coetus]';
COMMENT ON COLUMN mm.mvke.cts IS 'PROVG — Commission group [coetus]';
COMMENT ON COLUMN mm.mvke.ddc_idx IS 'SKTOF — Cash discount indicator [deductio index]';
COMMENT ON COLUMN mm.mvke.dtb_mat_sta IS 'VMSTA — Distribution-chain-specific material status [distributio materia status]';
COMMENT ON COLUMN mm.mvke.die_mat_sta IS 'VMSTD — Date from which distr.-chain-spec. material status is valid [dies materia status]';
COMMENT ON COLUMN mm.mvke.mnd_qnt_men IS 'AUMNG — Minimum order quantity in base unit of measure [mandatum quantitas mensura]';
COMMENT ON COLUMN mm.mvke.trd_qnt_adn IS 'LFMNG — Minimum delivery quantity in delivery note processing [traditio quantitas adnotatio]';
COMMENT ON COLUMN mm.mvke.mnd_qnt IS 'EFMNG — Minimum make-to-order quantity [mandatum quantitas]';
COMMENT ON COLUMN mm.mvke.trd_uni IS 'SCMNG — Delivery unit [traditio unitas]';
COMMENT ON COLUMN mm.mvke.men_trd_uni IS 'SCHME — Unit of measure of delivery unit [mensura traditio unitas]';
COMMENT ON COLUMN mm.mvke.vdt_uni IS 'VRKME — Sales unit [venditio unitas]';
COMMENT ON COLUMN mm.mvke.pos_ctg_cts IS 'MTPOS — Item category group from material master [positio categoria coetus]';
COMMENT ON COLUMN mm.mvke.ofc IS 'DWERK — Delivering Plant (Own or External) [officina]';
COMMENT ON COLUMN mm.mvke.hir IS 'PRODH — Product hierarchy [hierarchia]';
COMMENT ON COLUMN mm.mvke.tax_rfr_mat IS 'PMATN — Pricing Reference Material [taxatio referentia materia]';
COMMENT ON COLUMN mm.mvke.mat_tax_cts IS 'KONDM — Material Pricing Group [materia taxatio coetus]';
COMMENT ON COLUMN mm.mvke.rat_asg_cts IS 'KTGRM — Account assignment group for this material [ratio assignatio coetus]';
COMMENT ON COLUMN mm.mvke.mat_cts IS 'MVGR1 — Material group 1 [materia coetus]';
COMMENT ON COLUMN mm.mvke.mat_cts2 IS 'MVGR2 — Material group 2 [materia coetus]';
COMMENT ON COLUMN mm.mvke.mat_cts3 IS 'MVGR3 — Material group 3 [materia coetus]';
COMMENT ON COLUMN mm.mvke.mat_cts4 IS 'MVGR4 — Material group 4 [materia coetus]';
COMMENT ON COLUMN mm.mvke.mat_cts5 IS 'MVGR5 — Material group 5 [materia coetus]';
COMMENT ON COLUMN mm.mvke.sstuf IS 'SSTUF — Assortment grade';
COMMENT ON COLUMN mm.mvke.pri IS 'PFLKS — External assortment priority [prioritas]';
COMMENT ON COLUMN mm.mvke.lstfl IS 'LSTFL — Listing procedure for store or other assortment categories';
COMMENT ON COLUMN mm.mvke.lstvz IS 'LSTVZ — Listing procedure for distr. center assortment categories';
COMMENT ON COLUMN mm.mvke.lstak IS 'LSTAK — Listing functions (assortments) are active';
COMMENT ON COLUMN mm.mvke.die IS 'LDVFL — Date from which listed in the store [dies]';
COMMENT ON COLUMN mm.mvke.die2 IS 'LDBFL — Date to which listed in the store [dies]';
COMMENT ON COLUMN mm.mvke.die_dtb IS 'LDVZL — Date from which listed in the distribution center [dies distributio]';
COMMENT ON COLUMN mm.mvke.die_hor IS 'LDBZL — Date to which listed in the central warehouse/distr. center [dies horreum]';
COMMENT ON COLUMN mm.mvke.die3 IS 'VDVFL — Date from which sold in the store [dies]';
COMMENT ON COLUMN mm.mvke.die4 IS 'VDBFL — Date to which sold in the store [dies]';
COMMENT ON COLUMN mm.mvke.die_dtb2 IS 'VDVZL — Date from which sold in the distribution center [dies distributio]';
COMMENT ON COLUMN mm.mvke.die_dtb3 IS 'VDBZL — Date to which sold in the distribution center [dies distributio]';
COMMENT ON COLUMN mm.mvke.prat1 IS 'PRAT1 — ID for product attribute 1';
COMMENT ON COLUMN mm.mvke.prat2 IS 'PRAT2 — ID for product attribute 2';
COMMENT ON COLUMN mm.mvke.prat3 IS 'PRAT3 — ID for product attribute 3';
COMMENT ON COLUMN mm.mvke.prat4 IS 'PRAT4 — ID for product attribute 4';
COMMENT ON COLUMN mm.mvke.prat5 IS 'PRAT5 — ID for product attribute 5';
COMMENT ON COLUMN mm.mvke.prat6 IS 'PRAT6 — ID for product attribute 6';
COMMENT ON COLUMN mm.mvke.prat7 IS 'PRAT7 — ID for product attribute 7';
COMMENT ON COLUMN mm.mvke.prat8 IS 'PRAT8 — ID for product attribute 8';
COMMENT ON COLUMN mm.mvke.prat9 IS 'PRAT9 — ID for product attribute 9';
COMMENT ON COLUMN mm.mvke.prata IS 'PRATA — ID for product attribute 10';
COMMENT ON COLUMN mm.mvke.rdprf IS 'RDPRF — Rounding Profile';
COMMENT ON COLUMN mm.mvke.men_cts IS 'MEGRU — Unit of Measure Group [mensura coetus]';
COMMENT ON COLUMN mm.mvke.trd_qnt_mnd IS 'LFMAX — Maximum delivery quantity in store order processing [traditio quantitas mandatum]';
COMMENT ON COLUMN mm.mvke.sgn_mat IS 'RJART — Flag rackjobber material [signum materia]';
COMMENT ON COLUMN mm.mvke.idx_pre IS 'PBIND — Indicator for price fixing [index pretium]';
COMMENT ON COLUMN mm.mvke.vdt_uni2 IS 'VAVME — Variable Sales Unit Not Allowed [venditio unitas]';
COMMENT ON COLUMN mm.mvke.mat IS 'MATKC — Competition characterization of a material [materia]';
COMMENT ON COLUMN mm.mvke.mat2 IS 'PVMSO — Material sorting in product proposal [materia]';
COMMENT ON COLUMN mm.mvke.pre_ctg IS 'PLGTP — Price Band Category [pretium categoria]';

