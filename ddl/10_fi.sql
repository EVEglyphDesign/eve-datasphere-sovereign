-- EVE Datasphere Sovereign — PostgreSQL materialisation
-- Generated 2026-08-01T02:17:52Z by scripts/emit_postgres.py. Do not hand-edit; regenerate.
-- Column names are the canonical Latin layer (EgD-LATIN-001). The legacy SAP field name
-- is preserved in COMMENT ON COLUMN and in egd_catalog.field_map, and is the join key.
-- Mirror, never cannibalise. Pour le bien-etre du peuple.

-- module FI

CREATE TABLE IF NOT EXISTS fi.acdoca (
  cli char(3),
  lbr varchar(2),
  soc varchar(4),
  anf varchar(4),
  ndo varchar(10),
  ins_pos_lbr varchar(6),
  lbr_anf varchar(4),
  lbr_ndo varchar(10),
  tbl_gen varchar(1),
  gen varchar(3),
  gen_lbr varchar(4),
  vrgng varchar(4),
  gen2 varchar(4),
  rfr varchar(5),
  fns_doc varchar(10),
  rfr2 varchar(10),
  rfr_ndo varchar(10),
  rfr_doc_pos varchar(6),
  cts_rfr_doc varchar(6),
  doc varchar(6),
  rvs_doc varchar(1),
  idx_pos varchar(1),
  idx_rvs varchar(1),
  rfr_doc varchar(5),
  rfr_doc2 varchar(10),
  rfr_ndo_doc varchar(10),
  doc2 varchar(6),
  idx_pos2 varchar(1),
  idx_pos3 varchar(1),
  rfr3 varchar(5),
  rfr4 varchar(10),
  rfr_ndo2 varchar(10),
  ins_rfr_doc varchar(6),
  doc3 varchar(6),
  eph_anf varchar(4),
  eph_ndo varchar(10),
  eph_pos varchar(6),
  idx_pos4 varchar(1),
  csa_pos varchar(1),
  cvm_mon varchar(5),
  cvm_mon2 varchar(5),
  mon_soc varchar(5),
  amd_mon varchar(5),
  obi_mon varchar(5),
  mon varchar(5),
  mon2 varchar(5),
  mon3 varchar(5),
  mon4 varchar(5),
  mon5 varchar(5),
  mon6 varchar(5),
  mon7 varchar(5),
  obi_mon2 varchar(5),
  men varchar(3),
  vdt_uni varchar(3),
  rfr_uni varchar(3),
  qnt_uni varchar(3),
  qnt_uni2 varchar(3),
  qnt_uni3 varchar(3),
  rat_num varchar(10),
  csm varchar(10),
  clu varchar(10),
  afn varchar(16),
  ang varchar(4),
  amd varchar(4),
  seg varchar(10),
  csm2 varchar(10),
  scs_clu varchar(10),
  scs_afn varchar(16),
  sng_ang varchar(4),
  sng_soc varchar(6),
  scs_seg varchar(10),
  sum_mon numeric(23,2),
  sum_mon2 numeric(23,2),
  sum_mon_soc numeric(23,2),
  sum_amd_mon numeric(23,2),
  sum_obi_mon numeric(23,2),
  sum_mon3 numeric(23,2),
  sum_mon4 numeric(23,2),
  sum_mon5 numeric(23,2),
  sum_mon6 numeric(23,2),
  sum_mon7 numeric(23,2),
  sum_mon8 numeric(23,2),
  sum_mon9 numeric(23,2),
  sum_obi_mon2 numeric(23,2),
  qnt numeric(23,3),
  vdt_qnt numeric(23,3),
  rfr_qnt numeric(23,3),
  qnt2 numeric(23,3),
  qnt3 numeric(23,3),
  qnt4 numeric(23,3),
  dbt_crd_idx varchar(1),
  ins_per varchar(3),
  din_doc date,
  ddc_doc date,
  gdo varchar(2),
  clv varchar(3),
  rat_gen varchar(1),
  emp_num varchar(10),
  ven_rat_num varchar(10),
  mat_num varchar(40),
  ofc varchar(4),
  ptm_num varchar(12),
  ptm varchar(4),
  mnd_num varchar(12),
  ops_elm_eop varchar(8),
  usr_nom varchar(12),
  doc_die date,
  pos_txt varchar(50),
  rfr_ndo_cap varchar(16),
  cpn_ndo varchar(10),
  cpn_die date,
  doc_sta varchar(1),
  fns_eph_pos varchar(1),
  CONSTRAINT acdoca_pk PRIMARY KEY (cli, lbr, soc, anf, ndo, ins_pos_lbr)
);
COMMENT ON TABLE fi.acdoca IS 'ACDOCA — Universal Journal Entry Line Items — S/4HANA''s single source of truth for FI+CO+AA+ML+CO-PA line items. THE truth-ledger table.';
COMMENT ON COLUMN fi.acdoca.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN fi.acdoca.lbr IS 'RLDNR — Ledger in General Ledger Accounting [liber]';
COMMENT ON COLUMN fi.acdoca.soc IS 'RBUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.acdoca.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.acdoca.ndo IS 'BELNR — Accounting Document Number [numerus documenti]';
COMMENT ON COLUMN fi.acdoca.ins_pos_lbr IS 'DOCLN — Six-Character Posting Item for Ledger [inscriptio positio liber]';
COMMENT ON COLUMN fi.acdoca.lbr_anf IS 'RYEAR — General Ledger Fiscal Year [liber annus fiscalis]';
COMMENT ON COLUMN fi.acdoca.lbr_ndo IS 'DOCNR_LD — Ledger specific Accounting Document Number [liber numerus documenti]';
COMMENT ON COLUMN fi.acdoca.tbl_gen IS 'RRCTY — Record Type [tabula genus]';
COMMENT ON COLUMN fi.acdoca.gen IS 'RMVCT — Transaction Type [genus]';
COMMENT ON COLUMN fi.acdoca.gen_lbr IS 'VORGN — Transaction Type for General Ledger [genus liber]';
COMMENT ON COLUMN fi.acdoca.vrgng IS 'VRGNG — CO Business Transaction';
COMMENT ON COLUMN fi.acdoca.gen2 IS 'BTTYPE — Business Transaction Type [genus]';
COMMENT ON COLUMN fi.acdoca.rfr IS 'AWTYP — Reference Transaction [referentia]';
COMMENT ON COLUMN fi.acdoca.fns_doc IS 'AWSYS — Logical System of Source Document [fons documentum]';
COMMENT ON COLUMN fi.acdoca.rfr2 IS 'AWORG — Reference Organizational Units [referentia]';
COMMENT ON COLUMN fi.acdoca.rfr_ndo IS 'AWREF — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN fi.acdoca.rfr_doc_pos IS 'AWITEM — Reference Document Line Item [referentia documentum positio]';
COMMENT ON COLUMN fi.acdoca.cts_rfr_doc IS 'AWITGRP — Group of Reference Document Line Items [coetus referentia documentum]';
COMMENT ON COLUMN fi.acdoca.doc IS 'SUBTA — Partial Document to be balanced to zero [documentum]';
COMMENT ON COLUMN fi.acdoca.rvs_doc IS 'XREVERSING — Identifier for reversal document [reversio documentum]';
COMMENT ON COLUMN fi.acdoca.idx_pos IS 'XREVERSED — Indicator: Item has been reversed [index positio]';
COMMENT ON COLUMN fi.acdoca.idx_rvs IS 'XTRUEREV — Indicator: Reversed by true reversal [index reversio]';
COMMENT ON COLUMN fi.acdoca.rfr_doc IS 'AWTYP_REV — Reference Transaction of Reversed Document [referentia documentum]';
COMMENT ON COLUMN fi.acdoca.rfr_doc2 IS 'AWORG_REV — Reference Organizational Units of Reversed Document [referentia documentum]';
COMMENT ON COLUMN fi.acdoca.rfr_ndo_doc IS 'AWREF_REV — Reference Document Number of Reversed Document [referentia numerus documenti documentum]';
COMMENT ON COLUMN fi.acdoca.doc2 IS 'SUBTA_REV — Partial Document to be balanced to zero (reversed) [documentum]';
COMMENT ON COLUMN fi.acdoca.idx_pos2 IS 'XSETTLING — Indicator: settling item [index positio]';
COMMENT ON COLUMN fi.acdoca.idx_pos3 IS 'XSETTLED — Indicator: settled item [index positio]';
COMMENT ON COLUMN fi.acdoca.rfr3 IS 'PREC_AWTYP — Preceding Reference Transaction [referentia]';
COMMENT ON COLUMN fi.acdoca.rfr4 IS 'PREC_AWORG — Preceding Reference Organizational Units [referentia]';
COMMENT ON COLUMN fi.acdoca.rfr_ndo2 IS 'PREC_AWREF — Preceding Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN fi.acdoca.ins_rfr_doc IS 'PREC_AWITEM — Preceding Posting Row of Reference Document [inscriptio referentia documentum]';
COMMENT ON COLUMN fi.acdoca.doc3 IS 'PREC_SUBTA — Preceding Partial Document to be balanced to zero [documentum]';
COMMENT ON COLUMN fi.acdoca.eph_anf IS 'PREC_GJAHR — Preceding Journal Entry Fiscal Year [ephemeris annus fiscalis]';
COMMENT ON COLUMN fi.acdoca.eph_ndo IS 'PREC_BELNR — Preceding Journal Entry Document Number [ephemeris numerus documenti]';
COMMENT ON COLUMN fi.acdoca.eph_pos IS 'PREC_DOCLN — Preceding Journal Entry Line Item [ephemeris positio]';
COMMENT ON COLUMN fi.acdoca.idx_pos4 IS 'XCOMMITMENT — Indicator: Commitment item [index positio]';
COMMENT ON COLUMN fi.acdoca.csa_pos IS 'OBS_REASON — Reason for obsolete Item [causa positio]';
COMMENT ON COLUMN fi.acdoca.cvm_mon IS 'RTCUR — Currency Key (Transaction Currency) [clavis monetae moneta]';
COMMENT ON COLUMN fi.acdoca.cvm_mon2 IS 'RWCUR — Currency Key of Original Transaction Currency [clavis monetae moneta]';
COMMENT ON COLUMN fi.acdoca.mon_soc IS 'RHCUR — Local Currency (Company Code Currency) [moneta codex societatis]';
COMMENT ON COLUMN fi.acdoca.amd_mon IS 'RKCUR — Controlling Area Currency [area moderationis moneta]';
COMMENT ON COLUMN fi.acdoca.obi_mon IS 'ROCUR — Object Currency [obiectum moneta]';
COMMENT ON COLUMN fi.acdoca.mon IS 'RVCUR — Freely Defined Currency 1 [moneta]';
COMMENT ON COLUMN fi.acdoca.mon2 IS 'RBCUR — Freely Defined Currency 2 [moneta]';
COMMENT ON COLUMN fi.acdoca.mon3 IS 'RCCUR — Freely Defined Currency 3 [moneta]';
COMMENT ON COLUMN fi.acdoca.mon4 IS 'RDCUR — Freely Defined Currency 4 [moneta]';
COMMENT ON COLUMN fi.acdoca.mon5 IS 'RECUR — Freely Defined Currency 5 [moneta]';
COMMENT ON COLUMN fi.acdoca.mon6 IS 'RFCUR — Freely Defined Currency 6 [moneta]';
COMMENT ON COLUMN fi.acdoca.mon7 IS 'RGCUR — Freely Defined Currency 7 [moneta]';
COMMENT ON COLUMN fi.acdoca.obi_mon2 IS 'RCO_OCUR — CO Object Currency [obiectum moneta]';
COMMENT ON COLUMN fi.acdoca.men IS 'RUNIT — Base Unit of Measure [mensura]';
COMMENT ON COLUMN fi.acdoca.vdt_uni IS 'RVUNIT — Sales Unit [venditio unitas]';
COMMENT ON COLUMN fi.acdoca.rfr_uni IS 'RRUNIT — Reference Unit [referentia unitas]';
COMMENT ON COLUMN fi.acdoca.qnt_uni IS 'QUNIT1 — Additional Quantity Unit 1 [quantitas unitas]';
COMMENT ON COLUMN fi.acdoca.qnt_uni2 IS 'QUNIT2 — Additional Quantity Unit 2 [quantitas unitas]';
COMMENT ON COLUMN fi.acdoca.qnt_uni3 IS 'QUNIT3 — Additional Quantity Unit 3 [quantitas unitas]';
COMMENT ON COLUMN fi.acdoca.rat_num IS 'RACCT — Account Number (G/L Account) [ratio numerus]';
COMMENT ON COLUMN fi.acdoca.csm IS 'RCNTR — Cost Center [centrum sumptus]';
COMMENT ON COLUMN fi.acdoca.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN fi.acdoca.afn IS 'RFAREA — Functional Area [area functionis]';
COMMENT ON COLUMN fi.acdoca.ang IS 'RBUSA — Business Area [area negotii]';
COMMENT ON COLUMN fi.acdoca.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN fi.acdoca.seg IS 'SEGMENT — Segment for Segmental Reporting [segmentum]';
COMMENT ON COLUMN fi.acdoca.csm2 IS 'SCNTR — Sender Cost Center [centrum sumptus]';
COMMENT ON COLUMN fi.acdoca.scs_clu IS 'PPRCTR — Partner Profit Center [socius centrum lucri]';
COMMENT ON COLUMN fi.acdoca.scs_afn IS 'SFAREA — Partner Functional Area [socius area functionis]';
COMMENT ON COLUMN fi.acdoca.sng_ang IS 'SBUSA — Trading Partner''s Business Area [socius negotiationis area negotii]';
COMMENT ON COLUMN fi.acdoca.sng_soc IS 'RASSC — Trading Partner (Company ID) [socius negotiationis societas]';
COMMENT ON COLUMN fi.acdoca.scs_seg IS 'PSEGMENT — Partner Segment for Segmental Reporting [socius segmentum]';
COMMENT ON COLUMN fi.acdoca.sum_mon IS 'TSL — Amount in Transaction Currency [summa moneta]';
COMMENT ON COLUMN fi.acdoca.sum_mon2 IS 'WSL — Amount in Original Transaction Currency [summa moneta]';
COMMENT ON COLUMN fi.acdoca.sum_mon_soc IS 'HSL — Amount in Local Currency (Company Code Currency) [summa moneta codex societatis]';
COMMENT ON COLUMN fi.acdoca.sum_amd_mon IS 'KSL — Amount in Controlling Area Currency [summa area moderationis moneta]';
COMMENT ON COLUMN fi.acdoca.sum_obi_mon IS 'OSL — Amount in Object Currency [summa obiectum moneta]';
COMMENT ON COLUMN fi.acdoca.sum_mon3 IS 'VSL — Amount in Freely Defined Currency 1 [summa moneta]';
COMMENT ON COLUMN fi.acdoca.sum_mon4 IS 'BSL — Amount in Freely Defined Currency 2 [summa moneta]';
COMMENT ON COLUMN fi.acdoca.sum_mon5 IS 'CSL — Amount in Freely Defined Currency 3 [summa moneta]';
COMMENT ON COLUMN fi.acdoca.sum_mon6 IS 'DSL — Amount in Freely Defined Currency 4 [summa moneta]';
COMMENT ON COLUMN fi.acdoca.sum_mon7 IS 'ESL — Amount in Freely Defined Currency 5 [summa moneta]';
COMMENT ON COLUMN fi.acdoca.sum_mon8 IS 'FSL — Amount in Freely Defined Currency 6 [summa moneta]';
COMMENT ON COLUMN fi.acdoca.sum_mon9 IS 'GSL — Amount in Freely Defined Currency 7 [summa moneta]';
COMMENT ON COLUMN fi.acdoca.sum_obi_mon2 IS 'CO_OSL — Amount in CO Object Currency [summa obiectum moneta]';
COMMENT ON COLUMN fi.acdoca.qnt IS 'MSL — Quantity [quantitas]';
COMMENT ON COLUMN fi.acdoca.vdt_qnt IS 'VMSL — Sales Quantity [venditio quantitas]';
COMMENT ON COLUMN fi.acdoca.rfr_qnt IS 'RMSL — Reference Quantity [referentia quantitas]';
COMMENT ON COLUMN fi.acdoca.qnt2 IS 'QSL1 — Additional Quantity 1 [quantitas]';
COMMENT ON COLUMN fi.acdoca.qnt3 IS 'QSL2 — Additional Quantity 2 [quantitas]';
COMMENT ON COLUMN fi.acdoca.qnt4 IS 'QSL3 — Additional Quantity 3 [quantitas]';
COMMENT ON COLUMN fi.acdoca.dbt_crd_idx IS 'DRCRK — Debit/Credit Indicator [debitum creditum index]';
COMMENT ON COLUMN fi.acdoca.ins_per IS 'POPER — Posting Period [inscriptio periodus]';
COMMENT ON COLUMN fi.acdoca.din_doc IS 'BUDAT — Posting Date in the Document [dies inscriptionis documentum]';
COMMENT ON COLUMN fi.acdoca.ddc_doc IS 'BLDAT — Document Date in Document [dies documenti documentum]';
COMMENT ON COLUMN fi.acdoca.gdo IS 'BLART — Document Type [genus documenti]';
COMMENT ON COLUMN fi.acdoca.clv IS 'KTOSL — Transaction Key [clavis]';
COMMENT ON COLUMN fi.acdoca.rat_gen IS 'KOART — Account Type [ratio genus]';
COMMENT ON COLUMN fi.acdoca.emp_num IS 'KUNNR — Customer Number [emptor numerus]';
COMMENT ON COLUMN fi.acdoca.ven_rat_num IS 'LIFNR — Vendor Account Number [venditor ratio numerus]';
COMMENT ON COLUMN fi.acdoca.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN fi.acdoca.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN fi.acdoca.ptm_num IS 'ANLN1 — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN fi.acdoca.ptm IS 'ANLN2 — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN fi.acdoca.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN fi.acdoca.ops_elm_eop IS 'PS_PSP_PNR — Work Breakdown Structure Element (WBS Element) [opus elementum elementum operis]';
COMMENT ON COLUMN fi.acdoca.usr_nom IS 'USNAM — User Name [usor nomen]';
COMMENT ON COLUMN fi.acdoca.doc_die IS 'CPUDT — Accounting Document Entry Date [documentum dies]';
COMMENT ON COLUMN fi.acdoca.pos_txt IS 'SGTXT — Item Text [positio textus]';
COMMENT ON COLUMN fi.acdoca.rfr_ndo_cap IS 'XBLNR — Reference Document Number (Header) [referentia numerus documenti caput]';
COMMENT ON COLUMN fi.acdoca.cpn_ndo IS 'AUGBL — Clearing Document Number [compensatio numerus documenti]';
COMMENT ON COLUMN fi.acdoca.cpn_die IS 'AUGDT — Clearing Date [compensatio dies]';
COMMENT ON COLUMN fi.acdoca.doc_sta IS 'BSTAT — Document Status [documentum status]';
COMMENT ON COLUMN fi.acdoca.fns_eph_pos IS 'MIG_SOURCE — Source of a migrated journal entry item [fons ephemeris positio]';

CREATE TABLE IF NOT EXISTS fi.acdocp (
  cli char(3),
  ord_num varchar(23),
  num varchar(6),
  tbl_num integer,
  lbr_anf varchar(4),
  lbr_cns varchar(2),
  rat_num_cns varchar(10),
  soc varchar(4),
  cns_ctg_vrs varchar(10),
  csm varchar(10),
  clu varchar(10),
  afn varchar(16),
  ang varchar(4),
  amd varchar(4),
  seg varchar(10),
  scs_clu varchar(10),
  scs_afn varchar(16),
  sng_ang varchar(4),
  soc_sng varchar(6),
  scs_seg varchar(10),
  ofc varchar(4),
  emp_num varchar(10),
  mat_num varchar(40),
  mnd_num varchar(12),
  ops_elm_eop varchar(8),
  tbr varchar(4),
  gen varchar(3),
  gen2 varchar(4),
  rfr varchar(5),
  rfr2 varchar(10),
  rfr_ndo varchar(10),
  usr_nom varchar(12),
  mon varchar(5),
  soc_mon varchar(5),
  cts_mon varchar(5),
  men_aes_qnt varchar(3),
  men_rfr_qnt varchar(3),
  pre_mon numeric(23,2),
  pre_soc_mon numeric(23,2),
  pre_mon2 numeric(23,2),
  sum_mon_cns numeric(23,2),
  sum_soc_mon numeric(23,2),
  sum_mon numeric(23,2),
  sum_mon2 numeric(23,2),
  aes_qnt numeric(23,3),
  rfr_qnt numeric(23,3),
  mgn numeric(13,0),
  ins_per varchar(3),
  din_doc date,
  anf varchar(2),
  per_ann varchar(7),
  rfr_die_tsc date,
  CONSTRAINT acdocp_pk PRIMARY KEY (cli, ord_num, num, tbl_num)
);
COMMENT ON TABLE fi.acdocp IS 'ACDOCP — Plan Data Line Items — the planning companion to the ACDOCA actuals spine already defined in this repo, structurally mirroring ACDOCA so plan and actual can be compared line-for-line. Stores period-based planning data (General Ledger Planning, Cost Center Planning, Profit Center Planning, and other CO planning) in the same universal-journal shape as ACDOCA/ACDOCU. SAP''s real table carries 203 fields (source: saplearners.com field listing, corroborated by SAP Community and Eursap documentation on S/4HANA Group Reporting architecture); leanx.eu has no page for this HANA-era table, so this defini';
COMMENT ON COLUMN fi.acdocp.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN fi.acdocp.ord_num IS 'REQTSN — Request Transaction Sequence Number [ordo numerus]';
COMMENT ON COLUMN fi.acdocp.num IS 'DATAPAKID — Data packet number [numerus]';
COMMENT ON COLUMN fi.acdocp.tbl_num IS 'RECORD — Data record number [tabula numerus]';
COMMENT ON COLUMN fi.acdocp.lbr_anf IS 'RYEAR — General Ledger Fiscal Year [liber annus fiscalis]';
COMMENT ON COLUMN fi.acdocp.lbr_cns IS 'RLDNR — Ledger in General Ledger Accounting — identifies which ledger (e.g. leading ledger 0L) this plan line belongs to [liber consilium]';
COMMENT ON COLUMN fi.acdocp.rat_num_cns IS 'RACCT — Account Number — the G/L account this plan value posts against [ratio numerus consilium]';
COMMENT ON COLUMN fi.acdocp.soc IS 'RBUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.acdocp.cns_ctg_vrs IS 'CATEGORY — Plan Category — the planning version/scenario categorization (budget, forecast, plan) analogous to RVERS on the actuals side [consilium categoria versio]';
COMMENT ON COLUMN fi.acdocp.csm IS 'RCNTR — Cost Center [centrum sumptus]';
COMMENT ON COLUMN fi.acdocp.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN fi.acdocp.afn IS 'RFAREA — Functional Area [area functionis]';
COMMENT ON COLUMN fi.acdocp.ang IS 'RBUSA — Business Area [area negotii]';
COMMENT ON COLUMN fi.acdocp.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN fi.acdocp.seg IS 'SEGMENT — Segment for Segmental Reporting [segmentum]';
COMMENT ON COLUMN fi.acdocp.scs_clu IS 'PPRCTR — Partner Profit Center [socius centrum lucri]';
COMMENT ON COLUMN fi.acdocp.scs_afn IS 'SFAREA — Partner Functional Area [socius area functionis]';
COMMENT ON COLUMN fi.acdocp.sng_ang IS 'SBUSA — Trading partner''s business area [socius negotiationis area negotii]';
COMMENT ON COLUMN fi.acdocp.soc_sng IS 'RASSC — Company ID of Trading Partner [societas socius negotiationis]';
COMMENT ON COLUMN fi.acdocp.scs_seg IS 'PSEGMENT — Partner Segment for Segmental Reporting [socius segmentum]';
COMMENT ON COLUMN fi.acdocp.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN fi.acdocp.emp_num IS 'KUNNR — Customer Number [emptor numerus]';
COMMENT ON COLUMN fi.acdocp.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN fi.acdocp.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN fi.acdocp.ops_elm_eop IS 'PS_PSP_PNR — Work Breakdown Structure Element (WBS Element) [opus elementum elementum operis]';
COMMENT ON COLUMN fi.acdocp.tbr IS 'KTOPL — Chart of Accounts [tabula rationum]';
COMMENT ON COLUMN fi.acdocp.gen IS 'RMVCT — Transaction type [genus]';
COMMENT ON COLUMN fi.acdocp.gen2 IS 'BTTYPE — Business Transaction Type [genus]';
COMMENT ON COLUMN fi.acdocp.rfr IS 'AWTYP — Reference procedure [referentia]';
COMMENT ON COLUMN fi.acdocp.rfr2 IS 'AWORG — Reference Organizational Units [referentia]';
COMMENT ON COLUMN fi.acdocp.rfr_ndo IS 'AWREF — Reference document number [referentia numerus documenti]';
COMMENT ON COLUMN fi.acdocp.usr_nom IS 'USNAM — User Name [usor nomen]';
COMMENT ON COLUMN fi.acdocp.mon IS 'RWCUR — Transaction Currency [moneta]';
COMMENT ON COLUMN fi.acdocp.soc_mon IS 'RHCUR — Company Code Currency [codex societatis moneta]';
COMMENT ON COLUMN fi.acdocp.cts_mon IS 'RKCUR — Global (Group) Currency [coetus moneta]';
COMMENT ON COLUMN fi.acdocp.men_aes_qnt IS 'RVUNIT — Unit of Measure for Valuation Quantity [mensura aestimatio quantitas]';
COMMENT ON COLUMN fi.acdocp.men_rfr_qnt IS 'RRUNIT — Unit of Measure for Reference Quantity [mensura referentia quantitas]';
COMMENT ON COLUMN fi.acdocp.pre_mon IS 'KPRICE — Price in Global Currency [pretium moneta]';
COMMENT ON COLUMN fi.acdocp.pre_soc_mon IS 'HPRICE — Price in Company Code Currency [pretium codex societatis moneta]';
COMMENT ON COLUMN fi.acdocp.pre_mon2 IS 'WPRICE — Price in Transaction Currency [pretium moneta]';
COMMENT ON COLUMN fi.acdocp.sum_mon_cns IS 'WSL — Amount in Transaction Currency — the primary plan value field [summa moneta consilium]';
COMMENT ON COLUMN fi.acdocp.sum_soc_mon IS 'HSL — Amount in Company Code Currency [summa codex societatis moneta]';
COMMENT ON COLUMN fi.acdocp.sum_mon IS 'KSL — Amount in Global Currency [summa moneta]';
COMMENT ON COLUMN fi.acdocp.sum_mon2 IS 'OSL — Amount in Freely Defined Currency 1 [summa moneta]';
COMMENT ON COLUMN fi.acdocp.aes_qnt IS 'VMSL — Valuation quantity [aestimatio quantitas]';
COMMENT ON COLUMN fi.acdocp.rfr_qnt IS 'RMSL — Reference quantity [referentia quantitas]';
COMMENT ON COLUMN fi.acdocp.mgn IS 'LOSGR — Lot Size for Product Costing [magnitudo]';
COMMENT ON COLUMN fi.acdocp.ins_per IS 'POPER — Posting period [inscriptio periodus]';
COMMENT ON COLUMN fi.acdocp.din_doc IS 'BUDAT — Posting Date in the Document [dies inscriptionis documentum]';
COMMENT ON COLUMN fi.acdocp.anf IS 'PERIV — Fiscal Year Variant [annus fiscalis]';
COMMENT ON COLUMN fi.acdocp.per_ann IS 'FISCYEARPER — Period/Year [periodus annus]';
COMMENT ON COLUMN fi.acdocp.rfr_die_tsc IS 'DABRZ — Reference date for settlement [referentia dies transactio]';

CREATE TABLE IF NOT EXISTS fi.acdocu (
  cli char(3),
  lbr varchar(2),
  anf varchar(4),
  ndo varchar(10),
  ins_pos_doc varchar(6),
  tbr_cts_doc varchar(4),
  vrs_fin_efc varchar(3),
  soc_uni_ins varchar(6),
  uni varchar(10),
  cts varchar(10),
  rat_num_cts varchar(10),
  pos_tbr varchar(10),
  pos_scs_soc varchar(10),
  csm varchar(10),
  clu varchar(10),
  afn varchar(16),
  ang varchar(4),
  amd varchar(4),
  seg varchar(10),
  soc_scs varchar(6),
  scs_clu varchar(10),
  scs_seg varchar(10),
  tbr varchar(4),
  gen_ins_mon varchar(4),
  rfr varchar(5),
  rfr_ndo varchar(10),
  usr_nom varchar(12),
  mon varchar(5),
  soc_mon varchar(5),
  cts_mon varchar(5),
  sum_mon numeric(23,2),
  sum_soc_mon numeric(23,2),
  sum_cts_mon numeric(23,2),
  qnt numeric(23,3),
  dbt_crd_idx varchar(1),
  ins_per varchar(3),
  din_doc date,
  per_ann varchar(7),
  anf2 varchar(2),
  die_doc date,
  tmp_frm numeric(15,0),
  CONSTRAINT acdocu_pk PRIMARY KEY (cli, lbr, anf, ndo, ins_pos_doc)
);
COMMENT ON TABLE fi.acdocu IS 'ACDOCU — Universal Journal Entry Line Items — Consolidation — the unified/consolidation-journal companion to the ACDOCA actuals spine already defined in this repo, holding group-close (SAP S/4HANA for group reporting) consolidated line items in the same universal-journal shape as ACDOCA/ACDOCP. Used for intercompany elimination, currency translation, and consolidation-of-investment postings that produce the group-level financial statements. SAP''s real table carries roughly 106 fields (source: saplearners.com field listing, corroborated by SAP Community descriptions of the S/4HANA Group Reporting univer';
COMMENT ON COLUMN fi.acdocu.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN fi.acdocu.lbr IS 'RLDNR — Ledger in General Ledger Accounting — the consolidation ledger this line belongs to [liber]';
COMMENT ON COLUMN fi.acdocu.anf IS 'RYEAR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.acdocu.ndo IS 'DOCNR — Document Number [numerus documenti]';
COMMENT ON COLUMN fi.acdocu.ins_pos_doc IS 'DOCLN — Posting Item / Document Line Number [inscriptio positio documentum]';
COMMENT ON COLUMN fi.acdocu.tbr_cts_doc IS 'RDIMEN — Consolidation Dimension — the consolidation chart of accounts/group structure this document belongs to [tabula rationum coetus documentum]';
COMMENT ON COLUMN fi.acdocu.vrs_fin_efc IS 'RVERS — Version — the consolidation end-result version (actual, plan, forecast at the group level) [versio finis effectus]';
COMMENT ON COLUMN fi.acdocu.soc_uni_ins IS 'RCOMP — Company — the consolidation unit/company posting this line [societas unitas inscriptio]';
COMMENT ON COLUMN fi.acdocu.uni IS 'RBUNIT — Consolidation Unit [unitas]';
COMMENT ON COLUMN fi.acdocu.cts IS 'RCONGR — Consolidation Group [coetus]';
COMMENT ON COLUMN fi.acdocu.rat_num_cts IS 'RACCT — Account Number — the group/consolidation account this line posts against [ratio numerus coetus]';
COMMENT ON COLUMN fi.acdocu.pos_tbr IS 'RITCLG — FS Item — the financial-statement item in the consolidation chart of accounts [positio tabula rationum]';
COMMENT ON COLUMN fi.acdocu.pos_scs_soc IS 'RITEM — Sub-item — the consolidation sub-item (e.g. partner company for elimination detail) [positio socius societas]';
COMMENT ON COLUMN fi.acdocu.csm IS 'RCNTR — Cost Center [centrum sumptus]';
COMMENT ON COLUMN fi.acdocu.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN fi.acdocu.afn IS 'RFAREA — Functional Area [area functionis]';
COMMENT ON COLUMN fi.acdocu.ang IS 'RBUSA — Business Area [area negotii]';
COMMENT ON COLUMN fi.acdocu.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN fi.acdocu.seg IS 'SEGMENT — Segment for Segmental Reporting [segmentum]';
COMMENT ON COLUMN fi.acdocu.soc_scs IS 'RASSC — Company ID of Trading/Consolidation Partner — the intercompany partner for elimination [societas socius]';
COMMENT ON COLUMN fi.acdocu.scs_clu IS 'PPRCTR — Partner Profit Center [socius centrum lucri]';
COMMENT ON COLUMN fi.acdocu.scs_seg IS 'PSEGMENT — Partner Segment for Segmental Reporting [socius segmentum]';
COMMENT ON COLUMN fi.acdocu.tbr IS 'KTOPL — Chart of Accounts [tabula rationum]';
COMMENT ON COLUMN fi.acdocu.gen_ins_mon IS 'BTTYPE — Business Transaction Type — identifies the consolidation posting type (e.g. IC elimination, currency translation, investment consolidation) [genus inscriptio moneta]';
COMMENT ON COLUMN fi.acdocu.rfr IS 'AWTYP — Reference procedure [referentia]';
COMMENT ON COLUMN fi.acdocu.rfr_ndo IS 'AWREF — Reference document number [referentia numerus documenti]';
COMMENT ON COLUMN fi.acdocu.usr_nom IS 'USNAM — User Name [usor nomen]';
COMMENT ON COLUMN fi.acdocu.mon IS 'RWCUR — Transaction Currency [moneta]';
COMMENT ON COLUMN fi.acdocu.soc_mon IS 'RHCUR — Company Code / Local Currency [codex societatis moneta]';
COMMENT ON COLUMN fi.acdocu.cts_mon IS 'RKCUR — Group Currency [coetus moneta]';
COMMENT ON COLUMN fi.acdocu.sum_mon IS 'TSL — Amount in Transaction Currency [summa moneta]';
COMMENT ON COLUMN fi.acdocu.sum_soc_mon IS 'HSL — Amount in Local (Company Code) Currency [summa codex societatis moneta]';
COMMENT ON COLUMN fi.acdocu.sum_cts_mon IS 'KSL — Amount in Group Currency — the primary consolidated reporting value [summa coetus moneta]';
COMMENT ON COLUMN fi.acdocu.qnt IS 'MSL — Quantity [quantitas]';
COMMENT ON COLUMN fi.acdocu.dbt_crd_idx IS 'DRCRK — Debit/Credit Indicator [debitum creditum index]';
COMMENT ON COLUMN fi.acdocu.ins_per IS 'POPER — Posting period [inscriptio periodus]';
COMMENT ON COLUMN fi.acdocu.din_doc IS 'BUDAT — Posting Date in the Document [dies inscriptionis documentum]';
COMMENT ON COLUMN fi.acdocu.per_ann IS 'FISCYEARPER — Period/Year [periodus annus]';
COMMENT ON COLUMN fi.acdocu.anf2 IS 'PERIV — Fiscal Year Variant [annus fiscalis]';
COMMENT ON COLUMN fi.acdocu.die_doc IS 'CPUDT — Day On Which Accounting Document Was Entered [dies documentum]';
COMMENT ON COLUMN fi.acdocu.tmp_frm IS 'TIMESTAMP — UTC Time Stamp in Short Form (YYYYMMDDhhmmss) [tempus forma]';

CREATE TABLE IF NOT EXISTS fi.anea (
  cli char(3),
  soc varchar(4),
  ptm_num varchar(12),
  ptm varchar(4),
  anf varchar(4),
  ord_num_ptm varchar(5),
  dmn_are varchar(2),
  ptm_ann varchar(4),
  ptm2 varchar(4),
  val numeric(13,2),
  invzv numeric(13,2),
  dmn numeric(13,2),
  dmn2 numeric(13,2),
  dmn3 numeric(13,2),
  mafav numeric(13,2),
  dmn4 numeric(13,2),
  ann_val numeric(13,2),
  ann numeric(13,2),
  dmn_ann numeric(13,2),
  dmn_ann2 numeric(13,2),
  dmn_ann3 numeric(13,2),
  ann2 numeric(13,2),
  aufnl numeric(13,2),
  ptm3 numeric(13,2),
  idx_gen_tbl varchar(1),
  ptm4 numeric(13,2),
  val2 numeric(13,2),
  CONSTRAINT anea_pk PRIMARY KEY (cli, soc, ptm_num, ptm, anf, ord_num_ptm, dmn_are)
);
COMMENT ON TABLE fi.anea IS 'ANEA — Asset Line Items for Proportional Values — the proportional (time-apportioned) cumulative and annual depreciation-area values attached to a specific ANEP line item, used chiefly for mid-year retirements and transfers where only part of the year''s depreciation, revaluation, or reserve movement is attributable. Keyed one-to-one with an ANEP row (BUKRS/ANLN1/ANLN2/GJAHR/LNRAN/AFABE), it supplies the proportional figures (e.g. revenue and cost of retirement, ERLBT/VERKO) that feed the gain/loss postings on retirement — those postings are what ultimately hit the P&L and asset-disposal accounts in A';
COMMENT ON COLUMN fi.anea.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.anea.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.anea.ptm_num IS 'ANLN1 — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN fi.anea.ptm IS 'ANLN2 — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN fi.anea.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.anea.ord_num_ptm IS 'LNRAN — Sequence number of asset line items in fiscal year [ordo numerus patrimonium]';
COMMENT ON COLUMN fi.anea.dmn_are IS 'AFABE — Real depreciation area [deminutio area]';
COMMENT ON COLUMN fi.anea.ptm_ann IS 'ZUJHR — Asset acquisition year (currently not used) [patrimonium annus]';
COMMENT ON COLUMN fi.anea.ptm2 IS 'ZUCOD — Sub-classification of asset acquisitions (currently not used) [patrimonium]';
COMMENT ON COLUMN fi.anea.val IS 'AUFWV — Proportional cumulative revaluation on replacement value [valor]';
COMMENT ON COLUMN fi.anea.invzv IS 'INVZV — Proportional cumulative investment grants';
COMMENT ON COLUMN fi.anea.dmn IS 'NAFAV — Proportional accumulated ordinary depreciation [deminutio]';
COMMENT ON COLUMN fi.anea.dmn2 IS 'SAFAV — Proportional cumulative special depreciation [deminutio]';
COMMENT ON COLUMN fi.anea.dmn3 IS 'AAFAV — Proportional cumulative unplanned depreciation [deminutio]';
COMMENT ON COLUMN fi.anea.mafav IS 'MAFAV — Proportional cumulative transfer of reserves';
COMMENT ON COLUMN fi.anea.dmn4 IS 'AUFNV — Proportional cum. revaluation on ordinary depreciation [deminutio]';
COMMENT ON COLUMN fi.anea.ann_val IS 'AUFWL — Proportional revaluation for the year on replacement value [annus valor]';
COMMENT ON COLUMN fi.anea.ann IS 'INVZL — Proportional investment grant for the year [annus]';
COMMENT ON COLUMN fi.anea.dmn_ann IS 'NAFAL — Proportional ordinary depreciation for the year [deminutio annus]';
COMMENT ON COLUMN fi.anea.dmn_ann2 IS 'SAFAL — Proportional special depreciation for the year [deminutio annus]';
COMMENT ON COLUMN fi.anea.dmn_ann3 IS 'AAFAL — Proportional unplanned depreciation for the year [deminutio annus]';
COMMENT ON COLUMN fi.anea.ann2 IS 'MAFAL — Proportional transfer of reserves for the year [annus]';
COMMENT ON COLUMN fi.anea.aufnl IS 'AUFNL — Proportional revaluation of annual ordinary dep.';
COMMENT ON COLUMN fi.anea.ptm3 IS 'ERLBT — Revenue from asset sale [patrimonium]';
COMMENT ON COLUMN fi.anea.idx_gen_tbl IS 'ANUPD — Indicator: Type of change to table [index genus tabula]';
COMMENT ON COLUMN fi.anea.ptm4 IS 'VERKO — Costs from asset retirement [patrimonium]';
COMMENT ON COLUMN fi.anea.val2 IS 'SANWV — Prop. statistical acquisition value retired [valor]';

CREATE TABLE IF NOT EXISTS fi.anek (
  cli char(3),
  soc varchar(4),
  ptm_num varchar(12),
  ptm varchar(4),
  anf varchar(4),
  ord_num_ptm varchar(5),
  ddc_doc date,
  din_doc date,
  per varchar(2),
  die_doc date,
  tmp time,
  die_ult_doc date,
  die_ult_doc2 date,
  usr_nom varchar(12),
  cod varchar(20),
  num_soc_ins varchar(16),
  rfr_ndo varchar(16),
  ndo varchar(10),
  doc_anf varchar(4),
  pos_txt varchar(50),
  qnt numeric(13,3),
  men varchar(3),
  ptm_num2 varchar(12),
  ptm2 varchar(4),
  idx_gen_tbl varchar(1),
  glvor varchar(4),
  soc_sng varchar(6),
  sng_ang varchar(4),
  dtb_cts varchar(3),
  cmp varchar(3),
  ins_per_tsc varchar(2),
  obi_gen_tsc varchar(2),
  obi varchar(20),
  asg_num varchar(18),
  trb_vdt_cod varchar(2),
  dem_num varchar(10),
  pos_num_dem varchar(5),
  mat_num varchar(18),
  cmp2 varchar(5),
  rfr_ndo2 varchar(10),
  num_pos_doc varchar(3),
  ptm_val_die date,
  xantei varchar(1),
  rfr varchar(5),
  rfr2 varchar(10),
  awsys varchar(10),
  scs_soc varchar(4),
  gen_lbr varchar(4),
  lbr_cts varchar(4),
  document_uuid bytea,
  transaction_uuid bytea,
  CONSTRAINT anek_pk PRIMARY KEY (cli, soc, ptm_num, ptm, anf, ord_num_ptm)
);
COMMENT ON TABLE fi.anek IS 'ANEK — Document Header Asset Posting — the header of an asset accounting document, one row per asset business transaction (acquisition, retirement, transfer, depreciation posting run) carrying document date, posting date, period, user, transaction type and the reference to the originating purchasing or accounting document. This is the asset subledger''s own journal header and is the FI-AA counterpart of BKPF: BELNR/BUZEI on the paired ANEP line items point back to the accounting document that also posted to BSEG and, in S/4HANA, to ACDOCA — any asset document in ANEK that lacks a matching ACDOCA/BKPF ';
COMMENT ON COLUMN fi.anek.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.anek.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.anek.ptm_num IS 'ANLN1 — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN fi.anek.ptm IS 'ANLN2 — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN fi.anek.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.anek.ord_num_ptm IS 'LNRAN — Sequence number of asset line items in fiscal year [ordo numerus patrimonium]';
COMMENT ON COLUMN fi.anek.ddc_doc IS 'BLDAT — Document Date in Document [dies documenti documentum]';
COMMENT ON COLUMN fi.anek.din_doc IS 'BUDAT — Posting Date in the Document [dies inscriptionis documentum]';
COMMENT ON COLUMN fi.anek.per IS 'MONAT — Fiscal Period [periodus]';
COMMENT ON COLUMN fi.anek.die_doc IS 'CPUDT — Day On Which Accounting Document Was Entered [dies documentum]';
COMMENT ON COLUMN fi.anek.tmp IS 'CPUTM — Time of Entry [tempus]';
COMMENT ON COLUMN fi.anek.die_ult_doc IS 'AEDAT — Date of the Last Document Change by Transaction [dies ultimus documentum]';
COMMENT ON COLUMN fi.anek.die_ult_doc2 IS 'UPDDT — Date of the Last Document Update [dies ultimus documentum]';
COMMENT ON COLUMN fi.anek.usr_nom IS 'USNAM — User name [usor nomen]';
COMMENT ON COLUMN fi.anek.cod IS 'TCODE — Transaction Code [codex]';
COMMENT ON COLUMN fi.anek.num_soc_ins IS 'BVORG — Number of Cross-Company Code Posting Transaction [numerus codex societatis inscriptio]';
COMMENT ON COLUMN fi.anek.rfr_ndo IS 'XBLNR — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN fi.anek.ndo IS 'STBLG — Reverse Document Number [numerus documenti]';
COMMENT ON COLUMN fi.anek.doc_anf IS 'STJAH — Reverse document fiscal year [documentum annus fiscalis]';
COMMENT ON COLUMN fi.anek.pos_txt IS 'SGTXT — Item Text [positio textus]';
COMMENT ON COLUMN fi.anek.qnt IS 'MENGE — Quantity [quantitas]';
COMMENT ON COLUMN fi.anek.men IS 'MEINS — Base Unit of Measure [mensura]';
COMMENT ON COLUMN fi.anek.ptm_num2 IS 'ANLU1 — Asset number acquiring/retiring asset in transfer [patrimonium numerus]';
COMMENT ON COLUMN fi.anek.ptm2 IS 'ANLU2 — Subnumber of receiving/sending asset in transfer [patrimonium]';
COMMENT ON COLUMN fi.anek.idx_gen_tbl IS 'ANUPD — Indicator: Type of change to table [index genus tabula]';
COMMENT ON COLUMN fi.anek.glvor IS 'GLVOR — Business Transaction';
COMMENT ON COLUMN fi.anek.soc_sng IS 'VBUND — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN fi.anek.sng_ang IS 'PARGB — Trading partner''s business area [socius negotiationis area negotii]';
COMMENT ON COLUMN fi.anek.dtb_cts IS 'BUREG — Distribution rule group [distributio coetus]';
COMMENT ON COLUMN fi.anek.cmp IS 'AUGLZ — Unused field length 3 [campus]';
COMMENT ON COLUMN fi.anek.ins_per_tsc IS 'ABRBUP — Posting period of settlement [inscriptio periodus transactio]';
COMMENT ON COLUMN fi.anek.obi_gen_tsc IS 'OBART — Object type of forwarding object at settlement [obiectum genus transactio]';
COMMENT ON COLUMN fi.anek.obi IS 'OBJID — Forwarding object nr. [obiectum]';
COMMENT ON COLUMN fi.anek.asg_num IS 'ZUONR — Assignment Number [assignatio numerus]';
COMMENT ON COLUMN fi.anek.trb_vdt_cod IS 'MWSKZ — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN fi.anek.dem_num IS 'EBELN — Purchasing Document Number [documentum emptionis numerus]';
COMMENT ON COLUMN fi.anek.pos_num_dem IS 'EBELP — Item Number of Purchasing Document [positio numerus documentum emptionis]';
COMMENT ON COLUMN fi.anek.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN fi.anek.cmp2 IS 'AUGLN — Reserve Field [campus]';
COMMENT ON COLUMN fi.anek.rfr_ndo2 IS 'BELNR — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN fi.anek.num_pos_doc IS 'BUZEI — Number of Line Item Within Accounting Document [numerus positio documentum]';
COMMENT ON COLUMN fi.anek.ptm_val_die IS 'BZDAT — Asset value date [patrimonium valor dies]';
COMMENT ON COLUMN fi.anek.xantei IS 'XANTEI — Ind: Post proportional values automatically';
COMMENT ON COLUMN fi.anek.rfr IS 'AWTYP — Reference Transaction [referentia]';
COMMENT ON COLUMN fi.anek.rfr2 IS 'AWORG — Reference Organizational Units [referentia]';
COMMENT ON COLUMN fi.anek.awsys IS 'AWSYS — Logical System';
COMMENT ON COLUMN fi.anek.scs_soc IS 'PBUKR — Partner Company Code [socius codex societatis]';
COMMENT ON COLUMN fi.anek.gen_lbr IS 'VORGN — Transaction Type for General Ledger [genus liber]';
COMMENT ON COLUMN fi.anek.lbr_cts IS 'LDGRP — Ledger Group [liber coetus]';
COMMENT ON COLUMN fi.anek.document_uuid IS 'DOCUMENT_UUID — 16 Byte UUID in 16 Bytes (Raw Format)';
COMMENT ON COLUMN fi.anek.transaction_uuid IS 'TRANSACTION_UUID — 16 Byte UUID in 16 Bytes (Raw Format)';

CREATE TABLE IF NOT EXISTS fi.anep (
  cli char(3),
  soc varchar(4),
  ptm_num varchar(12),
  ptm varchar(4),
  anf varchar(4),
  ord_num_ptm varchar(5),
  dmn_are varchar(2),
  ptm_ann varchar(4),
  ptm2 varchar(4),
  dmn_per varchar(3),
  ndo varchar(10),
  num_pos_doc varchar(3),
  ptm_val_die date,
  ptm_gen varchar(3),
  idx_dmn varchar(1),
  sum numeric(13,2),
  dmn numeric(13,2),
  dmn2 numeric(13,2),
  usu numeric(13,2),
  idx varchar(1),
  idx_ins_sum varchar(1),
  ord_num_ptm2 varchar(5),
  idx_gen_tbl varchar(1),
  num_cpn_ptm varchar(5),
  CONSTRAINT anep_pk PRIMARY KEY (cli, soc, ptm_num, ptm, anf, ord_num_ptm, dmn_are)
);
COMMENT ON TABLE fi.anep IS 'ANEP — Asset Line Items — the depreciation-area-level value movements for an asset transaction (amount posted, ordinary/special depreciation, interest on the transaction), one row per ANEK header per real depreciation area, keyed by BUKRS/ANLN1/ANLN2/GJAHR/LNRAN/AFABE. ANEP is where an asset posting actually carries its amounts: BELNR/BUZEI tie each row to the accounting document that also hit BSEG and ACDOCA, and the depreciation-area split here (AFABE) is what must sum, area by area, to the annual balances carried in ANLC — a break between ANEP''s postings and ACDOCA''s asset reconciliation-account b';
COMMENT ON COLUMN fi.anep.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.anep.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.anep.ptm_num IS 'ANLN1 — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN fi.anep.ptm IS 'ANLN2 — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN fi.anep.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.anep.ord_num_ptm IS 'LNRAN — Sequence number of asset line items in fiscal year [ordo numerus patrimonium]';
COMMENT ON COLUMN fi.anep.dmn_are IS 'AFABE — Real depreciation area [deminutio area]';
COMMENT ON COLUMN fi.anep.ptm_ann IS 'ZUJHR — Asset acquisition year (currently not used) [patrimonium annus]';
COMMENT ON COLUMN fi.anep.ptm2 IS 'ZUCOD — Sub-classification of asset acquisitions (currently not used) [patrimonium]';
COMMENT ON COLUMN fi.anep.dmn_per IS 'PERAF — Depreciation calculation period [deminutio periodus]';
COMMENT ON COLUMN fi.anep.ndo IS 'BELNR — Accounting Document Number [numerus documenti]';
COMMENT ON COLUMN fi.anep.num_pos_doc IS 'BUZEI — Number of Line Item Within Accounting Document [numerus positio documentum]';
COMMENT ON COLUMN fi.anep.ptm_val_die IS 'BZDAT — Asset value date [patrimonium valor dies]';
COMMENT ON COLUMN fi.anep.ptm_gen IS 'BWASL — Asset Transaction Type [patrimonium genus]';
COMMENT ON COLUMN fi.anep.idx_dmn IS 'XAFAR — Indicator: Errors in depreciation [index deminutio]';
COMMENT ON COLUMN fi.anep.sum IS 'ANBTR — Amount posted [summa]';
COMMENT ON COLUMN fi.anep.dmn IS 'NAFAB — Ordinary depreciation on transactions [deminutio]';
COMMENT ON COLUMN fi.anep.dmn2 IS 'SAFAB — Special depreciation on transactions [deminutio]';
COMMENT ON COLUMN fi.anep.usu IS 'ZINSB — Interest on transaction [usura]';
COMMENT ON COLUMN fi.anep.idx IS 'XANTW — Indicator: Proportional values posted automatically [index]';
COMMENT ON COLUMN fi.anep.idx_ins_sum IS 'XAWBT — Indicator: Different posting amount entered [index inscriptio summa]';
COMMENT ON COLUMN fi.anep.ord_num_ptm2 IS 'LNSAN — Sequence number of reversed asset line items [ordo numerus patrimonium]';
COMMENT ON COLUMN fi.anep.idx_gen_tbl IS 'ANUPD — Indicator: Type of change to table [index genus tabula]';
COMMENT ON COLUMN fi.anep.num_cpn_ptm IS 'AUGLN — Current number of the clearing asset line item [numerus compensatio patrimonium]';

CREATE TABLE IF NOT EXISTS fi.anla (
  cli char(3),
  soc varchar(4),
  ptm_num varchar(12),
  ptm varchar(4),
  ptm_cls varchar(8),
  ptm_num2 varchar(8),
  ptm2 varchar(5),
  nom_psn_cre varchar(12),
  die_tbl_cre date,
  nom_psn_mut varchar(12),
  mut date,
  idx_rat varchar(1),
  idx_ptm varchar(1),
  ptm3 varchar(4),
  rat varchar(8),
  ptm_pos_tsc varchar(1),
  ptm_ctg varchar(1),
  anf_pri varchar(4),
  per_pri varchar(3),
  ptm_val_die date,
  ptm_die date,
  ptm_val_die2 date,
  die date,
  die2 date,
  ptm_mem_die date,
  cts varchar(4),
  cts2 varchar(4),
  cts3 varchar(4),
  cts4 varchar(4),
  ptm_num3 varchar(12),
  clv_asg varchar(3),
  idx varchar(1),
  idx_ptm2 varchar(1),
  rat_num_ven varchar(10),
  ptm_ptr_org varchar(3),
  nom_ptm_ven varchar(30),
  ptm4 varchar(30),
  idx2 varchar(1),
  ptm5 varchar(12),
  ptm6 varchar(4),
  die_ptm date,
  anf varchar(4),
  val numeric(13,2),
  prd numeric(5,2),
  prp_num varchar(16),
  mnd varchar(12),
  men varchar(3),
  qnt numeric(13,3),
  ptm_gen_nom varchar(15),
  csa varchar(2),
  idx3 varchar(1),
  ult_die date,
  invzu varchar(15),
  clv varchar(4),
  net_trb_val varchar(1),
  net_trb_val2 numeric(13,2),
  val2 numeric(13,2),
  soc_sng varchar(6),
  lng_clv char(1),
  ptm_dsc varchar(50),
  ptm_dsc2 varchar(50),
  soc2 varchar(10),
  die3 date,
  die4 date,
  ini_die date,
  lejar varchar(3),
  leper varchar(3),
  sol varchar(3),
  sol_soc numeric(13,2),
  idx_ptm3 varchar(1),
  idx_gen_tbl varchar(1),
  ult_doc_ins varchar(10),
  idx4 varchar(1),
  obi_num varchar(22),
  gen varchar(2),
  lvors varchar(1),
  cts5 varchar(8),
  eop_prp varchar(8),
  idx_val varchar(1),
  ptm7 varchar(1),
  idx_ptm_cts varchar(1),
  mcoa1 varchar(30),
  ptm8 varchar(1),
  nsr varchar(18),
  csa2 varchar(5),
  die_ult date,
  CONSTRAINT anla_pk PRIMARY KEY (cli, soc, ptm_num, ptm)
);
COMMENT ON TABLE fi.anla IS 'ANLA — Asset Master Record Segment — fixed asset master data: class, capitalization date, acquisition, leasing, and land-register attributes.';
COMMENT ON COLUMN fi.anla.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.anla.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.anla.ptm_num IS 'ANLN1 — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN fi.anla.ptm IS 'ANLN2 — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN fi.anla.ptm_cls IS 'ANLKL — Asset Class [patrimonium classis]';
COMMENT ON COLUMN fi.anla.ptm_num2 IS 'GEGST — Technical asset number [patrimonium numerus]';
COMMENT ON COLUMN fi.anla.ptm2 IS 'ANLAR — Asset types [patrimonium]';
COMMENT ON COLUMN fi.anla.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN fi.anla.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN fi.anla.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN fi.anla.mut IS 'AEDAT — Changed on [mutatus]';
COMMENT ON COLUMN fi.anla.idx_rat IS 'XLOEV — Indicator: Account marked for deletion? [index ratio]';
COMMENT ON COLUMN fi.anla.idx_ptm IS 'XSPEB — Indicator: Asset Locked to Acquisition Postings [index patrimonium]';
COMMENT ON COLUMN fi.anla.ptm3 IS 'FELEI — Screen layout for Asset Accounting [patrimonium]';
COMMENT ON COLUMN fi.anla.rat IS 'KTOGR — Account determination [ratio]';
COMMENT ON COLUMN fi.anla.ptm_pos_tsc IS 'XOPVW — Asset under construct. with line item settlement [patrimonium positio transactio]';
COMMENT ON COLUMN fi.anla.ptm_ctg IS 'ANLTP — Asset Category [patrimonium categoria]';
COMMENT ON COLUMN fi.anla.anf_pri IS 'ZUJHR — Fiscal year in which first acquisition was posted [annus fiscalis primus]';
COMMENT ON COLUMN fi.anla.per_pri IS 'ZUPER — Period in which first acquisition was posted [periodus primus]';
COMMENT ON COLUMN fi.anla.ptm_val_die IS 'ZUGDT — Asset value date of the first posting [patrimonium valor dies]';
COMMENT ON COLUMN fi.anla.ptm_die IS 'AKTIV — Asset capitalization date [patrimonium dies]';
COMMENT ON COLUMN fi.anla.ptm_val_die2 IS 'ABGDT — Asset value date for the last retirement [patrimonium valor dies]';
COMMENT ON COLUMN fi.anla.die IS 'DEAKT — Deactivation date [dies]';
COMMENT ON COLUMN fi.anla.die2 IS 'GPLAB — Planned retirement date [dies]';
COMMENT ON COLUMN fi.anla.ptm_mem_die IS 'BSTDT — Asset purchase order date [patrimonium mandatum emptionis dies]';
COMMENT ON COLUMN fi.anla.cts IS 'ORD41 — Evaluation group 1 [coetus]';
COMMENT ON COLUMN fi.anla.cts2 IS 'ORD42 — Evaluation group 2 [coetus]';
COMMENT ON COLUMN fi.anla.cts3 IS 'ORD43 — Evaluation group 3 [coetus]';
COMMENT ON COLUMN fi.anla.cts4 IS 'ORD44 — Evaluation group 4 [coetus]';
COMMENT ON COLUMN fi.anla.ptm_num3 IS 'ANLUE — Asset super number [patrimonium numerus]';
COMMENT ON COLUMN fi.anla.clv_asg IS 'ZUAWA — Key for sorting according to assignment numbers [clavis assignatio]';
COMMENT ON COLUMN fi.anla.idx IS 'ANEQK — Indicator: Historical management [index]';
COMMENT ON COLUMN fi.anla.idx_ptm2 IS 'ANEQS — Completeness indicator for the asset [index patrimonium]';
COMMENT ON COLUMN fi.anla.rat_num_ven IS 'LIFNR — Account number of vendor (other key word) [ratio numerus venditor]';
COMMENT ON COLUMN fi.anla.ptm_ptr_org IS 'LAND1 — Asset''s country of origin [patrimonium patria origo]';
COMMENT ON COLUMN fi.anla.nom_ptm_ven IS 'LIEFE — Name of asset supplier [nomen patrimonium venditor]';
COMMENT ON COLUMN fi.anla.ptm4 IS 'HERST — Manufacturer of asset [patrimonium]';
COMMENT ON COLUMN fi.anla.idx2 IS 'EIGKZ — Property indicator [index]';
COMMENT ON COLUMN fi.anla.ptm5 IS 'AIBN1 — Original asset that was transferred [patrimonium]';
COMMENT ON COLUMN fi.anla.ptm6 IS 'AIBN2 — Original asset that was transferred [patrimonium]';
COMMENT ON COLUMN fi.anla.die_ptm IS 'AIBDT — Original acquisition date of AuC/ transferred asset [dies patrimonium]';
COMMENT ON COLUMN fi.anla.anf IS 'URJHR — Fiscal year of original acquisition [annus fiscalis]';
COMMENT ON COLUMN fi.anla.val IS 'URWRT — Original acquisition value [valor]';
COMMENT ON COLUMN fi.anla.prd IS 'ANTEI — In-house production percentage [productio]';
COMMENT ON COLUMN fi.anla.prp_num IS 'PROJN — Old: Project number: No longer used --> PS_POSNR [propositum numerus]';
COMMENT ON COLUMN fi.anla.mnd IS 'EAUFN — Investment Order [mandatum]';
COMMENT ON COLUMN fi.anla.men IS 'MEINS — Base Unit of Measure [mensura]';
COMMENT ON COLUMN fi.anla.qnt IS 'MENGE — Quantity [quantitas]';
COMMENT ON COLUMN fi.anla.ptm_gen_nom IS 'TYPBZ — Asset type name [patrimonium genus nomen]';
COMMENT ON COLUMN fi.anla.csa IS 'IZWEK — Reason for investment [causa]';
COMMENT ON COLUMN fi.anla.idx3 IS 'INKEN — Inventory indicator [index]';
COMMENT ON COLUMN fi.anla.ult_die IS 'IVDAT — Last inventory date [ultimus dies]';
COMMENT ON COLUMN fi.anla.invzu IS 'INVZU — Supplementary inventory specifications';
COMMENT ON COLUMN fi.anla.clv IS 'VMGLI — Property classification key [clavis]';
COMMENT ON COLUMN fi.anla.net_trb_val IS 'XVRMW — Manual net worth tax value [netus tributum valor]';
COMMENT ON COLUMN fi.anla.net_trb_val2 IS 'WRTMA — Manual net worth tax value [netus tributum valor]';
COMMENT ON COLUMN fi.anla.val2 IS 'EHWRT — Assessed value [valor]';
COMMENT ON COLUMN fi.anla.soc_sng IS 'VBUND — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN fi.anla.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN fi.anla.ptm_dsc IS 'TXT50 — Asset description [patrimonium descriptio]';
COMMENT ON COLUMN fi.anla.ptm_dsc2 IS 'TXA50 — Additional asset description [patrimonium descriptio]';
COMMENT ON COLUMN fi.anla.soc2 IS 'LEAFI — Leasing company [societas]';
COMMENT ON COLUMN fi.anla.die3 IS 'LVDAT — Leasing agreement date [dies]';
COMMENT ON COLUMN fi.anla.die4 IS 'LKDAT — Leasing agreement notice date [dies]';
COMMENT ON COLUMN fi.anla.ini_die IS 'LEABG — Lease start date [initium dies]';
COMMENT ON COLUMN fi.anla.lejar IS 'LEJAR — Length of lease in years';
COMMENT ON COLUMN fi.anla.leper IS 'LEPER — Length of lease in periods';
COMMENT ON COLUMN fi.anla.sol IS 'LRYTH — Lease payment cycle [solutio]';
COMMENT ON COLUMN fi.anla.sol_soc IS 'LEGEB — Periodic lease payment paid to leasing company/lessor [solutio societas]';
COMMENT ON COLUMN fi.anla.idx_ptm3 IS 'XAKTIV — Indicator: Capitalize fixed asset [index patrimonium]';
COMMENT ON COLUMN fi.anla.idx_gen_tbl IS 'ANUPD — Indicator: Type of change to table [index genus tabula]';
COMMENT ON COLUMN fi.anla.ult_doc_ins IS 'LBLNR — No. of last document with which posting to asset was made [ultimus documentum inscriptio]';
COMMENT ON COLUMN fi.anla.idx4 IS 'AIMMO — Indicator: real estate [index]';
COMMENT ON COLUMN fi.anla.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN fi.anla.gen IS 'LEART — Leasing type [genus]';
COMMENT ON COLUMN fi.anla.lvors IS 'LVORS — Advance payments';
COMMENT ON COLUMN fi.anla.cts5 IS 'GDLGRP — Evaluation group 5 [coetus]';
COMMENT ON COLUMN fi.anla.eop_prp IS 'POSNR — WBS element investment project [elementum operis propositum]';
COMMENT ON COLUMN fi.anla.idx_val IS 'XERWRT — Indicator: Ignore memo value [index valor]';
COMMENT ON COLUMN fi.anla.ptm7 IS 'XAFABCH — Asset acquired used [patrimonium]';
COMMENT ON COLUMN fi.anla.idx_ptm_cts IS 'XANLGR — Indicator: Asset is a group asset [index patrimonium coetus]';
COMMENT ON COLUMN fi.anla.mcoa1 IS 'MCOA1 — Search term for matchcode search';
COMMENT ON COLUMN fi.anla.ptm8 IS 'XINVM — Asset under Construction for Investment Measures [patrimonium]';
COMMENT ON COLUMN fi.anla.nsr IS 'SERNR — Serial number [numerus serialis]';
COMMENT ON COLUMN fi.anla.csa2 IS 'UMWKZ — Reason for environmental investment [causa]';
COMMENT ON COLUMN fi.anla.die_ult IS 'LRVDAT — Date of last revaluation [dies ultimus]';

CREATE TABLE IF NOT EXISTS fi.anlb (
  cli char(3),
  soc varchar(4),
  ptm_num varchar(12),
  ptm varchar(4),
  dmn_are varchar(2),
  die date,
  die2 date,
  nom_psn_cre varchar(12),
  die_tbl_cre date,
  nom_psn_mut varchar(12),
  mut date,
  idx_rat varchar(1),
  idx_rat_ins varchar(1),
  ptm2 varchar(4),
  idx varchar(1),
  val_ptm_sum varchar(1),
  idx_ptm_num varchar(1),
  dmn_ini_die date,
  ini_die_usu date,
  ini_die_dmn date,
  clv varchar(2),
  dmn_clv varchar(4),
  ndjar varchar(3),
  ndper varchar(3),
  dmn_rat numeric(7,4),
  dmn_rat2 numeric(7,4),
  idx2 varchar(5),
  idx3 varchar(5),
  dmn numeric(7,4),
  dmn_clv_ann varchar(4),
  ndurj varchar(3),
  ndurp varchar(3),
  ptm_val numeric(13,2),
  ult_anf_ptm varchar(4),
  per_dmn_ini varchar(3),
  idx_gen_tbl varchar(1),
  aufwtg varchar(2),
  idx_dmn_are varchar(1),
  cts_ptm varchar(12),
  cts_ptm2 varchar(4),
  ann_ptm varchar(4),
  ptm_mns_dmn varchar(3),
  ptm_die date,
  val_die_ult date,
  clv2 varchar(4),
  ult_die date,
  ult_idx varchar(5),
  val numeric(14,11),
  per_dmn_clv varchar(3),
  CONSTRAINT anlb_pk PRIMARY KEY (cli, soc, ptm_num, ptm, dmn_are)
);
COMMENT ON TABLE fi.anlb IS 'ANLB — Depreciation Terms — depreciation-area-level control record for a fixed asset: depreciation key, useful life, start dates, and scrap value, one row per asset per depreciation area per validity period. Anchors to the ANLA asset master via BUKRS/ANLN1/ANLN2 and drives the depreciation postings that land in ACDOCA/ANEP; if the depreciation key or useful life here drifts from what last posted to ACDOCA, planned and posted depreciation diverge and the asset subledger no longer reconciles to the universal journal.';
COMMENT ON COLUMN fi.anlb.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.anlb.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.anlb.ptm_num IS 'ANLN1 — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN fi.anlb.ptm IS 'ANLN2 — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN fi.anlb.dmn_are IS 'AFABE — Real depreciation area [deminutio area]';
COMMENT ON COLUMN fi.anlb.die IS 'BDATU — Date validity ends [dies]';
COMMENT ON COLUMN fi.anlb.die2 IS 'ADATU — Date for beginning of validity [dies]';
COMMENT ON COLUMN fi.anlb.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN fi.anlb.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN fi.anlb.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN fi.anlb.mut IS 'AEDAT — Changed on [mutatus]';
COMMENT ON COLUMN fi.anlb.idx_rat IS 'XLOEV — Indicator: Account marked for deletion? [index ratio]';
COMMENT ON COLUMN fi.anlb.idx_rat_ins IS 'XSPEB — Indicator: Is Account Blocked for Posting? [index ratio inscriptio]';
COMMENT ON COLUMN fi.anlb.ptm2 IS 'FELEI — Screen layout for Asset Accounting [patrimonium]';
COMMENT ON COLUMN fi.anlb.idx IS 'XNEGA — Indicator: Negative values allowed [index]';
COMMENT ON COLUMN fi.anlb.val_ptm_sum IS 'XGWGK — Low-value asset amount and quantity check [valor patrimonium summa]';
COMMENT ON COLUMN fi.anlb.idx_ptm_num IS 'XUNTA — Indicator: Depreciate main asset number totally [index patrimonium numerus]';
COMMENT ON COLUMN fi.anlb.dmn_ini_die IS 'AFABG — Depreciation calculation start date [deminutio initium dies]';
COMMENT ON COLUMN fi.anlb.ini_die_usu IS 'ZINBG — Start date for interest calculation [initium dies usura]';
COMMENT ON COLUMN fi.anlb.ini_die_dmn IS 'SAFBG — Start date for special depreciation [initium dies deminutio]';
COMMENT ON COLUMN fi.anlb.clv IS 'INVSL — Investment support key [clavis]';
COMMENT ON COLUMN fi.anlb.dmn_clv IS 'AFASL — Depreciation key [deminutio clavis]';
COMMENT ON COLUMN fi.anlb.ndjar IS 'NDJAR — Planned useful life in years';
COMMENT ON COLUMN fi.anlb.ndper IS 'NDPER — Planned useful life in periods';
COMMENT ON COLUMN fi.anlb.dmn_rat IS 'NAPRZ — Ordinary depreciation percentage rate [deminutio ratio]';
COMMENT ON COLUMN fi.anlb.dmn_rat2 IS 'SAPRZ — Special depreciation percentage rate [deminutio ratio]';
COMMENT ON COLUMN fi.anlb.idx2 IS 'WBIND — Index series for replacement values [index]';
COMMENT ON COLUMN fi.anlb.idx3 IS 'ALIND — Index series for replacement values by age [index]';
COMMENT ON COLUMN fi.anlb.dmn IS 'APROP — Variable depreciation portion [deminutio]';
COMMENT ON COLUMN fi.anlb.dmn_clv_ann IS 'UMJAR — Depreciation key for the changeover year [deminutio clavis annus]';
COMMENT ON COLUMN fi.anlb.ndurj IS 'NDURJ — Original useful life in years';
COMMENT ON COLUMN fi.anlb.ndurp IS 'NDURP — Original useful life in periods';
COMMENT ON COLUMN fi.anlb.ptm_val IS 'SCHRW — Asset scrap value [patrimonium valor]';
COMMENT ON COLUMN fi.anlb.ult_anf_ptm IS 'LGJAN — Last fiscal year for the annual values in Asset Acct. [ultimus annus fiscalis patrimonium]';
COMMENT ON COLUMN fi.anlb.per_dmn_ini IS 'PERFY — Period scaling in depreciation start year [periodus deminutio initium]';
COMMENT ON COLUMN fi.anlb.idx_gen_tbl IS 'ANUPD — Indicator: Type of change to table [index genus tabula]';
COMMENT ON COLUMN fi.anlb.aufwtg IS 'AUFWTG — Revaluation';
COMMENT ON COLUMN fi.anlb.idx_dmn_are IS 'XAFBE — Indicator: Depreciation area is deactivated [index deminutio area]';
COMMENT ON COLUMN fi.anlb.cts_ptm IS 'ANLGR — Group asset [coetus patrimonium]';
COMMENT ON COLUMN fi.anlb.cts_ptm2 IS 'ANLGR2 — Subnumber of group asset [coetus patrimonium]';
COMMENT ON COLUMN fi.anlb.ann_ptm IS 'VYEAR — Acquisition year of the asset (manually changeable) [annus patrimonium]';
COMMENT ON COLUMN fi.anlb.ptm_mns_dmn IS 'VMNTH — Asset Accounting: Acquis. month (in depreciation area) [patrimonium mensis deminutio]';
COMMENT ON COLUMN fi.anlb.ptm_die IS 'INBDA — Asset Accounting: Date of operating readiness [patrimonium dies]';
COMMENT ON COLUMN fi.anlb.val_die_ult IS 'ABGDAT_B — Value date of last retirement for the depreciation area [valor dies ultimus]';
COMMENT ON COLUMN fi.anlb.clv2 IS 'J_1AARVKEY — Revaluation Key [clavis]';
COMMENT ON COLUMN fi.anlb.ult_die IS 'J_1AALTDAT — Last Revaluation Date [ultimus dies]';
COMMENT ON COLUMN fi.anlb.ult_idx IS 'J_1AALTIDX — Last Index Used [ultimus index]';
COMMENT ON COLUMN fi.anlb.val IS 'SCHRW_PROZ — Scrap Value as Percentage of APC [valor]';
COMMENT ON COLUMN fi.anlb.per_dmn_clv IS 'UMPER — Changeover Period of Depreciation Key [periodus deminutio clavis]';

CREATE TABLE IF NOT EXISTS fi.anlc (
  cli char(3),
  soc varchar(4),
  ptm_num varchar(12),
  ptm varchar(4),
  anf varchar(4),
  dmn_are varchar(2),
  ptm_ann varchar(4),
  ptm2 varchar(4),
  per_ult_dmn varchar(3),
  num_dmn_ins varchar(2),
  idx_dmn varchar(1),
  ini_anf varchar(3),
  ini_anf2 varchar(3),
  ini varchar(3),
  ini2 varchar(3),
  num_uni_dmn numeric(15,0),
  prd numeric(13,2),
  val numeric(13,2),
  kinvz numeric(13,2),
  dmn numeric(13,2),
  dmn2 numeric(13,2),
  dmn3 numeric(13,2),
  kmafa numeric(13,2),
  usu numeric(13,2),
  dmn4 numeric(13,2),
  kanza numeric(13,2),
  trb numeric(13,2),
  val2 numeric(13,2),
  dmn_ann numeric(13,2),
  dmn_ann2 numeric(13,2),
  dmn_ann3 numeric(13,2),
  ann numeric(13,2),
  usu_ann numeric(13,2),
  dmn5 numeric(13,2),
  val3 numeric(13,2),
  dmn_ann4 numeric(13,2),
  dmn_anf numeric(13,2),
  dmn_ann5 numeric(13,2),
  val_dmn_ann numeric(13,2),
  usu_ann2 numeric(13,2),
  dmn6 numeric(13,2),
  ann_ptm numeric(13,2),
  tot numeric(13,2),
  ptm3 numeric(13,2),
  val4 numeric(13,2),
  ann2 numeric(13,2),
  dmn_ann6 numeric(13,2),
  dmn_ann7 numeric(13,2),
  dmn_ann8 numeric(13,2),
  ann3 numeric(13,2),
  usu_ann3 numeric(13,2),
  dmn7 numeric(13,2),
  dmn8 numeric(13,2),
  dmn9 numeric(13,2),
  dmn10 numeric(13,2),
  zusma numeric(13,2),
  val5 numeric(13,2),
  invzv numeric(13,2),
  dmn11 numeric(13,2),
  dmn12 numeric(13,2),
  dmn13 numeric(13,2),
  mafav numeric(13,2),
  dmn14 numeric(13,2),
  ann_val numeric(13,2),
  ann4 numeric(13,2),
  dmn_ann9 numeric(13,2),
  dmn_ann10 numeric(13,2),
  dmn_ann11 numeric(13,2),
  ann5 numeric(13,2),
  aufnl numeric(13,2),
  idx_gen_tbl varchar(1),
  val6 numeric(13,2),
  val_ann numeric(13,2),
  ins_dmn_per varchar(3),
  ins_dmn_per2 varchar(3),
  dmn_ins varchar(1),
  dmn_per varchar(3),
  CONSTRAINT anlc_pk PRIMARY KEY (cli, soc, ptm_num, ptm, anf, dmn_are)
);
COMMENT ON TABLE fi.anlc IS 'ANLC — Asset Value Fields — cumulative and annual asset values (acquisition cost, ordinary/special/unplanned depreciation, revaluation, transfers) by depreciation area and fiscal year, one row per asset per area per year. This is the balance-carrying twin of ANLA/ANLB: it holds the year-end APC and accumulated-depreciation balances that the depreciation area''s ledger must equal, and every posted movement here should trace back to ANEP/ANEK line items and forward to the corresponding G/L balance in ACDOCA/BSEG for the linked asset G/L accounts — a mismatch between ANLC''s cumulative fields and ACDOCA''s';
COMMENT ON COLUMN fi.anlc.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.anlc.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.anlc.ptm_num IS 'ANLN1 — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN fi.anlc.ptm IS 'ANLN2 — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN fi.anlc.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.anlc.dmn_are IS 'AFABE — Real depreciation area [deminutio area]';
COMMENT ON COLUMN fi.anlc.ptm_ann IS 'ZUJHR — Asset acquisition year (currently not used) [patrimonium annus]';
COMMENT ON COLUMN fi.anlc.ptm2 IS 'ZUCOD — Sub-classification of asset acquisitions (currently not used) [patrimonium]';
COMMENT ON COLUMN fi.anlc.per_ult_dmn IS 'AFBLPE — Period in which last depreciation was posted [periodus ultimus deminutio]';
COMMENT ON COLUMN fi.anlc.num_dmn_ins IS 'AFBANZ — Number of depreciation posting runs in the period [numerus deminutio inscriptio]';
COMMENT ON COLUMN fi.anlc.idx_dmn IS 'XAFAR — Indicator: Errors in depreciation [index deminutio]';
COMMENT ON COLUMN fi.anlc.ini_anf IS 'NDABJ — Expired useful life in years at start of the fiscal year [initium annus fiscalis]';
COMMENT ON COLUMN fi.anlc.ini_anf2 IS 'NDABP — Expired useful life in periods at start of fiscal year [initium annus fiscalis]';
COMMENT ON COLUMN fi.anlc.ini IS 'ANDSJ — Yrs Expired up to Fisc.Yr Start from Start of Spec.Dep. [initium]';
COMMENT ON COLUMN fi.anlc.ini2 IS 'ANDSP — Expired useful life in periods during FY from SDep start dat [initium]';
COMMENT ON COLUMN fi.anlc.num_uni_dmn IS 'RSTCK — Number of units depreciated in unit-of-prod. depreciation [numerus unitas deminutio]';
COMMENT ON COLUMN fi.anlc.prd IS 'KANSW — Cumulative acquisition and production costs [productio]';
COMMENT ON COLUMN fi.anlc.val IS 'KAUFW — Cumulative revaluation on the replacement value [valor]';
COMMENT ON COLUMN fi.anlc.kinvz IS 'KINVZ — Cumulative investment grants';
COMMENT ON COLUMN fi.anlc.dmn IS 'KNAFA — Accumulated ordinary depreciation [deminutio]';
COMMENT ON COLUMN fi.anlc.dmn2 IS 'KSAFA — Cumulative special depreciation [deminutio]';
COMMENT ON COLUMN fi.anlc.dmn3 IS 'KAAFA — Cumulative unplanned depreciation [deminutio]';
COMMENT ON COLUMN fi.anlc.kmafa IS 'KMAFA — Cumulative reserves transfer';
COMMENT ON COLUMN fi.anlc.usu IS 'KZINW — Cumulative interest [usura]';
COMMENT ON COLUMN fi.anlc.dmn4 IS 'KAUFN — Cumulative revaluation of ordinary depreciation [deminutio]';
COMMENT ON COLUMN fi.anlc.kanza IS 'KANZA — Cumulative down payments';
COMMENT ON COLUMN fi.anlc.trb IS 'KVOST — Cumulative input tax [tributum]';
COMMENT ON COLUMN fi.anlc.val2 IS 'AUFWP — Planned revaluation on replacement value [valor]';
COMMENT ON COLUMN fi.anlc.dmn_ann IS 'NAFAP — Planned ordinary depreciation for the year [deminutio annus]';
COMMENT ON COLUMN fi.anlc.dmn_ann2 IS 'SAFAP — Planned special depreciation for the year [deminutio annus]';
COMMENT ON COLUMN fi.anlc.dmn_ann3 IS 'AAFAP — Scheduled unplanned depreciation for the year [deminutio annus]';
COMMENT ON COLUMN fi.anlc.ann IS 'MAFAP — Planned transfer of reserves for the year [annus]';
COMMENT ON COLUMN fi.anlc.usu_ann IS 'ZINSP — Interest planned for the year [usura annus]';
COMMENT ON COLUMN fi.anlc.dmn5 IS 'AUFNP — Planned revaluation of accumulated ordinary depreciation [deminutio]';
COMMENT ON COLUMN fi.anlc.val3 IS 'AUFWB — Revaluation posted on replacement value [valor]';
COMMENT ON COLUMN fi.anlc.dmn_ann4 IS 'NAFAG — Ordinary depreciation posted in the current year [deminutio annus]';
COMMENT ON COLUMN fi.anlc.dmn_anf IS 'SAFAG — Special depreciation posted in the current fiscal year [deminutio annus fiscalis]';
COMMENT ON COLUMN fi.anlc.dmn_ann5 IS 'AAFAG — Unplanned depreciation posted for the year [deminutio annus]';
COMMENT ON COLUMN fi.anlc.val_dmn_ann IS 'MAFAG — Acquisition value reducing depreciation posted for the year [valor deminutio annus]';
COMMENT ON COLUMN fi.anlc.usu_ann2 IS 'ZINSG — Interest posted for the year [usura annus]';
COMMENT ON COLUMN fi.anlc.dmn6 IS 'AUFNG — Posted revaluation of accumulated ordinary depreciation [deminutio]';
COMMENT ON COLUMN fi.anlc.ann_ptm IS 'ANSWL — Transactions for the year affecting asset values [annus patrimonium]';
COMMENT ON COLUMN fi.anlc.tot IS 'ABGAN — Total retirements and retiring transfers [summa totalis]';
COMMENT ON COLUMN fi.anlc.ptm3 IS 'ANSAZ — Down payments on asset [patrimonium]';
COMMENT ON COLUMN fi.anlc.val4 IS 'AUFWM — Manual revaluation on replacement value [valor]';
COMMENT ON COLUMN fi.anlc.ann2 IS 'INVZM — Investment grant for the year [annus]';
COMMENT ON COLUMN fi.anlc.dmn_ann6 IS 'NAFAM — Manually planned ordinary depreciation for the year [deminutio annus]';
COMMENT ON COLUMN fi.anlc.dmn_ann7 IS 'SAFAM — Manual special depreciation planned for the year [deminutio annus]';
COMMENT ON COLUMN fi.anlc.dmn_ann8 IS 'AAFAM — Manual unplanned depreciation for the year [deminutio annus]';
COMMENT ON COLUMN fi.anlc.ann3 IS 'MAFAM — Manual transfer of reserves for the year [annus]';
COMMENT ON COLUMN fi.anlc.usu_ann3 IS 'ZINSM — Manual interest planned for the year [usura annus]';
COMMENT ON COLUMN fi.anlc.dmn7 IS 'AUFNM — Manual revaluation of cumulative ordinary depreciation [deminutio]';
COMMENT ON COLUMN fi.anlc.dmn8 IS 'ZUSNA — Write-up on ordinary depreciation [deminutio]';
COMMENT ON COLUMN fi.anlc.dmn9 IS 'ZUSSA — Write-up on special depreciation [deminutio]';
COMMENT ON COLUMN fi.anlc.dmn10 IS 'ZUSAA — Write-up on unplanned depreciation [deminutio]';
COMMENT ON COLUMN fi.anlc.zusma IS 'ZUSMA — Write-up on transferred reserves';
COMMENT ON COLUMN fi.anlc.val5 IS 'AUFWV — Proportional cumulative revaluation on replacement value [valor]';
COMMENT ON COLUMN fi.anlc.invzv IS 'INVZV — Proportional cumulative investment grants';
COMMENT ON COLUMN fi.anlc.dmn11 IS 'NAFAV — Proportional accumulated ordinary depreciation [deminutio]';
COMMENT ON COLUMN fi.anlc.dmn12 IS 'SAFAV — Proportional cumulative special depreciation [deminutio]';
COMMENT ON COLUMN fi.anlc.dmn13 IS 'AAFAV — Proportional cumulative unplanned depreciation [deminutio]';
COMMENT ON COLUMN fi.anlc.mafav IS 'MAFAV — Proportional cumulative transfer of reserves';
COMMENT ON COLUMN fi.anlc.dmn14 IS 'AUFNV — Proportional cum. revaluation on ordinary depreciation [deminutio]';
COMMENT ON COLUMN fi.anlc.ann_val IS 'AUFWL — Proportional revaluation for the year on replacement value [annus valor]';
COMMENT ON COLUMN fi.anlc.ann4 IS 'INVZL — Proportional investment grant for the year [annus]';
COMMENT ON COLUMN fi.anlc.dmn_ann9 IS 'NAFAL — Proportional ordinary depreciation for the year [deminutio annus]';
COMMENT ON COLUMN fi.anlc.dmn_ann10 IS 'SAFAL — Proportional special depreciation for the year [deminutio annus]';
COMMENT ON COLUMN fi.anlc.dmn_ann11 IS 'AAFAL — Proportional unplanned depreciation for the year [deminutio annus]';
COMMENT ON COLUMN fi.anlc.ann5 IS 'MAFAL — Proportional transfer of reserves for the year [annus]';
COMMENT ON COLUMN fi.anlc.aufnl IS 'AUFNL — Proportional revaluation of annual ordinary dep.';
COMMENT ON COLUMN fi.anlc.idx_gen_tbl IS 'ANUPD — Indicator: Type of change to table [index genus tabula]';
COMMENT ON COLUMN fi.anlc.val6 IS 'KSANS — Cumulative statistical acquisition value [valor]';
COMMENT ON COLUMN fi.anlc.val_ann IS 'SANSL — Statistical aquisition value of current year [valor annus]';
COMMENT ON COLUMN fi.anlc.ins_dmn_per IS 'PSTBEG — FI-AA: Posting depreciation as of period xy [inscriptio deminutio periodus]';
COMMENT ON COLUMN fi.anlc.ins_dmn_per2 IS 'PSTEND — FI-AA: Posting depreciation up to period xy [inscriptio deminutio periodus]';
COMMENT ON COLUMN fi.anlc.dmn_ins IS 'PSTCALC — FI-AA: New calculation of depreciation during posting [deminutio inscriptio]';
COMMENT ON COLUMN fi.anlc.dmn_per IS 'PSTPER — FI-AA: Depreciation calculation from period X [deminutio periodus]';

CREATE TABLE IF NOT EXISTS fi.anlh (
  cli char(3),
  soc varchar(4),
  ptm_num varchar(12),
  ult_num varchar(4),
  ult_pos_num varchar(5),
  idx_gen_tbl varchar(1),
  pri varchar(4),
  ptm_num_txt varchar(50),
  CONSTRAINT anlh_pk PRIMARY KEY (cli, soc, ptm_num)
);
COMMENT ON TABLE fi.anlh IS 'ANLH — Main Asset Number — the header record for a main asset number (company code plus main number, independent of subnumber), carrying the last subnumber and line-item counters assigned under it. ANLA''s ANLN1 and the check tables of ANLB/ANLC/ANLZ/ANEK/ANEP/ANEA all resolve through this table, making it the root anchor for every asset-subledger row that must ultimately tie back to the same BUKRS/ANLN1 combination posted in ACDOCA/BSEG asset line items.';
COMMENT ON COLUMN fi.anlh.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.anlh.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.anlh.ptm_num IS 'ANLN1 — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN fi.anlh.ult_num IS 'LUNTN — Last subnumber assigned to this main number [ultimus numerus]';
COMMENT ON COLUMN fi.anlh.ult_pos_num IS 'LANEP — Last line item number assigned [ultimus positio numerus]';
COMMENT ON COLUMN fi.anlh.idx_gen_tbl IS 'ANUPD — Indicator: Type of change to table [index genus tabula]';
COMMENT ON COLUMN fi.anlh.pri IS 'FUNTN — First subnumber assigned [primus]';
COMMENT ON COLUMN fi.anlh.ptm_num_txt IS 'ANLHTXT — Asset main number text [patrimonium numerus textus]';

CREATE TABLE IF NOT EXISTS fi.anlz (
  cli char(3),
  soc varchar(4),
  ptm_num varchar(12),
  ptm varchar(4),
  die date,
  die2 date,
  csm varchar(10),
  ofc varchar(4),
  ang varchar(4),
  act_gen varchar(6),
  vic_ope numeric(3,2),
  ptm2 varchar(1),
  ptm_loc varchar(10),
  mnd varchar(12),
  plan1 varchar(12),
  plan2 varchar(4),
  raumn varchar(8),
  cur_mnd varchar(12),
  prp_num varchar(16),
  cmp varchar(3),
  lcf varchar(30),
  idx_gen_tbl varchar(1),
  trb varchar(15),
  eop_cur_prp varchar(8),
  lcn varchar(15),
  nps varchar(8),
  csm_ptm varchar(10),
  fistl varchar(16),
  geber varchar(10),
  afn varchar(16),
  grant_nbr varchar(20),
  rat varchar(10),
  afn_rat varchar(16),
  rat2 varchar(20),
  rat3 varchar(16),
  clv_obi varchar(8),
  eop varchar(8),
  per varchar(10),
  per_rat varchar(10),
  seg varchar(10),
  clu varchar(10),
  CONSTRAINT anlz_pk PRIMARY KEY (cli, soc, ptm_num, ptm, die)
);
COMMENT ON TABLE fi.anlz IS 'ANLZ — Time-Dependent Asset Allocations — cost centre, plant, business area, location, functional area, fund and profit-centre assignments for an asset, held over validity intervals (ADATU/BDATU) so an asset''s organizational home can change over its life without rewriting ANLA. These allocation fields (KOSTL, PRCTR, SEGMENT, FKBER, GEBER) are exactly the account-assignment dimensions that ACDOCA carries on every line item, so a depreciation or acquisition posting must pick up the ANLZ record valid on the posting date — if ANLZ''s validity-dated cost centre or profit centre doesn''t match what actually ';
COMMENT ON COLUMN fi.anlz.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.anlz.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.anlz.ptm_num IS 'ANLN1 — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN fi.anlz.ptm IS 'ANLN2 — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN fi.anlz.die IS 'BDATU — Date validity ends [dies]';
COMMENT ON COLUMN fi.anlz.die2 IS 'ADATU — Date for beginning of validity [dies]';
COMMENT ON COLUMN fi.anlz.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN fi.anlz.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN fi.anlz.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN fi.anlz.act_gen IS 'LSTAR — Activity Type [actio genus]';
COMMENT ON COLUMN fi.anlz.vic_ope IS 'MSFAK — Multiple-shift factor for multiple shift operation [vicis operatio]';
COMMENT ON COLUMN fi.anlz.ptm2 IS 'XSTIL — Asset shutdown [patrimonium]';
COMMENT ON COLUMN fi.anlz.ptm_loc IS 'STORT — Asset location [patrimonium locus]';
COMMENT ON COLUMN fi.anlz.mnd IS 'CAUFN — Internal order [mandatum]';
COMMENT ON COLUMN fi.anlz.plan1 IS 'PLAN1 — No longer used';
COMMENT ON COLUMN fi.anlz.plan2 IS 'PLAN2 — No longer used';
COMMENT ON COLUMN fi.anlz.raumn IS 'RAUMN — Room';
COMMENT ON COLUMN fi.anlz.cur_mnd IS 'IAUFN — Maintenance order [curatio mandatum]';
COMMENT ON COLUMN fi.anlz.prp_num IS 'IPROJ — Old: Project number : No longer used --> PS_POSNR [propositum numerus]';
COMMENT ON COLUMN fi.anlz.cmp IS 'TPLKZ — Unused field length 3 [campus]';
COMMENT ON COLUMN fi.anlz.lcf IS 'TPLNR — Functional Location [locus functionalis]';
COMMENT ON COLUMN fi.anlz.idx_gen_tbl IS 'ANUPD — Indicator: Type of change to table [index genus tabula]';
COMMENT ON COLUMN fi.anlz.trb IS 'TXJCD — Tax Jurisdiction [tributum]';
COMMENT ON COLUMN fi.anlz.eop_cur_prp IS 'IPSNR — WBS element - maintenance project [elementum operis curatio propositum]';
COMMENT ON COLUMN fi.anlz.lcn IS 'KFZKZ — License plate no. of vehichle [licentia]';
COMMENT ON COLUMN fi.anlz.nps IS 'PERNR — Personnel Number [numerus personae]';
COMMENT ON COLUMN fi.anlz.csm_ptm IS 'KOSTLV — Cost center responsible for asset [centrum sumptus patrimonium]';
COMMENT ON COLUMN fi.anlz.fistl IS 'FISTL — Funds Center';
COMMENT ON COLUMN fi.anlz.geber IS 'GEBER — Fund';
COMMENT ON COLUMN fi.anlz.afn IS 'FKBER — Functional Area [area functionis]';
COMMENT ON COLUMN fi.anlz.grant_nbr IS 'GRANT_NBR — Grant';
COMMENT ON COLUMN fi.anlz.rat IS 'GEBER2 — Fund for APC Account Assignments [ratio]';
COMMENT ON COLUMN fi.anlz.afn_rat IS 'FKBER2 — Functional Area for APC Account Assignments [area functionis ratio]';
COMMENT ON COLUMN fi.anlz.rat2 IS 'GRANT_NBR2 — Grant for APC Account Assignments [ratio]';
COMMENT ON COLUMN fi.anlz.rat3 IS 'FISTL2 — Funds Center for APC Account Assignments [ratio]';
COMMENT ON COLUMN fi.anlz.clv_obi IS 'IMKEY — Internal Key for Real Estate Object [clavis obiectum]';
COMMENT ON COLUMN fi.anlz.eop IS 'PS_PSP_PNR2 — WBS Element (Costs) [elementum operis]';
COMMENT ON COLUMN fi.anlz.per IS 'BUDGET_PD — FM: Budget Period [periodus]';
COMMENT ON COLUMN fi.anlz.per_rat IS 'BUDGET_PD2 — Budget Period for APC Account Assignments [periodus ratio]';
COMMENT ON COLUMN fi.anlz.seg IS 'SEGMENT — Segment for Segmental Reporting [segmentum]';
COMMENT ON COLUMN fi.anlz.clu IS 'PRCTR — Profit Center [centrum lucri]';

CREATE TABLE IF NOT EXISTS fi.bkpf (
  cli char(3),
  soc varchar(4),
  ndo varchar(10),
  anf varchar(4),
  gdo varchar(2),
  ddc_doc date,
  din_doc date,
  per varchar(2),
  die_doc date,
  tmp time,
  die_ult_doc date,
  die_ult_doc2 date,
  die date,
  usr_nom varchar(12),
  cod varchar(20),
  num_soc_ins varchar(16),
  rfr_ndo varchar(16),
  ndo2 varchar(10),
  ndo3 varchar(10),
  doc_anf varchar(4),
  doc_cap_txt varchar(25),
  cvm varchar(5),
  rpm numeric(9,5),
  cvm_cts_mon varchar(5),
  cts_mon_rpm numeric(9,5),
  doc_sta varchar(1),
  idx_doc_net varchar(1),
  trd numeric(13,2),
  idx_doc_per varchar(1),
  glvor varchar(4),
  grx_nom varchar(12),
  doc_nom varchar(40),
  doc_cap varchar(10),
  gdo_doc varchar(2),
  rfr varchar(5),
  rfr_clv varchar(20),
  are varchar(4),
  mon varchar(5),
  cvm_mon varchar(5),
  cvm_mon2 varchar(5),
  rpm_mon numeric(9,5),
  rpm_mon2 numeric(9,5),
  fns_mon varchar(1),
  fns_mon2 varchar(1),
  die_gen_mon varchar(1),
  die_gen_mon2 varchar(1),
  idx_doc_rvs varchar(1),
  die_ins date,
  trb varchar(1),
  mon_gen varchar(2),
  mon_gen2 varchar(2),
  rpm_gen varchar(4),
  rpm_gen2 varchar(4),
  rat_trb varchar(1),
  fns_soc varchar(4),
  idx_mut_grd varchar(1),
  sta_ems varchar(1),
  awsys varchar(10),
  rpm2 numeric(9,5),
  num varchar(10),
  idx_emp_sol varchar(1),
  csa_rvs varchar(2),
  nom_usr_doc varchar(12),
  num2 varchar(4),
  num_fac varchar(3),
  idx_ddc_doc varchar(1),
  rfr_clv_doc varchar(20),
  rfr_clv_doc2 varchar(20),
  rvs varchar(1),
  fac_die date,
  lbr varchar(2),
  lbr_cts varchar(4),
  propmano varchar(13),
  rfr_num varchar(26),
  trb_die date,
  doc varchar(6),
  doc_ins_idx varchar(1),
  doc2 varchar(1),
  doc_idx varchar(1),
  pap varchar(1),
  subset varchar(4),
  rpm_gen3 varchar(4),
  rpm3 numeric(28,14),
  rpm4 numeric(28,14),
  rpm5 numeric(28,14),
  doc_mon varchar(1),
  doc_ctg_sol varchar(2),
  csa varchar(10),
  reg varchar(10),
  csa_rvs2 varchar(1),
  num3 varchar(30),
  usu varchar(4),
  usu_die date,
  ins_die date,
  acl_ins varchar(1),
  mut date,
  ult_mut time,
  gen_sol varchar(1),
  sol_gen varchar(4),
  sol_num varchar(25),
  sol_obx varchar(1),
  num4 varchar(10),
  usr_nom2 varchar(12),
  fac_sol varchar(1),
  idx varchar(1),
  lbr_idx varchar(1),
  sta varchar(2),
  die_tbl date,
  csa_sol varchar(2),
  num_doc_cnd varchar(10),
  idx_fac varchar(1),
  CONSTRAINT bkpf_pk PRIMARY KEY (cli, soc, ndo, anf)
);
COMMENT ON TABLE fi.bkpf IS 'BKPF — Accounting Document Header — one row per FI document (company code, fiscal year, posting/document dates, currency, reference).';
COMMENT ON COLUMN fi.bkpf.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.bkpf.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.bkpf.ndo IS 'BELNR — Accounting Document Number [numerus documenti]';
COMMENT ON COLUMN fi.bkpf.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.bkpf.gdo IS 'BLART — Document Type [genus documenti]';
COMMENT ON COLUMN fi.bkpf.ddc_doc IS 'BLDAT — Document Date in Document [dies documenti documentum]';
COMMENT ON COLUMN fi.bkpf.din_doc IS 'BUDAT — Posting Date in the Document [dies inscriptionis documentum]';
COMMENT ON COLUMN fi.bkpf.per IS 'MONAT — Fiscal Period [periodus]';
COMMENT ON COLUMN fi.bkpf.die_doc IS 'CPUDT — Day On Which Accounting Document Was Entered [dies documentum]';
COMMENT ON COLUMN fi.bkpf.tmp IS 'CPUTM — Time of Entry [tempus]';
COMMENT ON COLUMN fi.bkpf.die_ult_doc IS 'AEDAT — Date of the Last Document Change by Transaction [dies ultimus documentum]';
COMMENT ON COLUMN fi.bkpf.die_ult_doc2 IS 'UPDDT — Date of the Last Document Update [dies ultimus documentum]';
COMMENT ON COLUMN fi.bkpf.die IS 'WWERT — Translation Date [dies]';
COMMENT ON COLUMN fi.bkpf.usr_nom IS 'USNAM — User name [usor nomen]';
COMMENT ON COLUMN fi.bkpf.cod IS 'TCODE — Transaction Code [codex]';
COMMENT ON COLUMN fi.bkpf.num_soc_ins IS 'BVORG — Number of Cross-Company Code Posting Transaction [numerus codex societatis inscriptio]';
COMMENT ON COLUMN fi.bkpf.rfr_ndo IS 'XBLNR — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN fi.bkpf.ndo2 IS 'DBBLG — Recurring Entry Document Number [numerus documenti]';
COMMENT ON COLUMN fi.bkpf.ndo3 IS 'STBLG — Reverse Document Number [numerus documenti]';
COMMENT ON COLUMN fi.bkpf.doc_anf IS 'STJAH — Reverse document fiscal year [documentum annus fiscalis]';
COMMENT ON COLUMN fi.bkpf.doc_cap_txt IS 'BKTXT — Document Header Text [documentum caput textus]';
COMMENT ON COLUMN fi.bkpf.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN fi.bkpf.rpm IS 'KURSF — Exchange rate [ratio permutationis]';
COMMENT ON COLUMN fi.bkpf.cvm_cts_mon IS 'KZWRS — Currency Key for the Group Currency [clavis monetae coetus moneta]';
COMMENT ON COLUMN fi.bkpf.cts_mon_rpm IS 'KZKRS — Group Currency Exchange Rate [coetus moneta ratio permutationis]';
COMMENT ON COLUMN fi.bkpf.doc_sta IS 'BSTAT — Document Status [documentum status]';
COMMENT ON COLUMN fi.bkpf.idx_doc_net IS 'XNETB — Indicator: Document posted net? [index documentum netus]';
COMMENT ON COLUMN fi.bkpf.trd IS 'FRATH — Unplanned delivery costs [traditio]';
COMMENT ON COLUMN fi.bkpf.idx_doc_per IS 'XRUEB — Indicator: Document is posted to a previous period [index documentum periodus]';
COMMENT ON COLUMN fi.bkpf.glvor IS 'GLVOR — Business Transaction';
COMMENT ON COLUMN fi.bkpf.grx_nom IS 'GRPID — Batch Input Session Name [grex nomen]';
COMMENT ON COLUMN fi.bkpf.doc_nom IS 'DOKID — Document Name in the Archive System [documentum nomen]';
COMMENT ON COLUMN fi.bkpf.doc_cap IS 'ARCID — Extract ID Document Header [documentum caput]';
COMMENT ON COLUMN fi.bkpf.gdo_doc IS 'IBLAR — Internal Document Type for Document Control [genus documenti documentum]';
COMMENT ON COLUMN fi.bkpf.rfr IS 'AWTYP — Reference Transaction [referentia]';
COMMENT ON COLUMN fi.bkpf.rfr_clv IS 'AWKEY — Reference Key [referentia clavis]';
COMMENT ON COLUMN fi.bkpf.are IS 'FIKRS — Financial Management Area [area]';
COMMENT ON COLUMN fi.bkpf.mon IS 'HWAER — Local Currency [moneta]';
COMMENT ON COLUMN fi.bkpf.cvm_mon IS 'HWAE2 — Currency Key of Second Local Currency [clavis monetae moneta]';
COMMENT ON COLUMN fi.bkpf.cvm_mon2 IS 'HWAE3 — Currency Key of Third Local Currency [clavis monetae moneta]';
COMMENT ON COLUMN fi.bkpf.rpm_mon IS 'KURS2 — Exchange Rate for the Second Local Currency [ratio permutationis moneta]';
COMMENT ON COLUMN fi.bkpf.rpm_mon2 IS 'KURS3 — Exchange Rate for the Third Local Currency [ratio permutationis moneta]';
COMMENT ON COLUMN fi.bkpf.fns_mon IS 'BASW2 — Source Currency for Currency Translation [fons moneta]';
COMMENT ON COLUMN fi.bkpf.fns_mon2 IS 'BASW3 — Source Currency for Currency Translation [fons moneta]';
COMMENT ON COLUMN fi.bkpf.die_gen_mon IS 'UMRD2 — Translation Date Type for Second Local Currency [dies genus moneta]';
COMMENT ON COLUMN fi.bkpf.die_gen_mon2 IS 'UMRD3 — Translation Date Type for Third Local Currency [dies genus moneta]';
COMMENT ON COLUMN fi.bkpf.idx_doc_rvs IS 'XSTOV — Indicator: Document is flagged for reversal [index documentum reversio]';
COMMENT ON COLUMN fi.bkpf.die_ins IS 'STODT — Planned Date for the Reverse Posting [dies inscriptio]';
COMMENT ON COLUMN fi.bkpf.trb IS 'XMWST — Calculate tax automatically [tributum]';
COMMENT ON COLUMN fi.bkpf.mon_gen IS 'CURT2 — Currency Type of Second Local Currency [moneta genus]';
COMMENT ON COLUMN fi.bkpf.mon_gen2 IS 'CURT3 — Currency Type of Third Local Currency [moneta genus]';
COMMENT ON COLUMN fi.bkpf.rpm_gen IS 'KUTY2 — Exchange Rate Type [ratio permutationis genus]';
COMMENT ON COLUMN fi.bkpf.rpm_gen2 IS 'KUTY3 — Exchange Rate Type [ratio permutationis genus]';
COMMENT ON COLUMN fi.bkpf.rat_trb IS 'XSNET — G/L account amounts entered exclude tax [ratio tributum]';
COMMENT ON COLUMN fi.bkpf.fns_soc IS 'AUSBK — Source Company Code [fons codex societatis]';
COMMENT ON COLUMN fi.bkpf.idx_mut_grd IS 'XUSVR — Indicator: US taxes changed at detail level? [index mutatus gradus]';
COMMENT ON COLUMN fi.bkpf.sta_ems IS 'DUEFL — Status of Data Transfer into Subsequent Release [status emissio]';
COMMENT ON COLUMN fi.bkpf.awsys IS 'AWSYS — Logical System';
COMMENT ON COLUMN fi.bkpf.rpm2 IS 'TXKRS — Exchange Rate for Taxes [ratio permutationis]';
COMMENT ON COLUMN fi.bkpf.num IS 'LOTKZ — Lot Number for Requests [numerus]';
COMMENT ON COLUMN fi.bkpf.idx_emp_sol IS 'XWVOF — Indicator: Customer bill of exchange payment before due date [index emptor solutio]';
COMMENT ON COLUMN fi.bkpf.csa_rvs IS 'STGRD — Reason for Reversal [causa reversio]';
COMMENT ON COLUMN fi.bkpf.nom_usr_doc IS 'PPNAM — Name of User Who Parked this Document [nomen usor documentum]';
COMMENT ON COLUMN fi.bkpf.num2 IS 'BRNCH — Branch Number [numerus]';
COMMENT ON COLUMN fi.bkpf.num_fac IS 'NUMPG — Number of pages of invoice [numerus factura]';
COMMENT ON COLUMN fi.bkpf.idx_ddc_doc IS 'ADISC — Indicator: entry represents a discount document [index deductio documentum]';
COMMENT ON COLUMN fi.bkpf.rfr_clv_doc IS 'XREF1_HD — Reference Key 1 Internal for Document Header [referentia clavis documentum]';
COMMENT ON COLUMN fi.bkpf.rfr_clv_doc2 IS 'XREF2_HD — Reference Key 2 Internal for Document Header [referentia clavis documentum]';
COMMENT ON COLUMN fi.bkpf.rvs IS 'XREVERSAL — Specifies whether doc. is reversal doc. or reversed doc. [reversio]';
COMMENT ON COLUMN fi.bkpf.fac_die IS 'REINDAT — Invoice Receipt Date [factura dies]';
COMMENT ON COLUMN fi.bkpf.lbr IS 'RLDNR — Ledger in General Ledger Accounting [liber]';
COMMENT ON COLUMN fi.bkpf.lbr_cts IS 'LDGRP — Ledger Group [liber coetus]';
COMMENT ON COLUMN fi.bkpf.propmano IS 'PROPMANO — Real Estate Management Mandate';
COMMENT ON COLUMN fi.bkpf.rfr_num IS 'XBLNR_ALT — Alternative Reference Number [referentia numerus]';
COMMENT ON COLUMN fi.bkpf.trb_die IS 'VATDATE — Tax Reporting Date [tributum dies]';
COMMENT ON COLUMN fi.bkpf.doc IS 'DOCCAT — Classification of an FI Document [documentum]';
COMMENT ON COLUMN fi.bkpf.doc_ins_idx IS 'XSPLIT — FI Document Originates from Split Posting (Indicator) [documentum inscriptio index]';
COMMENT ON COLUMN fi.bkpf.doc2 IS 'CASH_ALLOC — Cash-Relevant Document [documentum]';
COMMENT ON COLUMN fi.bkpf.doc_idx IS 'FOLLOW_ON — Follow-on document indicator [documentum index]';
COMMENT ON COLUMN fi.bkpf.pap IS 'XREORG — Doc. Contains Open Item that Was Transferred During Reorg. [positio aperta]';
COMMENT ON COLUMN fi.bkpf.subset IS 'SUBSET — Defines subset of components for the FI/CO interface';
COMMENT ON COLUMN fi.bkpf.rpm_gen3 IS 'KURST — Exchange Rate Type [ratio permutationis genus]';
COMMENT ON COLUMN fi.bkpf.rpm3 IS 'KURSX — Market Data Exchange Rate [ratio permutationis]';
COMMENT ON COLUMN fi.bkpf.rpm4 IS 'KUR2X — Market Data Exchange Rate 2 [ratio permutationis]';
COMMENT ON COLUMN fi.bkpf.rpm5 IS 'KUR3X — Market Data Exchange Rate 3 [ratio permutationis]';
COMMENT ON COLUMN fi.bkpf.doc_mon IS 'XMCA — Document Originates from Multi Currency Accounting [documentum moneta]';
COMMENT ON COLUMN fi.bkpf.doc_ctg_sol IS 'PSOTY — Document category payment requests [documentum categoria solutio]';
COMMENT ON COLUMN fi.bkpf.csa IS 'PSOAK — Reason [causa]';
COMMENT ON COLUMN fi.bkpf.reg IS 'PSOKS — Region [regio]';
COMMENT ON COLUMN fi.bkpf.csa_rvs2 IS 'PSOSG — Reason for reversal - IS-PS requests [causa reversio]';
COMMENT ON COLUMN fi.bkpf.num3 IS 'PSOFN — IS-PS: File number [numerus]';
COMMENT ON COLUMN fi.bkpf.usu IS 'INTFORM — Interest Formula [usura]';
COMMENT ON COLUMN fi.bkpf.usu_die IS 'INTDATE — Interest Calc. Date [usura dies]';
COMMENT ON COLUMN fi.bkpf.ins_die IS 'PSOBT — Posting Day [inscriptio dies]';
COMMENT ON COLUMN fi.bkpf.acl_ins IS 'PSOZL — Actual posting [actualis inscriptio]';
COMMENT ON COLUMN fi.bkpf.mut IS 'PSODT — Changed On [mutatus]';
COMMENT ON COLUMN fi.bkpf.ult_mut IS 'PSOTM — Last changed at [ultimus mutatus]';
COMMENT ON COLUMN fi.bkpf.gen_sol IS 'FM_UMART — Type of Payment Transfer [genus solutio]';
COMMENT ON COLUMN fi.bkpf.sol_gen IS 'CCINS — Payment cards: Card type [solutio genus]';
COMMENT ON COLUMN fi.bkpf.sol_num IS 'CCNUM — Payment cards: Card number [solutio numerus]';
COMMENT ON COLUMN fi.bkpf.sol_obx IS 'SSBLK — Payment Statistical Sampling Block [solutio obex]';
COMMENT ON COLUMN fi.bkpf.num4 IS 'BATCH — Lot Number for Documents [numerus]';
COMMENT ON COLUMN fi.bkpf.usr_nom2 IS 'SNAME — User Name [usor nomen]';
COMMENT ON COLUMN fi.bkpf.fac_sol IS 'SAMPLED — Sampled Invoice by Payment Certification [factura solutio]';
COMMENT ON COLUMN fi.bkpf.idx IS 'EXCLUDE_FLAG — PPA Exclude Indicator [index]';
COMMENT ON COLUMN fi.bkpf.lbr_idx IS 'BLIND — Budgetary Ledger Indicator [liber index]';
COMMENT ON COLUMN fi.bkpf.sta IS 'OFFSET_STATUS — Treasury Offset Status [status]';
COMMENT ON COLUMN fi.bkpf.die_tbl IS 'OFFSET_REFER_DAT — Date Record Referred to Treasury [dies tabula]';
COMMENT ON COLUMN fi.bkpf.csa_sol IS 'PENRC — Reason for late payment [causa solutio]';
COMMENT ON COLUMN fi.bkpf.num_doc_cnd IS 'KNUMV — Number of the document condition [numerus documentum condicio]';
COMMENT ON COLUMN fi.bkpf.idx_fac IS 'RECHN — Indicator: post invoice [index factura]';

CREATE TABLE IF NOT EXISTS fi.bsad (
  cli char(3),
  soc varchar(4),
  emp_num varchar(10),
  gen varchar(1),
  idx varchar(1),
  cpn_die_tbl date,
  ndo_cpn_doc varchar(10),
  asg_num_pap varchar(18),
  anf varchar(4),
  ndo varchar(10),
  num_pos_doc varchar(3),
  din_doc date,
  ddc_doc date,
  die_doc date,
  cvm varchar(5),
  rfr_ndo varchar(16),
  gdo varchar(2),
  per varchar(2),
  ins_clv varchar(2),
  mta_idx varchar(1),
  dbt_crd_idx varchar(1),
  ang varchar(4),
  trb_vdt_cod varchar(2),
  sum_mon numeric(13,2),
  sum_doc_mon numeric(13,2),
  trb_sum_mon numeric(13,2),
  trb_sum_doc numeric(13,2),
  pos_txt varchar(50),
  mnd_num varchar(12),
  rat_num varchar(10),
  lbr_rat_pos varchar(10),
  die date,
  sol_clv varchar(4),
  ddc_sum_mon numeric(13,2),
  ddc_sum_doc numeric(13,2),
  sol varchar(1),
  clv_arg varchar(5),
  num_fac varchar(10),
  anf_fac_crd varchar(4),
  pos_fac varchar(3),
  soc_sng varchar(6),
  fac_doc varchar(10),
  csm varchar(10),
  afd varchar(4),
  clu varchar(10),
  trb_cod varchar(2),
  mon_lbr varchar(5),
  sum_lbr numeric(13,2),
  dvd varchar(10),
  doc_sta varchar(1),
  idx_cpn varchar(1),
  anf_cpn_doc varchar(4),
  CONSTRAINT bsad_pk PRIMARY KEY (cli, soc, emp_num, gen, idx, cpn_die_tbl, anf, ndo, num_pos_doc)
);
COMMENT ON TABLE fi.bsad IS 'BSAD — Accounting: Secondary Index for Customers (Cleared Items) — same row shape as BSID, but for items that have already been cleared (AUGDT/AUGBL populated). This is the destination an open item on the dealer''s accounting schedule moves to the moment a payment or credit is applied — the clearing event a schedule-to-GL reconciliation has to account for, not just the open balance.';
COMMENT ON COLUMN fi.bsad.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.bsad.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.bsad.emp_num IS 'KUNNR — Customer Number [emptor numerus]';
COMMENT ON COLUMN fi.bsad.gen IS 'UMSKS — Special G/L Transaction Type [genus]';
COMMENT ON COLUMN fi.bsad.idx IS 'UMSKZ — Special G/L Indicator [index]';
COMMENT ON COLUMN fi.bsad.cpn_die_tbl IS 'AUGDT — Clearing Date — populated for every row in this table, unlike BSID where it is null until the item clears [compensatio dies tabula]';
COMMENT ON COLUMN fi.bsad.ndo_cpn_doc IS 'AUGBL — Document Number of the Clearing Document — the payment/credit document that closed the open item [numerus documenti compensatio documentum]';
COMMENT ON COLUMN fi.bsad.asg_num_pap IS 'ZUONR — Assignment Number — the same open-item control key carried over from the BSID row this record clears [assignatio numerus positio aperta]';
COMMENT ON COLUMN fi.bsad.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.bsad.ndo IS 'BELNR — Accounting Document Number [numerus documenti]';
COMMENT ON COLUMN fi.bsad.num_pos_doc IS 'BUZEI — Number of Line Item Within Accounting Document [numerus positio documentum]';
COMMENT ON COLUMN fi.bsad.din_doc IS 'BUDAT — Posting Date in the Document [dies inscriptionis documentum]';
COMMENT ON COLUMN fi.bsad.ddc_doc IS 'BLDAT — Document Date in Document [dies documenti documentum]';
COMMENT ON COLUMN fi.bsad.die_doc IS 'CPUDT — Day On Which Accounting Document Was Entered [dies documentum]';
COMMENT ON COLUMN fi.bsad.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN fi.bsad.rfr_ndo IS 'XBLNR — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN fi.bsad.gdo IS 'BLART — Document Type [genus documenti]';
COMMENT ON COLUMN fi.bsad.per IS 'MONAT — Fiscal Period [periodus]';
COMMENT ON COLUMN fi.bsad.ins_clv IS 'BSCHL — Posting Key [inscriptio clavis]';
COMMENT ON COLUMN fi.bsad.mta_idx IS 'ZUMSK — Target Special G/L Indicator [meta index]';
COMMENT ON COLUMN fi.bsad.dbt_crd_idx IS 'SHKZG — Debit/Credit Indicator [debitum creditum index]';
COMMENT ON COLUMN fi.bsad.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN fi.bsad.trb_vdt_cod IS 'MWSKZ — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN fi.bsad.sum_mon IS 'DMBTR — Amount in Local Currency [summa moneta]';
COMMENT ON COLUMN fi.bsad.sum_doc_mon IS 'WRBTR — Amount in document currency [summa documentum moneta]';
COMMENT ON COLUMN fi.bsad.trb_sum_mon IS 'MWSTS — Tax Amount in Local Currency [tributum summa moneta]';
COMMENT ON COLUMN fi.bsad.trb_sum_doc IS 'WMWST — Tax amount in document currency [tributum summa documentum]';
COMMENT ON COLUMN fi.bsad.pos_txt IS 'SGTXT — Item Text [positio textus]';
COMMENT ON COLUMN fi.bsad.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN fi.bsad.rat_num IS 'SAKNR — G/L Account Number [ratio numerus]';
COMMENT ON COLUMN fi.bsad.lbr_rat_pos IS 'HKONT — General Ledger Account — the reconciliation account this item cleared against [liber ratio positio]';
COMMENT ON COLUMN fi.bsad.die IS 'ZFBDT — Baseline Date for Due Date Calculation [dies]';
COMMENT ON COLUMN fi.bsad.sol_clv IS 'ZTERM — Terms of Payment Key [solutio clavis]';
COMMENT ON COLUMN fi.bsad.ddc_sum_mon IS 'SKNTO — Cash discount amount in local currency [deductio summa moneta]';
COMMENT ON COLUMN fi.bsad.ddc_sum_doc IS 'WSKTO — Cash discount amount in document currency [deductio summa documentum]';
COMMENT ON COLUMN fi.bsad.sol IS 'ZLSCH — Payment Method [solutio]';
COMMENT ON COLUMN fi.bsad.clv_arg IS 'HBKID — Short Key for a House Bank [clavis argentaria]';
COMMENT ON COLUMN fi.bsad.num_fac IS 'REBZG — Number of the Invoice the Transaction Belongs to [numerus factura]';
COMMENT ON COLUMN fi.bsad.anf_fac_crd IS 'REBZJ — Fiscal Year of the Relevant Invoice (for Credit Memo) [annus fiscalis factura creditum]';
COMMENT ON COLUMN fi.bsad.pos_fac IS 'REBZZ — Line Item in the Relevant Invoice [positio factura]';
COMMENT ON COLUMN fi.bsad.soc_sng IS 'VBUND — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN fi.bsad.fac_doc IS 'VBELN — Billing Document [factura documentum]';
COMMENT ON COLUMN fi.bsad.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN fi.bsad.afd IS 'KKBER — Credit control area [area fidei]';
COMMENT ON COLUMN fi.bsad.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN fi.bsad.trb_cod IS 'QSSKZ — Withholding Tax Code [tributum codex]';
COMMENT ON COLUMN fi.bsad.mon_lbr IS 'PSWSL — Update Currency for General Ledger Transaction Figures [moneta liber]';
COMMENT ON COLUMN fi.bsad.sum_lbr IS 'PSWBT — Amount for Updating in General Ledger [summa liber]';
COMMENT ON COLUMN fi.bsad.dvd IS 'VBEL2 — Sales Document [documentum venditionis]';
COMMENT ON COLUMN fi.bsad.doc_sta IS 'BSTAT — Document Status [documentum status]';
COMMENT ON COLUMN fi.bsad.idx_cpn IS 'XRAGL — Indicator: Clearing was Reversed [index compensatio]';
COMMENT ON COLUMN fi.bsad.anf_cpn_doc IS 'AUGGJ — Fiscal Year of Clearing Document [annus fiscalis compensatio documentum]';

CREATE TABLE IF NOT EXISTS fi.bsak (
  cli char(3),
  soc varchar(4),
  rat_num_ven varchar(10),
  gen varchar(1),
  idx varchar(1),
  cpn_die_pos date,
  ndo_cpn_doc varchar(10),
  asg_num_pap varchar(18),
  anf varchar(4),
  ndo varchar(10),
  num_pos_doc varchar(3),
  din_doc date,
  ddc_doc date,
  die_doc date,
  cvm varchar(5),
  rfr_ndo varchar(16),
  gdo varchar(2),
  per varchar(2),
  ins_clv varchar(2),
  mta_idx varchar(1),
  dbt_crd_idx varchar(1),
  ang varchar(4),
  trb_vdt_cod varchar(2),
  sum_mon numeric(13,2),
  sum_doc_mon numeric(13,2),
  trb_sum_mon numeric(13,2),
  trb_sum_doc numeric(13,2),
  pos_txt varchar(50),
  mnd_num varchar(12),
  dem_num varchar(10),
  pos_num_dem varchar(5),
  rat_num varchar(10),
  lbr_rat_pos varchar(10),
  die date,
  sol_clv varchar(4),
  ddc_sum_mon numeric(13,2),
  ddc_sum_doc numeric(13,2),
  sol varchar(1),
  clv_arg varchar(5),
  num_fac varchar(10),
  anf_fac_crd varchar(4),
  pos_fac varchar(3),
  trb_cod varchar(2),
  trb_sum_doc2 numeric(13,2),
  soc_sng varchar(6),
  csm varchar(10),
  clu varchar(10),
  mon_lbr varchar(5),
  sum_lbr numeric(13,2),
  doc_sta varchar(1),
  idx_cpn varchar(1),
  anf_cpn_doc varchar(4),
  CONSTRAINT bsak_pk PRIMARY KEY (cli, soc, rat_num_ven, gen, idx, cpn_die_pos, anf, ndo, num_pos_doc)
);
COMMENT ON TABLE fi.bsak IS 'BSAK — Accounting: Secondary Index for Vendors (Cleared Items) — same row shape as BSIK, but for items already cleared (AUGDT/AUGBL populated). The AP-side clearing destination: when a dealer pays a sublet or parts vendor, the open item on the AP schedule moves here.';
COMMENT ON COLUMN fi.bsak.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.bsak.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.bsak.rat_num_ven IS 'LIFNR — Account Number of Vendor or Creditor [ratio numerus venditor]';
COMMENT ON COLUMN fi.bsak.gen IS 'UMSKS — Special G/L Transaction Type [genus]';
COMMENT ON COLUMN fi.bsak.idx IS 'UMSKZ — Special G/L Indicator [index]';
COMMENT ON COLUMN fi.bsak.cpn_die_pos IS 'AUGDT — Clearing Date — populated for every row, unlike BSIK where it is null until the item clears [compensatio dies positio]';
COMMENT ON COLUMN fi.bsak.ndo_cpn_doc IS 'AUGBL — Document Number of the Clearing Document — the payment document that closed the open item [numerus documenti compensatio documentum]';
COMMENT ON COLUMN fi.bsak.asg_num_pap IS 'ZUONR — Assignment Number — the open-item control key carried over from the BSIK row this record clears [assignatio numerus positio aperta]';
COMMENT ON COLUMN fi.bsak.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.bsak.ndo IS 'BELNR — Accounting Document Number [numerus documenti]';
COMMENT ON COLUMN fi.bsak.num_pos_doc IS 'BUZEI — Number of Line Item Within Accounting Document [numerus positio documentum]';
COMMENT ON COLUMN fi.bsak.din_doc IS 'BUDAT — Posting Date in the Document [dies inscriptionis documentum]';
COMMENT ON COLUMN fi.bsak.ddc_doc IS 'BLDAT — Document Date in Document [dies documenti documentum]';
COMMENT ON COLUMN fi.bsak.die_doc IS 'CPUDT — Day On Which Accounting Document Was Entered [dies documentum]';
COMMENT ON COLUMN fi.bsak.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN fi.bsak.rfr_ndo IS 'XBLNR — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN fi.bsak.gdo IS 'BLART — Document Type [genus documenti]';
COMMENT ON COLUMN fi.bsak.per IS 'MONAT — Fiscal Period [periodus]';
COMMENT ON COLUMN fi.bsak.ins_clv IS 'BSCHL — Posting Key [inscriptio clavis]';
COMMENT ON COLUMN fi.bsak.mta_idx IS 'ZUMSK — Target Special G/L Indicator [meta index]';
COMMENT ON COLUMN fi.bsak.dbt_crd_idx IS 'SHKZG — Debit/Credit Indicator [debitum creditum index]';
COMMENT ON COLUMN fi.bsak.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN fi.bsak.trb_vdt_cod IS 'MWSKZ — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN fi.bsak.sum_mon IS 'DMBTR — Amount in Local Currency [summa moneta]';
COMMENT ON COLUMN fi.bsak.sum_doc_mon IS 'WRBTR — Amount in document currency [summa documentum moneta]';
COMMENT ON COLUMN fi.bsak.trb_sum_mon IS 'MWSTS — Tax Amount in Local Currency [tributum summa moneta]';
COMMENT ON COLUMN fi.bsak.trb_sum_doc IS 'WMWST — Tax amount in document currency [tributum summa documentum]';
COMMENT ON COLUMN fi.bsak.pos_txt IS 'SGTXT — Item Text [positio textus]';
COMMENT ON COLUMN fi.bsak.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN fi.bsak.dem_num IS 'EBELN — Purchasing Document Number [documentum emptionis numerus]';
COMMENT ON COLUMN fi.bsak.pos_num_dem IS 'EBELP — Item Number of Purchasing Document [positio numerus documentum emptionis]';
COMMENT ON COLUMN fi.bsak.rat_num IS 'SAKNR — G/L Account Number [ratio numerus]';
COMMENT ON COLUMN fi.bsak.lbr_rat_pos IS 'HKONT — General Ledger Account — the AP reconciliation account this item cleared against [liber ratio positio]';
COMMENT ON COLUMN fi.bsak.die IS 'ZFBDT — Baseline Date for Due Date Calculation [dies]';
COMMENT ON COLUMN fi.bsak.sol_clv IS 'ZTERM — Terms of Payment Key [solutio clavis]';
COMMENT ON COLUMN fi.bsak.ddc_sum_mon IS 'SKNTO — Cash discount amount in local currency [deductio summa moneta]';
COMMENT ON COLUMN fi.bsak.ddc_sum_doc IS 'WSKTO — Cash discount amount in document currency [deductio summa documentum]';
COMMENT ON COLUMN fi.bsak.sol IS 'ZLSCH — Payment Method [solutio]';
COMMENT ON COLUMN fi.bsak.clv_arg IS 'HBKID — Short Key for a House Bank [clavis argentaria]';
COMMENT ON COLUMN fi.bsak.num_fac IS 'REBZG — Number of the Invoice the Transaction Belongs to [numerus factura]';
COMMENT ON COLUMN fi.bsak.anf_fac_crd IS 'REBZJ — Fiscal Year of the Relevant Invoice (for Credit Memo) [annus fiscalis factura creditum]';
COMMENT ON COLUMN fi.bsak.pos_fac IS 'REBZZ — Line Item in the Relevant Invoice [positio factura]';
COMMENT ON COLUMN fi.bsak.trb_cod IS 'QSSKZ — Withholding Tax Code [tributum codex]';
COMMENT ON COLUMN fi.bsak.trb_sum_doc2 IS 'QBSHB — Withholding Tax Amount (in Document Currency) [tributum summa documentum]';
COMMENT ON COLUMN fi.bsak.soc_sng IS 'VBUND — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN fi.bsak.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN fi.bsak.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN fi.bsak.mon_lbr IS 'PSWSL — Update Currency for General Ledger Transaction Figures [moneta liber]';
COMMENT ON COLUMN fi.bsak.sum_lbr IS 'PSWBT — Amount for Updating in General Ledger [summa liber]';
COMMENT ON COLUMN fi.bsak.doc_sta IS 'BSTAT — Document Status [documentum status]';
COMMENT ON COLUMN fi.bsak.idx_cpn IS 'XRAGL — Indicator: Clearing was Reversed [index compensatio]';
COMMENT ON COLUMN fi.bsak.anf_cpn_doc IS 'AUGGJ — Fiscal Year of Clearing Document [annus fiscalis compensatio documentum]';

CREATE TABLE IF NOT EXISTS fi.bsas (
  cli char(3),
  soc varchar(4),
  lbr_rat_pap varchar(10),
  cpn_die date,
  ndo_cpn_doc varchar(10),
  asg_num_pap varchar(18),
  anf varchar(4),
  ndo varchar(10),
  num_pos_doc varchar(3),
  din_doc date,
  ddc_doc date,
  cvm varchar(5),
  rfr_ndo varchar(16),
  gdo varchar(2),
  per varchar(2),
  ins_clv varchar(2),
  dbt_crd_idx varchar(1),
  ang varchar(4),
  trb_vdt_cod varchar(2),
  pos varchar(3),
  sum_mon numeric(13,2),
  sum_doc_mon numeric(13,2),
  trb_sum_mon numeric(13,2),
  trb_sum_doc numeric(13,2),
  pos_txt varchar(50),
  prp_num varchar(16),
  mnd_num varchar(12),
  ofc_pos varchar(4),
  csm varchar(10),
  die date,
  idx_pap varchar(1),
  val_die date,
  doc_sta varchar(1),
  aes numeric(13,2),
  aes_mon numeric(13,2),
  soc_sng varchar(6),
  mon_lbr varchar(5),
  gen varchar(1),
  sum_mon2 numeric(13,2),
  sum_mon3 numeric(13,2),
  trb_sum_mon2 numeric(13,2),
  trb_sum_mon3 numeric(13,2),
  aes_mon2 numeric(13,2),
  rpm_mon numeric(13,2),
  idx_cpn varchar(1),
  ops_elm_eop varchar(8),
  clu varchar(10),
  idx_doc_rvs varchar(1),
  idx_doc varchar(1),
  sum_lbr numeric(13,2),
  idx_ins varchar(1),
  sol_pos varchar(3),
  sol_tsc varchar(10),
  rfr_clv_pos varchar(20),
  bupla varchar(4),
  rpm numeric(13,2),
  rpm2 numeric(13,2),
  rpm3 numeric(13,2),
  gen2 varchar(3),
  clv_obi varchar(8),
  rfr_die_tsc date,
  grant_nbr varchar(20),
  afn varchar(16),
  pos2 varchar(14),
  fistl varchar(16),
  geber varchar(10),
  scs_clu varchar(10),
  pos3 varchar(1),
  anf_cpn_doc varchar(4),
  seg varchar(10),
  scs_seg varchar(10),
  trb_cod varchar(2),
  CONSTRAINT bsas_pk PRIMARY KEY (cli, soc, lbr_rat_pap, cpn_die, ndo_cpn_doc, asg_num_pap, anf, ndo, num_pos_doc)
);
COMMENT ON TABLE fi.bsas IS 'BSAS — Accounting: Secondary Index for G/L Accounts (Cleared Items) — the cleared-item counterpart to BSIS. Rows migrate here from BSIS the moment AUGBL/AUGDT clear a G/L open item, completing the open-item picture alongside BSAD (customer, cleared) and BSAK (vendor, cleared).';
COMMENT ON COLUMN fi.bsas.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.bsas.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.bsas.lbr_rat_pap IS 'HKONT — General Ledger Account — the open-item-managed G/L account this cleared line sat behind [liber ratio positio aperta]';
COMMENT ON COLUMN fi.bsas.cpn_die IS 'AUGDT — Clearing Date [compensatio dies]';
COMMENT ON COLUMN fi.bsas.ndo_cpn_doc IS 'AUGBL — Document Number of the Clearing Document [numerus documenti compensatio documentum]';
COMMENT ON COLUMN fi.bsas.asg_num_pap IS 'ZUONR — Assignment Number — the open-item control key [assignatio numerus positio aperta]';
COMMENT ON COLUMN fi.bsas.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.bsas.ndo IS 'BELNR — Accounting Document Number [numerus documenti]';
COMMENT ON COLUMN fi.bsas.num_pos_doc IS 'BUZEI — Number of Line Item Within Accounting Document [numerus positio documentum]';
COMMENT ON COLUMN fi.bsas.din_doc IS 'BUDAT — Posting Date in the Document [dies inscriptionis documentum]';
COMMENT ON COLUMN fi.bsas.ddc_doc IS 'BLDAT — Document Date in Document [dies documenti documentum]';
COMMENT ON COLUMN fi.bsas.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN fi.bsas.rfr_ndo IS 'XBLNR — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN fi.bsas.gdo IS 'BLART — Document Type [genus documenti]';
COMMENT ON COLUMN fi.bsas.per IS 'MONAT — Fiscal Period [periodus]';
COMMENT ON COLUMN fi.bsas.ins_clv IS 'BSCHL — Posting Key [inscriptio clavis]';
COMMENT ON COLUMN fi.bsas.dbt_crd_idx IS 'SHKZG — Debit/Credit Indicator [debitum creditum index]';
COMMENT ON COLUMN fi.bsas.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN fi.bsas.trb_vdt_cod IS 'MWSKZ — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN fi.bsas.pos IS 'FKONT — Financial Budget Item [positio]';
COMMENT ON COLUMN fi.bsas.sum_mon IS 'DMBTR — Amount in Local Currency [summa moneta]';
COMMENT ON COLUMN fi.bsas.sum_doc_mon IS 'WRBTR — Amount in document currency [summa documentum moneta]';
COMMENT ON COLUMN fi.bsas.trb_sum_mon IS 'MWSTS — Tax Amount in Local Currency [tributum summa moneta]';
COMMENT ON COLUMN fi.bsas.trb_sum_doc IS 'WMWST — Tax amount in document currency [tributum summa documentum]';
COMMENT ON COLUMN fi.bsas.pos_txt IS 'SGTXT — Item Text [positio textus]';
COMMENT ON COLUMN fi.bsas.prp_num IS 'PROJN — Old: Project number : No longer used --> PS_POSNR [propositum numerus]';
COMMENT ON COLUMN fi.bsas.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN fi.bsas.ofc_pos IS 'WERKS — Plant — the plant this cleared G/L item was tied to [officina positio]';
COMMENT ON COLUMN fi.bsas.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN fi.bsas.die IS 'ZFBDT — Baseline Date for Due Date Calculation [dies]';
COMMENT ON COLUMN fi.bsas.idx_pap IS 'XOPVW — Indicator: Open item management? [index positio aperta]';
COMMENT ON COLUMN fi.bsas.val_die IS 'VALUT — Value date [valor dies]';
COMMENT ON COLUMN fi.bsas.doc_sta IS 'BSTAT — Document Status [documentum status]';
COMMENT ON COLUMN fi.bsas.aes IS 'BDIFF — Valuation Difference [aestimatio]';
COMMENT ON COLUMN fi.bsas.aes_mon IS 'BDIF2 — Valuation Difference for the Second Local Currency [aestimatio moneta]';
COMMENT ON COLUMN fi.bsas.soc_sng IS 'VBUND — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN fi.bsas.mon_lbr IS 'PSWSL — Update Currency for General Ledger Transaction Figures [moneta liber]';
COMMENT ON COLUMN fi.bsas.gen IS 'WVERW — Bill of exchange usage type [genus]';
COMMENT ON COLUMN fi.bsas.sum_mon2 IS 'DMBE2 — Amount in Second Local Currency [summa moneta]';
COMMENT ON COLUMN fi.bsas.sum_mon3 IS 'DMBE3 — Amount in Third Local Currency [summa moneta]';
COMMENT ON COLUMN fi.bsas.trb_sum_mon2 IS 'MWST2 — Tax Amount in Second Local Currency [tributum summa moneta]';
COMMENT ON COLUMN fi.bsas.trb_sum_mon3 IS 'MWST3 — Tax Amount in Third Local Currency [tributum summa moneta]';
COMMENT ON COLUMN fi.bsas.aes_mon2 IS 'BDIF3 — Valuation Difference for the Third Local Currency [aestimatio moneta]';
COMMENT ON COLUMN fi.bsas.rpm_mon IS 'RDIF3 — Exchange Rate Difference Realized for Third Local Currency [ratio permutationis moneta]';
COMMENT ON COLUMN fi.bsas.idx_cpn IS 'XRAGL — Indicator: Clearing was Reversed [index compensatio]';
COMMENT ON COLUMN fi.bsas.ops_elm_eop IS 'PROJK — Work Breakdown Structure Element (WBS Element) [opus elementum elementum operis]';
COMMENT ON COLUMN fi.bsas.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN fi.bsas.idx_doc_rvs IS 'XSTOV — Indicator: Document is flagged for reversal [index documentum reversio]';
COMMENT ON COLUMN fi.bsas.idx_doc IS 'XARCH — Indicator: Document already archived ? [index documentum]';
COMMENT ON COLUMN fi.bsas.sum_lbr IS 'PSWBT — Amount for Updating in General Ledger [summa liber]';
COMMENT ON COLUMN fi.bsas.idx_ins IS 'XNEGP — Indicator: Negative posting [index inscriptio]';
COMMENT ON COLUMN fi.bsas.sol_pos IS 'RFZEI — Payment Card Item [solutio positio]';
COMMENT ON COLUMN fi.bsas.sol_tsc IS 'CCBTC — Payment cards: Settlement run [solutio transactio]';
COMMENT ON COLUMN fi.bsas.rfr_clv_pos IS 'XREF3 — Reference key for line item [referentia clavis positio]';
COMMENT ON COLUMN fi.bsas.bupla IS 'BUPLA — Business Place';
COMMENT ON COLUMN fi.bsas.rpm IS 'PPDIFF — Realized Exchange Rate Gain/Loss 1.Loc.Curr.(Part Payments) [ratio permutationis]';
COMMENT ON COLUMN fi.bsas.rpm2 IS 'PPDIF2 — Realized Exchange Rate Gain/Loss 2.Loc. Curr.(Part Payments) [ratio permutationis]';
COMMENT ON COLUMN fi.bsas.rpm3 IS 'PPDIF3 — Realized Exchange Rate Gain/Loss 3.Loc.Curr.(Part Payments) [ratio permutationis]';
COMMENT ON COLUMN fi.bsas.gen2 IS 'BEWAR — Transaction Type [genus]';
COMMENT ON COLUMN fi.bsas.clv_obi IS 'IMKEY — Internal Key for Real Estate Object [clavis obiectum]';
COMMENT ON COLUMN fi.bsas.rfr_die_tsc IS 'DABRZ — Reference Date for Settlement [referentia dies transactio]';
COMMENT ON COLUMN fi.bsas.grant_nbr IS 'GRANT_NBR — Grant';
COMMENT ON COLUMN fi.bsas.afn IS 'FKBER — Functional Area [area functionis]';
COMMENT ON COLUMN fi.bsas.pos2 IS 'FIPOS — Commitment Item [positio]';
COMMENT ON COLUMN fi.bsas.fistl IS 'FISTL — Funds Center';
COMMENT ON COLUMN fi.bsas.geber IS 'GEBER — Fund';
COMMENT ON COLUMN fi.bsas.scs_clu IS 'PPRCT — Partner Profit Center [socius centrum lucri]';
COMMENT ON COLUMN fi.bsas.pos3 IS 'BUZID — Identification of the Line Item [positio]';
COMMENT ON COLUMN fi.bsas.anf_cpn_doc IS 'AUGGJ — Fiscal Year of Clearing Document [annus fiscalis compensatio documentum]';
COMMENT ON COLUMN fi.bsas.seg IS 'SEGMENT — Segment for Segmental Reporting [segmentum]';
COMMENT ON COLUMN fi.bsas.scs_seg IS 'PSEGMENT — Partner Segment for Segmental Reporting [socius segmentum]';
COMMENT ON COLUMN fi.bsas.trb_cod IS 'QSSKZ — Withholding Tax Code [tributum codex]';

CREATE TABLE IF NOT EXISTS fi.bseg (
  cli char(3),
  soc varchar(4),
  ndo varchar(10),
  anf varchar(4),
  num_pos_doc varchar(3),
  pos varchar(1),
  cpn_die date,
  cpn_die2 date,
  ndo_cpn_doc varchar(10),
  ins_clv varchar(2),
  rat_gen varchar(1),
  idx varchar(1),
  gen varchar(1),
  mta_idx varchar(1),
  dbt_crd_idx varchar(1),
  ang varchar(4),
  sng_ang varchar(4),
  trb_vdt_cod varchar(2),
  trb_cod varchar(2),
  sum_mon numeric(13,2),
  sum_doc_mon numeric(13,2),
  sum_mon2 numeric(13,2),
  sum_lbr numeric(13,2),
  mon_lbr varchar(5),
  trb_sum_mon numeric(13,2),
  trb_sum_doc numeric(13,2),
  trb_sum_mon2 numeric(13,2),
  trb_sum_doc2 numeric(13,2),
  trb_sum_mon3 numeric(13,2),
  trb_sum_doc3 numeric(13,2),
  sum_mon3 numeric(13,2),
  trb_doc_mon numeric(13,2),
  dbt_crd_ddc varchar(1),
  vrs_num_cmn varchar(2),
  trb_gen varchar(1),
  cts_idx_trb varchar(3),
  clv varchar(3),
  trb_sum numeric(13,2),
  rpm numeric(9,5),
  sum_mon4 numeric(13,2),
  aes numeric(13,2),
  aes_mon numeric(13,2),
  val_die date,
  asg_num varchar(18),
  pos_txt varchar(50),
  usu varchar(2),
  soc_sng varchar(6),
  gen2 varchar(3),
  cts_rat_num varchar(10),
  gen_lbr varchar(4),
  cns_grd varchar(2),
  cns_cts varchar(10),
  cns_sum_doc numeric(13,2),
  cns_die date,
  pos2 varchar(3),
  amd varchar(4),
  csm varchar(10),
  prp_num varchar(16),
  mnd_num varchar(12),
  fac_doc varchar(10),
  dvd varchar(10),
  dvd_pos varchar(6),
  trd_lor_num varchar(4),
  ptm_num varchar(12),
  ptm varchar(4),
  ptm_gen varchar(3),
  ptm_val_die date,
  nps varchar(8),
  idx_vdt_pos varchar(1),
  idx_rat varchar(1),
  idx_rat2 varchar(1),
  idx_pap varchar(1),
  idx_dml_arg varchar(1),
  idx_ins_csm varchar(1),
  idx_ins_mnd varchar(1),
  idx_ins_prp varchar(1),
  idx_ins varchar(1),
  idx_fac_doc varchar(1),
  idx_ins_sol varchar(1),
  idx_sol_net varchar(1),
  idx_pos_ddc varchar(1),
  idx_mrc varchar(1),
  pos3 varchar(1),
  idx_pos_cre varchar(1),
  idx2 varchar(1),
  idx_ins_clv varchar(1),
  rat_num varchar(10),
  lbr_rat varchar(10),
  emp_num varchar(10),
  rat_num_ven varchar(10),
  rat_num2 varchar(10),
  idx_rat_aeq varchar(1),
  rat_gen2 varchar(2),
  asg_num2 varchar(18),
  die date,
  sol_clv varchar(4),
  ddc numeric(3,0),
  ddc2 numeric(3,0),
  net_sol_per numeric(3,0),
  ddc3 numeric(5,3),
  ddc4 numeric(5,3),
  sum_ddc_doc numeric(13,2),
  ddc_sum_mon numeric(13,2),
  CONSTRAINT bseg_pk PRIMARY KEY (cli, soc, ndo, anf, num_pos_doc)
);
COMMENT ON TABLE fi.bseg IS 'BSEG — Accounting Document Segment — FI line items (G/L, vendor, customer, asset). ~350 fields total; first 100 incl. all keys shown here.';
COMMENT ON COLUMN fi.bseg.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.bseg.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.bseg.ndo IS 'BELNR — Accounting Document Number [numerus documenti]';
COMMENT ON COLUMN fi.bseg.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.bseg.num_pos_doc IS 'BUZEI — Number of Line Item Within Accounting Document [numerus positio documentum]';
COMMENT ON COLUMN fi.bseg.pos IS 'BUZID — Identification of the Line Item [positio]';
COMMENT ON COLUMN fi.bseg.cpn_die IS 'AUGDT — Clearing Date [compensatio dies]';
COMMENT ON COLUMN fi.bseg.cpn_die2 IS 'AUGCP — Clearing Entry Date [compensatio dies]';
COMMENT ON COLUMN fi.bseg.ndo_cpn_doc IS 'AUGBL — Document Number of the Clearing Document [numerus documenti compensatio documentum]';
COMMENT ON COLUMN fi.bseg.ins_clv IS 'BSCHL — Posting Key [inscriptio clavis]';
COMMENT ON COLUMN fi.bseg.rat_gen IS 'KOART — Account Type [ratio genus]';
COMMENT ON COLUMN fi.bseg.idx IS 'UMSKZ — Special G/L Indicator [index]';
COMMENT ON COLUMN fi.bseg.gen IS 'UMSKS — Special G/L Transaction Type [genus]';
COMMENT ON COLUMN fi.bseg.mta_idx IS 'ZUMSK — Target Special G/L Indicator [meta index]';
COMMENT ON COLUMN fi.bseg.dbt_crd_idx IS 'SHKZG — Debit/Credit Indicator [debitum creditum index]';
COMMENT ON COLUMN fi.bseg.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN fi.bseg.sng_ang IS 'PARGB — Trading partner''s business area [socius negotiationis area negotii]';
COMMENT ON COLUMN fi.bseg.trb_vdt_cod IS 'MWSKZ — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN fi.bseg.trb_cod IS 'QSSKZ — Withholding Tax Code [tributum codex]';
COMMENT ON COLUMN fi.bseg.sum_mon IS 'DMBTR — Amount in Local Currency [summa moneta]';
COMMENT ON COLUMN fi.bseg.sum_doc_mon IS 'WRBTR — Amount in document currency [summa documentum moneta]';
COMMENT ON COLUMN fi.bseg.sum_mon2 IS 'KZBTR — Original Reduction Amount in Local Currency [summa moneta]';
COMMENT ON COLUMN fi.bseg.sum_lbr IS 'PSWBT — Amount for Updating in General Ledger [summa liber]';
COMMENT ON COLUMN fi.bseg.mon_lbr IS 'PSWSL — Update Currency for General Ledger Transaction Figures [moneta liber]';
COMMENT ON COLUMN fi.bseg.trb_sum_mon IS 'TXBHW — Original Tax Base Amount in Local Currency [tributum summa moneta]';
COMMENT ON COLUMN fi.bseg.trb_sum_doc IS 'TXBFW — Original Tax Base Amount in Document Currency [tributum summa documentum]';
COMMENT ON COLUMN fi.bseg.trb_sum_mon2 IS 'MWSTS — Tax Amount in Local Currency [tributum summa moneta]';
COMMENT ON COLUMN fi.bseg.trb_sum_doc2 IS 'WMWST — Tax amount in document currency [tributum summa documentum]';
COMMENT ON COLUMN fi.bseg.trb_sum_mon3 IS 'HWBAS — Tax Base Amount in Local Currency [tributum summa moneta]';
COMMENT ON COLUMN fi.bseg.trb_sum_doc3 IS 'FWBAS — Tax Base Amount in Document Currency [tributum summa documentum]';
COMMENT ON COLUMN fi.bseg.sum_mon3 IS 'HWZUZ — Provision Amount in Local Currency [summa moneta]';
COMMENT ON COLUMN fi.bseg.trb_doc_mon IS 'FWZUZ — Additional Tax in Document Currency [tributum documentum moneta]';
COMMENT ON COLUMN fi.bseg.dbt_crd_ddc IS 'SHZUZ — Debit/Credit Addition for Cash Discount [debitum creditum deductio]';
COMMENT ON COLUMN fi.bseg.vrs_num_cmn IS 'STEKZ — Version Number Component [versio numerus componens]';
COMMENT ON COLUMN fi.bseg.trb_gen IS 'MWART — Tax Type [tributum genus]';
COMMENT ON COLUMN fi.bseg.cts_idx_trb IS 'TXGRP — Group Indicator for Tax Line Items [coetus index tributum]';
COMMENT ON COLUMN fi.bseg.clv IS 'KTOSL — Transaction Key [clavis]';
COMMENT ON COLUMN fi.bseg.trb_sum IS 'QSSHB — Withholding Tax Base Amount [tributum summa]';
COMMENT ON COLUMN fi.bseg.rpm IS 'KURSR — Hedged Exchange Rate [ratio permutationis]';
COMMENT ON COLUMN fi.bseg.sum_mon4 IS 'GBETR — Hedged Amount in Foreign Currency [summa moneta]';
COMMENT ON COLUMN fi.bseg.aes IS 'BDIFF — Valuation Difference [aestimatio]';
COMMENT ON COLUMN fi.bseg.aes_mon IS 'BDIF2 — Valuation Difference for the Second Local Currency [aestimatio moneta]';
COMMENT ON COLUMN fi.bseg.val_die IS 'VALUT — Value date [valor dies]';
COMMENT ON COLUMN fi.bseg.asg_num IS 'ZUONR — Assignment Number [assignatio numerus]';
COMMENT ON COLUMN fi.bseg.pos_txt IS 'SGTXT — Item Text [positio textus]';
COMMENT ON COLUMN fi.bseg.usu IS 'ZINKZ — Exempted from interest calculation [usura]';
COMMENT ON COLUMN fi.bseg.soc_sng IS 'VBUND — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN fi.bseg.gen2 IS 'BEWAR — Transaction Type [genus]';
COMMENT ON COLUMN fi.bseg.cts_rat_num IS 'ALTKT — Group account number [coetus ratio numerus]';
COMMENT ON COLUMN fi.bseg.gen_lbr IS 'VORGN — Transaction Type for General Ledger [genus liber]';
COMMENT ON COLUMN fi.bseg.cns_grd IS 'FDLEV — Planning level [consilium gradus]';
COMMENT ON COLUMN fi.bseg.cns_cts IS 'FDGRP — Planning Group [consilium coetus]';
COMMENT ON COLUMN fi.bseg.cns_sum_doc IS 'FDWBT — Planning amount in document currency [consilium summa documentum]';
COMMENT ON COLUMN fi.bseg.cns_die IS 'FDTAG — Planning date [consilium dies]';
COMMENT ON COLUMN fi.bseg.pos2 IS 'FKONT — Financial Budget Item [positio]';
COMMENT ON COLUMN fi.bseg.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN fi.bseg.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN fi.bseg.prp_num IS 'PROJN — Old: Project number: No longer used --> PS_POSNR [propositum numerus]';
COMMENT ON COLUMN fi.bseg.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN fi.bseg.fac_doc IS 'VBELN — Billing Document [factura documentum]';
COMMENT ON COLUMN fi.bseg.dvd IS 'VBEL2 — Sales Document [documentum venditionis]';
COMMENT ON COLUMN fi.bseg.dvd_pos IS 'POSN2 — Sales Document Item [documentum venditionis positio]';
COMMENT ON COLUMN fi.bseg.trd_lor_num IS 'ETEN2 — Delivery Schedule Line Number [traditio linea ordinis numerus]';
COMMENT ON COLUMN fi.bseg.ptm_num IS 'ANLN1 — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN fi.bseg.ptm IS 'ANLN2 — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN fi.bseg.ptm_gen IS 'ANBWA — Asset Transaction Type [patrimonium genus]';
COMMENT ON COLUMN fi.bseg.ptm_val_die IS 'BZDAT — Asset value date [patrimonium valor dies]';
COMMENT ON COLUMN fi.bseg.nps IS 'PERNR — Personnel Number [numerus personae]';
COMMENT ON COLUMN fi.bseg.idx_vdt_pos IS 'XUMSW — Indicator: Sales-related item? [index venditio positio]';
COMMENT ON COLUMN fi.bseg.idx_rat IS 'XHRES — Indicator: Resident G/L account? [index ratio]';
COMMENT ON COLUMN fi.bseg.idx_rat2 IS 'XKRES — Indicator: Can Line Items Be Displayed by Account? [index ratio]';
COMMENT ON COLUMN fi.bseg.idx_pap IS 'XOPVW — Indicator: Open item management? [index positio aperta]';
COMMENT ON COLUMN fi.bseg.idx_dml_arg IS 'XCPDD — Indicator: Address and bank data set individually [index domicilium argentaria]';
COMMENT ON COLUMN fi.bseg.idx_ins_csm IS 'XSKST — Indicator: Statistical posting to cost center [index inscriptio centrum sumptus]';
COMMENT ON COLUMN fi.bseg.idx_ins_mnd IS 'XSAUF — Indicator: Posting to order is statistical [index inscriptio mandatum]';
COMMENT ON COLUMN fi.bseg.idx_ins_prp IS 'XSPRO — Indicator: Posting to project is statistical [index inscriptio propositum]';
COMMENT ON COLUMN fi.bseg.idx_ins IS 'XSERG — Indicator: Posting to prof.analysis is statistical [index inscriptio]';
COMMENT ON COLUMN fi.bseg.idx_fac_doc IS 'XFAKT — Indicator: Billing document update successful? [index factura documentum]';
COMMENT ON COLUMN fi.bseg.idx_ins_sol IS 'XUMAN — Indicator: Transfer posting from down payment? [index inscriptio solutio]';
COMMENT ON COLUMN fi.bseg.idx_sol_net IS 'XANET — Indicator: Down payment in net procedure? [index solutio netus]';
COMMENT ON COLUMN fi.bseg.idx_pos_ddc IS 'XSKRL — Indicator: Line item not liable to cash discount? [index positio deductio]';
COMMENT ON COLUMN fi.bseg.idx_mrc IS 'XINVE — Indicator: Capital Goods Affected? [index merces]';
COMMENT ON COLUMN fi.bseg.pos3 IS 'XPANZ — Display item [positio]';
COMMENT ON COLUMN fi.bseg.idx_pos_cre IS 'XAUTO — Indicator: Line item automatically created [index positio creatus]';
COMMENT ON COLUMN fi.bseg.idx2 IS 'XNCOP — Indicator: Items cannot be copied? [index]';
COMMENT ON COLUMN fi.bseg.idx_ins_clv IS 'XZAHL — Indicator: Is the posting key used in a payment transaction? [index inscriptio clavis]';
COMMENT ON COLUMN fi.bseg.rat_num IS 'SAKNR — G/L Account Number [ratio numerus]';
COMMENT ON COLUMN fi.bseg.lbr_rat IS 'HKONT — General Ledger Account [liber ratio]';
COMMENT ON COLUMN fi.bseg.emp_num IS 'KUNNR — Customer Number [emptor numerus]';
COMMENT ON COLUMN fi.bseg.rat_num_ven IS 'LIFNR — Account Number of Vendor or Creditor [ratio numerus venditor]';
COMMENT ON COLUMN fi.bseg.rat_num2 IS 'FILKD — Account Number of the Branch [ratio numerus]';
COMMENT ON COLUMN fi.bseg.idx_rat_aeq IS 'XBILK — Indicator: Account is a balance sheet account? [index ratio aequilibrium]';
COMMENT ON COLUMN fi.bseg.rat_gen2 IS 'GVTYP — P&L statement account type [ratio genus]';
COMMENT ON COLUMN fi.bseg.asg_num2 IS 'HZUON — Assignment Number for Special G/L Accounts [assignatio numerus]';
COMMENT ON COLUMN fi.bseg.die IS 'ZFBDT — Baseline Date for Due Date Calculation [dies]';
COMMENT ON COLUMN fi.bseg.sol_clv IS 'ZTERM — Terms of Payment Key [solutio clavis]';
COMMENT ON COLUMN fi.bseg.ddc IS 'ZBD1T — Cash discount days 1 [deductio]';
COMMENT ON COLUMN fi.bseg.ddc2 IS 'ZBD2T — Cash discount days 2 [deductio]';
COMMENT ON COLUMN fi.bseg.net_sol_per IS 'ZBD3T — Net Payment Terms Period [netus solutio periodus]';
COMMENT ON COLUMN fi.bseg.ddc3 IS 'ZBD1P — Cash Discount Percentage 1 [deductio]';
COMMENT ON COLUMN fi.bseg.ddc4 IS 'ZBD2P — Cash Discount Percentage 2 [deductio]';
COMMENT ON COLUMN fi.bseg.sum_ddc_doc IS 'SKFBT — Amount Eligible for Cash Discount in Document Currency [summa deductio documentum]';
COMMENT ON COLUMN fi.bseg.ddc_sum_mon IS 'SKNTO — Cash discount amount in local currency [deductio summa moneta]';

CREATE TABLE IF NOT EXISTS fi.bsid (
  cli char(3),
  soc varchar(4),
  emp_num varchar(10),
  gen varchar(1),
  idx varchar(1),
  cpn_die date,
  ndo_cpn_doc varchar(10),
  asg_num_pap varchar(18),
  anf varchar(4),
  ndo varchar(10),
  num_pos_doc varchar(3),
  din_doc date,
  ddc_doc date,
  die_doc date,
  cvm varchar(5),
  rfr_ndo_cmp varchar(16),
  gdo varchar(2),
  per varchar(2),
  ins_clv varchar(2),
  mta_idx varchar(1),
  dbt_crd_idx varchar(1),
  ang varchar(4),
  trb_vdt_cod varchar(2),
  sum_mon numeric(13,2),
  sum_doc_mon numeric(13,2),
  trb_sum_mon numeric(13,2),
  trb_sum_doc numeric(13,2),
  pos_txt varchar(50),
  mnd_num_emp varchar(12),
  ptm_num varchar(12),
  ptm varchar(4),
  rat_num varchar(10),
  lbr_rat_pap varchar(10),
  die_pap date,
  sol_clv varchar(4),
  ddc numeric(3,0),
  ddc2 numeric(3,0),
  net_sol_per numeric(3,0),
  sum_ddc_doc numeric(13,2),
  ddc_sum_mon numeric(13,2),
  sol varchar(1),
  sol_obx_clv varchar(1),
  clv_arg varchar(5),
  num_fac varchar(10),
  anf_fac_crd varchar(4),
  pos_fac varchar(3),
  obx varchar(1),
  clv varchar(1),
  ult date,
  grd varchar(1),
  soc_sng varchar(6),
  fac_doc varchar(10),
  num varchar(20),
  csa_cod varchar(3),
  csm varchar(10),
  afd varchar(4),
  clu varchar(10),
  trb_cod varchar(2),
  mon_lbr varchar(5),
  sum_lbr numeric(13,2),
  dvd varchar(10),
  dvd_pos varchar(6),
  trd_lor_num varchar(4),
  doc_sta varchar(1),
  idx_cpn varchar(1),
  anf_cpn_doc varchar(4),
  CONSTRAINT bsid_pk PRIMARY KEY (cli, soc, emp_num, gen, idx, anf, ndo, num_pos_doc)
);
COMMENT ON TABLE fi.bsid IS 'BSID — Accounting: Secondary Index for Customers — open (uncleared) customer line items. This is the SAP analogue of a CDK accounting schedule sitting behind an AR reconciliation account: one row per open item, keyed by company code + customer + document, until AUGBL/AUGDT clear it into BSAD.';
COMMENT ON COLUMN fi.bsid.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.bsid.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.bsid.emp_num IS 'KUNNR — Customer Number [emptor numerus]';
COMMENT ON COLUMN fi.bsid.gen IS 'UMSKS — Special G/L Transaction Type [genus]';
COMMENT ON COLUMN fi.bsid.idx IS 'UMSKZ — Special G/L Indicator [index]';
COMMENT ON COLUMN fi.bsid.cpn_die IS 'AUGDT — Clearing Date [compensatio dies]';
COMMENT ON COLUMN fi.bsid.ndo_cpn_doc IS 'AUGBL — Document Number of the Clearing Document [numerus documenti compensatio documentum]';
COMMENT ON COLUMN fi.bsid.asg_num_pap IS 'ZUONR — Assignment Number — the open-item control key. This is where a CDK accounting-schedule reference (RO number, stock number, VIN-last-8) lands when a dealer transaction is projected into an SAP-shaped subledger. [assignatio numerus positio aperta]';
COMMENT ON COLUMN fi.bsid.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.bsid.ndo IS 'BELNR — Accounting Document Number [numerus documenti]';
COMMENT ON COLUMN fi.bsid.num_pos_doc IS 'BUZEI — Number of Line Item Within Accounting Document [numerus positio documentum]';
COMMENT ON COLUMN fi.bsid.din_doc IS 'BUDAT — Posting Date in the Document [dies inscriptionis documentum]';
COMMENT ON COLUMN fi.bsid.ddc_doc IS 'BLDAT — Document Date in Document [dies documenti documentum]';
COMMENT ON COLUMN fi.bsid.die_doc IS 'CPUDT — Day On Which Accounting Document Was Entered [dies documentum]';
COMMENT ON COLUMN fi.bsid.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN fi.bsid.rfr_ndo_cmp IS 'XBLNR — Reference Document Number — the field a dealer''s own document number (invoice, RO number) lands on for schedule-to-GL reconciliation when ZUONR alone is not descriptive enough. [referentia numerus documenti campus]';
COMMENT ON COLUMN fi.bsid.gdo IS 'BLART — Document Type [genus documenti]';
COMMENT ON COLUMN fi.bsid.per IS 'MONAT — Fiscal Period [periodus]';
COMMENT ON COLUMN fi.bsid.ins_clv IS 'BSCHL — Posting Key [inscriptio clavis]';
COMMENT ON COLUMN fi.bsid.mta_idx IS 'ZUMSK — Target Special G/L Indicator [meta index]';
COMMENT ON COLUMN fi.bsid.dbt_crd_idx IS 'SHKZG — Debit/Credit Indicator [debitum creditum index]';
COMMENT ON COLUMN fi.bsid.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN fi.bsid.trb_vdt_cod IS 'MWSKZ — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN fi.bsid.sum_mon IS 'DMBTR — Amount in Local Currency [summa moneta]';
COMMENT ON COLUMN fi.bsid.sum_doc_mon IS 'WRBTR — Amount in document currency [summa documentum moneta]';
COMMENT ON COLUMN fi.bsid.trb_sum_mon IS 'MWSTS — Tax Amount in Local Currency [tributum summa moneta]';
COMMENT ON COLUMN fi.bsid.trb_sum_doc IS 'WMWST — Tax amount in document currency [tributum summa documentum]';
COMMENT ON COLUMN fi.bsid.pos_txt IS 'SGTXT — Item Text [positio textus]';
COMMENT ON COLUMN fi.bsid.mnd_num_emp IS 'AUFNR — Order Number — where a repair order''s SAP analogue (AUFK-AUFNR) is carried on a customer-pay open item [mandatum numerus emptor]';
COMMENT ON COLUMN fi.bsid.ptm_num IS 'ANLN1 — Main Asset Number [patrimonium numerus]';
COMMENT ON COLUMN fi.bsid.ptm IS 'ANLN2 — Asset Subnumber [patrimonium]';
COMMENT ON COLUMN fi.bsid.rat_num IS 'SAKNR — G/L Account Number [ratio numerus]';
COMMENT ON COLUMN fi.bsid.lbr_rat_pap IS 'HKONT — General Ledger Account — the reconciliation account this open item sits behind [liber ratio positio aperta]';
COMMENT ON COLUMN fi.bsid.die_pap IS 'ZFBDT — Baseline Date for Due Date Calculation — the date open-item aging is computed from [dies positio aperta]';
COMMENT ON COLUMN fi.bsid.sol_clv IS 'ZTERM — Terms of Payment Key [solutio clavis]';
COMMENT ON COLUMN fi.bsid.ddc IS 'ZBD1T — Cash discount days 1 [deductio]';
COMMENT ON COLUMN fi.bsid.ddc2 IS 'ZBD2T — Cash discount days 2 [deductio]';
COMMENT ON COLUMN fi.bsid.net_sol_per IS 'ZBD3T — Net Payment Terms Period [netus solutio periodus]';
COMMENT ON COLUMN fi.bsid.sum_ddc_doc IS 'SKFBT — Amount Eligible for Cash Discount in Document Currency [summa deductio documentum]';
COMMENT ON COLUMN fi.bsid.ddc_sum_mon IS 'SKNTO — Cash discount amount in local currency [deductio summa moneta]';
COMMENT ON COLUMN fi.bsid.sol IS 'ZLSCH — Payment Method [solutio]';
COMMENT ON COLUMN fi.bsid.sol_obx_clv IS 'ZLSPR — Payment Block Key [solutio obex clavis]';
COMMENT ON COLUMN fi.bsid.clv_arg IS 'HBKID — Short Key for a House Bank [clavis argentaria]';
COMMENT ON COLUMN fi.bsid.num_fac IS 'REBZG — Number of the Invoice the Transaction Belongs to [numerus factura]';
COMMENT ON COLUMN fi.bsid.anf_fac_crd IS 'REBZJ — Fiscal Year of the Relevant Invoice (for Credit Memo) [annus fiscalis factura creditum]';
COMMENT ON COLUMN fi.bsid.pos_fac IS 'REBZZ — Line Item in the Relevant Invoice [positio factura]';
COMMENT ON COLUMN fi.bsid.obx IS 'MANSP — Dunning block [obex]';
COMMENT ON COLUMN fi.bsid.clv IS 'MSCHL — Dunning key [clavis]';
COMMENT ON COLUMN fi.bsid.ult IS 'MADAT — Last dunned on [ultimus]';
COMMENT ON COLUMN fi.bsid.grd IS 'MANST — Dunning level [gradus]';
COMMENT ON COLUMN fi.bsid.soc_sng IS 'VBUND — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN fi.bsid.fac_doc IS 'VBELN — Billing Document [factura documentum]';
COMMENT ON COLUMN fi.bsid.num IS 'STCEG — VAT Registration Number [numerus]';
COMMENT ON COLUMN fi.bsid.csa_cod IS 'RSTGR — Reason Code for Payments [causa codex]';
COMMENT ON COLUMN fi.bsid.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN fi.bsid.afd IS 'KKBER — Credit control area [area fidei]';
COMMENT ON COLUMN fi.bsid.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN fi.bsid.trb_cod IS 'QSSKZ — Withholding Tax Code [tributum codex]';
COMMENT ON COLUMN fi.bsid.mon_lbr IS 'PSWSL — Update Currency for General Ledger Transaction Figures [moneta liber]';
COMMENT ON COLUMN fi.bsid.sum_lbr IS 'PSWBT — Amount for Updating in General Ledger [summa liber]';
COMMENT ON COLUMN fi.bsid.dvd IS 'VBEL2 — Sales Document [documentum venditionis]';
COMMENT ON COLUMN fi.bsid.dvd_pos IS 'POSN2 — Sales Document Item [documentum venditionis positio]';
COMMENT ON COLUMN fi.bsid.trd_lor_num IS 'ETEN2 — Delivery Schedule Line Number [traditio linea ordinis numerus]';
COMMENT ON COLUMN fi.bsid.doc_sta IS 'BSTAT — Document Status [documentum status]';
COMMENT ON COLUMN fi.bsid.idx_cpn IS 'XRAGL — Indicator: Clearing was Reversed [index compensatio]';
COMMENT ON COLUMN fi.bsid.anf_cpn_doc IS 'AUGGJ — Fiscal Year of Clearing Document [annus fiscalis compensatio documentum]';

CREATE TABLE IF NOT EXISTS fi.bsik (
  cli char(3),
  soc varchar(4),
  rat_num_ven varchar(10),
  gen varchar(1),
  idx varchar(1),
  cpn_die date,
  ndo_cpn_doc varchar(10),
  asg_num_pap varchar(18),
  anf varchar(4),
  ndo varchar(10),
  num_pos_doc varchar(3),
  din_doc date,
  ddc_doc date,
  die_doc date,
  cvm varchar(5),
  rfr_ndo_ven varchar(16),
  gdo varchar(2),
  per varchar(2),
  ins_clv varchar(2),
  mta_idx varchar(1),
  dbt_crd_idx varchar(1),
  ang varchar(4),
  trb_vdt_cod varchar(2),
  sum_mon numeric(13,2),
  sum_doc_mon numeric(13,2),
  trb_sum_mon numeric(13,2),
  trb_sum_doc numeric(13,2),
  pos_txt varchar(50),
  mnd_num varchar(12),
  dem_num_mem varchar(10),
  pos_num_dem varchar(5),
  rat_num varchar(10),
  lbr_rat_pap varchar(10),
  die date,
  sol_clv varchar(4),
  ddc numeric(3,0),
  ddc2 numeric(3,0),
  net_sol_per numeric(3,0),
  sum_ddc_doc numeric(13,2),
  ddc_sum_mon numeric(13,2),
  sol varchar(1),
  sol_obx_clv varchar(1),
  clv_arg varchar(5),
  num_fac varchar(10),
  anf_fac_crd varchar(4),
  pos_fac varchar(3),
  trb_cod varchar(2),
  trb_sum numeric(13,2),
  trb_sum_doc2 numeric(13,2),
  soc_sng varchar(6),
  obx varchar(1),
  csm varchar(10),
  clu varchar(10),
  mon_lbr varchar(5),
  sum_lbr numeric(13,2),
  doc_sta varchar(1),
  idx_cpn varchar(1),
  anf_cpn_doc varchar(4),
  CONSTRAINT bsik_pk PRIMARY KEY (cli, soc, rat_num_ven, gen, idx, anf, ndo, num_pos_doc)
);
COMMENT ON TABLE fi.bsik IS 'BSIK — Accounting: Secondary Index for Vendors — open (uncleared) vendor line items. The AP-side analogue of BSID: one row per open item behind an AP reconciliation account, keyed by company code + vendor + document, until AUGBL/AUGDT clear it into BSAK. This is where a dealer''s sublet or parts-purchase payable sits before payment.';
COMMENT ON COLUMN fi.bsik.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.bsik.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.bsik.rat_num_ven IS 'LIFNR — Account Number of Vendor or Creditor [ratio numerus venditor]';
COMMENT ON COLUMN fi.bsik.gen IS 'UMSKS — Special G/L Transaction Type [genus]';
COMMENT ON COLUMN fi.bsik.idx IS 'UMSKZ — Special G/L Indicator [index]';
COMMENT ON COLUMN fi.bsik.cpn_die IS 'AUGDT — Clearing Date [compensatio dies]';
COMMENT ON COLUMN fi.bsik.ndo_cpn_doc IS 'AUGBL — Document Number of the Clearing Document [numerus documenti compensatio documentum]';
COMMENT ON COLUMN fi.bsik.asg_num_pap IS 'ZUONR — Assignment Number — the open-item control key a dealer''s sublet PO number or stock number lands on when projected into an SAP-shaped AP subledger [assignatio numerus positio aperta]';
COMMENT ON COLUMN fi.bsik.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.bsik.ndo IS 'BELNR — Accounting Document Number [numerus documenti]';
COMMENT ON COLUMN fi.bsik.num_pos_doc IS 'BUZEI — Number of Line Item Within Accounting Document [numerus positio documentum]';
COMMENT ON COLUMN fi.bsik.din_doc IS 'BUDAT — Posting Date in the Document [dies inscriptionis documentum]';
COMMENT ON COLUMN fi.bsik.ddc_doc IS 'BLDAT — Document Date in Document [dies documenti documentum]';
COMMENT ON COLUMN fi.bsik.die_doc IS 'CPUDT — Day On Which Accounting Document Was Entered [dies documentum]';
COMMENT ON COLUMN fi.bsik.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN fi.bsik.rfr_ndo_ven IS 'XBLNR — Reference Document Number — vendor invoice number lands here for schedule-to-GL reconciliation [referentia numerus documenti venditor]';
COMMENT ON COLUMN fi.bsik.gdo IS 'BLART — Document Type [genus documenti]';
COMMENT ON COLUMN fi.bsik.per IS 'MONAT — Fiscal Period [periodus]';
COMMENT ON COLUMN fi.bsik.ins_clv IS 'BSCHL — Posting Key [inscriptio clavis]';
COMMENT ON COLUMN fi.bsik.mta_idx IS 'ZUMSK — Target Special G/L Indicator [meta index]';
COMMENT ON COLUMN fi.bsik.dbt_crd_idx IS 'SHKZG — Debit/Credit Indicator [debitum creditum index]';
COMMENT ON COLUMN fi.bsik.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN fi.bsik.trb_vdt_cod IS 'MWSKZ — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN fi.bsik.sum_mon IS 'DMBTR — Amount in Local Currency [summa moneta]';
COMMENT ON COLUMN fi.bsik.sum_doc_mon IS 'WRBTR — Amount in document currency [summa documentum moneta]';
COMMENT ON COLUMN fi.bsik.trb_sum_mon IS 'MWSTS — Tax Amount in Local Currency [tributum summa moneta]';
COMMENT ON COLUMN fi.bsik.trb_sum_doc IS 'WMWST — Tax amount in document currency [tributum summa documentum]';
COMMENT ON COLUMN fi.bsik.pos_txt IS 'SGTXT — Item Text [positio textus]';
COMMENT ON COLUMN fi.bsik.mnd_num IS 'AUFNR — Order Number — the repair order (AUFK-AUFNR) a sublet payable is tied back to [mandatum numerus]';
COMMENT ON COLUMN fi.bsik.dem_num_mem IS 'EBELN — Purchasing Document Number — links the payable back to the purchase order (sublet or parts) that generated it [documentum emptionis numerus mandatum emptionis]';
COMMENT ON COLUMN fi.bsik.pos_num_dem IS 'EBELP — Item Number of Purchasing Document [positio numerus documentum emptionis]';
COMMENT ON COLUMN fi.bsik.rat_num IS 'SAKNR — G/L Account Number [ratio numerus]';
COMMENT ON COLUMN fi.bsik.lbr_rat_pap IS 'HKONT — General Ledger Account — the AP reconciliation account this open item sits behind [liber ratio positio aperta]';
COMMENT ON COLUMN fi.bsik.die IS 'ZFBDT — Baseline Date for Due Date Calculation [dies]';
COMMENT ON COLUMN fi.bsik.sol_clv IS 'ZTERM — Terms of Payment Key [solutio clavis]';
COMMENT ON COLUMN fi.bsik.ddc IS 'ZBD1T — Cash discount days 1 [deductio]';
COMMENT ON COLUMN fi.bsik.ddc2 IS 'ZBD2T — Cash discount days 2 [deductio]';
COMMENT ON COLUMN fi.bsik.net_sol_per IS 'ZBD3T — Net Payment Terms Period [netus solutio periodus]';
COMMENT ON COLUMN fi.bsik.sum_ddc_doc IS 'SKFBT — Amount Eligible for Cash Discount in Document Currency [summa deductio documentum]';
COMMENT ON COLUMN fi.bsik.ddc_sum_mon IS 'SKNTO — Cash discount amount in local currency [deductio summa moneta]';
COMMENT ON COLUMN fi.bsik.sol IS 'ZLSCH — Payment Method [solutio]';
COMMENT ON COLUMN fi.bsik.sol_obx_clv IS 'ZLSPR — Payment Block Key [solutio obex clavis]';
COMMENT ON COLUMN fi.bsik.clv_arg IS 'HBKID — Short Key for a House Bank [clavis argentaria]';
COMMENT ON COLUMN fi.bsik.num_fac IS 'REBZG — Number of the Invoice the Transaction Belongs to [numerus factura]';
COMMENT ON COLUMN fi.bsik.anf_fac_crd IS 'REBZJ — Fiscal Year of the Relevant Invoice (for Credit Memo) [annus fiscalis factura creditum]';
COMMENT ON COLUMN fi.bsik.pos_fac IS 'REBZZ — Line Item in the Relevant Invoice [positio factura]';
COMMENT ON COLUMN fi.bsik.trb_cod IS 'QSSKZ — Withholding Tax Code [tributum codex]';
COMMENT ON COLUMN fi.bsik.trb_sum IS 'QSSHB — Withholding Tax Base Amount [tributum summa]';
COMMENT ON COLUMN fi.bsik.trb_sum_doc2 IS 'QBSHB — Withholding Tax Amount (in Document Currency) [tributum summa documentum]';
COMMENT ON COLUMN fi.bsik.soc_sng IS 'VBUND — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN fi.bsik.obx IS 'MANSP — Dunning block [obex]';
COMMENT ON COLUMN fi.bsik.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN fi.bsik.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN fi.bsik.mon_lbr IS 'PSWSL — Update Currency for General Ledger Transaction Figures [moneta liber]';
COMMENT ON COLUMN fi.bsik.sum_lbr IS 'PSWBT — Amount for Updating in General Ledger [summa liber]';
COMMENT ON COLUMN fi.bsik.doc_sta IS 'BSTAT — Document Status [documentum status]';
COMMENT ON COLUMN fi.bsik.idx_cpn IS 'XRAGL — Indicator: Clearing was Reversed [index compensatio]';
COMMENT ON COLUMN fi.bsik.anf_cpn_doc IS 'AUGGJ — Fiscal Year of Clearing Document [annus fiscalis compensatio documentum]';

CREATE TABLE IF NOT EXISTS fi.bsis (
  cli char(3),
  soc varchar(4),
  lbr_rat_pap varchar(10),
  cpn_die date,
  ndo_cpn_doc varchar(10),
  asg_num_pap varchar(18),
  anf varchar(4),
  ndo varchar(10),
  num_pos_doc varchar(3),
  din_doc date,
  ddc_doc date,
  cvm varchar(5),
  rfr_ndo varchar(16),
  gdo varchar(2),
  per varchar(2),
  ins_clv varchar(2),
  dbt_crd_idx varchar(1),
  ang varchar(4),
  trb_vdt_cod varchar(2),
  pos varchar(3),
  sum_mon numeric(13,2),
  sum_doc_mon numeric(13,2),
  trb_sum_mon numeric(13,2),
  trb_sum_doc numeric(13,2),
  pos_txt varchar(50),
  prp_num varchar(16),
  mnd_num varchar(12),
  ofc_pap_cpn varchar(4),
  csm varchar(10),
  die date,
  idx_pap varchar(1),
  val_die date,
  doc_sta varchar(1),
  aes numeric(13,2),
  aes_mon numeric(13,2),
  soc_sng varchar(6),
  mon_lbr varchar(5),
  gen varchar(1),
  sum_mon2 numeric(13,2),
  sum_mon3 numeric(13,2),
  trb_sum_mon2 numeric(13,2),
  trb_sum_mon3 numeric(13,2),
  aes_mon2 numeric(13,2),
  rpm_mon numeric(13,2),
  idx_cpn varchar(1),
  ops_elm_eop varchar(8),
  clu varchar(10),
  idx_doc_rvs varchar(1),
  idx_doc varchar(1),
  sum_lbr numeric(13,2),
  idx_ins varchar(1),
  sol_pos varchar(3),
  sol_tsc varchar(10),
  rfr_clv_pos varchar(20),
  bupla varchar(4),
  rpm numeric(13,2),
  rpm2 numeric(13,2),
  rpm3 numeric(13,2),
  gen2 varchar(3),
  clv_obi varchar(8),
  rfr_die_tsc date,
  grant_nbr varchar(20),
  afn varchar(16),
  pos2 varchar(14),
  fistl varchar(16),
  geber varchar(10),
  scs_clu varchar(10),
  pos3 varchar(1),
  anf_cpn_doc varchar(4),
  seg varchar(10),
  scs_seg varchar(10),
  trb_cod varchar(2),
  CONSTRAINT bsis_pk PRIMARY KEY (cli, soc, lbr_rat_pap, cpn_die, ndo_cpn_doc, asg_num_pap, anf, ndo, num_pos_doc)
);
COMMENT ON TABLE fi.bsis IS 'BSIS — Accounting: Secondary Index for G/L Accounts — open (uncleared) G/L line items. The final piece of the open-item picture alongside BSID/BSAD (customer) and BSIK/BSAK (vendor): one row per open item sitting behind a G/L account that carries open-item management (e.g. GR/IR, bank clearing, salary clearing), keyed by company code + G/L account + document, until AUGBL/AUGDT clear it into BSAS.';
COMMENT ON COLUMN fi.bsis.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.bsis.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.bsis.lbr_rat_pap IS 'HKONT — General Ledger Account — the open-item-managed G/L account this line sits behind [liber ratio positio aperta]';
COMMENT ON COLUMN fi.bsis.cpn_die IS 'AUGDT — Clearing Date [compensatio dies]';
COMMENT ON COLUMN fi.bsis.ndo_cpn_doc IS 'AUGBL — Document Number of the Clearing Document [numerus documenti compensatio documentum]';
COMMENT ON COLUMN fi.bsis.asg_num_pap IS 'ZUONR — Assignment Number — the open-item control key [assignatio numerus positio aperta]';
COMMENT ON COLUMN fi.bsis.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.bsis.ndo IS 'BELNR — Accounting Document Number [numerus documenti]';
COMMENT ON COLUMN fi.bsis.num_pos_doc IS 'BUZEI — Number of Line Item Within Accounting Document [numerus positio documentum]';
COMMENT ON COLUMN fi.bsis.din_doc IS 'BUDAT — Posting Date in the Document [dies inscriptionis documentum]';
COMMENT ON COLUMN fi.bsis.ddc_doc IS 'BLDAT — Document Date in Document [dies documenti documentum]';
COMMENT ON COLUMN fi.bsis.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN fi.bsis.rfr_ndo IS 'XBLNR — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN fi.bsis.gdo IS 'BLART — Document Type [genus documenti]';
COMMENT ON COLUMN fi.bsis.per IS 'MONAT — Fiscal Period [periodus]';
COMMENT ON COLUMN fi.bsis.ins_clv IS 'BSCHL — Posting Key [inscriptio clavis]';
COMMENT ON COLUMN fi.bsis.dbt_crd_idx IS 'SHKZG — Debit/Credit Indicator [debitum creditum index]';
COMMENT ON COLUMN fi.bsis.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN fi.bsis.trb_vdt_cod IS 'MWSKZ — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN fi.bsis.pos IS 'FKONT — Financial Budget Item [positio]';
COMMENT ON COLUMN fi.bsis.sum_mon IS 'DMBTR — Amount in Local Currency [summa moneta]';
COMMENT ON COLUMN fi.bsis.sum_doc_mon IS 'WRBTR — Amount in document currency [summa documentum moneta]';
COMMENT ON COLUMN fi.bsis.trb_sum_mon IS 'MWSTS — Tax Amount in Local Currency [tributum summa moneta]';
COMMENT ON COLUMN fi.bsis.trb_sum_doc IS 'WMWST — Tax amount in document currency [tributum summa documentum]';
COMMENT ON COLUMN fi.bsis.pos_txt IS 'SGTXT — Item Text [positio textus]';
COMMENT ON COLUMN fi.bsis.prp_num IS 'PROJN — Old: Project number : No longer used --> PS_POSNR [propositum numerus]';
COMMENT ON COLUMN fi.bsis.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN fi.bsis.ofc_pap_cpn IS 'WERKS — Plant — the plant this G/L open item is tied to, e.g. a GR/IR clearing line generated by a goods receipt at a specific plant [officina positio aperta compensatio]';
COMMENT ON COLUMN fi.bsis.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN fi.bsis.die IS 'ZFBDT — Baseline Date for Due Date Calculation [dies]';
COMMENT ON COLUMN fi.bsis.idx_pap IS 'XOPVW — Indicator: Open item management? [index positio aperta]';
COMMENT ON COLUMN fi.bsis.val_die IS 'VALUT — Value date [valor dies]';
COMMENT ON COLUMN fi.bsis.doc_sta IS 'BSTAT — Document Status [documentum status]';
COMMENT ON COLUMN fi.bsis.aes IS 'BDIFF — Valuation Difference [aestimatio]';
COMMENT ON COLUMN fi.bsis.aes_mon IS 'BDIF2 — Valuation Difference for the Second Local Currency [aestimatio moneta]';
COMMENT ON COLUMN fi.bsis.soc_sng IS 'VBUND — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN fi.bsis.mon_lbr IS 'PSWSL — Update Currency for General Ledger Transaction Figures [moneta liber]';
COMMENT ON COLUMN fi.bsis.gen IS 'WVERW — Bill of exchange usage type [genus]';
COMMENT ON COLUMN fi.bsis.sum_mon2 IS 'DMBE2 — Amount in Second Local Currency [summa moneta]';
COMMENT ON COLUMN fi.bsis.sum_mon3 IS 'DMBE3 — Amount in Third Local Currency [summa moneta]';
COMMENT ON COLUMN fi.bsis.trb_sum_mon2 IS 'MWST2 — Tax Amount in Second Local Currency [tributum summa moneta]';
COMMENT ON COLUMN fi.bsis.trb_sum_mon3 IS 'MWST3 — Tax Amount in Third Local Currency [tributum summa moneta]';
COMMENT ON COLUMN fi.bsis.aes_mon2 IS 'BDIF3 — Valuation Difference for the Third Local Currency [aestimatio moneta]';
COMMENT ON COLUMN fi.bsis.rpm_mon IS 'RDIF3 — Exchange Rate Difference Realized for Third Local Currency [ratio permutationis moneta]';
COMMENT ON COLUMN fi.bsis.idx_cpn IS 'XRAGL — Indicator: Clearing was Reversed [index compensatio]';
COMMENT ON COLUMN fi.bsis.ops_elm_eop IS 'PROJK — Work Breakdown Structure Element (WBS Element) [opus elementum elementum operis]';
COMMENT ON COLUMN fi.bsis.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN fi.bsis.idx_doc_rvs IS 'XSTOV — Indicator: Document is flagged for reversal [index documentum reversio]';
COMMENT ON COLUMN fi.bsis.idx_doc IS 'XARCH — Indicator: Document already archived ? [index documentum]';
COMMENT ON COLUMN fi.bsis.sum_lbr IS 'PSWBT — Amount for Updating in General Ledger [summa liber]';
COMMENT ON COLUMN fi.bsis.idx_ins IS 'XNEGP — Indicator: Negative posting [index inscriptio]';
COMMENT ON COLUMN fi.bsis.sol_pos IS 'RFZEI — Payment Card Item [solutio positio]';
COMMENT ON COLUMN fi.bsis.sol_tsc IS 'CCBTC — Payment cards: Settlement run [solutio transactio]';
COMMENT ON COLUMN fi.bsis.rfr_clv_pos IS 'XREF3 — Reference key for line item [referentia clavis positio]';
COMMENT ON COLUMN fi.bsis.bupla IS 'BUPLA — Business Place';
COMMENT ON COLUMN fi.bsis.rpm IS 'PPDIFF — Realized Exchange Rate Gain/Loss 1.Loc.Curr.(Part Payments) [ratio permutationis]';
COMMENT ON COLUMN fi.bsis.rpm2 IS 'PPDIF2 — Realized Exchange Rate Gain/Loss 2.Loc. Curr.(Part Payments) [ratio permutationis]';
COMMENT ON COLUMN fi.bsis.rpm3 IS 'PPDIF3 — Realized Exchange Rate Gain/Loss 3.Loc.Curr.(Part Payments) [ratio permutationis]';
COMMENT ON COLUMN fi.bsis.gen2 IS 'BEWAR — Transaction Type [genus]';
COMMENT ON COLUMN fi.bsis.clv_obi IS 'IMKEY — Internal Key for Real Estate Object [clavis obiectum]';
COMMENT ON COLUMN fi.bsis.rfr_die_tsc IS 'DABRZ — Reference Date for Settlement [referentia dies transactio]';
COMMENT ON COLUMN fi.bsis.grant_nbr IS 'GRANT_NBR — Grant';
COMMENT ON COLUMN fi.bsis.afn IS 'FKBER — Functional Area [area functionis]';
COMMENT ON COLUMN fi.bsis.pos2 IS 'FIPOS — Commitment Item [positio]';
COMMENT ON COLUMN fi.bsis.fistl IS 'FISTL — Funds Center';
COMMENT ON COLUMN fi.bsis.geber IS 'GEBER — Fund';
COMMENT ON COLUMN fi.bsis.scs_clu IS 'PPRCT — Partner Profit Center [socius centrum lucri]';
COMMENT ON COLUMN fi.bsis.pos3 IS 'BUZID — Identification of the Line Item [positio]';
COMMENT ON COLUMN fi.bsis.anf_cpn_doc IS 'AUGGJ — Fiscal Year of Clearing Document [annus fiscalis compensatio documentum]';
COMMENT ON COLUMN fi.bsis.seg IS 'SEGMENT — Segment for Segmental Reporting [segmentum]';
COMMENT ON COLUMN fi.bsis.scs_seg IS 'PSEGMENT — Partner Segment for Segmental Reporting [socius segmentum]';
COMMENT ON COLUMN fi.bsis.trb_cod IS 'QSSKZ — Withholding Tax Code [tributum codex]';

CREATE TABLE IF NOT EXISTS fi.faglflexa (
  cli char(3),
  anf varchar(4),
  ndo varchar(10),
  lbr varchar(2),
  soc varchar(4),
  ins_pos_lbr varchar(6),
  tbl_gen varchar(1),
  vrs varchar(3),
  activ varchar(4),
  gen varchar(3),
  cvm varchar(5),
  cvm_mon varchar(5),
  men varchar(3),
  rfr varchar(5),
  logsys varchar(10),
  rat_num_eph varchar(10),
  smp_elm varchar(10),
  csm varchar(10),
  clu varchar(10),
  afn varchar(16),
  ang varchar(4),
  amd varchar(4),
  seg varchar(10),
  csm2 varchar(10),
  scs_clu varchar(10),
  scs_afn varchar(16),
  sng_ang varchar(4),
  soc_sng varchar(6),
  scs_seg varchar(10),
  val_mon numeric(23,2),
  val_mon2 numeric(23,2),
  val_cts_mon numeric(23,2),
  val_mon3 numeric(23,2),
  qnt numeric(23,3),
  val_mon_doc numeric(23,2),
  dbt_crd_idx varchar(1),
  ins_per varchar(3),
  anf2 varchar(4),
  din_doc date,
  ndo2 varchar(10),
  num_pos_doc varchar(3),
  ins_clv varchar(2),
  doc_sta varchar(1),
  pos_ctg varchar(5),
  pos_mut_doc varchar(1),
  usr_nom varchar(12),
  tmp_frm numeric(15,0),
  CONSTRAINT faglflexa_pk PRIMARY KEY (cli, anf, ndo, lbr, soc, ins_pos_lbr)
);
COMMENT ON TABLE fi.faglflexa IS 'FAGLFLEXA — General Ledger: Actual Line Items — the New G/L (new-GL) flexible line-item table, SAP''s pre-S/4HANA ancestor of ACDOCA. Where S/4HANA writes every FI+CO+AA line to the single Universal Journal (ACDOCA), an ECC/New-GL customer writes the equivalent actual line item here, one row per ledger per document per line, split by dimension (profit center, segment, functional area, business area). A customer running classic ECC mirrors this table; a customer on S/4HANA mirrors ACDOCA — the model must read both to cover the FI lane across a customer''s install base.';
COMMENT ON COLUMN fi.faglflexa.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN fi.faglflexa.anf IS 'RYEAR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.faglflexa.ndo IS 'DOCNR — Accounting Document Number [numerus documenti]';
COMMENT ON COLUMN fi.faglflexa.lbr IS 'RLDNR — Ledger in General Ledger Accounting [liber]';
COMMENT ON COLUMN fi.faglflexa.soc IS 'RBUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.faglflexa.ins_pos_lbr IS 'DOCLN — Six-Character Posting Item for Ledger [inscriptio positio liber]';
COMMENT ON COLUMN fi.faglflexa.tbl_gen IS 'RRCTY — Record Type [tabula genus]';
COMMENT ON COLUMN fi.faglflexa.vrs IS 'RVERS — Version [versio]';
COMMENT ON COLUMN fi.faglflexa.activ IS 'ACTIV — FI-SL Business Transaction';
COMMENT ON COLUMN fi.faglflexa.gen IS 'RMVCT — Transaction Type [genus]';
COMMENT ON COLUMN fi.faglflexa.cvm IS 'RTCUR — Currency Key [clavis monetae]';
COMMENT ON COLUMN fi.faglflexa.cvm_mon IS 'RWCUR — Currency key of the original transaction currency [clavis monetae moneta]';
COMMENT ON COLUMN fi.faglflexa.men IS 'RUNIT — Base Unit of Measure [mensura]';
COMMENT ON COLUMN fi.faglflexa.rfr IS 'AWTYP — Reference Transaction [referentia]';
COMMENT ON COLUMN fi.faglflexa.logsys IS 'LOGSYS — Logical system';
COMMENT ON COLUMN fi.faglflexa.rat_num_eph IS 'RACCT — Account Number — the G/L account this journal line posted to [ratio numerus ephemeris]';
COMMENT ON COLUMN fi.faglflexa.smp_elm IS 'COST_ELEM — Cost Element [sumptus elementum]';
COMMENT ON COLUMN fi.faglflexa.csm IS 'RCNTR — Cost Center [centrum sumptus]';
COMMENT ON COLUMN fi.faglflexa.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN fi.faglflexa.afn IS 'RFAREA — Functional Area [area functionis]';
COMMENT ON COLUMN fi.faglflexa.ang IS 'RBUSA — Business Area [area negotii]';
COMMENT ON COLUMN fi.faglflexa.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN fi.faglflexa.seg IS 'SEGMENT — Segment for Segmental Reporting [segmentum]';
COMMENT ON COLUMN fi.faglflexa.csm2 IS 'SCNTR — Sender cost center [centrum sumptus]';
COMMENT ON COLUMN fi.faglflexa.scs_clu IS 'PPRCTR — Partner Profit Center [socius centrum lucri]';
COMMENT ON COLUMN fi.faglflexa.scs_afn IS 'SFAREA — Partner Functional Area [socius area functionis]';
COMMENT ON COLUMN fi.faglflexa.sng_ang IS 'SBUSA — Trading partner''s business area [socius negotiationis area negotii]';
COMMENT ON COLUMN fi.faglflexa.soc_sng IS 'RASSC — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN fi.faglflexa.scs_seg IS 'PSEGMENT — Partner Segment for Segmental Reporting [socius segmentum]';
COMMENT ON COLUMN fi.faglflexa.val_mon IS 'TSL — Value in Transaction Currency [valor moneta]';
COMMENT ON COLUMN fi.faglflexa.val_mon2 IS 'HSL — Value in Local Currency [valor moneta]';
COMMENT ON COLUMN fi.faglflexa.val_cts_mon IS 'KSL — Value in Group Currency [valor coetus moneta]';
COMMENT ON COLUMN fi.faglflexa.val_mon3 IS 'OSL — Value in Another Currency [valor moneta]';
COMMENT ON COLUMN fi.faglflexa.qnt IS 'MSL — Quantity [quantitas]';
COMMENT ON COLUMN fi.faglflexa.val_mon_doc IS 'WSL — Value in Original Transaction Currency (Document Currency) [valor moneta documentum]';
COMMENT ON COLUMN fi.faglflexa.dbt_crd_idx IS 'DRCRK — Debit/Credit Indicator [debitum creditum index]';
COMMENT ON COLUMN fi.faglflexa.ins_per IS 'POPER — Posting period [inscriptio periodus]';
COMMENT ON COLUMN fi.faglflexa.anf2 IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.faglflexa.din_doc IS 'BUDAT — Posting Date in the Document [dies inscriptionis documentum]';
COMMENT ON COLUMN fi.faglflexa.ndo2 IS 'BELNR — Accounting Document Number [numerus documenti]';
COMMENT ON COLUMN fi.faglflexa.num_pos_doc IS 'BUZEI — Number of Line Item Within Accounting Document [numerus positio documentum]';
COMMENT ON COLUMN fi.faglflexa.ins_clv IS 'BSCHL — Posting Key [inscriptio clavis]';
COMMENT ON COLUMN fi.faglflexa.doc_sta IS 'BSTAT — Document Status [documentum status]';
COMMENT ON COLUMN fi.faglflexa.pos_ctg IS 'LINETYPE — Item category [positio categoria]';
COMMENT ON COLUMN fi.faglflexa.pos_mut_doc IS 'XSPLITMOD — Item changed by document splitting [positio mutatus documentum]';
COMMENT ON COLUMN fi.faglflexa.usr_nom IS 'USNAM — User name [usor nomen]';
COMMENT ON COLUMN fi.faglflexa.tmp_frm IS 'TIMESTAMP — UTC Time Stamp in Short Form (YYYYMMDDhhmmss) [tempus forma]';

CREATE TABLE IF NOT EXISTS fi.faglflext (
  cli char(3),
  anf varchar(4),
  tbl_gen varchar(1),
  vrs varchar(3),
  lbr varchar(2),
  soc varchar(4),
  rat_num varchar(10),
  activ varchar(4),
  gen varchar(3),
  cvm varchar(5),
  men varchar(3),
  rfr varchar(5),
  logsys varchar(10),
  smp_elm varchar(10),
  csm varchar(10),
  clu varchar(10),
  afn varchar(16),
  ang varchar(4),
  amd varchar(4),
  seg varchar(10),
  csm2 varchar(10),
  scs_clu varchar(10),
  scs_afn varchar(16),
  sng_ang varchar(4),
  soc_sng varchar(6),
  scs_seg varchar(10),
  aeq_mon numeric(23,2),
  tot_per_mon numeric(23,2),
  tot_per_mon2 numeric(23,2),
  tot_per_ann numeric(23,2),
  aeq_mon2 numeric(23,2),
  tot_per_mon3 numeric(23,2),
  tot_per_mon4 numeric(23,2),
  tot_per_ann2 numeric(23,2),
  aeq_cts_mon numeric(23,2),
  tot_per_cts numeric(23,2),
  tot_per_cts2 numeric(23,2),
  tot_per_ann3 numeric(23,2),
  aeq_mon3 numeric(23,2),
  tot_per_mon5 numeric(23,2),
  aeq_qnt numeric(23,3),
  tot_per numeric(23,3),
  tot_per2 numeric(23,3),
  tmp_frm numeric(15,0),
  CONSTRAINT faglflext_pk PRIMARY KEY (cli, anf, lbr, soc, rat_num, cvm)
);
COMMENT ON TABLE fi.faglflext IS 'FAGLFLEXT — General Ledger: Totals — the New G/L (new-GL) flexible totals table, SAP''s pre-S/4HANA ancestor of the account/period aggregates a customer would otherwise derive by summarizing ACDOCA. Carries one row per ledger/company code/account/dimension combination with a balance-carryforward bucket plus 16 period buckets, in up to four parallel currencies (transaction, local, group, and a fourth freely-defined currency) and a quantity total. SAP''s real table carries a full 16-period array per currency (TSL01-TSL16, HSL01-HSL16, KSL01-KSL16, OSL01-OSL16, MSL01-MSL16) plus 8 OBJNR table-group fields; thi';
COMMENT ON COLUMN fi.faglflext.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN fi.faglflext.anf IS 'RYEAR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.faglflext.tbl_gen IS 'RRCTY — Record Type [tabula genus]';
COMMENT ON COLUMN fi.faglflext.vrs IS 'RVERS — Version [versio]';
COMMENT ON COLUMN fi.faglflext.lbr IS 'RLDNR — Ledger in General Ledger Accounting [liber]';
COMMENT ON COLUMN fi.faglflext.soc IS 'RBUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.faglflext.rat_num IS 'RACCT — Account Number — the G/L account this totals row aggregates [ratio numerus]';
COMMENT ON COLUMN fi.faglflext.activ IS 'ACTIV — FI-SL Business Transaction';
COMMENT ON COLUMN fi.faglflext.gen IS 'RMVCT — Transaction Type [genus]';
COMMENT ON COLUMN fi.faglflext.cvm IS 'RTCUR — Currency Key [clavis monetae]';
COMMENT ON COLUMN fi.faglflext.men IS 'RUNIT — Base Unit of Measure [mensura]';
COMMENT ON COLUMN fi.faglflext.rfr IS 'AWTYP — Reference Transaction [referentia]';
COMMENT ON COLUMN fi.faglflext.logsys IS 'LOGSYS — Logical system';
COMMENT ON COLUMN fi.faglflext.smp_elm IS 'COST_ELEM — Cost Element [sumptus elementum]';
COMMENT ON COLUMN fi.faglflext.csm IS 'RCNTR — Cost Center [centrum sumptus]';
COMMENT ON COLUMN fi.faglflext.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN fi.faglflext.afn IS 'RFAREA — Functional Area [area functionis]';
COMMENT ON COLUMN fi.faglflext.ang IS 'RBUSA — Business Area [area negotii]';
COMMENT ON COLUMN fi.faglflext.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN fi.faglflext.seg IS 'SEGMENT — Segment for Segmental Reporting [segmentum]';
COMMENT ON COLUMN fi.faglflext.csm2 IS 'SCNTR — Sender cost center [centrum sumptus]';
COMMENT ON COLUMN fi.faglflext.scs_clu IS 'PPRCTR — Partner Profit Center [socius centrum lucri]';
COMMENT ON COLUMN fi.faglflext.scs_afn IS 'SFAREA — Partner Functional Area [socius area functionis]';
COMMENT ON COLUMN fi.faglflext.sng_ang IS 'SBUSA — Trading partner''s business area [socius negotiationis area negotii]';
COMMENT ON COLUMN fi.faglflext.soc_sng IS 'RASSC — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN fi.faglflext.scs_seg IS 'PSEGMENT — Partner Segment for Segmental Reporting [socius segmentum]';
COMMENT ON COLUMN fi.faglflext.aeq_mon IS 'TSLVT — Balance carried forward in transaction currency [aequilibrium moneta]';
COMMENT ON COLUMN fi.faglflext.tot_per_mon IS 'TSL01 — Total of transactions of period 1 in transaction currency (representative of the TSL01-TSL16 period array) [summa totalis periodus moneta]';
COMMENT ON COLUMN fi.faglflext.tot_per_mon2 IS 'TSL12 — Total of transactions of period 12 in transaction currency (representative of the TSL01-TSL16 period array) [summa totalis periodus moneta]';
COMMENT ON COLUMN fi.faglflext.tot_per_ann IS 'TSL16 — Total of transactions of period 16 (year-end/adjustment period) in transaction currency (representative of the TSL01-TSL16 period array) [summa totalis periodus annus]';
COMMENT ON COLUMN fi.faglflext.aeq_mon2 IS 'HSLVT — Balance carried forward in local currency [aequilibrium moneta]';
COMMENT ON COLUMN fi.faglflext.tot_per_mon3 IS 'HSL01 — Total of transactions of period 1 in local currency (representative of the HSL01-HSL16 period array) [summa totalis periodus moneta]';
COMMENT ON COLUMN fi.faglflext.tot_per_mon4 IS 'HSL12 — Total of transactions of period 12 in local currency (representative of the HSL01-HSL16 period array) [summa totalis periodus moneta]';
COMMENT ON COLUMN fi.faglflext.tot_per_ann2 IS 'HSL16 — Total of transactions of period 16 (year-end/adjustment period) in local currency (representative of the HSL01-HSL16 period array) [summa totalis periodus annus]';
COMMENT ON COLUMN fi.faglflext.aeq_cts_mon IS 'KSLVT — Balance carried forward in group currency [aequilibrium coetus moneta]';
COMMENT ON COLUMN fi.faglflext.tot_per_cts IS 'KSL01 — Total of transactions of period 1 in group currency (representative of the KSL01-KSL16 period array) [summa totalis periodus coetus]';
COMMENT ON COLUMN fi.faglflext.tot_per_cts2 IS 'KSL12 — Total of transactions of period 12 in group currency (representative of the KSL01-KSL16 period array) [summa totalis periodus coetus]';
COMMENT ON COLUMN fi.faglflext.tot_per_ann3 IS 'KSL16 — Total of transactions of period 16 (year-end/adjustment period) in group currency (representative of the KSL01-KSL16 period array) [summa totalis periodus annus]';
COMMENT ON COLUMN fi.faglflext.aeq_mon3 IS 'OSLVT — Balance carried forward in fourth (freely defined) currency [aequilibrium moneta]';
COMMENT ON COLUMN fi.faglflext.tot_per_mon5 IS 'OSL01 — Total transactions for period 1 in the fourth currency (representative of the OSL01-OSL16 period array) [summa totalis periodus moneta]';
COMMENT ON COLUMN fi.faglflext.aeq_qnt IS 'MSLVT — Balance carried forward of quantity [aequilibrium quantitas]';
COMMENT ON COLUMN fi.faglflext.tot_per IS 'MSL01 — Total of the transactions of period 1 in units of measure (representative of the MSL01-MSL16 period array) [summa totalis periodus]';
COMMENT ON COLUMN fi.faglflext.tot_per2 IS 'MSL12 — Total of the transactions of period 12 in units of measure (representative of the MSL01-MSL16 period array) [summa totalis periodus]';
COMMENT ON COLUMN fi.faglflext.tmp_frm IS 'TIMESTAMP — UTC Time Stamp in Short Form (YYYYMMDDhhmmss) [tempus forma]';

CREATE TABLE IF NOT EXISTS fi.febep (
  cli char(3),
  clv varchar(8),
  tbl_num_pos varchar(5),
  pos varchar(1),
  vb1ok varchar(1),
  vb2ba varchar(1),
  vb2ok varchar(1),
  pipre varchar(1),
  num varchar(2),
  sta varchar(4),
  ndo varchar(10),
  anf varchar(4),
  din_arg date,
  din_doc date,
  val_die_pos date,
  val_die_tmp varchar(6),
  rat_cvm varchar(5),
  sum_rat_mon numeric(13,2),
  rat_mon numeric(13,2),
  cvm_rat_mon varchar(5),
  mon_sum_rat numeric(13,2),
  mon_rat numeric(13,2),
  cod varchar(3),
  txt_clv varchar(4),
  vgext varchar(27),
  vgman varchar(4),
  ins varchar(4),
  rat varchar(10),
  arg_ins_txt varchar(50),
  rfr_ndo varchar(16),
  asg_num varchar(18),
  ptr_clv_scs varchar(3),
  arg_num_scs varchar(15),
  cod_scs_arg varchar(11),
  rat_num_scs varchar(18),
  scs varchar(55),
  busab varchar(2),
  csm varchar(10),
  ang varchar(4),
  clu varchar(10),
  pct_num varchar(13),
  pct_gen varchar(1),
  num2 varchar(10),
  num3 varchar(13),
  dbt_crd_clv varchar(1),
  sol_num varchar(16),
  intag varchar(3),
  ndo2 varchar(10),
  sol_rat_ndo varchar(10),
  rat_num varchar(10),
  sol_rat_gen varchar(1),
  rat_num2 varchar(10),
  rpm_mon numeric(9,5),
  pos_txt varchar(50),
  arg_rfr_num varchar(35),
  rfr_clv varchar(20),
  rfr varchar(5),
  sol_rfr varchar(30),
  scs_rag varchar(34),
  soc varchar(4),
  trnid varchar(35),
  rpm_mon_rat numeric(9,5),
  pos2 varchar(24),
  CONSTRAINT febep_pk PRIMARY KEY (cli, clv, tbl_num_pos)
);
COMMENT ON TABLE fi.febep IS 'FEBEP — Electronic Bank Statement Line Items — each individual memo/transaction line within an imported bank statement (amount, value date, business transaction code, posting rule, partner bank details, and the resulting subledger/accounting document number), keyed by KUKEY (pointing to its FEBKO header) plus ESNUM. This is where the bank statement''s cash movements are matched to open items and posted: BELNR/NBBLN carry the accounting or subledger document number that the interpretation algorithm created, and that document is what lands in BSEG and, in S/4HANA, ACDOCA — an FEBEP line whose amount (KWB';
COMMENT ON COLUMN fi.febep.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.febep.clv IS 'KUKEY — Short key (surrogate) [clavis]';
COMMENT ON COLUMN fi.febep.tbl_num_pos IS 'ESNUM — Memo record number (line item number in bank statement) [tabula numerus positio]';
COMMENT ON COLUMN fi.febep.pos IS 'EPERL — Line item completed [positio]';
COMMENT ON COLUMN fi.febep.vb1ok IS 'VB1OK — Update 1 OK';
COMMENT ON COLUMN fi.febep.vb2ba IS 'VB2BA — 2nd update processed';
COMMENT ON COLUMN fi.febep.vb2ok IS 'VB2OK — 2nd update OK';
COMMENT ON COLUMN fi.febep.pipre IS 'PIPRE — Line items were interpreted';
COMMENT ON COLUMN fi.febep.num IS 'GRPNR — Bundle number for grouping line items [numerus]';
COMMENT ON COLUMN fi.febep.sta IS 'ESTAT — Error status [status]';
COMMENT ON COLUMN fi.febep.ndo IS 'BELNR — Accounting Document Number [numerus documenti]';
COMMENT ON COLUMN fi.febep.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.febep.din_arg IS 'BVDAT — Posting date at the bank [dies inscriptionis argentaria]';
COMMENT ON COLUMN fi.febep.din_doc IS 'BUDAT — Posting date in the document [dies inscriptionis documentum]';
COMMENT ON COLUMN fi.febep.val_die_pos IS 'VALUT — Value date of the item to be cleared [valor dies positio]';
COMMENT ON COLUMN fi.febep.val_die_tmp IS 'BUTIM — Value date time [valor dies tempus]';
COMMENT ON COLUMN fi.febep.rat_cvm IS 'KWAER — Account Currency Key [ratio clavis monetae]';
COMMENT ON COLUMN fi.febep.sum_rat_mon IS 'KWBTR — Amount in account currency [summa ratio moneta]';
COMMENT ON COLUMN fi.febep.rat_mon IS 'SPESK — Fees in account currency [ratio moneta]';
COMMENT ON COLUMN fi.febep.cvm_rat_mon IS 'FWAER — Foreign currency key (unequal to account currency) [clavis monetae ratio moneta]';
COMMENT ON COLUMN fi.febep.mon_sum_rat IS 'FWBTR — Foreign currency amount (different from account currency) [moneta summa ratio]';
COMMENT ON COLUMN fi.febep.mon_rat IS 'SPESF — Fees in foreign currency (not same as account currency) [moneta ratio]';
COMMENT ON COLUMN fi.febep.cod IS 'VORGC — Business transaction code [codex]';
COMMENT ON COLUMN fi.febep.txt_clv IS 'TEXTS — Text key [textus clavis]';
COMMENT ON COLUMN fi.febep.vgext IS 'VGEXT — External business transaction';
COMMENT ON COLUMN fi.febep.vgman IS 'VGMAN — Transaction';
COMMENT ON COLUMN fi.febep.ins IS 'VGINT — Posting rule [inscriptio]';
COMMENT ON COLUMN fi.febep.rat IS 'KFMOD — Account modification [ratio]';
COMMENT ON COLUMN fi.febep.arg_ins_txt IS 'BUTXT — Bank posting text [argentaria inscriptio textus]';
COMMENT ON COLUMN fi.febep.rfr_ndo IS 'XBLNR — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN fi.febep.asg_num IS 'ZUONR — Assignment Number [assignatio numerus]';
COMMENT ON COLUMN fi.febep.ptr_clv_scs IS 'PABKS — Country key of partner bank [patria clavis socius]';
COMMENT ON COLUMN fi.febep.arg_num_scs IS 'PABLZ — Bank number of partner bank [argentaria numerus socius]';
COMMENT ON COLUMN fi.febep.cod_scs_arg IS 'PASWI — SWIFT code of partner bank [codex socius argentaria]';
COMMENT ON COLUMN fi.febep.rat_num_scs IS 'PAKTO — Account number at the partner bank [ratio numerus socius]';
COMMENT ON COLUMN fi.febep.scs IS 'PARTN — Business Partner [socius]';
COMMENT ON COLUMN fi.febep.busab IS 'BUSAB — Accounting Clerk';
COMMENT ON COLUMN fi.febep.csm IS 'KOSTL — Cost center [centrum sumptus]';
COMMENT ON COLUMN fi.febep.ang IS 'GSBER — Business area [area negotii]';
COMMENT ON COLUMN fi.febep.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN fi.febep.pct_num IS 'VERTN — Contract Number [pactum numerus]';
COMMENT ON COLUMN fi.febep.pct_gen IS 'VERTT — Contract Type [pactum genus]';
COMMENT ON COLUMN fi.febep.num2 IS 'PNOTA — Daybook number [numerus]';
COMMENT ON COLUMN fi.febep.num3 IS 'CHECT — Check number [numerus]';
COMMENT ON COLUMN fi.febep.dbt_crd_clv IS 'EPVOZ — Debit/credit key for line items (for bank purposes) [debitum creditum clavis]';
COMMENT ON COLUMN fi.febep.sol_num IS 'AVSID — Payment Advice Number [solutio numerus]';
COMMENT ON COLUMN fi.febep.intag IS 'INTAG — Interpretation algorithm';
COMMENT ON COLUMN fi.febep.ndo2 IS 'NBBLN — Subledger document number [numerus documenti]';
COMMENT ON COLUMN fi.febep.sol_rat_ndo IS 'AKBLN — Payment on account document number [solutio ratio numerus documenti]';
COMMENT ON COLUMN fi.febep.rat_num IS 'KNRZA — Account number of an alternative payer [ratio numerus]';
COMMENT ON COLUMN fi.febep.sol_rat_gen IS 'AVKOA — Payment Advice Account Type [solutio ratio genus]';
COMMENT ON COLUMN fi.febep.rat_num2 IS 'AVKON — Account Number [ratio numerus]';
COMMENT ON COLUMN fi.febep.rpm_mon IS 'KURSF — Exchange rate (different from local currency) [ratio permutationis moneta]';
COMMENT ON COLUMN fi.febep.pos_txt IS 'SGTXT — Item Text [positio textus]';
COMMENT ON COLUMN fi.febep.arg_rfr_num IS 'VGREF — Bank Reference Number [argentaria referentia numerus]';
COMMENT ON COLUMN fi.febep.rfr_clv IS 'XBENR — Reference Key [referentia clavis]';
COMMENT ON COLUMN fi.febep.rfr IS 'XBTYP — Reference Transaction [referentia]';
COMMENT ON COLUMN fi.febep.sol_rfr IS 'KIDNO — Payment Reference [solutio referentia]';
COMMENT ON COLUMN fi.febep.scs_rag IS 'PIBAN — Partner Bank Account: IBAN [socius ratio argentariae]';
COMMENT ON COLUMN fi.febep.soc IS 'SVBUK — Company Code [codex societatis]';
COMMENT ON COLUMN fi.febep.trnid IS 'TRNID — Transaction ID';
COMMENT ON COLUMN fi.febep.rpm_mon_rat IS 'CURR_RATE — Exchange Rate: Foreign Currency to Account Currency [ratio permutationis moneta ratio]';
COMMENT ON COLUMN fi.febep.pos2 IS 'FIPEX — Commitment Item [positio]';

CREATE TABLE IF NOT EXISTS fi.febko (
  cli char(3),
  clv varchar(8),
  arg varchar(4),
  arg2 varchar(50),
  arg3 varchar(20),
  emkey varchar(20),
  sta varchar(1),
  sta2 varchar(1),
  are varchar(1),
  are2 varchar(1),
  cap_tbl varchar(1),
  exp_die date,
  nom_arg varchar(12),
  xkep1 varchar(1),
  nom varchar(12),
  xkep2 varchar(1),
  die date,
  tmp time,
  gen varchar(1),
  lbr_rat varchar(10),
  rag_num varchar(18),
  rag varchar(35),
  rat_nom varchar(35),
  num varchar(5),
  num2 varchar(3),
  die2 date,
  soc varchar(4),
  tbr varchar(4),
  cvm varchar(5),
  aeq_gen varchar(1),
  aeq varchar(1),
  aeq_sum numeric(17,2),
  tot_dbt numeric(17,2),
  tot_crd numeric(17,2),
  aeq_gen2 varchar(1),
  aeq2 varchar(1),
  aeq_sum2 numeric(17,2),
  aeq_mon numeric(17,2),
  ini date,
  fin date,
  crd_usu numeric(9,3),
  emp_ven_num varchar(20),
  rag_gen varchar(23),
  num_arg varchar(5),
  gen2 varchar(8),
  gen3 varchar(1),
  clv_arg varchar(5),
  rat varchar(5),
  usr_arg varchar(12),
  die_arg date,
  tmp_arg time,
  rfr_arg varchar(20),
  sol_cre varchar(1),
  cns_gen varchar(2),
  arg4 varchar(1),
  rfr_clv varchar(20),
  rfr varchar(5),
  arg_num varchar(4),
  ord_sta varchar(1),
  input_format varchar(2),
  rag2 varchar(34),
  CONSTRAINT febko_pk PRIMARY KEY (cli, clv)
);
COMMENT ON TABLE fi.febko IS 'FEBKO — Electronic Bank Statement Header Records — one row per imported electronic bank statement (house bank/account, statement number and date, opening/closing balances, total debits and credits), keyed by the surrogate KUKEY that its FEBEP line items reference. FEBKO is the cash-side counterpart to the asset subledger: the G/L account it posts against (HKONT) and the totals it carries (SSBTR/ESBTR/SUMSO/SUMHA) must equal what the statement''s postings actually wrote to BSEG and, in S/4HANA, to ACDOCA for that bank G/L account — a statement whose header balances don''t foot to the cleared items in FEB';
COMMENT ON COLUMN fi.febko.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.febko.clv IS 'KUKEY — Short key (surrogate) [clavis]';
COMMENT ON COLUMN fi.febko.arg IS 'ANWND — Application using bank data storage [argentaria]';
COMMENT ON COLUMN fi.febko.arg2 IS 'ABSND — Sending bank (electronic bank statement) [argentaria]';
COMMENT ON COLUMN fi.febko.arg3 IS 'AZIDT — Bank statement identification [argentaria]';
COMMENT ON COLUMN fi.febko.emkey IS 'EMKEY — Payee Keys';
COMMENT ON COLUMN fi.febko.sta IS 'ASTAT — Statement status [status]';
COMMENT ON COLUMN fi.febko.sta2 IS 'DSTAT — Print status [status]';
COMMENT ON COLUMN fi.febko.are IS 'VB1OK — All postings in area 1 are OK [area]';
COMMENT ON COLUMN fi.febko.are2 IS 'VB2OK — All postings in area 2 are OK [area]';
COMMENT ON COLUMN fi.febko.cap_tbl IS 'KIPRE — All items on header record were interpreted [caput tabula]';
COMMENT ON COLUMN fi.febko.exp_die IS 'VFDAT — Data expiry date [expiratio dies]';
COMMENT ON COLUMN fi.febko.nom_arg IS 'GRP01 — Session name for bank postings [nomen argentaria]';
COMMENT ON COLUMN fi.febko.xkep1 IS 'XKEP1 — Keep session 1 after processing';
COMMENT ON COLUMN fi.febko.nom IS 'GRP02 — Session name for subledger accounting [nomen]';
COMMENT ON COLUMN fi.febko.xkep2 IS 'XKEP2 — Keep session 2 after processing';
COMMENT ON COLUMN fi.febko.die IS 'WVDAT — Further processing date [dies]';
COMMENT ON COLUMN fi.febko.tmp IS 'WVTIM — Further processing time [tempus]';
COMMENT ON COLUMN fi.febko.gen IS 'WVART — Further processing type [genus]';
COMMENT ON COLUMN fi.febko.lbr_rat IS 'HKONT — General Ledger Account [liber ratio]';
COMMENT ON COLUMN fi.febko.rag_num IS 'KTONR — Bank account number [ratio argentariae numerus]';
COMMENT ON COLUMN fi.febko.rag IS 'KTOIH — Bank account holder [ratio argentariae]';
COMMENT ON COLUMN fi.febko.rat_nom IS 'KTOSB — Special account name [ratio nomen]';
COMMENT ON COLUMN fi.febko.num IS 'AZNUM — Statement number [numerus]';
COMMENT ON COLUMN fi.febko.num2 IS 'AZSNR — Statement page number [numerus]';
COMMENT ON COLUMN fi.febko.die2 IS 'AZDAT — Statement Date [dies]';
COMMENT ON COLUMN fi.febko.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.febko.tbr IS 'KTOPL — Chart of Accounts [tabula rationum]';
COMMENT ON COLUMN fi.febko.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN fi.febko.aeq_gen IS 'SSTYP — Beginning balance type (F=begin balance, M=interim balance) [aequilibrium genus]';
COMMENT ON COLUMN fi.febko.aeq IS 'SSVOZ — Starting balance +/- sign [aequilibrium]';
COMMENT ON COLUMN fi.febko.aeq_sum IS 'SSBTR — Opening balance amount [aequilibrium summa]';
COMMENT ON COLUMN fi.febko.tot_dbt IS 'SUMSO — Total Debit [summa totalis debitum]';
COMMENT ON COLUMN fi.febko.tot_crd IS 'SUMHA — Total Credit [summa totalis creditum]';
COMMENT ON COLUMN fi.febko.aeq_gen2 IS 'ESTYP — Ending balance type (F=ending balance, M=interim balance) [aequilibrium genus]';
COMMENT ON COLUMN fi.febko.aeq2 IS 'ESVOZ — Closing balance +/- sign [aequilibrium]';
COMMENT ON COLUMN fi.febko.aeq_sum2 IS 'ESBTR — Ending balance amount [aequilibrium summa]';
COMMENT ON COLUMN fi.febko.aeq_mon IS 'ESDMB — Ending balance equivalent in local currency [aequilibrium moneta]';
COMMENT ON COLUMN fi.febko.ini IS 'BLAUF — Life start [initium]';
COMMENT ON COLUMN fi.febko.fin IS 'ELAUF — Life end [finis]';
COMMENT ON COLUMN fi.febko.crd_usu IS 'HZINS — Credit interest [creditum usura]';
COMMENT ON COLUMN fi.febko.emp_ven_num IS 'TEILN — Customer/vendor EB number [emptor venditor numerus]';
COMMENT ON COLUMN fi.febko.rag_gen IS 'BKTOA — Bank account type [ratio argentariae genus]';
COMMENT ON COLUMN fi.febko.num_arg IS 'ANZES — Number of memo records from the bank statement [numerus argentaria]';
COMMENT ON COLUMN fi.febko.gen2 IS 'VGTYP — Transaction type [genus]';
COMMENT ON COLUMN fi.febko.gen3 IS 'EFART — Input Type [genus]';
COMMENT ON COLUMN fi.febko.clv_arg IS 'HBKID — Short Key for a House Bank [clavis argentaria]';
COMMENT ON COLUMN fi.febko.rat IS 'HKTID — ID for account details [ratio]';
COMMENT ON COLUMN fi.febko.usr_arg IS 'EUSER — User who fills the bank data buffer [usor argentaria]';
COMMENT ON COLUMN fi.febko.die_arg IS 'EDATE — Import date into bank data puffer [dies argentaria]';
COMMENT ON COLUMN fi.febko.tmp_arg IS 'ETIME — Import time into bank data buffer [tempus argentaria]';
COMMENT ON COLUMN fi.febko.rfr_arg IS 'BKREF — Reference specifications for bank details [referentia argentaria]';
COMMENT ON COLUMN fi.febko.sol_cre IS 'XFDIS — X - cash management payment advice notes were created [solutio creatus]';
COMMENT ON COLUMN fi.febko.cns_gen IS 'DSART — Planning type [consilium genus]';
COMMENT ON COLUMN fi.febko.arg4 IS 'XVERD — Summarize bank statement items [argentaria]';
COMMENT ON COLUMN fi.febko.rfr_clv IS 'XBENR — Reference Key [referentia clavis]';
COMMENT ON COLUMN fi.febko.rfr IS 'XBTYP — Reference Transaction [referentia]';
COMMENT ON COLUMN fi.febko.arg_num IS 'SEQ_NUMBER — Bank statement sequential number [argentaria numerus]';
COMMENT ON COLUMN fi.febko.ord_sta IS 'SEQ_STATUS — Sequence status [ordo status]';
COMMENT ON COLUMN fi.febko.input_format IS 'INPUT_FORMAT — Input format';
COMMENT ON COLUMN fi.febko.rag2 IS 'SIBAN — Sender Bank Account: IBAN [ratio argentariae]';

CREATE TABLE IF NOT EXISTS fi.glt0 (
  cli char(3),
  cli2 char(3),
  soc varchar(4),
  anf varchar(4),
  rat_num varchar(10),
  soc2 varchar(6),
  lbr varchar(2),
  tbl_gen varchar(1),
  vrs varchar(3),
  anf2 varchar(4),
  ang varchar(4),
  cvm varchar(5),
  dbt_crd_idx varchar(1),
  num varchar(3),
  num2 varchar(3),
  aeq_mon numeric(23,2),
  tot_per_mon numeric(23,2),
  tot_per_ann numeric(23,2),
  aeq_mon2 numeric(23,2),
  tot_per_mon2 numeric(23,2),
  tot_per_ann2 numeric(23,2),
  smp_idx varchar(1),
  aeq_cts_mon numeric(23,2),
  tot_per_cts numeric(23,2),
  tot_per_ann3 numeric(23,2),
  CONSTRAINT glt0_pk PRIMARY KEY (cli, cli2, soc, anf, rat_num, lbr, tbl_gen, vrs, cvm)
);
COMMENT ON TABLE fi.glt0 IS 'GLT0 — G/L Account Master (Company Code) — Transaction Figures / classic G/L totals table. Carries one row per ledger/company code/account/period-set combination with a balance-carryforward bucket plus 16 debit and 16 credit period totals in local currency, transaction currency, and a second (hard/group) currency. This is the classic-GL (pre-New-GL) counterpart to FAGLFLEXT — an ECC customer still on classic G/L mirrors this table for account balances; a New-GL or S/4HANA customer''s equivalent balance lives in FAGLFLEXT or is derived from ACDOCA.';
COMMENT ON COLUMN fi.glt0.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.glt0.cli2 IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN fi.glt0.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.glt0.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.glt0.rat_num IS 'RACCT — Account Number — the G/L account this totals row aggregates [ratio numerus]';
COMMENT ON COLUMN fi.glt0.soc2 IS 'RCOMP — Company [societas]';
COMMENT ON COLUMN fi.glt0.lbr IS 'RLDNR — Ledger [liber]';
COMMENT ON COLUMN fi.glt0.tbl_gen IS 'RRCTY — Record Type [tabula genus]';
COMMENT ON COLUMN fi.glt0.vrs IS 'RVERS — Version [versio]';
COMMENT ON COLUMN fi.glt0.anf2 IS 'RYEAR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.glt0.ang IS 'RBUSA — Business Area [area negotii]';
COMMENT ON COLUMN fi.glt0.cvm IS 'RTCUR — Currency Key [clavis monetae]';
COMMENT ON COLUMN fi.glt0.dbt_crd_idx IS 'DRCRK — Debit/Credit Indicator [debitum creditum index]';
COMMENT ON COLUMN fi.glt0.num IS 'RPMAX — Highest Number of Periods [numerus]';
COMMENT ON COLUMN fi.glt0.num2 IS 'RPMAX2 — Highest number of special periods [numerus]';
COMMENT ON COLUMN fi.glt0.aeq_mon IS 'TSLVT — Balance carried forward in transaction currency [aequilibrium moneta]';
COMMENT ON COLUMN fi.glt0.tot_per_mon IS 'TSL01 — Total of transactions of period 1 in transaction currency (representative of the TSL01-TSL16 period array) [summa totalis periodus moneta]';
COMMENT ON COLUMN fi.glt0.tot_per_ann IS 'TSL16 — Total of transactions of period 16 (year-end/adjustment) in transaction currency (representative of the TSL01-TSL16 period array) [summa totalis periodus annus]';
COMMENT ON COLUMN fi.glt0.aeq_mon2 IS 'HSLVT — Balance carried forward in local currency [aequilibrium moneta]';
COMMENT ON COLUMN fi.glt0.tot_per_mon2 IS 'HSL01 — Total of transactions of period 1 in local currency (representative of the HSL01-HSL16 period array) [summa totalis periodus moneta]';
COMMENT ON COLUMN fi.glt0.tot_per_ann2 IS 'HSL16 — Total of transactions of period 16 (year-end/adjustment) in local currency (representative of the HSL01-HSL16 period array) [summa totalis periodus annus]';
COMMENT ON COLUMN fi.glt0.smp_idx IS 'CSPRED — Cost Splitting Complete Indicator [sumptus index]';
COMMENT ON COLUMN fi.glt0.aeq_cts_mon IS 'KSLVT — Balance carried forward in group (hard) currency [aequilibrium coetus moneta]';
COMMENT ON COLUMN fi.glt0.tot_per_cts IS 'KSL01 — Total of transactions of period 1 in group (hard) currency (representative of the KSL01-KSL16 period array) [summa totalis periodus coetus]';
COMMENT ON COLUMN fi.glt0.tot_per_ann3 IS 'KSL16 — Total of transactions of period 16 (year-end/adjustment) in group (hard) currency (representative of the KSL01-KSL16 period array) [summa totalis periodus annus]';

CREATE TABLE IF NOT EXISTS fi.kna1 (
  cli char(3),
  emp_num varchar(10),
  ptr_clv varchar(3),
  nom varchar(35),
  nom2 varchar(35),
  urb varchar(35),
  cod varchar(10),
  reg varchar(3),
  cmp varchar(10),
  num varchar(35),
  pri_tel_num varchar(16),
  num2 varchar(31),
  idx_rat_tmp varchar(1),
  dml varchar(10),
  mcod1 varchar(25),
  mcod2 varchar(25),
  mcod3 varchar(25),
  ttl varchar(15),
  mnd_obx_emp varchar(2),
  bahne varchar(25),
  bahns varchar(25),
  loc_num varchar(7),
  loc_num2 varchar(5),
  cts varchar(4),
  clv varchar(4),
  loc_num3 varchar(1),
  datlt varchar(14),
  die_tbl_cre date,
  nom_psn_cre varchar(12),
  idx varchar(1),
  fac_obx_emp varchar(2),
  rat_num_tpr varchar(10),
  tmp varchar(2),
  rat_num varchar(10),
  cts_clv varchar(10),
  emp_rat_cts varchar(4),
  emp varchar(2),
  rat_num_ven varchar(10),
  trd_obx_emp varchar(2),
  urb2 varchar(10),
  sgn_tpr varchar(1),
  nom3 varchar(35),
  nom4 varchar(35),
  niels varchar(2),
  ort02 varchar(35),
  pfach varchar(10),
  cod2 varchar(10),
  cod3 varchar(3),
  urb_cod varchar(4),
  rpmkr varchar(5),
  ins_obx varchar(1),
  lng_clv char(1),
  trb_num varchar(16),
  trb_num2 varchar(11),
  idx_scs_trb varchar(1),
  stkzu varchar(1),
  num3 varchar(15),
  tel_num varchar(16),
  num4 varchar(30),
  num5 varchar(30),
  mrc varchar(10),
  idx_doc varchar(1),
  soc_sng varchar(6),
  num6 varchar(20),
  sta varchar(2),
  vdt numeric(8,2),
  ann_vdt varchar(4),
  mon_vdt varchar(5),
  num7 varchar(6),
  ann_num varchar(4),
  psn varchar(1),
  trb varchar(15),
  anf varchar(2),
  rfr_rat_cts varchar(4),
  urb3 varchar(35),
  ofc varchar(4),
  sta_ems varchar(1),
  sol_obx varchar(1),
  trb_gen varchar(2),
  trb_num_gen varchar(2),
  trb_num3 varchar(18),
  trb_num4 varchar(18),
  trb_num5 varchar(60),
  CONSTRAINT kna1_pk PRIMARY KEY (cli, emp_num)
);
COMMENT ON TABLE fi.kna1 IS 'KNA1 — Customer Master (General Section) — client-level customer identity, address, and control data shared across company codes.';
COMMENT ON COLUMN fi.kna1.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.kna1.emp_num IS 'KUNNR — Customer Number [emptor numerus]';
COMMENT ON COLUMN fi.kna1.ptr_clv IS 'LAND1 — Country Key [patria clavis]';
COMMENT ON COLUMN fi.kna1.nom IS 'NAME1 — Name 1 [nomen]';
COMMENT ON COLUMN fi.kna1.nom2 IS 'NAME2 — Name 2 [nomen]';
COMMENT ON COLUMN fi.kna1.urb IS 'ORT01 — City [urbs]';
COMMENT ON COLUMN fi.kna1.cod IS 'PSTLZ — Postal Code [codex]';
COMMENT ON COLUMN fi.kna1.reg IS 'REGIO — Region (State, Province, County) [regio]';
COMMENT ON COLUMN fi.kna1.cmp IS 'SORTL — Sort field [campus]';
COMMENT ON COLUMN fi.kna1.num IS 'STRAS — House number and street [numerus]';
COMMENT ON COLUMN fi.kna1.pri_tel_num IS 'TELF1 — First telephone number [primus telephonum numerus]';
COMMENT ON COLUMN fi.kna1.num2 IS 'TELFX — Fax Number [numerus]';
COMMENT ON COLUMN fi.kna1.idx_rat_tmp IS 'XCPDK — Indicator: Is the account a one-time account? [index ratio tempus]';
COMMENT ON COLUMN fi.kna1.dml IS 'ADRNR — Address [domicilium]';
COMMENT ON COLUMN fi.kna1.mcod1 IS 'MCOD1 — Search term for matchcode search';
COMMENT ON COLUMN fi.kna1.mcod2 IS 'MCOD2 — Search Term for Matchcode Search';
COMMENT ON COLUMN fi.kna1.mcod3 IS 'MCOD3 — Search term for matchcode search';
COMMENT ON COLUMN fi.kna1.ttl IS 'ANRED — Title [titulus]';
COMMENT ON COLUMN fi.kna1.mnd_obx_emp IS 'AUFSD — Central order block for customer [mandatum obex emptor]';
COMMENT ON COLUMN fi.kna1.bahne IS 'BAHNE — Express train station';
COMMENT ON COLUMN fi.kna1.bahns IS 'BAHNS — Train station';
COMMENT ON COLUMN fi.kna1.loc_num IS 'BBBNR — International location number (part 1) [locus numerus]';
COMMENT ON COLUMN fi.kna1.loc_num2 IS 'BBSNR — International location number (Part 2) [locus numerus]';
COMMENT ON COLUMN fi.kna1.cts IS 'BEGRU — Authorization Group [coetus]';
COMMENT ON COLUMN fi.kna1.clv IS 'BRSCH — Industry key [clavis]';
COMMENT ON COLUMN fi.kna1.loc_num3 IS 'BUBKZ — Check digit for the international location number [locus numerus]';
COMMENT ON COLUMN fi.kna1.datlt IS 'DATLT — Data communication line no.';
COMMENT ON COLUMN fi.kna1.die_tbl_cre IS 'ERDAT — Date on which the Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN fi.kna1.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN fi.kna1.idx IS 'EXABL — Indicator: Unloading points exist [index]';
COMMENT ON COLUMN fi.kna1.fac_obx_emp IS 'FAKSD — Central billing block for customer [factura obex emptor]';
COMMENT ON COLUMN fi.kna1.rat_num_tpr IS 'FISKN — Account number of the master record with the fiscal address [ratio numerus tabula principalis]';
COMMENT ON COLUMN fi.kna1.tmp IS 'KNAZK — Working Time Calendar [tempus]';
COMMENT ON COLUMN fi.kna1.rat_num IS 'KNRZA — Account number of an alternative payer [ratio numerus]';
COMMENT ON COLUMN fi.kna1.cts_clv IS 'KONZS — Group key [coetus clavis]';
COMMENT ON COLUMN fi.kna1.emp_rat_cts IS 'KTOKD — Customer Account Group [emptor ratio coetus]';
COMMENT ON COLUMN fi.kna1.emp IS 'KUKLA — Customer classification [emptor]';
COMMENT ON COLUMN fi.kna1.rat_num_ven IS 'LIFNR — Account Number of Vendor or Creditor [ratio numerus venditor]';
COMMENT ON COLUMN fi.kna1.trd_obx_emp IS 'LIFSD — Central delivery block for the customer [traditio obex emptor]';
COMMENT ON COLUMN fi.kna1.urb2 IS 'LOCCO — City Coordinates [urbs]';
COMMENT ON COLUMN fi.kna1.sgn_tpr IS 'LOEVM — Central Deletion Flag for Master Record [signum tabula principalis]';
COMMENT ON COLUMN fi.kna1.nom3 IS 'NAME3 — Name 3 [nomen]';
COMMENT ON COLUMN fi.kna1.nom4 IS 'NAME4 — Name 4 [nomen]';
COMMENT ON COLUMN fi.kna1.niels IS 'NIELS — Nielsen ID';
COMMENT ON COLUMN fi.kna1.ort02 IS 'ORT02 — District';
COMMENT ON COLUMN fi.kna1.pfach IS 'PFACH — PO Box';
COMMENT ON COLUMN fi.kna1.cod2 IS 'PSTL2 — P.O. Box Postal Code [codex]';
COMMENT ON COLUMN fi.kna1.cod3 IS 'COUNC — County Code [codex]';
COMMENT ON COLUMN fi.kna1.urb_cod IS 'CITYC — City Code [urbs codex]';
COMMENT ON COLUMN fi.kna1.rpmkr IS 'RPMKR — Regional Market';
COMMENT ON COLUMN fi.kna1.ins_obx IS 'SPERR — Central posting block [inscriptio obex]';
COMMENT ON COLUMN fi.kna1.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN fi.kna1.trb_num IS 'STCD1 — Tax Number 1 [tributum numerus]';
COMMENT ON COLUMN fi.kna1.trb_num2 IS 'STCD2 — Tax Number 2 [tributum numerus]';
COMMENT ON COLUMN fi.kna1.idx_scs_trb IS 'STKZA — Indicator: Business Partner Subject to Equalization Tax? [index socius tributum]';
COMMENT ON COLUMN fi.kna1.stkzu IS 'STKZU — Liable for VAT';
COMMENT ON COLUMN fi.kna1.num3 IS 'TELBX — Telebox number [numerus]';
COMMENT ON COLUMN fi.kna1.tel_num IS 'TELF2 — Second telephone number [telephonum numerus]';
COMMENT ON COLUMN fi.kna1.num4 IS 'TELTX — Teletex number [numerus]';
COMMENT ON COLUMN fi.kna1.num5 IS 'TELX1 — Telex number [numerus]';
COMMENT ON COLUMN fi.kna1.mrc IS 'LZONE — Transportation zone to or from which the goods are delivered [merces]';
COMMENT ON COLUMN fi.kna1.idx_doc IS 'XZEMP — Indicator: Is an alternative payer allowed in document? [index documentum]';
COMMENT ON COLUMN fi.kna1.soc_sng IS 'VBUND — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN fi.kna1.num6 IS 'STCEG — VAT Registration Number [numerus]';
COMMENT ON COLUMN fi.kna1.sta IS 'GFORM — Legal status [status]';
COMMENT ON COLUMN fi.kna1.vdt IS 'UMSAT — Annual sales [venditio]';
COMMENT ON COLUMN fi.kna1.ann_vdt IS 'UMJAH — Year For Which Sales are Given [annus venditio]';
COMMENT ON COLUMN fi.kna1.mon_vdt IS 'UWAER — Currency of sales figure [moneta venditio]';
COMMENT ON COLUMN fi.kna1.num7 IS 'JMZAH — Yearly number of employees [numerus]';
COMMENT ON COLUMN fi.kna1.ann_num IS 'JMJAH — Year for which the number of employees is given [annus numerus]';
COMMENT ON COLUMN fi.kna1.psn IS 'STKZN — Natural Person [persona]';
COMMENT ON COLUMN fi.kna1.trb IS 'TXJCD — Tax Jurisdiction [tributum]';
COMMENT ON COLUMN fi.kna1.anf IS 'PERIV — Fiscal Year Variant [annus fiscalis]';
COMMENT ON COLUMN fi.kna1.rfr_rat_cts IS 'KTOCD — Reference Account Group for One-Time Account (Customer) [referentia ratio coetus]';
COMMENT ON COLUMN fi.kna1.urb3 IS 'PFORT — PO Box city [urbs]';
COMMENT ON COLUMN fi.kna1.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN fi.kna1.sta_ems IS 'DUEFL — Status of Data Transfer into Subsequent Release [status emissio]';
COMMENT ON COLUMN fi.kna1.sol_obx IS 'SPERZ — Payment Block [solutio obex]';
COMMENT ON COLUMN fi.kna1.trb_gen IS 'FITYP — Tax type [tributum genus]';
COMMENT ON COLUMN fi.kna1.trb_num_gen IS 'STCDT — Tax Number Type [tributum numerus genus]';
COMMENT ON COLUMN fi.kna1.trb_num3 IS 'STCD3 — Tax Number 3 [tributum numerus]';
COMMENT ON COLUMN fi.kna1.trb_num4 IS 'STCD4 — Tax Number 4 [tributum numerus]';
COMMENT ON COLUMN fi.kna1.trb_num5 IS 'STCD5 — Tax Number 5 [tributum numerus]';

CREATE TABLE IF NOT EXISTS fi.knb1 (
  cli char(3),
  emp_num varchar(10),
  soc varchar(4),
  nps varchar(8),
  die_tbl_cre date,
  nom_psn_cre varchar(12),
  ins_obx_soc varchar(1),
  sgn_tpr_soc varchar(1),
  clv_asg varchar(3),
  busab varchar(2),
  rat_lbr varchar(10),
  cts varchar(4),
  rat_num varchar(10),
  rat_num2 varchar(10),
  idx_sol_emp varchar(1),
  idx_sol_vdt varchar(1),
  idx_sol varchar(1),
  idx_sol2 varchar(1),
  idx_sol_emp2 varchar(1),
  sol varchar(10),
  idx_cpn_emp varchar(1),
  obx_clv_sol varchar(1),
  sol_clv varchar(4),
  sol_clv2 varchar(4),
  usu_idx varchar(2),
  clv_die_ult date,
  usu varchar(2),
  rat_num_emp varchar(12),
  usr_emp varchar(15),
  kverm varchar(30),
  cns_cts varchar(10),
  crd_num varchar(2),
  sum numeric(13,2),
  vrszl numeric(3,0),
  rat numeric(3,0),
  num varchar(10),
  die date,
  fac varchar(1),
  idx varchar(1),
  idx_rat varchar(1),
  mon numeric(13,2),
  remit varchar(10),
  die_ult_usu date,
  idx_tbl_sol varchar(1),
  cts_scs_rat varchar(4),
  tmp numeric(3,0),
  clv_arg varchar(5),
  idx2 varchar(1),
  idx3 varchar(2),
  tpr_num varchar(10),
  clv_sol varchar(2),
  clv varchar(4),
  clv2 varchar(2),
  clv_emp varchar(7),
  sol2 varchar(2),
  rat_num_cts varchar(10),
  sol3 varchar(3),
  idx_sol3 varchar(1),
  ems_apb_cts varchar(4),
  csa_cod_vrs varchar(3),
  num_emp_ven varchar(31),
  dml_scs_soc varchar(130),
  idx_rat_num varchar(1),
  sol_clv_crd varchar(4),
  act_cod_grs varchar(2),
  dtb_gen_trb varchar(2),
  val_clv varchar(2),
  sta_soc_grd varchar(1),
  die2 date,
  tmp_ult_cnf time,
  tpr_soc_grd varchar(1),
  tel_num_scs varchar(30),
  idx4 varchar(2),
  idx_sol4 varchar(1),
  dml_hsh_val varchar(10),
  trb_ptr_clv varchar(3),
  cod varchar(4),
  CONSTRAINT knb1_pk PRIMARY KEY (cli, emp_num, soc)
);
COMMENT ON TABLE fi.knb1 IS 'KNB1 — Customer Master (Company Code) — company-code-specific customer control data: reconciliation account, payment terms, dunning, insurance.';
COMMENT ON COLUMN fi.knb1.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.knb1.emp_num IS 'KUNNR — Customer Number [emptor numerus]';
COMMENT ON COLUMN fi.knb1.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.knb1.nps IS 'PERNR — Personnel Number [numerus personae]';
COMMENT ON COLUMN fi.knb1.die_tbl_cre IS 'ERDAT — Date on which the Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN fi.knb1.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN fi.knb1.ins_obx_soc IS 'SPERR — Posting block for company code [inscriptio obex codex societatis]';
COMMENT ON COLUMN fi.knb1.sgn_tpr_soc IS 'LOEVM — Deletion Flag for Master Record (Company Code Level) [signum tabula principalis codex societatis]';
COMMENT ON COLUMN fi.knb1.clv_asg IS 'ZUAWA — Key for sorting according to assignment numbers [clavis assignatio]';
COMMENT ON COLUMN fi.knb1.busab IS 'BUSAB — Accounting clerk';
COMMENT ON COLUMN fi.knb1.rat_lbr IS 'AKONT — Reconciliation Account in General Ledger [ratio liber]';
COMMENT ON COLUMN fi.knb1.cts IS 'BEGRU — Authorization Group [coetus]';
COMMENT ON COLUMN fi.knb1.rat_num IS 'KNRZE — Head office account number (in branch accounts) [ratio numerus]';
COMMENT ON COLUMN fi.knb1.rat_num2 IS 'KNRZB — Account number of an alternative payer [ratio numerus]';
COMMENT ON COLUMN fi.knb1.idx_sol_emp IS 'ZAMIM — Indicator: Payment notice to customer (with cleared items)? [index solutio emptor]';
COMMENT ON COLUMN fi.knb1.idx_sol_vdt IS 'ZAMIV — Indicator: payment notice to sales department? [index solutio venditio]';
COMMENT ON COLUMN fi.knb1.idx_sol IS 'ZAMIR — Indicator: payment notice to legal department? [index solutio]';
COMMENT ON COLUMN fi.knb1.idx_sol2 IS 'ZAMIB — Indicator: Payment notice to the accounting department? [index solutio]';
COMMENT ON COLUMN fi.knb1.idx_sol_emp2 IS 'ZAMIO — Indicator: payment notice to customer (w/o cleared items)? [index solutio emptor]';
COMMENT ON COLUMN fi.knb1.sol IS 'ZWELS — List of the Payment Methods to be Considered [solutio]';
COMMENT ON COLUMN fi.knb1.idx_cpn_emp IS 'XVERR — Indicator: Clearing between customer and vendor? [index compensatio emptor]';
COMMENT ON COLUMN fi.knb1.obx_clv_sol IS 'ZAHLS — Block Key for Payment [obex clavis solutio]';
COMMENT ON COLUMN fi.knb1.sol_clv IS 'ZTERM — Terms of Payment Key [solutio clavis]';
COMMENT ON COLUMN fi.knb1.sol_clv2 IS 'WAKON — Terms of payment key for bill of exchange charges [solutio clavis]';
COMMENT ON COLUMN fi.knb1.usu_idx IS 'VZSKZ — Interest calculation indicator [usura index]';
COMMENT ON COLUMN fi.knb1.clv_die_ult IS 'ZINDT — Key date of the last interest calculation [clavis dies ultimus]';
COMMENT ON COLUMN fi.knb1.usu IS 'ZINRT — Interest calculation frequency in months [usura]';
COMMENT ON COLUMN fi.knb1.rat_num_emp IS 'EIKTO — Our account number at customer [ratio numerus emptor]';
COMMENT ON COLUMN fi.knb1.usr_emp IS 'ZSABE — User at customer [usor emptor]';
COMMENT ON COLUMN fi.knb1.kverm IS 'KVERM — Memo';
COMMENT ON COLUMN fi.knb1.cns_cts IS 'FDGRV — Planning group [consilium coetus]';
COMMENT ON COLUMN fi.knb1.crd_num IS 'VRBKZ — Export credit insurance institution number [creditum numerus]';
COMMENT ON COLUMN fi.knb1.sum IS 'VLIBB — Amount Insured [summa]';
COMMENT ON COLUMN fi.knb1.vrszl IS 'VRSZL — Insurance lead months';
COMMENT ON COLUMN fi.knb1.rat IS 'VRSPR — Deductible percentage rate [ratio]';
COMMENT ON COLUMN fi.knb1.num IS 'VRSNR — Insurance number [numerus]';
COMMENT ON COLUMN fi.knb1.die IS 'VERDT — Insurance validity date [dies]';
COMMENT ON COLUMN fi.knb1.fac IS 'PERKZ — Collective invoice variant [factura]';
COMMENT ON COLUMN fi.knb1.idx IS 'XDEZV — Indicator: Local processing? [index]';
COMMENT ON COLUMN fi.knb1.idx_rat IS 'XAUSZ — Indicator for periodic account statements [index ratio]';
COMMENT ON COLUMN fi.knb1.mon IS 'WEBTR — Bill of exchange limit (in local currency) [moneta]';
COMMENT ON COLUMN fi.knb1.remit IS 'REMIT — Next payee';
COMMENT ON COLUMN fi.knb1.die_ult_usu IS 'DATLZ — Date of the last interest calculation run [dies ultimus usura]';
COMMENT ON COLUMN fi.knb1.idx_tbl_sol IS 'XZVER — Indicator: Record Payment History? [index tabula solutio]';
COMMENT ON COLUMN fi.knb1.cts_scs_rat IS 'TOGRU — Tolerance group for the business partner/G/L account [coetus socius ratio]';
COMMENT ON COLUMN fi.knb1.tmp IS 'KULTG — Probable time until check is paid [tempus]';
COMMENT ON COLUMN fi.knb1.clv_arg IS 'HBKID — Short Key for a House Bank [clavis argentaria]';
COMMENT ON COLUMN fi.knb1.idx2 IS 'XPORE — Indicator: Pay all items separately? [index]';
COMMENT ON COLUMN fi.knb1.idx3 IS 'BLNKZ — Subsidy indicator for determining the reduction rates [index]';
COMMENT ON COLUMN fi.knb1.tpr_num IS 'ALTKN — Previous Master Record Number [tabula principalis numerus]';
COMMENT ON COLUMN fi.knb1.clv_sol IS 'ZGRUP — Key for Payment Grouping [clavis solutio]';
COMMENT ON COLUMN fi.knb1.clv IS 'URLID — Short Key for Known/Negotiated Leave [clavis]';
COMMENT ON COLUMN fi.knb1.clv2 IS 'MGRUP — Key for dunning notice grouping [clavis]';
COMMENT ON COLUMN fi.knb1.clv_emp IS 'LOCKB — Key of the Lockbox to Which the Customer Is To Pay [clavis emptor]';
COMMENT ON COLUMN fi.knb1.sol2 IS 'UZAWE — Payment Method Supplement [solutio]';
COMMENT ON COLUMN fi.knb1.rat_num_cts IS 'EKVBD — Account Number of Buying Group [ratio numerus coetus]';
COMMENT ON COLUMN fi.knb1.sol3 IS 'SREGL — Selection Rule for Payment Advices [solutio]';
COMMENT ON COLUMN fi.knb1.idx_sol3 IS 'XEDIP — Indicator: Send Payment Advices by EDI [index solutio]';
COMMENT ON COLUMN fi.knb1.ems_apb_cts IS 'FRGRP — Release Approval Group [emissio approbatio coetus]';
COMMENT ON COLUMN fi.knb1.csa_cod_vrs IS 'VRSDG — Reason Code Conversion Version [causa codex versio]';
COMMENT ON COLUMN fi.knb1.num_emp_ven IS 'TLFXS — Accounting clerk''s fax number at the customer/vendor [numerus emptor venditor]';
COMMENT ON COLUMN fi.knb1.dml_scs_soc IS 'INTAD — Internet address of partner company clerk [domicilium socius societas]';
COMMENT ON COLUMN fi.knb1.idx_rat_num IS 'XKNZB — Indicator: Alternative payer using account number [index ratio numerus]';
COMMENT ON COLUMN fi.knb1.sol_clv_crd IS 'GUZTE — Payment Terms Key for Credit Memos [solutio clavis creditum]';
COMMENT ON COLUMN fi.knb1.act_cod_grs IS 'GRICD — Activity Code for Gross Income Tax [actio codex crassus]';
COMMENT ON COLUMN fi.knb1.dtb_gen_trb IS 'GRIDT — Distribution Type for Employment Tax [distributio genus tributum]';
COMMENT ON COLUMN fi.knb1.val_clv IS 'WBRSL — Value Adjustment Key [valor clavis]';
COMMENT ON COLUMN fi.knb1.sta_soc_grd IS 'CONFS — Status of Change Authorization (Company Code Level) [status codex societatis gradus]';
COMMENT ON COLUMN fi.knb1.die2 IS 'UPDAT — Date on Which the Changes Were Confirmed [dies]';
COMMENT ON COLUMN fi.knb1.tmp_ult_cnf IS 'UPTIM — Time of Last Change Confirmation [tempus ultimus confirmatio]';
COMMENT ON COLUMN fi.knb1.tpr_soc_grd IS 'NODEL — Deletion bock for master record (company code level) [tabula principalis codex societatis gradus]';
COMMENT ON COLUMN fi.knb1.tel_num_scs IS 'TLFNS — Accounting clerk''s telephone number at business partner [telephonum numerus socius]';
COMMENT ON COLUMN fi.knb1.idx4 IS 'CESSION_KZ — Accounts Receivable Pledging Indicator [index]';
COMMENT ON COLUMN fi.knb1.idx_sol4 IS 'AVSND — Indicator: Send Payment Advice by XML [index solutio]';
COMMENT ON COLUMN fi.knb1.dml_hsh_val IS 'AD_HASH — E-Mail Address for Avis: Hash Value [domicilium summa digesta valor]';
COMMENT ON COLUMN fi.knb1.trb_ptr_clv IS 'QLAND — Withholding Tax Country Key [tributum patria clavis]';
COMMENT ON COLUMN fi.knb1.cod IS 'INTERCOCD — Intercompany code [codex]';

CREATE TABLE IF NOT EXISTS fi.knbk (
  cli char(3),
  emp_num varchar(10),
  arg_ptr_clv varchar(3),
  arg varchar(15),
  rag_num varchar(18),
  arg_clv varchar(2),
  scs_arg_gen varchar(4),
  idx varchar(1),
  rfr_arg varchar(20),
  rat_nom varchar(60),
  usr_nom_arg varchar(40),
  sta_arg varchar(1),
  arg_vla date,
  arg_vld date,
  CONSTRAINT knbk_pk PRIMARY KEY (cli, emp_num, arg_ptr_clv, arg, rag_num, scs_arg_gen)
);
COMMENT ON TABLE fi.knbk IS 'KNBK — Customer Master (Bank Details) — a customer''s bank accounts as held on the general customer master, used for direct-debit/collection and to identify incoming-payment source accounts. Mirrors LFBK on the vendor side.';
COMMENT ON COLUMN fi.knbk.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.knbk.emp_num IS 'KUNNR — Customer Number [emptor numerus]';
COMMENT ON COLUMN fi.knbk.arg_ptr_clv IS 'BANKS — Bank country key [argentaria patria clavis]';
COMMENT ON COLUMN fi.knbk.arg IS 'BANKL — Bank Keys [argentaria]';
COMMENT ON COLUMN fi.knbk.rag_num IS 'BANKN — Bank account number [ratio argentariae numerus]';
COMMENT ON COLUMN fi.knbk.arg_clv IS 'BKONT — Bank Control Key [argentaria clavis]';
COMMENT ON COLUMN fi.knbk.scs_arg_gen IS 'BVTYP — Partner Bank Type [socius argentaria genus]';
COMMENT ON COLUMN fi.knbk.idx IS 'XEZER — Indicator: Is there collection authorization ? [index]';
COMMENT ON COLUMN fi.knbk.rfr_arg IS 'BKREF — Reference specifications for bank details [referentia argentaria]';
COMMENT ON COLUMN fi.knbk.rat_nom IS 'KOINH — Account Holder Name [ratio nomen]';
COMMENT ON COLUMN fi.knbk.usr_nom_arg IS 'EBPP_ACCNAME — User-Defined Name of Bank Details [usor nomen argentaria]';
COMMENT ON COLUMN fi.knbk.sta_arg IS 'EBPP_BVSTATUS — Status of Bank Details in Biller Direct [status argentaria]';
COMMENT ON COLUMN fi.knbk.arg_vla IS 'KOVON — Bank Details Valid From [argentaria validus ab]';
COMMENT ON COLUMN fi.knbk.arg_vld IS 'KOBIS — Bank details valid to [argentaria validus ad]';

CREATE TABLE IF NOT EXISTS fi.knc1 (
  cli char(3),
  emp_num varchar(10),
  soc varchar(4),
  anf varchar(4),
  die_tbl_cre date,
  usr_nom varchar(12),
  aeq_mon numeric(15,2),
  tot_dbt_mns numeric(15,2),
  tot_crd_mns numeric(15,2),
  vdt_ins_per numeric(15,2),
  babzg numeric(15,2),
  fin_ddc_per numeric(15,2),
  sol numeric(15,2),
  cpn_sum_anf numeric(15,2),
  CONSTRAINT knc1_pk PRIMARY KEY (cli, emp_num, soc, anf)
);
COMMENT ON TABLE fi.knc1 IS 'KNC1 — Customer Master (Transaction Figures) — annual and monthly debit/credit/sales totals per customer per company code per fiscal year. This is the balance-carried-forward and period-total record that a schedule reconciliation checks BSID/BSAD roll-forward totals against.';
COMMENT ON COLUMN fi.knc1.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.knc1.emp_num IS 'KUNNR — Customer Number [emptor numerus]';
COMMENT ON COLUMN fi.knc1.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.knc1.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.knc1.die_tbl_cre IS 'ERDAT — Date on which the record was created [dies tabula creatus]';
COMMENT ON COLUMN fi.knc1.usr_nom IS 'USNAM — User name [usor nomen]';
COMMENT ON COLUMN fi.knc1.aeq_mon IS 'UMSAV — Balance Carried Forward in Local Currency [aequilibrium moneta]';
COMMENT ON COLUMN fi.knc1.tot_dbt_mns IS 'UM01S — Total of the Debit Postings for the Month (period 01) [summa totalis debitum mensis]';
COMMENT ON COLUMN fi.knc1.tot_crd_mns IS 'UM01H — Total of Credit Postings for the Month (period 01) [summa totalis creditum mensis]';
COMMENT ON COLUMN fi.knc1.vdt_ins_per IS 'UM01U — Sales in the Posting Period (period 01) [venditio inscriptio periodus]';
COMMENT ON COLUMN fi.knc1.babzg IS 'BABZG — Authorized deductions';
COMMENT ON COLUMN fi.knc1.fin_ddc_per IS 'UABZG — Accepted deductions taken after end of discount period [finis deductio periodus]';
COMMENT ON COLUMN fi.knc1.sol IS 'KZINS — Acc.int.calc.numerator for payment arrears [solutio]';
COMMENT ON COLUMN fi.knc1.cpn_sum_anf IS 'KUMAG — Accumulated clearing amount in fiscal year [compensatio summa annus fiscalis]';

CREATE TABLE IF NOT EXISTS fi.knvv (
  cli char(3),
  emp_num varchar(10),
  ovd varchar(4),
  cds varchar(2),
  dvs varchar(2),
  nom_psn_cre varchar(12),
  die_tbl_cre date,
  cts varchar(4),
  sgn_emp_vdt varchar(1),
  emp_stt_cts varchar(1),
  emp_mnd_obx varchar(2),
  tax_emp varchar(1),
  emp_cts varchar(2),
  vdt varchar(6),
  pre_cts_emp varchar(2),
  pre_gen varchar(2),
  mnd_pos varchar(3),
  inco1 varchar(3),
  inco2 varchar(28),
  emp_trd_obx varchar(2),
  trd_vdt_mnd varchar(1),
  num_pos numeric(1,0),
  trd_pos_grd varchar(1),
  mnd_idx varchar(1),
  grx varchar(1),
  trd_pri varchar(2),
  rat_num_emp varchar(12),
  vsbed varchar(2),
  fac_obx_emp varchar(2),
  fac_cur varchar(1),
  fac varchar(2),
  fac2 varchar(2),
  smp_idx varchar(1),
  val_smp numeric(13,2),
  mon varchar(5),
  emp varchar(2),
  rat_asg_cts varchar(2),
  sol_clv varchar(4),
  ofc varchar(4),
  vdt_cts varchar(3),
  vdt2 varchar(4),
  pos varchar(10),
  emp_cts2 varchar(3),
  emp_cts3 varchar(3),
  emp_cts4 varchar(3),
  emp_cts5 varchar(3),
  emp_cts6 varchar(3),
  idx_emp varchar(1),
  ini_per_idx date,
  rpm_gen varchar(4),
  pre varchar(1),
  emp_sol varchar(4),
  afd varchar(4),
  vdt_obx_emp varchar(2),
  rdoff varchar(1),
  idx varchar(1),
  men_cts varchar(4),
  uebto numeric(3,1),
  untto numeric(3,1),
  uebtk varchar(1),
  emp2 varchar(2),
  podkz varchar(1),
  cnf numeric(11,0),
  CONSTRAINT knvv_pk PRIMARY KEY (cli, emp_num, ovd, cds, dvs)
);
COMMENT ON TABLE fi.knvv IS 'KNVV — Customer Master Sales Data — the sales-area-level view of the customer master (sales organization/distribution channel/division), carrying order/delivery/billing blocks, pricing procedure, credit control area, incoterms, and payment terms used wherever an SD document needs to resolve customer sales-area defaults. Sits alongside KNA1 (general) and KNB1/KNB1-style company code data in the customer master''s structure.';
COMMENT ON COLUMN fi.knvv.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.knvv.emp_num IS 'KUNNR — Customer Number [emptor numerus]';
COMMENT ON COLUMN fi.knvv.ovd IS 'VKORG — Sales Organization [organizatio venditionis]';
COMMENT ON COLUMN fi.knvv.cds IS 'VTWEG — Distribution Channel [canalis distributionis]';
COMMENT ON COLUMN fi.knvv.dvs IS 'SPART — Division [divisio]';
COMMENT ON COLUMN fi.knvv.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN fi.knvv.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN fi.knvv.cts IS 'BEGRU — Authorization Group [coetus]';
COMMENT ON COLUMN fi.knvv.sgn_emp_vdt IS 'LOEVM — Deletion flag for customer (sales level) [signum emptor venditio]';
COMMENT ON COLUMN fi.knvv.emp_stt_cts IS 'VERSG — Customer Statistics Group [emptor statistica coetus]';
COMMENT ON COLUMN fi.knvv.emp_mnd_obx IS 'AUFSD — Customer order block (sales area) [emptor mandatum obex]';
COMMENT ON COLUMN fi.knvv.tax_emp IS 'KALKS — Pricing procedure assigned to this customer [taxatio emptor]';
COMMENT ON COLUMN fi.knvv.emp_cts IS 'KDGRP — Customer group [emptor coetus]';
COMMENT ON COLUMN fi.knvv.vdt IS 'BZIRK — Sales district [venditio]';
COMMENT ON COLUMN fi.knvv.pre_cts_emp IS 'KONDA — Price group (customer) [pretium coetus emptor]';
COMMENT ON COLUMN fi.knvv.pre_gen IS 'PLTYP — Price list type [pretium genus]';
COMMENT ON COLUMN fi.knvv.mnd_pos IS 'AWAHR — Order probability of the item [mandatum positio]';
COMMENT ON COLUMN fi.knvv.inco1 IS 'INCO1 — Incoterms (Part 1)';
COMMENT ON COLUMN fi.knvv.inco2 IS 'INCO2 — Incoterms (Part 2)';
COMMENT ON COLUMN fi.knvv.emp_trd_obx IS 'LIFSD — Customer delivery block (sales area) [emptor traditio obex]';
COMMENT ON COLUMN fi.knvv.trd_vdt_mnd IS 'AUTLF — Complete delivery defined for each sales order? [traditio venditio mandatum]';
COMMENT ON COLUMN fi.knvv.num_pos IS 'ANTLF — Maximum Number of Partial Deliveries Allowed Per Item [numerus positio]';
COMMENT ON COLUMN fi.knvv.trd_pos_grd IS 'KZTLF — Partial delivery at item level [traditio positio gradus]';
COMMENT ON COLUMN fi.knvv.mnd_idx IS 'KZAZU — Order Combination Indicator [mandatum index]';
COMMENT ON COLUMN fi.knvv.grx IS 'CHSPL — Batch split allowed [grex]';
COMMENT ON COLUMN fi.knvv.trd_pri IS 'LPRIO — Delivery Priority [traditio prioritas]';
COMMENT ON COLUMN fi.knvv.rat_num_emp IS 'EIKTO — Shipper''s (Our) Account Number at the Customer or Vendor [ratio numerus emptor]';
COMMENT ON COLUMN fi.knvv.vsbed IS 'VSBED — Shipping Conditions';
COMMENT ON COLUMN fi.knvv.fac_obx_emp IS 'FAKSD — Billing block for customer (sales and distribution) [factura obex emptor]';
COMMENT ON COLUMN fi.knvv.fac_cur IS 'MRNKZ — Manual invoice maintenance [factura curatio]';
COMMENT ON COLUMN fi.knvv.fac IS 'PERFK — Invoice dates (calendar identification) [factura]';
COMMENT ON COLUMN fi.knvv.fac2 IS 'PERRL — Invoice list schedule (calendar identification) [factura]';
COMMENT ON COLUMN fi.knvv.smp_idx IS 'KVAKZ — Cost estimate indicator (inactive) [sumptus index]';
COMMENT ON COLUMN fi.knvv.val_smp IS 'KVAWT — Value limit for cost estimate (inactive) [valor sumptus]';
COMMENT ON COLUMN fi.knvv.mon IS 'WAERS — Currency [moneta]';
COMMENT ON COLUMN fi.knvv.emp IS 'KLABC — Customer classification (ABC analysis) [emptor]';
COMMENT ON COLUMN fi.knvv.rat_asg_cts IS 'KTGRD — Account assignment group for this customer [ratio assignatio coetus]';
COMMENT ON COLUMN fi.knvv.sol_clv IS 'ZTERM — Terms of Payment Key [solutio clavis]';
COMMENT ON COLUMN fi.knvv.ofc IS 'VWERK — Delivering Plant (Own or External) [officina]';
COMMENT ON COLUMN fi.knvv.vdt_cts IS 'VKGRP — Sales Group [venditio coetus]';
COMMENT ON COLUMN fi.knvv.vdt2 IS 'VKBUR — Sales Office [venditio]';
COMMENT ON COLUMN fi.knvv.pos IS 'VSORT — Item proposal [positio]';
COMMENT ON COLUMN fi.knvv.emp_cts2 IS 'KVGR1 — Customer group 1 [emptor coetus]';
COMMENT ON COLUMN fi.knvv.emp_cts3 IS 'KVGR2 — Customer group 2 [emptor coetus]';
COMMENT ON COLUMN fi.knvv.emp_cts4 IS 'KVGR3 — Customer group 3 [emptor coetus]';
COMMENT ON COLUMN fi.knvv.emp_cts5 IS 'KVGR4 — Customer group 4 [emptor coetus]';
COMMENT ON COLUMN fi.knvv.emp_cts6 IS 'KVGR5 — Customer group 5 [emptor coetus]';
COMMENT ON COLUMN fi.knvv.idx_emp IS 'BOKRE — Indicator: Customer Is Rebate-Relevant [index emptor]';
COMMENT ON COLUMN fi.knvv.ini_per_idx IS 'BOIDT — Start of validity period for the rebate index for the customer [initium periodus index]';
COMMENT ON COLUMN fi.knvv.rpm_gen IS 'KURST — Exchange Rate Type [ratio permutationis genus]';
COMMENT ON COLUMN fi.knvv.pre IS 'PRFRE — Relevant for price determination ID [pretium]';
COMMENT ON COLUMN fi.knvv.emp_sol IS 'KABSS — Customer payment guarantee procedure [emptor solutio]';
COMMENT ON COLUMN fi.knvv.afd IS 'KKBER — Credit control area [area fidei]';
COMMENT ON COLUMN fi.knvv.vdt_obx_emp IS 'CASSD — Sales block for customer (sales area) [venditio obex emptor]';
COMMENT ON COLUMN fi.knvv.rdoff IS 'RDOFF — Switch off rounding?';
COMMENT ON COLUMN fi.knvv.idx IS 'AGREL — Indicator: Relevant for agency business [index]';
COMMENT ON COLUMN fi.knvv.men_cts IS 'MEGRU — Unit of Measure Group [mensura coetus]';
COMMENT ON COLUMN fi.knvv.uebto IS 'UEBTO — Overdelivery Tolerance Limit';
COMMENT ON COLUMN fi.knvv.untto IS 'UNTTO — Underdelivery Tolerance Limit';
COMMENT ON COLUMN fi.knvv.uebtk IS 'UEBTK — Unlimited overdelivery allowed';
COMMENT ON COLUMN fi.knvv.emp2 IS 'PVKSM — Customer procedure for product proposal [emptor]';
COMMENT ON COLUMN fi.knvv.podkz IS 'PODKZ — Relevant for POD processing';
COMMENT ON COLUMN fi.knvv.cnf IS 'PODTG — Timeframe for Confirmation of POD [confirmatio]';

CREATE TABLE IF NOT EXISTS fi.lfa1 (
  cli char(3),
  rat_num_ven varchar(10),
  ptr_clv varchar(3),
  nom varchar(35),
  nom2 varchar(35),
  nom3 varchar(35),
  nom4 varchar(35),
  urb varchar(35),
  ort02 varchar(35),
  pfach varchar(10),
  cod varchar(10),
  cod2 varchar(10),
  reg varchar(3),
  cmp varchar(10),
  num varchar(35),
  dml varchar(10),
  mcod1 varchar(25),
  mcod2 varchar(25),
  mcod3 varchar(25),
  ttl varchar(15),
  bahns varchar(25),
  loc_num varchar(7),
  loc_num2 varchar(5),
  cts varchar(4),
  clv varchar(4),
  loc_num3 varchar(1),
  datlt varchar(14),
  idx varchar(1),
  clv2 varchar(2),
  die_tbl_cre date,
  nom_psn_cre varchar(12),
  num2 varchar(11),
  cts_clv varchar(10),
  ven_rat_cts varchar(4),
  emp_num varchar(10),
  rat_num varchar(10),
  sgn_tpr varchar(1),
  ins_obx varchar(1),
  obx varchar(1),
  lng_clv char(1),
  trb_num varchar(16),
  trb_num2 varchar(11),
  idx_scs_trb varchar(1),
  stkzu varchar(1),
  num3 varchar(15),
  pri_tel_num varchar(16),
  tel_num varchar(16),
  num4 varchar(31),
  num5 varchar(30),
  num6 varchar(30),
  idx_rat_tmp varchar(1),
  idx_doc varchar(1),
  soc_sng varchar(6),
  rat_num_tpr varchar(10),
  num7 varchar(20),
  psn varchar(1),
  sperq varchar(2),
  psn_trb varchar(25),
  die_psn_trb date,
  clv_psn_trb varchar(1),
  crd_num varchar(11),
  ult date,
  ven varchar(4),
  rfr_rat_cts varchar(4),
  urb2 varchar(35),
  ofc varchar(4),
  idx_ven varchar(1),
  idx_ofc_grd varchar(1),
  clv3 varchar(2),
  sta_ems varchar(1),
  trb varchar(15),
  sol_obx varchar(1),
  nrm_cod varchar(4),
  cts2 varchar(4),
  mrc varchar(10),
  idx_rat_num varchar(1),
  min_cts varchar(4),
  trb_gen varchar(2),
  trb_num_gen varchar(2),
  regss varchar(1),
  act_cod varchar(3),
  trb_num3 varchar(18),
  trb_num4 varchar(18),
  trb_num5 varchar(60),
  rat_num_tpr2 varchar(10),
  trb_num6 varchar(18),
  CONSTRAINT lfa1_pk PRIMARY KEY (cli, rat_num_ven)
);
COMMENT ON TABLE fi.lfa1 IS 'LFA1 — Vendor Master (General Section) — client-level vendor identity, address, and control data shared across company codes.';
COMMENT ON COLUMN fi.lfa1.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.lfa1.rat_num_ven IS 'LIFNR — Account Number of Vendor or Creditor [ratio numerus venditor]';
COMMENT ON COLUMN fi.lfa1.ptr_clv IS 'LAND1 — Country Key [patria clavis]';
COMMENT ON COLUMN fi.lfa1.nom IS 'NAME1 — Name 1 [nomen]';
COMMENT ON COLUMN fi.lfa1.nom2 IS 'NAME2 — Name 2 [nomen]';
COMMENT ON COLUMN fi.lfa1.nom3 IS 'NAME3 — Name 3 [nomen]';
COMMENT ON COLUMN fi.lfa1.nom4 IS 'NAME4 — Name 4 [nomen]';
COMMENT ON COLUMN fi.lfa1.urb IS 'ORT01 — City [urbs]';
COMMENT ON COLUMN fi.lfa1.ort02 IS 'ORT02 — District';
COMMENT ON COLUMN fi.lfa1.pfach IS 'PFACH — PO Box';
COMMENT ON COLUMN fi.lfa1.cod IS 'PSTL2 — P.O. Box Postal Code [codex]';
COMMENT ON COLUMN fi.lfa1.cod2 IS 'PSTLZ — Postal Code [codex]';
COMMENT ON COLUMN fi.lfa1.reg IS 'REGIO — Region (State, Province, County) [regio]';
COMMENT ON COLUMN fi.lfa1.cmp IS 'SORTL — Sort field [campus]';
COMMENT ON COLUMN fi.lfa1.num IS 'STRAS — House number and street [numerus]';
COMMENT ON COLUMN fi.lfa1.dml IS 'ADRNR — Address [domicilium]';
COMMENT ON COLUMN fi.lfa1.mcod1 IS 'MCOD1 — Search term for matchcode search';
COMMENT ON COLUMN fi.lfa1.mcod2 IS 'MCOD2 — Search term for matchcode search';
COMMENT ON COLUMN fi.lfa1.mcod3 IS 'MCOD3 — Search term for matchcode search';
COMMENT ON COLUMN fi.lfa1.ttl IS 'ANRED — Title [titulus]';
COMMENT ON COLUMN fi.lfa1.bahns IS 'BAHNS — Train station';
COMMENT ON COLUMN fi.lfa1.loc_num IS 'BBBNR — International location number (part 1) [locus numerus]';
COMMENT ON COLUMN fi.lfa1.loc_num2 IS 'BBSNR — International location number (Part 2) [locus numerus]';
COMMENT ON COLUMN fi.lfa1.cts IS 'BEGRU — Authorization Group [coetus]';
COMMENT ON COLUMN fi.lfa1.clv IS 'BRSCH — Industry key [clavis]';
COMMENT ON COLUMN fi.lfa1.loc_num3 IS 'BUBKZ — Check digit for the international location number [locus numerus]';
COMMENT ON COLUMN fi.lfa1.datlt IS 'DATLT — Data communication line no.';
COMMENT ON COLUMN fi.lfa1.idx IS 'DTAMS — Indicator for Data Medium Exchange [index]';
COMMENT ON COLUMN fi.lfa1.clv2 IS 'DTAWS — Instruction key for data medium exchange [clavis]';
COMMENT ON COLUMN fi.lfa1.die_tbl_cre IS 'ERDAT — Date on which the Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN fi.lfa1.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN fi.lfa1.num2 IS 'ESRNR — ISR Subscriber Number [numerus]';
COMMENT ON COLUMN fi.lfa1.cts_clv IS 'KONZS — Group key [coetus clavis]';
COMMENT ON COLUMN fi.lfa1.ven_rat_cts IS 'KTOKK — Vendor account group [venditor ratio coetus]';
COMMENT ON COLUMN fi.lfa1.emp_num IS 'KUNNR — Customer Number [emptor numerus]';
COMMENT ON COLUMN fi.lfa1.rat_num IS 'LNRZA — Account Number of the Alternative Payee [ratio numerus]';
COMMENT ON COLUMN fi.lfa1.sgn_tpr IS 'LOEVM — Central Deletion Flag for Master Record [signum tabula principalis]';
COMMENT ON COLUMN fi.lfa1.ins_obx IS 'SPERR — Central posting block [inscriptio obex]';
COMMENT ON COLUMN fi.lfa1.obx IS 'SPERM — Centrally imposed purchasing block [obex]';
COMMENT ON COLUMN fi.lfa1.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN fi.lfa1.trb_num IS 'STCD1 — Tax Number 1 [tributum numerus]';
COMMENT ON COLUMN fi.lfa1.trb_num2 IS 'STCD2 — Tax Number 2 [tributum numerus]';
COMMENT ON COLUMN fi.lfa1.idx_scs_trb IS 'STKZA — Indicator: Business Partner Subject to Equalization Tax? [index socius tributum]';
COMMENT ON COLUMN fi.lfa1.stkzu IS 'STKZU — Liable for VAT';
COMMENT ON COLUMN fi.lfa1.num3 IS 'TELBX — Telebox number [numerus]';
COMMENT ON COLUMN fi.lfa1.pri_tel_num IS 'TELF1 — First telephone number [primus telephonum numerus]';
COMMENT ON COLUMN fi.lfa1.tel_num IS 'TELF2 — Second telephone number [telephonum numerus]';
COMMENT ON COLUMN fi.lfa1.num4 IS 'TELFX — Fax Number [numerus]';
COMMENT ON COLUMN fi.lfa1.num5 IS 'TELTX — Teletex number [numerus]';
COMMENT ON COLUMN fi.lfa1.num6 IS 'TELX1 — Telex number [numerus]';
COMMENT ON COLUMN fi.lfa1.idx_rat_tmp IS 'XCPDK — Indicator: Is the account a one-time account? [index ratio tempus]';
COMMENT ON COLUMN fi.lfa1.idx_doc IS 'XZEMP — Indicator: Alternative payee in document allowed? [index documentum]';
COMMENT ON COLUMN fi.lfa1.soc_sng IS 'VBUND — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN fi.lfa1.rat_num_tpr IS 'FISKN — Account number of the master record with fiscal address [ratio numerus tabula principalis]';
COMMENT ON COLUMN fi.lfa1.num7 IS 'STCEG — VAT Registration Number [numerus]';
COMMENT ON COLUMN fi.lfa1.psn IS 'STKZN — Natural Person [persona]';
COMMENT ON COLUMN fi.lfa1.sperq IS 'SPERQ — Function That Will Be Blocked';
COMMENT ON COLUMN fi.lfa1.psn_trb IS 'GBORT — Place of birth of the person subject to withholding tax [persona tributum]';
COMMENT ON COLUMN fi.lfa1.die_psn_trb IS 'GBDAT — Date of birth of the person subject to withholding tax [dies persona tributum]';
COMMENT ON COLUMN fi.lfa1.clv_psn_trb IS 'SEXKZ — Key for the Sex of the Person Subject to Withholding Tax [clavis persona tributum]';
COMMENT ON COLUMN fi.lfa1.crd_num IS 'KRAUS — Credit information number [creditum numerus]';
COMMENT ON COLUMN fi.lfa1.ult IS 'REVDB — Last review (external) [ultimus]';
COMMENT ON COLUMN fi.lfa1.ven IS 'QSSYS — Vendor''s QM system [venditor]';
COMMENT ON COLUMN fi.lfa1.rfr_rat_cts IS 'KTOCK — Reference Account Group for One-Time Account (Vendor) [referentia ratio coetus]';
COMMENT ON COLUMN fi.lfa1.urb2 IS 'PFORT — PO Box city [urbs]';
COMMENT ON COLUMN fi.lfa1.ofc IS 'WERKS — Plant (Own or External) [officina]';
COMMENT ON COLUMN fi.lfa1.idx_ven IS 'LTSNA — Indicator: vendor sub-range relevant [index venditor]';
COMMENT ON COLUMN fi.lfa1.idx_ofc_grd IS 'WERKR — Indicator: plant level relevant [index officina gradus]';
COMMENT ON COLUMN fi.lfa1.clv3 IS 'PLKAL — Factory calendar key [clavis]';
COMMENT ON COLUMN fi.lfa1.sta_ems IS 'DUEFL — Status of Data Transfer into Subsequent Release [status emissio]';
COMMENT ON COLUMN fi.lfa1.trb IS 'TXJCD — Tax Jurisdiction [tributum]';
COMMENT ON COLUMN fi.lfa1.sol_obx IS 'SPERZ — Payment Block [solutio obex]';
COMMENT ON COLUMN fi.lfa1.nrm_cod IS 'SCACD — Standard carrier access code [norma codex]';
COMMENT ON COLUMN fi.lfa1.cts2 IS 'SFRGR — Forwarding agent freight group [coetus]';
COMMENT ON COLUMN fi.lfa1.mrc IS 'LZONE — Transportation zone to or from which the goods are delivered [merces]';
COMMENT ON COLUMN fi.lfa1.idx_rat_num IS 'XLFZA — Indicator: Alternative payee using account number [index ratio numerus]';
COMMENT ON COLUMN fi.lfa1.min_cts IS 'DLGRP — Service agent procedure group [ministerium coetus]';
COMMENT ON COLUMN fi.lfa1.trb_gen IS 'FITYP — Tax type [tributum genus]';
COMMENT ON COLUMN fi.lfa1.trb_num_gen IS 'STCDT — Tax Number Type [tributum numerus genus]';
COMMENT ON COLUMN fi.lfa1.regss IS 'REGSS — Registered for Social Insurance';
COMMENT ON COLUMN fi.lfa1.act_cod IS 'ACTSS — Activity Code for Social Insurance [actio codex]';
COMMENT ON COLUMN fi.lfa1.trb_num3 IS 'STCD3 — Tax Number 3 [tributum numerus]';
COMMENT ON COLUMN fi.lfa1.trb_num4 IS 'STCD4 — Tax Number 4 [tributum numerus]';
COMMENT ON COLUMN fi.lfa1.trb_num5 IS 'STCD5 — Tax Number 5 [tributum numerus]';
COMMENT ON COLUMN fi.lfa1.rat_num_tpr2 IS 'FISKU — Account Number of Master Record of Tax Office Responsible [ratio numerus tabula principalis]';
COMMENT ON COLUMN fi.lfa1.trb_num6 IS 'STENR — Tax Number at Responsible Tax Authority [tributum numerus]';

CREATE TABLE IF NOT EXISTS fi.lfb1 (
  cli char(3),
  rat_num_ven varchar(10),
  soc varchar(4),
  nps varchar(8),
  die_tbl_cre date,
  nom_psn_cre varchar(12),
  ins_obx_soc varchar(1),
  sgn_tpr_soc varchar(1),
  clv_asg varchar(3),
  rat_lbr varchar(10),
  cts varchar(4),
  usu_idx varchar(2),
  sol varchar(10),
  idx_cpn_emp varchar(1),
  obx_clv_sol varchar(1),
  sol_clv varchar(4),
  rat_num_ven2 varchar(12),
  ven varchar(15),
  kverm varchar(30),
  cns_cts varchar(10),
  busab varchar(2),
  rat_num varchar(10),
  rat_num2 varchar(10),
  clv_die_ult date,
  usu varchar(2),
  die_ult_usu date,
  idx varchar(1),
  mon numeric(13,2),
  tmp numeric(3,0),
  sgn_crd varchar(1),
  cts_scs_rat varchar(4),
  clv_arg varchar(5),
  idx2 varchar(1),
  num_trb varchar(10),
  die_trb date,
  trb_cod varchar(2),
  idx3 varchar(2),
  mindk varchar(3),
  tpr_num varchar(10),
  clv_sol varchar(2),
  clv varchar(2),
  sol2 varchar(2),
  ven_gen varchar(2),
  trb varchar(1),
  trb_ptr_clv varchar(3),
  idx_sol varchar(1),
  ems_apb_cts varchar(4),
  cts_fac_vrf varchar(4),
  num_emp_ven varchar(31),
  dml_scs_soc varchar(130),
  idx_rat_num varchar(1),
  sol_clv_crd varchar(4),
  act_cod_grs varchar(2),
  dtb_gen_trb varchar(2),
  idx_rat varchar(1),
  die date,
  sta_soc_grd varchar(1),
  die2 date,
  tmp_ult_cnf time,
  tpr_soc_grd varchar(1),
  tel_num_scs varchar(30),
  idx_sol2 varchar(1),
  dml_hsh_val varchar(10),
  cod varchar(4),
  CONSTRAINT lfb1_pk PRIMARY KEY (cli, rat_num_ven, soc)
);
COMMENT ON TABLE fi.lfb1 IS 'LFB1 — Vendor Master (Company Code) — company-code-specific vendor control data: reconciliation account, payment terms, dunning, banking.';
COMMENT ON COLUMN fi.lfb1.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.lfb1.rat_num_ven IS 'LIFNR — Account Number of Vendor or Creditor [ratio numerus venditor]';
COMMENT ON COLUMN fi.lfb1.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.lfb1.nps IS 'PERNR — Personnel Number [numerus personae]';
COMMENT ON COLUMN fi.lfb1.die_tbl_cre IS 'ERDAT — Date on which the Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN fi.lfb1.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN fi.lfb1.ins_obx_soc IS 'SPERR — Posting block for company code [inscriptio obex codex societatis]';
COMMENT ON COLUMN fi.lfb1.sgn_tpr_soc IS 'LOEVM — Deletion Flag for Master Record (Company Code Level) [signum tabula principalis codex societatis]';
COMMENT ON COLUMN fi.lfb1.clv_asg IS 'ZUAWA — Key for sorting according to assignment numbers [clavis assignatio]';
COMMENT ON COLUMN fi.lfb1.rat_lbr IS 'AKONT — Reconciliation Account in General Ledger [ratio liber]';
COMMENT ON COLUMN fi.lfb1.cts IS 'BEGRU — Authorization Group [coetus]';
COMMENT ON COLUMN fi.lfb1.usu_idx IS 'VZSKZ — Interest calculation indicator [usura index]';
COMMENT ON COLUMN fi.lfb1.sol IS 'ZWELS — List of the Payment Methods to be Considered [solutio]';
COMMENT ON COLUMN fi.lfb1.idx_cpn_emp IS 'XVERR — Indicator: Clearing between customer and vendor? [index compensatio emptor]';
COMMENT ON COLUMN fi.lfb1.obx_clv_sol IS 'ZAHLS — Block Key for Payment [obex clavis solutio]';
COMMENT ON COLUMN fi.lfb1.sol_clv IS 'ZTERM — Terms of Payment Key [solutio clavis]';
COMMENT ON COLUMN fi.lfb1.rat_num_ven2 IS 'EIKTO — Our account number with the vendor [ratio numerus venditor]';
COMMENT ON COLUMN fi.lfb1.ven IS 'ZSABE — Clerk at vendor [venditor]';
COMMENT ON COLUMN fi.lfb1.kverm IS 'KVERM — Memo';
COMMENT ON COLUMN fi.lfb1.cns_cts IS 'FDGRV — Planning group [consilium coetus]';
COMMENT ON COLUMN fi.lfb1.busab IS 'BUSAB — Accounting clerk';
COMMENT ON COLUMN fi.lfb1.rat_num IS 'LNRZE — Head office account number [ratio numerus]';
COMMENT ON COLUMN fi.lfb1.rat_num2 IS 'LNRZB — Account number of the alternative payee [ratio numerus]';
COMMENT ON COLUMN fi.lfb1.clv_die_ult IS 'ZINDT — Key date of the last interest calculation [clavis dies ultimus]';
COMMENT ON COLUMN fi.lfb1.usu IS 'ZINRT — Interest calculation frequency in months [usura]';
COMMENT ON COLUMN fi.lfb1.die_ult_usu IS 'DATLZ — Date of the last interest calculation run [dies ultimus usura]';
COMMENT ON COLUMN fi.lfb1.idx IS 'XDEZV — Indicator: Local processing? [index]';
COMMENT ON COLUMN fi.lfb1.mon IS 'WEBTR — Bill of exchange limit (in local currency) [moneta]';
COMMENT ON COLUMN fi.lfb1.tmp IS 'KULTG — Probable time until check is paid [tempus]';
COMMENT ON COLUMN fi.lfb1.sgn_crd IS 'REPRF — Check Flag for Double Invoices or Credit Memos [signum creditum]';
COMMENT ON COLUMN fi.lfb1.cts_scs_rat IS 'TOGRU — Tolerance group for the business partner/G/L account [coetus socius ratio]';
COMMENT ON COLUMN fi.lfb1.clv_arg IS 'HBKID — Short Key for a House Bank [clavis argentaria]';
COMMENT ON COLUMN fi.lfb1.idx2 IS 'XPORE — Indicator: Pay all items separately? [index]';
COMMENT ON COLUMN fi.lfb1.num_trb IS 'QSZNR — Certificate Number of the Withholding Tax Exemption [numerus tributum]';
COMMENT ON COLUMN fi.lfb1.die_trb IS 'QSZDT — Validity Date for Withholding Tax Exemption Certificate [dies tributum]';
COMMENT ON COLUMN fi.lfb1.trb_cod IS 'QSSKZ — Withholding Tax Code [tributum codex]';
COMMENT ON COLUMN fi.lfb1.idx3 IS 'BLNKZ — Subsidy indicator for determining the reduction rates [index]';
COMMENT ON COLUMN fi.lfb1.mindk IS 'MINDK — Minority Indicators';
COMMENT ON COLUMN fi.lfb1.tpr_num IS 'ALTKN — Previous Master Record Number [tabula principalis numerus]';
COMMENT ON COLUMN fi.lfb1.clv_sol IS 'ZGRUP — Key for Payment Grouping [clavis solutio]';
COMMENT ON COLUMN fi.lfb1.clv IS 'MGRUP — Key for dunning notice grouping [clavis]';
COMMENT ON COLUMN fi.lfb1.sol2 IS 'UZAWE — Payment Method Supplement [solutio]';
COMMENT ON COLUMN fi.lfb1.ven_gen IS 'QSREC — Vendor Recipient Type [venditor genus]';
COMMENT ON COLUMN fi.lfb1.trb IS 'QSBGR — Authority for Exemption from Withholding Tax [tributum]';
COMMENT ON COLUMN fi.lfb1.trb_ptr_clv IS 'QLAND — Withholding Tax Country Key [tributum patria clavis]';
COMMENT ON COLUMN fi.lfb1.idx_sol IS 'XEDIP — Indicator: Send Payment Advices by EDI [index solutio]';
COMMENT ON COLUMN fi.lfb1.ems_apb_cts IS 'FRGRP — Release Approval Group [emissio approbatio coetus]';
COMMENT ON COLUMN fi.lfb1.cts_fac_vrf IS 'TOGRR — Tolerance group; Invoice Verification [coetus factura verificatio]';
COMMENT ON COLUMN fi.lfb1.num_emp_ven IS 'TLFXS — Accounting clerk''s fax number at the customer/vendor [numerus emptor venditor]';
COMMENT ON COLUMN fi.lfb1.dml_scs_soc IS 'INTAD — Internet address of partner company clerk [domicilium socius societas]';
COMMENT ON COLUMN fi.lfb1.idx_rat_num IS 'XLFZB — Indicator: Alternative payee using account number [index ratio numerus]';
COMMENT ON COLUMN fi.lfb1.sol_clv_crd IS 'GUZTE — Payment Terms Key for Credit Memos [solutio clavis creditum]';
COMMENT ON COLUMN fi.lfb1.act_cod_grs IS 'GRICD — Activity Code for Gross Income Tax [actio codex crassus]';
COMMENT ON COLUMN fi.lfb1.dtb_gen_trb IS 'GRIDT — Distribution Type for Employment Tax [distributio genus tributum]';
COMMENT ON COLUMN fi.lfb1.idx_rat IS 'XAUSZ — Indicator for periodic account statements [index ratio]';
COMMENT ON COLUMN fi.lfb1.die IS 'CERDT — Certification date [dies]';
COMMENT ON COLUMN fi.lfb1.sta_soc_grd IS 'CONFS — Status of Change Authorization (Company Code Level) [status codex societatis gradus]';
COMMENT ON COLUMN fi.lfb1.die2 IS 'UPDAT — Date on Which the Changes Were Confirmed [dies]';
COMMENT ON COLUMN fi.lfb1.tmp_ult_cnf IS 'UPTIM — Time of Last Change Confirmation [tempus ultimus confirmatio]';
COMMENT ON COLUMN fi.lfb1.tpr_soc_grd IS 'NODEL — Deletion bock for master record (company code level) [tabula principalis codex societatis gradus]';
COMMENT ON COLUMN fi.lfb1.tel_num_scs IS 'TLFNS — Accounting clerk''s telephone number at business partner [telephonum numerus socius]';
COMMENT ON COLUMN fi.lfb1.idx_sol2 IS 'AVSND — Indicator: Send Payment Advice by XML [index solutio]';
COMMENT ON COLUMN fi.lfb1.dml_hsh_val IS 'AD_HASH — E-Mail Address for Avis: Hash Value [domicilium summa digesta valor]';
COMMENT ON COLUMN fi.lfb1.cod IS 'INTERCOCD — Intercompany code [codex]';

CREATE TABLE IF NOT EXISTS fi.lfbk (
  cli char(3),
  rat_num_ven varchar(10),
  arg_ptr_clv varchar(3),
  arg varchar(15),
  rag_num varchar(18),
  arg_clv varchar(2),
  scs_arg_gen varchar(4),
  idx varchar(1),
  rfr_arg varchar(20),
  rat_nom varchar(60),
  usr_nom_arg varchar(40),
  sta_arg varchar(1),
  arg_vla date,
  arg_vld date,
  CONSTRAINT lfbk_pk PRIMARY KEY (cli, rat_num_ven, arg_ptr_clv, arg, rag_num, scs_arg_gen)
);
COMMENT ON TABLE fi.lfbk IS 'LFBK — Vendor Master (Bank Details) — a vendor''s bank accounts as held on the general vendor master, used to route outgoing payments. Mirrors KNBK on the customer side; field-for-field identical except for the LIFNR key in place of KUNNR.';
COMMENT ON COLUMN fi.lfbk.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.lfbk.rat_num_ven IS 'LIFNR — Account Number of Vendor or Creditor [ratio numerus venditor]';
COMMENT ON COLUMN fi.lfbk.arg_ptr_clv IS 'BANKS — Bank country key [argentaria patria clavis]';
COMMENT ON COLUMN fi.lfbk.arg IS 'BANKL — Bank Keys [argentaria]';
COMMENT ON COLUMN fi.lfbk.rag_num IS 'BANKN — Bank account number [ratio argentariae numerus]';
COMMENT ON COLUMN fi.lfbk.arg_clv IS 'BKONT — Bank Control Key [argentaria clavis]';
COMMENT ON COLUMN fi.lfbk.scs_arg_gen IS 'BVTYP — Partner Bank Type [socius argentaria genus]';
COMMENT ON COLUMN fi.lfbk.idx IS 'XEZER — Indicator: Is there collection authorization ? [index]';
COMMENT ON COLUMN fi.lfbk.rfr_arg IS 'BKREF — Reference specifications for bank details [referentia argentaria]';
COMMENT ON COLUMN fi.lfbk.rat_nom IS 'KOINH — Account Holder Name [ratio nomen]';
COMMENT ON COLUMN fi.lfbk.usr_nom_arg IS 'EBPP_ACCNAME — User-Defined Name of Bank Details [usor nomen argentaria]';
COMMENT ON COLUMN fi.lfbk.sta_arg IS 'EBPP_BVSTATUS — Status of Bank Details in Biller Direct [status argentaria]';
COMMENT ON COLUMN fi.lfbk.arg_vla IS 'KOVON — Bank Details Valid From [argentaria validus ab]';
COMMENT ON COLUMN fi.lfbk.arg_vld IS 'KOBIS — Bank details valid to [argentaria validus ad]';

CREATE TABLE IF NOT EXISTS fi.lfc1 (
  cli char(3),
  rat_num_ven varchar(10),
  soc varchar(4),
  anf varchar(4),
  die_tbl_cre date,
  usr_nom varchar(12),
  aeq_mon numeric(15,2),
  tot_dbt_mns numeric(15,2),
  tot_crd_mns numeric(15,2),
  vdt_ins_per numeric(15,2),
  CONSTRAINT lfc1_pk PRIMARY KEY (cli, rat_num_ven, soc, anf)
);
COMMENT ON TABLE fi.lfc1 IS 'LFC1 — Vendor Master (Transaction Figures) — the AP-side counterpart of KNC1: annual and monthly debit/credit/sales totals per vendor per company code per fiscal year, checked against BSIK/BSAK roll-forward totals.';
COMMENT ON COLUMN fi.lfc1.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.lfc1.rat_num_ven IS 'LIFNR — Account Number of Vendor or Creditor [ratio numerus venditor]';
COMMENT ON COLUMN fi.lfc1.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.lfc1.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN fi.lfc1.die_tbl_cre IS 'ERDAT — Date on which the record was created [dies tabula creatus]';
COMMENT ON COLUMN fi.lfc1.usr_nom IS 'USNAM — User name [usor nomen]';
COMMENT ON COLUMN fi.lfc1.aeq_mon IS 'UMSAV — Balance Carried Forward in Local Currency [aequilibrium moneta]';
COMMENT ON COLUMN fi.lfc1.tot_dbt_mns IS 'UM01S — Total of the Debit Postings for the Month (period 01) [summa totalis debitum mensis]';
COMMENT ON COLUMN fi.lfc1.tot_crd_mns IS 'UM01H — Total of Credit Postings for the Month (period 01) [summa totalis creditum mensis]';
COMMENT ON COLUMN fi.lfc1.vdt_ins_per IS 'UM01U — Sales in the Posting Period (period 01) [venditio inscriptio periodus]';

CREATE TABLE IF NOT EXISTS fi.lfm1 (
  cli char(3),
  ven_rat_num varchar(10),
  oem varchar(4),
  die_tbl_cre date,
  nom_psn_cre varchar(12),
  obx_oem_grd varchar(1),
  sgn_ven_grd varchar(1),
  idx varchar(1),
  mem_mon varchar(5),
  ven varchar(30),
  ven_tel_num varchar(16),
  mnd_val numeric(13,2),
  sol_clv varchar(4),
  inco1 varchar(3),
  inco2 varchar(28),
  idx_fac_vrf varchar(1),
  mnd_rqs varchar(1),
  cts_ven varchar(2),
  mem varchar(1),
  expvz varchar(1),
  zolla varchar(6),
  pre_tax_die varchar(1),
  cts varchar(3),
  tsc varchar(1),
  trd_tmp numeric(3,0),
  cns varchar(3),
  cns2 varchar(3),
  mnd_ven varchar(1),
  pre_ven varchar(2),
  ven2 varchar(1),
  idx_pre_ven varchar(1),
  idx_ddc varchar(1),
  idx_tsc varchar(1),
  idx_emt varchar(1),
  ven3 varchar(1),
  ven4 varchar(1),
  cnf_clv varchar(4),
  rdprf varchar(4),
  men_cts varchar(4),
  ven_gsv numeric(4,1),
  bopnr varchar(4),
  tsc2 varchar(1),
  rat_num_ven varchar(12),
  ems varchar(4),
  mat varchar(4),
  idx2 varchar(1),
  xnbwy varchar(1),
  vsbed varchar(2),
  idx_min_fac varchar(1),
  idx_ven_tsc varchar(1),
  umsae varchar(1),
  CONSTRAINT lfm1_pk PRIMARY KEY (cli, ven_rat_num, oem)
);
COMMENT ON TABLE fi.lfm1 IS 'LFM1 — Vendor master record purchasing organization data — the purchasing-organization-level view of the vendor master (payment terms, incoterms, purchasing group, order currency, ERS settings), sitting alongside LFA1 (general) and LFB1 (company code) in the vendor master''s three-tier structure.';
COMMENT ON COLUMN fi.lfm1.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.lfm1.ven_rat_num IS 'LIFNR — Vendor Account Number [venditor ratio numerus]';
COMMENT ON COLUMN fi.lfm1.oem IS 'EKORG — Purchasing Organization [organizatio emptionis]';
COMMENT ON COLUMN fi.lfm1.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN fi.lfm1.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN fi.lfm1.obx_oem_grd IS 'SPERM — Purchasing block at purchasing organization level [obex organizatio emptionis gradus]';
COMMENT ON COLUMN fi.lfm1.sgn_ven_grd IS 'LOEVM — Delete flag for vendor at purchasing level [signum venditor gradus]';
COMMENT ON COLUMN fi.lfm1.idx IS 'LFABC — ABC indicator [index]';
COMMENT ON COLUMN fi.lfm1.mem_mon IS 'WAERS — Purchase order currency [mandatum emptionis moneta]';
COMMENT ON COLUMN fi.lfm1.ven IS 'VERKF — Responsible Salesperson at Vendor''s Office [venditor]';
COMMENT ON COLUMN fi.lfm1.ven_tel_num IS 'TELF1 — Vendor''s telephone number [venditor telephonum numerus]';
COMMENT ON COLUMN fi.lfm1.mnd_val IS 'MINBW — Minimum order value [mandatum valor]';
COMMENT ON COLUMN fi.lfm1.sol_clv IS 'ZTERM — Terms of Payment Key [solutio clavis]';
COMMENT ON COLUMN fi.lfm1.inco1 IS 'INCO1 — Incoterms (Part 1)';
COMMENT ON COLUMN fi.lfm1.inco2 IS 'INCO2 — Incoterms (Part 2)';
COMMENT ON COLUMN fi.lfm1.idx_fac_vrf IS 'WEBRE — Indicator: GR-Based Invoice Verification [index factura verificatio]';
COMMENT ON COLUMN fi.lfm1.mnd_rqs IS 'KZABS — Order Acknowledgment Requirement [mandatum requisitum]';
COMMENT ON COLUMN fi.lfm1.cts_ven IS 'KALSK — Group for Calculation Schema (Vendor) [coetus venditor]';
COMMENT ON COLUMN fi.lfm1.mem IS 'KZAUT — Automatic Generation of Purchase Order Allowed [mandatum emptionis]';
COMMENT ON COLUMN fi.lfm1.expvz IS 'EXPVZ — Mode of Transport for Foreign Trade';
COMMENT ON COLUMN fi.lfm1.zolla IS 'ZOLLA — Customs Office: Office of Exit/Entry for Foreign Trade';
COMMENT ON COLUMN fi.lfm1.pre_tax_die IS 'MEPRF — Price Determination (Pricing) Date Control [pretium taxatio dies]';
COMMENT ON COLUMN fi.lfm1.cts IS 'EKGRP — Purchasing Group [coetus]';
COMMENT ON COLUMN fi.lfm1.tsc IS 'XERSY — Evaluated Receipt Settlement (ERS) [transactio]';
COMMENT ON COLUMN fi.lfm1.trd_tmp IS 'PLIFZ — Planned Delivery Time in Days [traditio tempus]';
COMMENT ON COLUMN fi.lfm1.cns IS 'MRPPP — Planning calendar [consilium]';
COMMENT ON COLUMN fi.lfm1.cns2 IS 'LFRHY — Planning cycle [consilium]';
COMMENT ON COLUMN fi.lfm1.mnd_ven IS 'LIBES — Order entry by vendor [mandatum venditor]';
COMMENT ON COLUMN fi.lfm1.pre_ven IS 'LIPRE — Price marking, vendor [pretium venditor]';
COMMENT ON COLUMN fi.lfm1.ven2 IS 'LISER — Rack-jobbing: vendor [venditor]';
COMMENT ON COLUMN fi.lfm1.idx_pre_ven IS 'PRFRE — Indicator: relevant to price determination (vendor hierarchy) [index pretium venditor]';
COMMENT ON COLUMN fi.lfm1.idx_ddc IS 'NRGEW — Indicator whether discount in kind granted [index deductio]';
COMMENT ON COLUMN fi.lfm1.idx_tsc IS 'BOIND — Indicator: index compilation for subsequent settlement active [index transactio]';
COMMENT ON COLUMN fi.lfm1.idx_emt IS 'BLIND — Indicator: Doc. index compilation active for purchase orders [index emptio]';
COMMENT ON COLUMN fi.lfm1.ven3 IS 'KZRET — Indicates whether vendor is returns vendor [venditor]';
COMMENT ON COLUMN fi.lfm1.ven4 IS 'SKRIT — Vendor sort criterion for materials [venditor]';
COMMENT ON COLUMN fi.lfm1.cnf_clv IS 'BSTAE — Confirmation Control Key [confirmatio clavis]';
COMMENT ON COLUMN fi.lfm1.rdprf IS 'RDPRF — Rounding Profile';
COMMENT ON COLUMN fi.lfm1.men_cts IS 'MEGRU — Unit of Measure Group [mensura coetus]';
COMMENT ON COLUMN fi.lfm1.ven_gsv IS 'VENSL — Vendor service level [venditor gradus servitii]';
COMMENT ON COLUMN fi.lfm1.bopnr IS 'BOPNR — Restriction Profile for PO-Based Load Building';
COMMENT ON COLUMN fi.lfm1.tsc2 IS 'XERSR — Automatic evaluated receipt settlement for return items [transactio]';
COMMENT ON COLUMN fi.lfm1.rat_num_ven IS 'EIKTO — Our account number with the vendor [ratio numerus venditor]';
COMMENT ON COLUMN fi.lfm1.ems IS 'ABUEB — Release Creation Profile [emissio]';
COMMENT ON COLUMN fi.lfm1.mat IS 'PAPRF — Profile for transferring material data via IDoc PROACT [materia]';
COMMENT ON COLUMN fi.lfm1.idx2 IS 'AGREL — Indicator: Relevant for agency business [index]';
COMMENT ON COLUMN fi.lfm1.xnbwy IS 'XNBWY — Revaluation allowed';
COMMENT ON COLUMN fi.lfm1.vsbed IS 'VSBED — Shipping Conditions';
COMMENT ON COLUMN fi.lfm1.idx_min_fac IS 'LEBRE — Indicator for Service-Based Invoice Verification [index ministerium factura]';
COMMENT ON COLUMN fi.lfm1.idx_ven_tsc IS 'BOLRE — Indicator: vendor subject to subsequent settlement accounting [index venditor transactio]';
COMMENT ON COLUMN fi.lfm1.umsae IS 'UMSAE — Comparison/agreement of business volumes necessary';

CREATE TABLE IF NOT EXISTS fi.ska1 (
  cli char(3),
  tbr varchar(4),
  rat_num varchar(10),
  idx_rat_aeq varchar(1),
  rat_num2 varchar(10),
  cts_rat_num varchar(10),
  die_tbl_cre date,
  nom_psn_cre varchar(12),
  rat_gen varchar(2),
  rat_cts varchar(4),
  num_exm_rat varchar(10),
  soc_sng varchar(6),
  idx_rat varchar(1),
  idx_rat2 varchar(1),
  idx_rat_ins varchar(1),
  idx_rat_cns varchar(1),
  mcod1 varchar(25),
  afn varchar(16),
  CONSTRAINT ska1_pk PRIMARY KEY (cli, tbr, rat_num)
);
COMMENT ON TABLE fi.ska1 IS 'SKA1 — G/L Account Master (Chart of Accounts) — chart-of-accounts-level G/L account attributes shared across all company codes.';
COMMENT ON COLUMN fi.ska1.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.ska1.tbr IS 'KTOPL — Chart of Accounts [tabula rationum]';
COMMENT ON COLUMN fi.ska1.rat_num IS 'SAKNR — G/L Account Number [ratio numerus]';
COMMENT ON COLUMN fi.ska1.idx_rat_aeq IS 'XBILK — Indicator: Account is a balance sheet account? [index ratio aequilibrium]';
COMMENT ON COLUMN fi.ska1.rat_num2 IS 'SAKAN — G/L account number, significant length [ratio numerus]';
COMMENT ON COLUMN fi.ska1.cts_rat_num IS 'BILKT — Group Account Number [coetus ratio numerus]';
COMMENT ON COLUMN fi.ska1.die_tbl_cre IS 'ERDAT — Date on which the Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN fi.ska1.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN fi.ska1.rat_gen IS 'GVTYP — P&L statement account type [ratio genus]';
COMMENT ON COLUMN fi.ska1.rat_cts IS 'KTOKS — G/L Account Group [ratio coetus]';
COMMENT ON COLUMN fi.ska1.num_exm_rat IS 'MUSTR — Number of the sample account [numerus exemplum ratio]';
COMMENT ON COLUMN fi.ska1.soc_sng IS 'VBUND — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN fi.ska1.idx_rat IS 'XLOEV — Indicator: Account marked for deletion? [index ratio]';
COMMENT ON COLUMN fi.ska1.idx_rat2 IS 'XSPEA — Indicator: account is blocked for creation? [index ratio]';
COMMENT ON COLUMN fi.ska1.idx_rat_ins IS 'XSPEB — Indicator: Is Account Blocked for Posting? [index ratio inscriptio]';
COMMENT ON COLUMN fi.ska1.idx_rat_cns IS 'XSPEP — Indicator: account blocked for planning? [index ratio consilium]';
COMMENT ON COLUMN fi.ska1.mcod1 IS 'MCOD1 — Search Term for Using Matchcode';
COMMENT ON COLUMN fi.ska1.afn IS 'FUNC_AREA — Functional Area [area functionis]';

CREATE TABLE IF NOT EXISTS fi.skat (
  cli char(3),
  lng_clv char(1),
  tbr varchar(4),
  rat_num varchar(10),
  rat_txt varchar(20),
  rat_txt2 varchar(50),
  mcod1 varchar(25),
  CONSTRAINT skat_pk PRIMARY KEY (cli, lng_clv, tbr, rat_num)
);
COMMENT ON TABLE fi.skat IS 'SKAT — G/L Account Master Record (Chart of Accounts: Description) — the human-readable name text for a chart-of-accounts G/L account (SKA1). Needed to make BSID/BSAD/BSIK/BSAK HKONT values legible in any dealer tie-out output.';
COMMENT ON COLUMN fi.skat.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.skat.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN fi.skat.tbr IS 'KTOPL — Chart of Accounts [tabula rationum]';
COMMENT ON COLUMN fi.skat.rat_num IS 'SAKNR — G/L Account Number [ratio numerus]';
COMMENT ON COLUMN fi.skat.rat_txt IS 'TXT20 — G/L Account Short Text [ratio textus]';
COMMENT ON COLUMN fi.skat.rat_txt2 IS 'TXT50 — G/L Account Long Text [ratio textus]';
COMMENT ON COLUMN fi.skat.mcod1 IS 'MCOD1 — Search Term';

CREATE TABLE IF NOT EXISTS fi.skb1 (
  cli char(3),
  soc varchar(4),
  rat_num varchar(10),
  cts varchar(4),
  busab varchar(2),
  die_ult_usu date,
  die_tbl_cre date,
  nom_psn_cre varchar(12),
  cns_cts varchar(10),
  cns_grd varchar(2),
  pos varchar(3),
  cmp_sta_cts varchar(4),
  clv_arg varchar(5),
  rat varchar(5),
  clv_rpm_mon varchar(4),
  rat2 varchar(1),
  trb_ctg_rat varchar(2),
  rat_txt varchar(50),
  usu_idx varchar(2),
  rat_mon varchar(5),
  idx_rat varchar(2),
  rat3 varchar(1),
  idx_rat2 varchar(1),
  idx_rat3 varchar(1),
  idx_rat4 varchar(1),
  idx varchar(1),
  idx_pap varchar(1),
  idx_rat_ins varchar(1),
  clv_die_ult date,
  usu varchar(2),
  clv_asg varchar(3),
  rat_num_soc varchar(10),
  idx_tmp_ins varchar(1),
  idx2 varchar(2),
  pos2 varchar(14),
  idx_trb_cod varchar(1),
  idx_mon varchar(1),
  aes_cts varchar(10),
  clv varchar(8),
  cts2 varchar(4),
  cpn_lbr varchar(1),
  clv2 varchar(5),
  CONSTRAINT skb1_pk PRIMARY KEY (cli, soc, rat_num)
);
COMMENT ON TABLE fi.skb1 IS 'SKB1 — G/L Account Master (Company Code) — company-code-specific G/L account control data (open item mgmt, tolerance, tax, interest).';
COMMENT ON COLUMN fi.skb1.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.skb1.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.skb1.rat_num IS 'SAKNR — G/L Account Number [ratio numerus]';
COMMENT ON COLUMN fi.skb1.cts IS 'BEGRU — Authorization Group [coetus]';
COMMENT ON COLUMN fi.skb1.busab IS 'BUSAB — Accounting clerk';
COMMENT ON COLUMN fi.skb1.die_ult_usu IS 'DATLZ — Date of the last interest calculation run [dies ultimus usura]';
COMMENT ON COLUMN fi.skb1.die_tbl_cre IS 'ERDAT — Date on which the Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN fi.skb1.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN fi.skb1.cns_cts IS 'FDGRV — Planning group [consilium coetus]';
COMMENT ON COLUMN fi.skb1.cns_grd IS 'FDLEV — Planning level [consilium gradus]';
COMMENT ON COLUMN fi.skb1.pos IS 'FIPLS — Financial Budget Item [positio]';
COMMENT ON COLUMN fi.skb1.cmp_sta_cts IS 'FSTAG — Field status group [campus status coetus]';
COMMENT ON COLUMN fi.skb1.clv_arg IS 'HBKID — Short Key for a House Bank [clavis argentaria]';
COMMENT ON COLUMN fi.skb1.rat IS 'HKTID — ID for account details [ratio]';
COMMENT ON COLUMN fi.skb1.clv_rpm_mon IS 'KDFSL — Key for Exchange Rate Differences in Foreign Currency Accts [clavis ratio permutationis moneta]';
COMMENT ON COLUMN fi.skb1.rat2 IS 'MITKZ — Account is reconciliation account [ratio]';
COMMENT ON COLUMN fi.skb1.trb_ctg_rat IS 'MWSKZ — Tax Category in Account Master Record [tributum categoria ratio]';
COMMENT ON COLUMN fi.skb1.rat_txt IS 'STEXT — G/L account additional text [ratio textus]';
COMMENT ON COLUMN fi.skb1.usu_idx IS 'VZSKZ — Interest calculation indicator [usura index]';
COMMENT ON COLUMN fi.skb1.rat_mon IS 'WAERS — Account currency [ratio moneta]';
COMMENT ON COLUMN fi.skb1.idx_rat IS 'WMETH — Indicator: account managed in external system [index ratio]';
COMMENT ON COLUMN fi.skb1.rat3 IS 'XGKON — Cash receipt account / cash disbursement account [ratio]';
COMMENT ON COLUMN fi.skb1.idx_rat2 IS 'XINTB — Indicator: Is account only posted to automatically? [index ratio]';
COMMENT ON COLUMN fi.skb1.idx_rat3 IS 'XKRES — Indicator: Can Line Items Be Displayed by Account? [index ratio]';
COMMENT ON COLUMN fi.skb1.idx_rat4 IS 'XLOEB — Indicator: Account marked for deletion? [index ratio]';
COMMENT ON COLUMN fi.skb1.idx IS 'XNKON — Indicator: Supplement for automatic postings? [index]';
COMMENT ON COLUMN fi.skb1.idx_pap IS 'XOPVW — Indicator: Open item management? [index positio aperta]';
COMMENT ON COLUMN fi.skb1.idx_rat_ins IS 'XSPEB — Indicator: Is Account Blocked for Posting? [index ratio inscriptio]';
COMMENT ON COLUMN fi.skb1.clv_die_ult IS 'ZINDT — Key date of the last interest calculation [clavis dies ultimus]';
COMMENT ON COLUMN fi.skb1.usu IS 'ZINRT — Interest calculation frequency in months [usura]';
COMMENT ON COLUMN fi.skb1.clv_asg IS 'ZUAWA — Key for sorting according to assignment numbers [clavis assignatio]';
COMMENT ON COLUMN fi.skb1.rat_num_soc IS 'ALTKT — Alternative account number in company code [ratio numerus codex societatis]';
COMMENT ON COLUMN fi.skb1.idx_tmp_ins IS 'XMITK — Indicator: Reconcil.acct ready for input at time of posting? [index tempus inscriptio]';
COMMENT ON COLUMN fi.skb1.idx2 IS 'RECID — Recovery Indicator [index]';
COMMENT ON COLUMN fi.skb1.pos2 IS 'FIPOS — Commitment Item [positio]';
COMMENT ON COLUMN fi.skb1.idx_trb_cod IS 'XMWNO — Indicator: Tax code is not a required field [index tributum codex]';
COMMENT ON COLUMN fi.skb1.idx_mon IS 'XSALH — Indicator: Only Manage Balances in Local Currency [index moneta]';
COMMENT ON COLUMN fi.skb1.aes_cts IS 'BEWGP — Valuation Group [aestimatio coetus]';
COMMENT ON COLUMN fi.skb1.clv IS 'INFKY — Inflation Key [clavis]';
COMMENT ON COLUMN fi.skb1.cts2 IS 'TOGRU — Tolerance Group for G/L Accounts [coetus]';
COMMENT ON COLUMN fi.skb1.cpn_lbr IS 'XLGCLR — Clearing Specific to Ledger Groups [compensatio liber]';
COMMENT ON COLUMN fi.skb1.clv2 IS 'MCAKEY — MCA Key [clavis]';

CREATE TABLE IF NOT EXISTS fi.t001w (
  cli char(3),
  ofc varchar(4),
  nom varchar(30),
  aes_are varchar(4),
  emp_num_ofc varchar(10),
  ven_num_ofc varchar(10),
  clv varchar(2),
  nom2 varchar(30),
  num varchar(30),
  pfach varchar(10),
  cod varchar(10),
  urb varchar(25),
  oem varchar(4),
  ovd_fac varchar(4),
  idx_grx_sta varchar(1),
  idx_ofc_grd varchar(1),
  idx_fns_rqs varchar(1),
  cns varchar(1),
  ptr_clv varchar(3),
  reg varchar(3),
  cod2 varchar(3),
  urb_cod varchar(4),
  dml varchar(10),
  cur_cns_ofc varchar(4),
  trb varchar(15),
  cds_fac varchar(2),
  dvs_fac varchar(2),
  lng_clv char(1),
  ofc2 varchar(1),
  clv2 varchar(6),
  ofc_ctg varchar(1),
  vdt varchar(6),
  cpa_reg varchar(10),
  trb_idx_ofc varchar(1),
  ven_rat varchar(1),
  num_pri numeric(3,0),
  num2 numeric(3,0),
  num3 numeric(3,0),
  num4 varchar(3),
  j_1bbranch varchar(4),
  vdt_are_cpa varchar(2),
  dtb_ofc_grd varchar(3),
  vstel varchar(4),
  CONSTRAINT t001w_pk PRIMARY KEY (cli, ofc)
);
COMMENT ON TABLE fi.t001w IS 'T001W — Plants/Branches — the organizational master defining each plant, its address, and the purchasing/sales organizational links (valuation area, purchasing organization, intercompany sales organization/channel/division) a plant carries. Referenced across FI, MM and SD wherever a document line needs to resolve which plant, and therefore which valuation area and tax jurisdiction, a posting belongs to.';
COMMENT ON COLUMN fi.t001w.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.t001w.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN fi.t001w.nom IS 'NAME1 — Name [nomen]';
COMMENT ON COLUMN fi.t001w.aes_are IS 'BWKEY — Valuation Area [aestimatio area]';
COMMENT ON COLUMN fi.t001w.emp_num_ofc IS 'KUNNR — Customer number of plant [emptor numerus officina]';
COMMENT ON COLUMN fi.t001w.ven_num_ofc IS 'LIFNR — Vendor number of plant [venditor numerus officina]';
COMMENT ON COLUMN fi.t001w.clv IS 'FABKL — Factory calendar key [clavis]';
COMMENT ON COLUMN fi.t001w.nom2 IS 'NAME2 — Name 2 [nomen]';
COMMENT ON COLUMN fi.t001w.num IS 'STRAS — House number and street [numerus]';
COMMENT ON COLUMN fi.t001w.pfach IS 'PFACH — PO Box';
COMMENT ON COLUMN fi.t001w.cod IS 'PSTLZ — Postal Code [codex]';
COMMENT ON COLUMN fi.t001w.urb IS 'ORT01 — City [urbs]';
COMMENT ON COLUMN fi.t001w.oem IS 'EKORG — Purchasing Organization [organizatio emptionis]';
COMMENT ON COLUMN fi.t001w.ovd_fac IS 'VKORG — Sales organization for intercompany billing [organizatio venditionis factura]';
COMMENT ON COLUMN fi.t001w.idx_grx_sta IS 'CHAZV — Indicator: batch status management active [index grex status]';
COMMENT ON COLUMN fi.t001w.idx_ofc_grd IS 'KKOWK — Indicator: Conditions at plant level [index officina gradus]';
COMMENT ON COLUMN fi.t001w.idx_fns_rqs IS 'KORDB — Indicator: Source list requirement [index fons requisitum]';
COMMENT ON COLUMN fi.t001w.cns IS 'BEDPL — Activating requirements planning [consilium]';
COMMENT ON COLUMN fi.t001w.ptr_clv IS 'LAND1 — Country Key [patria clavis]';
COMMENT ON COLUMN fi.t001w.reg IS 'REGIO — Region (State, Province, County) [regio]';
COMMENT ON COLUMN fi.t001w.cod2 IS 'COUNC — County Code [codex]';
COMMENT ON COLUMN fi.t001w.urb_cod IS 'CITYC — City Code [urbs codex]';
COMMENT ON COLUMN fi.t001w.dml IS 'ADRNR — Address [domicilium]';
COMMENT ON COLUMN fi.t001w.cur_cns_ofc IS 'IWERK — Maintenance Planning Plant [curatio consilium officina]';
COMMENT ON COLUMN fi.t001w.trb IS 'TXJCD — Tax Jurisdiction [tributum]';
COMMENT ON COLUMN fi.t001w.cds_fac IS 'VTWEG — Distribution channel for intercompany billing [canalis distributionis factura]';
COMMENT ON COLUMN fi.t001w.dvs_fac IS 'SPART — Division for intercompany billing [divisio factura]';
COMMENT ON COLUMN fi.t001w.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN fi.t001w.ofc2 IS 'WKSOP — SOP plant [officina]';
COMMENT ON COLUMN fi.t001w.clv2 IS 'AWSLS — Variance Key [clavis]';
COMMENT ON COLUMN fi.t001w.ofc_ctg IS 'VLFKZ — Plant category [officina categoria]';
COMMENT ON COLUMN fi.t001w.vdt IS 'BZIRK — Sales district [venditio]';
COMMENT ON COLUMN fi.t001w.cpa_reg IS 'ZONE1 — Supply region (region supplied) [copia regio]';
COMMENT ON COLUMN fi.t001w.trb_idx_ofc IS 'TAXIW — Tax Indicator: Plant (Purchasing) [tributum index officina]';
COMMENT ON COLUMN fi.t001w.ven_rat IS 'BZQHL — Take regular vendor into account [venditor ratio]';
COMMENT ON COLUMN fi.t001w.num_pri IS 'LET01 — Number of Days for First Reminder/Expediter [numerus primus]';
COMMENT ON COLUMN fi.t001w.num2 IS 'LET02 — Number of Days for Second Reminder/Expediter [numerus]';
COMMENT ON COLUMN fi.t001w.num3 IS 'LET03 — Number of Days for Third Reminder/Expediter [numerus]';
COMMENT ON COLUMN fi.t001w.num4 IS 'BETOL — Number of days for PO tolerance - Compress info records - SU [numerus]';
COMMENT ON COLUMN fi.t001w.j_1bbranch IS 'J_1BBRANCH — Business Place';
COMMENT ON COLUMN fi.t001w.vdt_are_cpa IS 'VTBFI — Rule for determining the sales area for stock transfers [venditio area copia]';
COMMENT ON COLUMN fi.t001w.dtb_ofc_grd IS 'FPRFW — Distribution profile at plant level [distributio officina gradus]';
COMMENT ON COLUMN fi.t001w.vstel IS 'VSTEL — Shipping Point/Receiving Point';

CREATE TABLE IF NOT EXISTS fi.t012 (
  cli char(3),
  soc varchar(4),
  clv_arg varchar(5),
  arg_ptr_clv varchar(3),
  arg varchar(15),
  pri_tel_num varchar(16),
  trb_num varchar(16),
  nom_psn varchar(30),
  lng_clv char(1),
  bupla varchar(4),
  val_die varchar(1),
  CONSTRAINT t012_pk PRIMARY KEY (cli, soc, clv_arg)
);
COMMENT ON TABLE fi.t012 IS 'T012 — House Banks — the company-code-level master for each house bank a company uses (bank country, bank key, contact details), the parent record for the individual accounts held in T012K.';
COMMENT ON COLUMN fi.t012.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.t012.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.t012.clv_arg IS 'HBKID — Short Key for a House Bank [clavis argentaria]';
COMMENT ON COLUMN fi.t012.arg_ptr_clv IS 'BANKS — Bank country key [argentaria patria clavis]';
COMMENT ON COLUMN fi.t012.arg IS 'BANKL — Bank Keys [argentaria]';
COMMENT ON COLUMN fi.t012.pri_tel_num IS 'TELF1 — First telephone number [primus telephonum numerus]';
COMMENT ON COLUMN fi.t012.trb_num IS 'STCD1 — Tax Number 1 [tributum numerus]';
COMMENT ON COLUMN fi.t012.nom_psn IS 'NAME1 — Name of contact person [nomen persona]';
COMMENT ON COLUMN fi.t012.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN fi.t012.bupla IS 'BUPLA — Business Place';
COMMENT ON COLUMN fi.t012.val_die IS 'VPAST — Value date in the past allowed [valor dies]';

CREATE TABLE IF NOT EXISTS fi.t012k (
  cli char(3),
  soc varchar(4),
  clv_arg varchar(5),
  rat varchar(5),
  rag_num varchar(18),
  arg_clv varchar(2),
  cvm varchar(5),
  rfr varchar(27),
  psn varchar(5),
  arg_num varchar(24),
  cns_cts varchar(10),
  tsc_mon_arg varchar(5),
  lbr_rat_rag varchar(10),
  wekon varchar(10),
  die varchar(3),
  arg_dbt varchar(5),
  rat_dbt varchar(5),
  arg varchar(5),
  rat_dbt2 varchar(5),
  sum varchar(10),
  wikon varchar(10),
  sol varchar(2),
  sgn_arg varchar(1),
  CONSTRAINT t012k_pk PRIMARY KEY (cli, soc, clv_arg, rat)
);
COMMENT ON TABLE fi.t012k IS 'T012K — House Bank Accounts — the individual bank account master beneath each T012 house bank, carrying the bank account number, currency, and the linked G/L account (HKONT) that account postings hit.';
COMMENT ON COLUMN fi.t012k.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.t012k.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN fi.t012k.clv_arg IS 'HBKID — Short Key for a House Bank [clavis argentaria]';
COMMENT ON COLUMN fi.t012k.rat IS 'HKTID — ID for account details [ratio]';
COMMENT ON COLUMN fi.t012k.rag_num IS 'BANKN — Bank account number [ratio argentariae numerus]';
COMMENT ON COLUMN fi.t012k.arg_clv IS 'BKONT — Bank Control Key [argentaria clavis]';
COMMENT ON COLUMN fi.t012k.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN fi.t012k.rfr IS 'REFZL — Reference Information [referentia]';
COMMENT ON COLUMN fi.t012k.psn IS 'DTAAI — DME Sold-To Party Identification (Switzerland) [persona]';
COMMENT ON COLUMN fi.t012k.arg_num IS 'BNKN2 — Alternative Bank Acct Number (for Ambiguous Acct Number) [argentaria numerus]';
COMMENT ON COLUMN fi.t012k.cns_cts IS 'FDGRP — Planning Group [consilium coetus]';
COMMENT ON COLUMN fi.t012k.tsc_mon_arg IS 'ABWAE — Settlement currency for bank transfers [transactio moneta argentaria]';
COMMENT ON COLUMN fi.t012k.lbr_rat_rag IS 'HKONT — General Ledger Account — the G/L account this bank account posts against [liber ratio ratio argentariae]';
COMMENT ON COLUMN fi.t012k.wekon IS 'WEKON — Subaccount for bill of exchange presentation for discounting';
COMMENT ON COLUMN fi.t012k.die IS 'MINDT — Minimum days until due date when presenting for collection [dies]';
COMMENT ON COLUMN fi.t012k.arg_dbt IS 'HBID1 — Alternative house bank for bill/exch. presentation debit memo [argentaria debitum]';
COMMENT ON COLUMN fi.t012k.rat_dbt IS 'HKID1 — Account details for debit memo from bill/exch. presentation [ratio debitum]';
COMMENT ON COLUMN fi.t012k.arg IS 'HBID2 — Alternative house bank for failed bill/exch. receivable [argentaria]';
COMMENT ON COLUMN fi.t012k.rat_dbt2 IS 'HKID2 — Account details for debit memo from bill/exch. presentation [ratio debitum]';
COMMENT ON COLUMN fi.t012k.sum IS 'WKKON — Bk act to be debited with amount from returned bill payable [summa]';
COMMENT ON COLUMN fi.t012k.wikon IS 'WIKON — Subaccount for bill of exchange collection';
COMMENT ON COLUMN fi.t012k.sol IS 'BROLL — Attribute for use by house banks in PRQ payment program [solutio]';
COMMENT ON COLUMN fi.t012k.sgn_arg IS 'XTPRB — Flag for determining whether transit or principal bank [signum argentaria]';

CREATE TABLE IF NOT EXISTS fi.tgsb (
  cli char(3),
  ang varchar(4),
  ang2 varchar(4),
  ang3 varchar(4),
  CONSTRAINT tgsb_pk PRIMARY KEY (cli, ang)
);
COMMENT ON TABLE fi.tgsb IS 'TGSB — Business Areas — the master list of business areas (GSBER), the cross-company-code reporting dimension used throughout FI (BSIS/BSAS, BSID/BSAD, BSIK/BSAK, FAGLFLEXA/FAGLFLEXT, GLT0) wherever a line item is tagged RBUSA/GSBER.';
COMMENT ON COLUMN fi.tgsb.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN fi.tgsb.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN fi.tgsb.ang2 IS 'GSBER_KONS — Consolidation business area [area negotii]';
COMMENT ON COLUMN fi.tgsb.ang3 IS 'GSBER_GLOB — Globally unique business area [area negotii]';

