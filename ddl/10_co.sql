-- EVE Datasphere Sovereign — PostgreSQL materialisation
-- Generated 2026-08-01T01:47:33Z by scripts/emit_postgres.py. Do not hand-edit; regenerate.
-- Column names are the canonical Latin layer (EgD-LATIN-001). The legacy SAP field name
-- is preserved in COMMENT ON COLUMN and in egd_catalog.field_map, and is the join key.
-- Mirror, never cannibalise. Pour le bien-etre du peuple.

-- module CO

CREATE TABLE IF NOT EXISTS co.aufk (
  cli char(3),
  mnd_num varchar(12),
  gmd varchar(4),
  mnd_ctg varchar(2),
  rfr_mnd_num varchar(12),
  ernam varchar(12),
  cre date,
  ult_mut varchar(12),
  die_mnd date,
  dsc varchar(40),
  txt varchar(1),
  soc varchar(4),
  ofc varchar(4),
  ang varchar(4),
  amd varchar(4),
  csm varchar(10),
  mnd_mon varchar(5),
  mnd_sta varchar(2),
  die_ult_sta date,
  mnd_cre varchar(1),
  mnd varchar(1),
  mnd2 varchar(1),
  mnd3 varchar(1),
  ems_die date,
  die date,
  die2 date,
  ems_die2 date,
  die3 date,
  die4 date,
  obi varchar(1),
  sgn varchar(1),
  kalsm varchar(6),
  clv varchar(6),
  tsc_smp_elm varchar(10),
  csm_tsc varchar(10),
  rat_tsc varchar(10),
  atb varchar(12),
  user0 varchar(20),
  psn varchar(20),
  tot_mnd numeric(11,2),
  user6 varchar(15),
  obi_num varchar(22),
  clu varchar(10),
  ops_elm_eop varchar(8),
  afn varchar(16),
  vdt_mnd_num varchar(10),
  pos_num_vdt varchar(6),
  mnd_num2 varchar(20),
  logsystem varchar(10),
  CONSTRAINT aufk_pk PRIMARY KEY (cli, mnd_num)
);
COMMENT ON TABLE co.aufk IS 'AUFK — Order master data — the header record shared by every SAP order type (internal order, maintenance order, service order, WBS-linked order): order number, order type, controlling area, responsible/settlement cost center, status, and settlement cost element. This is the SAP analogue the CDK repair order keys on directly (AUFK-AUFNR).';
COMMENT ON COLUMN co.aufk.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN co.aufk.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN co.aufk.gmd IS 'AUART — Order Type [genus mandati]';
COMMENT ON COLUMN co.aufk.mnd_ctg IS 'AUTYP — Order category [mandatum categoria]';
COMMENT ON COLUMN co.aufk.rfr_mnd_num IS 'REFNR — Reference order number [referentia mandatum numerus]';
COMMENT ON COLUMN co.aufk.ernam IS 'ERNAM — Entered by';
COMMENT ON COLUMN co.aufk.cre IS 'ERDAT — Created on [creatus]';
COMMENT ON COLUMN co.aufk.ult_mut IS 'AENAM — Last changed by [ultimus mutatus]';
COMMENT ON COLUMN co.aufk.die_mnd IS 'AEDAT — Change date for Order Master [dies mandatum]';
COMMENT ON COLUMN co.aufk.dsc IS 'KTEXT — Description [descriptio]';
COMMENT ON COLUMN co.aufk.txt IS 'LTEXT — Long Text Exists [textus]';
COMMENT ON COLUMN co.aufk.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN co.aufk.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN co.aufk.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN co.aufk.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN co.aufk.csm IS 'KOSTV — Responsible cost center [centrum sumptus]';
COMMENT ON COLUMN co.aufk.mnd_mon IS 'WAERS — Order Currency [mandatum moneta]';
COMMENT ON COLUMN co.aufk.mnd_sta IS 'ASTNR — Order status [mandatum status]';
COMMENT ON COLUMN co.aufk.die_ult_sta IS 'STDAT — Date of last status change [dies ultimus status]';
COMMENT ON COLUMN co.aufk.mnd_cre IS 'PHAS0 — Phase "Order created" [mandatum creatus]';
COMMENT ON COLUMN co.aufk.mnd IS 'PHAS1 — Phase "Order released" [mandatum]';
COMMENT ON COLUMN co.aufk.mnd2 IS 'PHAS2 — Phase "order completed" [mandatum]';
COMMENT ON COLUMN co.aufk.mnd3 IS 'PHAS3 — Phase "order closed" [mandatum]';
COMMENT ON COLUMN co.aufk.ems_die IS 'PDAT1 — Planned release date [emissio dies]';
COMMENT ON COLUMN co.aufk.die IS 'PDAT2 — Planned completion date [dies]';
COMMENT ON COLUMN co.aufk.die2 IS 'PDAT3 — Planned closing date [dies]';
COMMENT ON COLUMN co.aufk.ems_die2 IS 'IDAT1 — Release date [emissio dies]';
COMMENT ON COLUMN co.aufk.die3 IS 'IDAT2 — Technical completion date [dies]';
COMMENT ON COLUMN co.aufk.die4 IS 'IDAT3 — Close date [dies]';
COMMENT ON COLUMN co.aufk.obi IS 'OBJID — Object ID [obiectum]';
COMMENT ON COLUMN co.aufk.sgn IS 'LOEKZ — Deletion flag [signum]';
COMMENT ON COLUMN co.aufk.kalsm IS 'KALSM — Costing Sheet';
COMMENT ON COLUMN co.aufk.clv IS 'ZSCHL — Overhead key [clavis]';
COMMENT ON COLUMN co.aufk.tsc_smp_elm IS 'KSTAR — Settlement cost element [transactio sumptus elementum]';
COMMENT ON COLUMN co.aufk.csm_tsc IS 'KOSTL — Cost center for basic settlement [centrum sumptus transactio]';
COMMENT ON COLUMN co.aufk.rat_tsc IS 'SAKNR — G/L account for basic settlement [ratio transactio]';
COMMENT ON COLUMN co.aufk.atb IS 'SETNM — Allocation set [attributio]';
COMMENT ON COLUMN co.aufk.user0 IS 'USER0 — Applicant';
COMMENT ON COLUMN co.aufk.psn IS 'USER2 — Person responsible [persona]';
COMMENT ON COLUMN co.aufk.tot_mnd IS 'USER4 — Estimated total costs of order [summa totalis mandatum]';
COMMENT ON COLUMN co.aufk.user6 IS 'USER6 — Department';
COMMENT ON COLUMN co.aufk.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN co.aufk.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN co.aufk.ops_elm_eop IS 'PSPEL — Work breakdown structure element (WBS element) [opus elementum elementum operis]';
COMMENT ON COLUMN co.aufk.afn IS 'FUNC_AREA — Functional Area [area functionis]';
COMMENT ON COLUMN co.aufk.vdt_mnd_num IS 'KDAUF — Sales Order Number [venditio mandatum numerus]';
COMMENT ON COLUMN co.aufk.pos_num_vdt IS 'KDPOS — Item Number in Sales Order [positio numerus venditio]';
COMMENT ON COLUMN co.aufk.mnd_num2 IS 'AUFEX — External order number [mandatum numerus]';
COMMENT ON COLUMN co.aufk.logsystem IS 'LOGSYSTEM — Logical System';

CREATE TABLE IF NOT EXISTS co.cepc (
  cli char(3),
  clu varchar(10),
  vld_die date,
  amd varchar(4),
  vla_die date,
  cre date,
  usnam varchar(12),
  cmp_nom_not varchar(30),
  abtei varchar(12),
  psn_clu varchar(20),
  usr_clu varchar(12),
  cvm varchar(5),
  clu2 varchar(10),
  ptr_clv varchar(3),
  ttl varchar(15),
  nom varchar(35),
  nom2 varchar(35),
  nom3 varchar(35),
  nom4 varchar(35),
  urb varchar(35),
  ort02 varchar(35),
  num varchar(35),
  pfach varchar(10),
  cod varchar(10),
  cod2 varchar(10),
  lng_clv char(1),
  num2 varchar(15),
  pri_tel_num varchar(16),
  tel_num varchar(16),
  num3 varchar(31),
  num4 varchar(30),
  num5 varchar(30),
  datlt varchar(14),
  nom_clu varchar(4),
  clu_are varchar(12),
  soc varchar(4),
  vname varchar(6),
  idx varchar(2),
  gen varchar(3),
  trb varchar(15),
  reg varchar(3),
  cnd_tbl varchar(1),
  kappl varchar(2),
  tax varchar(6),
  logsystem varchar(10),
  obx_idx varchar(1),
  cns_luc varchar(10),
  seg varchar(10),
  CONSTRAINT cepc_pk PRIMARY KEY (cli, clu, vld_die, amd)
);
COMMENT ON TABLE co.cepc IS 'CEPC — Profit Center Master Data — time-dependent master data for profit centers, the internal profitability reporting unit that feeds ACDOCA.';
COMMENT ON COLUMN co.cepc.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN co.cepc.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN co.cepc.vld_die IS 'DATBI — Valid To Date [validus ad dies]';
COMMENT ON COLUMN co.cepc.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN co.cepc.vla_die IS 'DATAB — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN co.cepc.cre IS 'ERSDA — Created on [creatus]';
COMMENT ON COLUMN co.cepc.usnam IS 'USNAM — Entered by';
COMMENT ON COLUMN co.cepc.cmp_nom_not IS 'MERKMAL — Field name of CO-PA characteristic [campus nomen nota]';
COMMENT ON COLUMN co.cepc.abtei IS 'ABTEI — Department';
COMMENT ON COLUMN co.cepc.psn_clu IS 'VERAK — Person Responsible for Profit Center [persona centrum lucri]';
COMMENT ON COLUMN co.cepc.usr_clu IS 'VERAK_USER — User Responsible for the Profit Center [usor centrum lucri]';
COMMENT ON COLUMN co.cepc.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN co.cepc.clu2 IS 'NPRCTR — Successor profit center [centrum lucri]';
COMMENT ON COLUMN co.cepc.ptr_clv IS 'LAND1 — Country Key [patria clavis]';
COMMENT ON COLUMN co.cepc.ttl IS 'ANRED — Title [titulus]';
COMMENT ON COLUMN co.cepc.nom IS 'NAME1 — Name 1 [nomen]';
COMMENT ON COLUMN co.cepc.nom2 IS 'NAME2 — Name 2 [nomen]';
COMMENT ON COLUMN co.cepc.nom3 IS 'NAME3 — Name 3 [nomen]';
COMMENT ON COLUMN co.cepc.nom4 IS 'NAME4 — Name 4 [nomen]';
COMMENT ON COLUMN co.cepc.urb IS 'ORT01 — City [urbs]';
COMMENT ON COLUMN co.cepc.ort02 IS 'ORT02 — District';
COMMENT ON COLUMN co.cepc.num IS 'STRAS — House number and street [numerus]';
COMMENT ON COLUMN co.cepc.pfach IS 'PFACH — PO Box';
COMMENT ON COLUMN co.cepc.cod IS 'PSTLZ — Postal Code [codex]';
COMMENT ON COLUMN co.cepc.cod2 IS 'PSTL2 — P.O. Box Postal Code [codex]';
COMMENT ON COLUMN co.cepc.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN co.cepc.num2 IS 'TELBX — Telebox number [numerus]';
COMMENT ON COLUMN co.cepc.pri_tel_num IS 'TELF1 — First telephone number [primus telephonum numerus]';
COMMENT ON COLUMN co.cepc.tel_num IS 'TELF2 — Second telephone number [telephonum numerus]';
COMMENT ON COLUMN co.cepc.num3 IS 'TELFX — Fax Number [numerus]';
COMMENT ON COLUMN co.cepc.num4 IS 'TELTX — Teletex number [numerus]';
COMMENT ON COLUMN co.cepc.num5 IS 'TELX1 — Telex number [numerus]';
COMMENT ON COLUMN co.cepc.datlt IS 'DATLT — Data communication line no.';
COMMENT ON COLUMN co.cepc.nom_clu IS 'DRNAM — Printer name for profit center [nomen centrum lucri]';
COMMENT ON COLUMN co.cepc.clu_are IS 'KHINR — Profit center area [centrum lucri area]';
COMMENT ON COLUMN co.cepc.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN co.cepc.vname IS 'VNAME — Joint Venture';
COMMENT ON COLUMN co.cepc.idx IS 'RECID — Recovery Indicator [index]';
COMMENT ON COLUMN co.cepc.gen IS 'ETYPE — Equity type [genus]';
COMMENT ON COLUMN co.cepc.trb IS 'TXJCD — Tax Jurisdiction [tributum]';
COMMENT ON COLUMN co.cepc.reg IS 'REGIO — Region (State, Province, County) [regio]';
COMMENT ON COLUMN co.cepc.cnd_tbl IS 'KVEWE — Usage of the condition table [condicio tabula]';
COMMENT ON COLUMN co.cepc.kappl IS 'KAPPL — Application';
COMMENT ON COLUMN co.cepc.tax IS 'KALSM — Procedure (Pricing, Output Control, Acct. Det., Costing,...) [taxatio]';
COMMENT ON COLUMN co.cepc.logsystem IS 'LOGSYSTEM — Logical System';
COMMENT ON COLUMN co.cepc.obx_idx IS 'LOCK_IND — Lock indicator [obex index]';
COMMENT ON COLUMN co.cepc.cns_luc IS 'PCA_TEMPLATE — Template for Formula Planning in Profit Centers [consilium lucrum]';
COMMENT ON COLUMN co.cepc.seg IS 'SEGMENT — Segment for Segmental Reporting [segmentum]';

CREATE TABLE IF NOT EXISTS co.cepct (
  cli char(3),
  lng_clv char(1),
  clu varchar(10),
  vld_die date,
  amd varchar(4),
  nom varchar(20),
  txt varchar(40),
  mctxt varchar(20),
  CONSTRAINT cepct_pk PRIMARY KEY (cli, lng_clv, clu, vld_die)
);
COMMENT ON TABLE co.cepct IS 'CEPCT — Profit Center Master Data Texts — language-dependent short and long text descriptions for profit centers defined in CEPC.';
COMMENT ON COLUMN co.cepct.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN co.cepct.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN co.cepct.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN co.cepct.vld_die IS 'DATBI — Valid To Date [validus ad dies]';
COMMENT ON COLUMN co.cepct.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN co.cepct.nom IS 'KTEXT — General Name [nomen]';
COMMENT ON COLUMN co.cepct.txt IS 'LTEXT — Long Text [textus]';
COMMENT ON COLUMN co.cepct.mctxt IS 'MCTXT — Search term for matchcode search';

CREATE TABLE IF NOT EXISTS co.cobk (
  cli char(3),
  amd varchar(4),
  ndo varchar(10),
  anf varchar(4),
  vrs_doc_cap varchar(3),
  vrgng varchar(4),
  tmp_cre numeric(16,0),
  per varchar(3),
  per2 varchar(3),
  ddc date,
  din date,
  die_doc_cre date,
  usr_nom varchar(12),
  doc_cap_txt varchar(50),
  rvs_doc varchar(1),
  idx_doc varchar(1),
  gdo_rfr_doc varchar(1),
  rfr_ndo varchar(10),
  soc_doc varchar(4),
  anf_rfr_doc varchar(4),
  gdo_rfr_doc2 varchar(2),
  orgvg varchar(4),
  num_ins varchar(3),
  num_del varchar(3),
  val_die_mon date,
  rpm_gen varchar(4),
  acl varchar(5),
  amd_mon varchar(5),
  mon_gen_lbr varchar(2),
  mon_gen_lbr2 varchar(2),
  mon_gen_lbr3 varchar(2),
  mon_gen_lbr4 varchar(2),
  rfr varchar(5),
  rfr2 varchar(10),
  logsystem varchar(10),
  tmp time,
  num_ins2 varchar(3),
  ndo2 varchar(10),
  fns_doc varchar(10),
  rvs_doc_rfr varchar(10),
  rvs_doc_rfr2 varchar(10),
  aes_die_smp date,
  CONSTRAINT cobk_pk PRIMARY KEY (cli, amd, ndo, anf)
);
COMMENT ON TABLE co.cobk IS 'COBK — CO Object: Document Header — header record for CO postings, linking CO line items (COEP) to originating business transactions.';
COMMENT ON COLUMN co.cobk.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN co.cobk.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN co.cobk.ndo IS 'BELNR — Document Number [numerus documenti]';
COMMENT ON COLUMN co.cobk.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN co.cobk.vrs_doc_cap IS 'VERSN — Version in CO Document Header [versio documentum caput]';
COMMENT ON COLUMN co.cobk.vrgng IS 'VRGNG — CO Business Transaction';
COMMENT ON COLUMN co.cobk.tmp_cre IS 'TIMESTMP — Time created (Greenwich Meantime) [tempus creatus]';
COMMENT ON COLUMN co.cobk.per IS 'PERAB — From Period [periodus]';
COMMENT ON COLUMN co.cobk.per2 IS 'PERBI — To period [periodus]';
COMMENT ON COLUMN co.cobk.ddc IS 'BLDAT — Document Date [dies documenti]';
COMMENT ON COLUMN co.cobk.din IS 'BUDAT — Posting Date [dies inscriptionis]';
COMMENT ON COLUMN co.cobk.die_doc_cre IS 'CPUDT — Date Document Was Created [dies documentum creatus]';
COMMENT ON COLUMN co.cobk.usr_nom IS 'USNAM — User Name [usor nomen]';
COMMENT ON COLUMN co.cobk.doc_cap_txt IS 'BLTXT — Document Header Text [documentum caput textus]';
COMMENT ON COLUMN co.cobk.rvs_doc IS 'STFLG — Identifier for reversal document [reversio documentum]';
COMMENT ON COLUMN co.cobk.idx_doc IS 'STOKZ — Indicator: Document Has Been Reversed [index documentum]';
COMMENT ON COLUMN co.cobk.gdo_rfr_doc IS 'REFBT — Document type of reference document [genus documenti referentia documentum]';
COMMENT ON COLUMN co.cobk.rfr_ndo IS 'REFBN — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN co.cobk.soc_doc IS 'REFBK — Company code of FI document [codex societatis documentum]';
COMMENT ON COLUMN co.cobk.anf_rfr_doc IS 'REFGJ — Fiscal year of reference document [annus fiscalis referentia documentum]';
COMMENT ON COLUMN co.cobk.gdo_rfr_doc2 IS 'BLART — Document type of FI reference document [genus documenti referentia documentum]';
COMMENT ON COLUMN co.cobk.orgvg IS 'ORGVG — Original CO business transaction';
COMMENT ON COLUMN co.cobk.num_ins IS 'SUMBZ — Number of posting lines for local objects [numerus inscriptio]';
COMMENT ON COLUMN co.cobk.num_del IS 'DELBZ — Number of deleted line items [numerus deletus]';
COMMENT ON COLUMN co.cobk.val_die_mon IS 'WSDAT — Value Date for Currency Translation [valor dies moneta]';
COMMENT ON COLUMN co.cobk.rpm_gen IS 'KURST — Exchange Rate Type [ratio permutationis genus]';
COMMENT ON COLUMN co.cobk.acl IS 'VARNR — CO actual postings fast input: Variant [actualis]';
COMMENT ON COLUMN co.cobk.amd_mon IS 'KWAER — Controlling area currency [area moderationis moneta]';
COMMENT ON COLUMN co.cobk.mon_gen_lbr IS 'CTYP1 — Currency Type 1 in CO Standard Ledger [moneta genus liber]';
COMMENT ON COLUMN co.cobk.mon_gen_lbr2 IS 'CTYP2 — Currency Type 2 in CO Standard Ledger [moneta genus liber]';
COMMENT ON COLUMN co.cobk.mon_gen_lbr3 IS 'CTYP3 — Currency Type 3 in CO Standard Ledger [moneta genus liber]';
COMMENT ON COLUMN co.cobk.mon_gen_lbr4 IS 'CTYP4 — Currency Type 4 in CO Standard Ledger [moneta genus liber]';
COMMENT ON COLUMN co.cobk.rfr IS 'AWTYP — Reference Transaction [referentia]';
COMMENT ON COLUMN co.cobk.rfr2 IS 'AWORG — Reference Organizational Units [referentia]';
COMMENT ON COLUMN co.cobk.logsystem IS 'LOGSYSTEM — Logical System';
COMMENT ON COLUMN co.cobk.tmp IS 'CPUTM — Time of Entry [tempus]';
COMMENT ON COLUMN co.cobk.num_ins2 IS 'ALEBZ — Number of posting rows sent to external systems [numerus inscriptio]';
COMMENT ON COLUMN co.cobk.ndo2 IS 'ALEBN — For ALE: CO Document Number in Generating System [numerus documenti]';
COMMENT ON COLUMN co.cobk.fns_doc IS 'AWSYS — Logical system of source document [fons documentum]';
COMMENT ON COLUMN co.cobk.rvs_doc_rfr IS 'AWREF_REV — Reversal: Reverse Document Reference Document Number [reversio documentum referentia]';
COMMENT ON COLUMN co.cobk.rvs_doc_rfr2 IS 'AWORG_REV — Reversal: Reverse Document Reference Organization [reversio documentum referentia]';
COMMENT ON COLUMN co.cobk.aes_die_smp IS 'VALDT — Special Valuation Date for Cost Accounting [aestimatio dies sumptus]';

CREATE TABLE IF NOT EXISTS co.coep (
  cli char(3),
  amd varchar(4),
  ndo varchar(10),
  ins varchar(3),
  per varchar(3),
  tot_val_mon numeric(15,2),
  tot_val_obi numeric(15,2),
  tot_val_amd numeric(15,2),
  val_amd_mon numeric(15,2),
  tot_pre_are numeric(15,2),
  pre_are_mon numeric(15,2),
  tot_qnt numeric(15,3),
  qnt numeric(15,3),
  tot_qnt2 numeric(15,3),
  qnt2 numeric(15,3),
  lbr varchar(2),
  obi_num varchar(22),
  anf varchar(4),
  val_gen varchar(2),
  vrs varchar(3),
  smp_elm varchar(10),
  clv varchar(14),
  vrgng varchar(4),
  scs_obi varchar(22),
  scs_obi2 varchar(22),
  fns_obi_csm varchar(22),
  soc_sng varchar(6),
  sng_ang varchar(4),
  dbt_crd_idx varchar(1),
  mon varchar(5),
  cvm varchar(5),
  men varchar(3),
  men2 varchar(3),
  qnt3 varchar(1),
  seg_txt varchar(50),
  ins_rfr_doc varchar(3),
  doc_pos_num varchar(3),
  ins_vrs varchar(3),
  rat_num varchar(10),
  rat_gen varchar(1),
  ofc varchar(4),
  mat_num varchar(18),
  ctg_rfr_mem varchar(3),
  dem_num varchar(10),
  pos_num_dem varchar(5),
  num_rat_asg varchar(2),
  idx_pos varchar(1),
  nps varchar(8),
  sum_cls_val varchar(2),
  rat_asg varchar(22),
  rat_asg2 varchar(22),
  rat_asg3 varchar(22),
  seg_num varchar(10),
  dbt_gen varchar(1),
  soc varchar(4),
  ang varchar(4),
  afn varchar(16),
  obi_cls varchar(2),
  obi varchar(10),
  smp_elm_scs varchar(10),
  soc_scs varchar(4),
  scs_afn varchar(16),
  scs_obi_cls varchar(2),
  scs_obi3 varchar(10),
  rfr_die_tsc date,
  atb_pre varchar(1),
  obi_num_org varchar(22),
  tmp_cre numeric(16,0),
  nts varchar(12),
  geber varchar(10),
  scs varchar(10),
  grant_nbr varchar(20),
  scs2 varchar(20),
  ins_pos_rfr varchar(3),
  seg varchar(10),
  scs_seg varchar(10),
  per2 varchar(10),
  scs_per varchar(10),
  prd_mns varchar(6),
  CONSTRAINT coep_pk PRIMARY KEY (cli, amd, ndo, ins, per, obi_num, anf, val_gen, vrs, smp_elm, clv, vrgng)
);
COMMENT ON TABLE co.coep IS 'COEP — CO Object: Line Items (by Period) — actual/plan cost line items posted to CO objects, the granular source feeding cost center and order actuals.';
COMMENT ON COLUMN co.coep.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN co.coep.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN co.coep.ndo IS 'BELNR — Document Number [numerus documenti]';
COMMENT ON COLUMN co.coep.ins IS 'BUZEI — Posting row [inscriptio]';
COMMENT ON COLUMN co.coep.per IS 'PERIO — Period [periodus]';
COMMENT ON COLUMN co.coep.tot_val_mon IS 'WTGBTR — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coep.tot_val_obi IS 'WOGBTR — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coep.tot_val_amd IS 'WKGBTR — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coep.val_amd_mon IS 'WKFBTR — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coep.tot_pre_are IS 'PAGBTR — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coep.pre_are_mon IS 'PAFBTR — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coep.tot_qnt IS 'MEGBTR — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coep.qnt IS 'MEFBTR — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coep.tot_qnt2 IS 'MBGBTR — Total quantity entered [summa totalis quantitas]';
COMMENT ON COLUMN co.coep.qnt2 IS 'MBFBTR — Fixed quantity entered [quantitas]';
COMMENT ON COLUMN co.coep.lbr IS 'LEDNR — Ledger for Controlling objects [liber]';
COMMENT ON COLUMN co.coep.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN co.coep.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN co.coep.val_gen IS 'WRTTP — Value Type [valor genus]';
COMMENT ON COLUMN co.coep.vrs IS 'VERSN — Version [versio]';
COMMENT ON COLUMN co.coep.smp_elm IS 'KSTAR — Cost Element [sumptus elementum]';
COMMENT ON COLUMN co.coep.clv IS 'HRKFT — CO key subnumber [clavis]';
COMMENT ON COLUMN co.coep.vrgng IS 'VRGNG — CO Business Transaction';
COMMENT ON COLUMN co.coep.scs_obi IS 'PAROB — Partner Object [socius obiectum]';
COMMENT ON COLUMN co.coep.scs_obi2 IS 'PAROB1 — Partner object (always filled) [socius obiectum]';
COMMENT ON COLUMN co.coep.fns_obi_csm IS 'USPOB — Source Object (Cost Center/Activity Type) [fons obiectum centrum sumptus]';
COMMENT ON COLUMN co.coep.soc_sng IS 'VBUND — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN co.coep.sng_ang IS 'PARGB — Trading partner''s business area [socius negotiationis area negotii]';
COMMENT ON COLUMN co.coep.dbt_crd_idx IS 'BEKNZ — Debit/credit indicator [debitum creditum index]';
COMMENT ON COLUMN co.coep.mon IS 'TWAER — Transaction Currency [moneta]';
COMMENT ON COLUMN co.coep.cvm IS 'OWAER — Currency Key [clavis monetae]';
COMMENT ON COLUMN co.coep.men IS 'MEINH — Unit of Measure [mensura]';
COMMENT ON COLUMN co.coep.men2 IS 'MEINB — Posted Unit of Measure [mensura]';
COMMENT ON COLUMN co.coep.qnt3 IS 'MVFLG — Quantity Complete/Incomplete [quantitas]';
COMMENT ON COLUMN co.coep.seg_txt IS 'SGTXT — Segment text [segmentum textus]';
COMMENT ON COLUMN co.coep.ins_rfr_doc IS 'REFBZ — Posting row of reference document [inscriptio referentia documentum]';
COMMENT ON COLUMN co.coep.doc_pos_num IS 'ZLENR — Document Item Number [documentum positio numerus]';
COMMENT ON COLUMN co.coep.ins_vrs IS 'BW_REFBZ — Posting Row in Operative Version [inscriptio versio]';
COMMENT ON COLUMN co.coep.rat_num IS 'GKONT — Offsetting Account Number [ratio numerus]';
COMMENT ON COLUMN co.coep.rat_gen IS 'GKOAR — Offsetting Account Type [ratio genus]';
COMMENT ON COLUMN co.coep.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN co.coep.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN co.coep.ctg_rfr_mem IS 'RBEST — Category of Reference Purchase Order [categoria referentia mandatum emptionis]';
COMMENT ON COLUMN co.coep.dem_num IS 'EBELN — Purchasing Document Number [documentum emptionis numerus]';
COMMENT ON COLUMN co.coep.pos_num_dem IS 'EBELP — Item Number of Purchasing Document [positio numerus documentum emptionis]';
COMMENT ON COLUMN co.coep.num_rat_asg IS 'ZEKKN — Sequential Number of Account Assignment [numerus ratio assignatio]';
COMMENT ON COLUMN co.coep.idx_pos IS 'ERLKZ — Completion indicator for line item [index positio]';
COMMENT ON COLUMN co.coep.nps IS 'PERNR — Personnel Number [numerus personae]';
COMMENT ON COLUMN co.coep.sum_cls_val IS 'BTRKL — Amount Class for Value in Controlling Area Currency [summa classis valor]';
COMMENT ON COLUMN co.coep.rat_asg IS 'OBJNR_N1 — Auxiliary account assignment 1 [ratio assignatio]';
COMMENT ON COLUMN co.coep.rat_asg2 IS 'OBJNR_N2 — Auxiliary account assignment 2 [ratio assignatio]';
COMMENT ON COLUMN co.coep.rat_asg3 IS 'OBJNR_N3 — Auxiliary account assignment 3 [ratio assignatio]';
COMMENT ON COLUMN co.coep.seg_num IS 'PAOBJNR — Profitability Segment Number (CO-PA) [segmentum numerus]';
COMMENT ON COLUMN co.coep.dbt_gen IS 'BELTP — Debit type [debitum genus]';
COMMENT ON COLUMN co.coep.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN co.coep.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN co.coep.afn IS 'FKBER — Functional Area [area functionis]';
COMMENT ON COLUMN co.coep.obi_cls IS 'SCOPE — Object Class [obiectum classis]';
COMMENT ON COLUMN co.coep.obi IS 'LOGSYSO — Logical system of object [obiectum]';
COMMENT ON COLUMN co.coep.smp_elm_scs IS 'PKSTAR — Cost element of partner [sumptus elementum socius]';
COMMENT ON COLUMN co.coep.soc_scs IS 'PBUKRS — Company code of partner [codex societatis socius]';
COMMENT ON COLUMN co.coep.scs_afn IS 'PFKBER — Partner Functional Area [socius area functionis]';
COMMENT ON COLUMN co.coep.scs_obi_cls IS 'PSCOPE — Partner object class [socius obiectum classis]';
COMMENT ON COLUMN co.coep.scs_obi3 IS 'LOGSYSP — Logical system of partner object [socius obiectum]';
COMMENT ON COLUMN co.coep.rfr_die_tsc IS 'DABRZ — Reference Date for Settlement [referentia dies transactio]';
COMMENT ON COLUMN co.coep.atb_pre IS 'BWSTRAT — Strategy for Determining an Allocation Price [attributio pretium]';
COMMENT ON COLUMN co.coep.obi_num_org IS 'OBJNR_HK — Object Number of Origin Object [obiectum numerus origo]';
COMMENT ON COLUMN co.coep.tmp_cre IS 'TIMESTMP — Time created (Greenwich Meantime) [tempus creatus]';
COMMENT ON COLUMN co.coep.nts IS 'QMNUM — Notification No [nuntius]';
COMMENT ON COLUMN co.coep.geber IS 'GEBER — Fund';
COMMENT ON COLUMN co.coep.scs IS 'PGEBER — Partner Fund [socius]';
COMMENT ON COLUMN co.coep.grant_nbr IS 'GRANT_NBR — Grant';
COMMENT ON COLUMN co.coep.scs2 IS 'PGRANT_NBR — Partner Grant [socius]';
COMMENT ON COLUMN co.coep.ins_pos_rfr IS 'REFBZ_FI — Posting Item of FI Reference Document [inscriptio positio referentia]';
COMMENT ON COLUMN co.coep.seg IS 'SEGMENT — Segment for Segmental Reporting [segmentum]';
COMMENT ON COLUMN co.coep.scs_seg IS 'PSEGMENT — Partner Segment for Segmental Reporting [socius segmentum]';
COMMENT ON COLUMN co.coep.per2 IS 'BUDGET_PD — FM: Budget Period [periodus]';
COMMENT ON COLUMN co.coep.scs_per IS 'PBUDGET_PD — FM: Partner Budget Period [socius periodus]';
COMMENT ON COLUMN co.coep.prd_mns IS 'PRODPER — Production Month for JVA in CO [productio mensis]';

CREATE TABLE IF NOT EXISTS co.cosp (
  cli char(3),
  lbr varchar(2),
  obi_num varchar(22),
  anf varchar(4),
  val_gen varchar(2),
  vrs varchar(3),
  smp_elm varchar(10),
  clv varchar(14),
  vrgng varchar(4),
  soc_sng varchar(6),
  sng_ang varchar(4),
  dbt_crd_idx varchar(1),
  mon varchar(5),
  per_obx varchar(3),
  men varchar(3),
  tot_val_mon numeric(15,2),
  tot_val_mon2 numeric(15,2),
  tot_val_mon3 numeric(15,2),
  tot_val_mon4 numeric(15,2),
  tot_val_mon5 numeric(15,2),
  tot_val_mon6 numeric(15,2),
  tot_val_mon7 numeric(15,2),
  tot_val_mon8 numeric(15,2),
  tot_val_mon9 numeric(15,2),
  tot_val_mon10 numeric(15,2),
  tot_val_mon11 numeric(15,2),
  tot_val_mon12 numeric(15,2),
  tot_val_mon13 numeric(15,2),
  tot_val_mon14 numeric(15,2),
  tot_val_mon15 numeric(15,2),
  tot_val_mon16 numeric(15,2),
  tot_val_obi numeric(15,2),
  tot_val_obi2 numeric(15,2),
  tot_val_obi3 numeric(15,2),
  tot_val_obi4 numeric(15,2),
  tot_val_obi5 numeric(15,2),
  tot_val_obi6 numeric(15,2),
  tot_val_obi7 numeric(15,2),
  tot_val_obi8 numeric(15,2),
  tot_val_obi9 numeric(15,2),
  tot_val_obi10 numeric(15,2),
  tot_val_obi11 numeric(15,2),
  tot_val_obi12 numeric(15,2),
  tot_val_obi13 numeric(15,2),
  tot_val_obi14 numeric(15,2),
  tot_val_obi15 numeric(15,2),
  tot_val_obi16 numeric(15,2),
  tot_val_amd numeric(15,2),
  tot_val_amd2 numeric(15,2),
  tot_val_amd3 numeric(15,2),
  tot_val_amd4 numeric(15,2),
  tot_val_amd5 numeric(15,2),
  tot_val_amd6 numeric(15,2),
  tot_val_amd7 numeric(15,2),
  tot_val_amd8 numeric(15,2),
  tot_val_amd9 numeric(15,2),
  tot_val_amd10 numeric(15,2),
  tot_val_amd11 numeric(15,2),
  tot_val_amd12 numeric(15,2),
  tot_val_amd13 numeric(15,2),
  tot_val_amd14 numeric(15,2),
  tot_val_amd15 numeric(15,2),
  tot_val_amd16 numeric(15,2),
  val_amd_mon numeric(15,2),
  val_amd_mon2 numeric(15,2),
  val_amd_mon3 numeric(15,2),
  val_amd_mon4 numeric(15,2),
  val_amd_mon5 numeric(15,2),
  val_amd_mon6 numeric(15,2),
  val_amd_mon7 numeric(15,2),
  val_amd_mon8 numeric(15,2),
  val_amd_mon9 numeric(15,2),
  val_amd_mon10 numeric(15,2),
  val_amd_mon11 numeric(15,2),
  val_amd_mon12 numeric(15,2),
  val_amd_mon13 numeric(15,2),
  val_amd_mon14 numeric(15,2),
  val_amd_mon15 numeric(15,2),
  val_amd_mon16 numeric(15,2),
  tot_pre_are numeric(15,2),
  tot_pre_are2 numeric(15,2),
  tot_pre_are3 numeric(15,2),
  tot_pre_are4 numeric(15,2),
  tot_pre_are5 numeric(15,2),
  tot_pre_are6 numeric(15,2),
  tot_pre_are7 numeric(15,2),
  tot_pre_are8 numeric(15,2),
  tot_pre_are9 numeric(15,2),
  tot_pre_are10 numeric(15,2),
  tot_pre_are11 numeric(15,2),
  tot_pre_are12 numeric(15,2),
  tot_pre_are13 numeric(15,2),
  tot_pre_are14 numeric(15,2),
  tot_pre_are15 numeric(15,2),
  tot_pre_are16 numeric(15,2),
  tot_qnt numeric(15,3),
  tot_qnt2 numeric(15,3),
  tot_qnt3 numeric(15,3),
  tot_qnt4 numeric(15,3),
  tot_qnt5 numeric(15,3),
  tot_qnt6 numeric(15,3),
  tot_qnt7 numeric(15,3),
  tot_qnt8 numeric(15,3),
  tot_qnt9 numeric(15,3),
  tot_qnt10 numeric(15,3),
  tot_qnt11 numeric(15,3),
  tot_qnt12 numeric(15,3),
  tot_qnt13 numeric(15,3),
  tot_qnt14 numeric(15,3),
  tot_qnt15 numeric(15,3),
  tot_qnt16 numeric(15,3),
  qnt numeric(15,3),
  qnt2 numeric(15,3),
  qnt3 numeric(15,3),
  qnt4 numeric(15,3),
  qnt5 numeric(15,3),
  qnt6 numeric(15,3),
  qnt7 numeric(15,3),
  qnt8 numeric(15,3),
  qnt9 numeric(15,3),
  qnt10 numeric(15,3),
  qnt11 numeric(15,3),
  qnt12 numeric(15,3),
  qnt13 numeric(15,3),
  qnt14 numeric(15,3),
  qnt15 numeric(15,3),
  qnt16 numeric(15,3),
  muv001 varchar(1),
  muv002 varchar(1),
  muv003 varchar(1),
  muv004 varchar(1),
  muv005 varchar(1),
  muv006 varchar(1),
  muv007 varchar(1),
  muv008 varchar(1),
  muv009 varchar(1),
  muv010 varchar(1),
  muv011 varchar(1),
  muv012 varchar(1),
  muv013 varchar(1),
  muv014 varchar(1),
  muv015 varchar(1),
  muv016 varchar(1),
  dbt_gen varchar(1),
  tmp_cre numeric(16,0),
  soc varchar(4),
  afn varchar(16),
  seg varchar(10),
  geber varchar(10),
  grant_nbr varchar(20),
  per varchar(10),
  CONSTRAINT cosp_pk PRIMARY KEY (cli, lbr, obi_num, anf, val_gen, vrs, smp_elm, clv, vrgng, soc_sng)
);
COMMENT ON TABLE co.cosp IS 'COSP — CO Object: Cost Totals for External Postings — period-bucketed totals (16 posting periods per row) for CO postings originating outside Controlling (FI journal entries, MM goods movements, invoices) against any CO object. The aggregate counterpart to the COEP line-item table for externally sourced costs.';
COMMENT ON COLUMN co.cosp.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN co.cosp.lbr IS 'LEDNR — Ledger for Controlling objects [liber]';
COMMENT ON COLUMN co.cosp.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN co.cosp.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN co.cosp.val_gen IS 'WRTTP — Value Type [valor genus]';
COMMENT ON COLUMN co.cosp.vrs IS 'VERSN — Version [versio]';
COMMENT ON COLUMN co.cosp.smp_elm IS 'KSTAR — Cost Element [sumptus elementum]';
COMMENT ON COLUMN co.cosp.clv IS 'HRKFT — CO key subnumber [clavis]';
COMMENT ON COLUMN co.cosp.vrgng IS 'VRGNG — CO Business Transaction';
COMMENT ON COLUMN co.cosp.soc_sng IS 'VBUND — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN co.cosp.sng_ang IS 'PARGB — Trading partner''s business area [socius negotiationis area negotii]';
COMMENT ON COLUMN co.cosp.dbt_crd_idx IS 'BEKNZ — Debit/credit indicator [debitum creditum index]';
COMMENT ON COLUMN co.cosp.mon IS 'TWAER — Transaction Currency [moneta]';
COMMENT ON COLUMN co.cosp.per_obx IS 'PERBL — Period block [periodus obex]';
COMMENT ON COLUMN co.cosp.men IS 'MEINH — Unit of Measure [mensura]';
COMMENT ON COLUMN co.cosp.tot_val_mon IS 'WTG001 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.cosp.tot_val_mon2 IS 'WTG002 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.cosp.tot_val_mon3 IS 'WTG003 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.cosp.tot_val_mon4 IS 'WTG004 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.cosp.tot_val_mon5 IS 'WTG005 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.cosp.tot_val_mon6 IS 'WTG006 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.cosp.tot_val_mon7 IS 'WTG007 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.cosp.tot_val_mon8 IS 'WTG008 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.cosp.tot_val_mon9 IS 'WTG009 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.cosp.tot_val_mon10 IS 'WTG010 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.cosp.tot_val_mon11 IS 'WTG011 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.cosp.tot_val_mon12 IS 'WTG012 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.cosp.tot_val_mon13 IS 'WTG013 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.cosp.tot_val_mon14 IS 'WTG014 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.cosp.tot_val_mon15 IS 'WTG015 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.cosp.tot_val_mon16 IS 'WTG016 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.cosp.tot_val_obi IS 'WOG001 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.cosp.tot_val_obi2 IS 'WOG002 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.cosp.tot_val_obi3 IS 'WOG003 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.cosp.tot_val_obi4 IS 'WOG004 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.cosp.tot_val_obi5 IS 'WOG005 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.cosp.tot_val_obi6 IS 'WOG006 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.cosp.tot_val_obi7 IS 'WOG007 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.cosp.tot_val_obi8 IS 'WOG008 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.cosp.tot_val_obi9 IS 'WOG009 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.cosp.tot_val_obi10 IS 'WOG010 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.cosp.tot_val_obi11 IS 'WOG011 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.cosp.tot_val_obi12 IS 'WOG012 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.cosp.tot_val_obi13 IS 'WOG013 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.cosp.tot_val_obi14 IS 'WOG014 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.cosp.tot_val_obi15 IS 'WOG015 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.cosp.tot_val_obi16 IS 'WOG016 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.cosp.tot_val_amd IS 'WKG001 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.cosp.tot_val_amd2 IS 'WKG002 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.cosp.tot_val_amd3 IS 'WKG003 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.cosp.tot_val_amd4 IS 'WKG004 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.cosp.tot_val_amd5 IS 'WKG005 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.cosp.tot_val_amd6 IS 'WKG006 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.cosp.tot_val_amd7 IS 'WKG007 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.cosp.tot_val_amd8 IS 'WKG008 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.cosp.tot_val_amd9 IS 'WKG009 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.cosp.tot_val_amd10 IS 'WKG010 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.cosp.tot_val_amd11 IS 'WKG011 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.cosp.tot_val_amd12 IS 'WKG012 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.cosp.tot_val_amd13 IS 'WKG013 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.cosp.tot_val_amd14 IS 'WKG014 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.cosp.tot_val_amd15 IS 'WKG015 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.cosp.tot_val_amd16 IS 'WKG016 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.cosp.val_amd_mon IS 'WKF001 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.cosp.val_amd_mon2 IS 'WKF002 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.cosp.val_amd_mon3 IS 'WKF003 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.cosp.val_amd_mon4 IS 'WKF004 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.cosp.val_amd_mon5 IS 'WKF005 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.cosp.val_amd_mon6 IS 'WKF006 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.cosp.val_amd_mon7 IS 'WKF007 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.cosp.val_amd_mon8 IS 'WKF008 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.cosp.val_amd_mon9 IS 'WKF009 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.cosp.val_amd_mon10 IS 'WKF010 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.cosp.val_amd_mon11 IS 'WKF011 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.cosp.val_amd_mon12 IS 'WKF012 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.cosp.val_amd_mon13 IS 'WKF013 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.cosp.val_amd_mon14 IS 'WKF014 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.cosp.val_amd_mon15 IS 'WKF015 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.cosp.val_amd_mon16 IS 'WKF016 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.cosp.tot_pre_are IS 'PAG001 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.cosp.tot_pre_are2 IS 'PAG002 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.cosp.tot_pre_are3 IS 'PAG003 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.cosp.tot_pre_are4 IS 'PAG004 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.cosp.tot_pre_are5 IS 'PAG005 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.cosp.tot_pre_are6 IS 'PAG006 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.cosp.tot_pre_are7 IS 'PAG007 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.cosp.tot_pre_are8 IS 'PAG008 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.cosp.tot_pre_are9 IS 'PAG009 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.cosp.tot_pre_are10 IS 'PAG010 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.cosp.tot_pre_are11 IS 'PAG011 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.cosp.tot_pre_are12 IS 'PAG012 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.cosp.tot_pre_are13 IS 'PAG013 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.cosp.tot_pre_are14 IS 'PAG014 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.cosp.tot_pre_are15 IS 'PAG015 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.cosp.tot_pre_are16 IS 'PAG016 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.cosp.tot_qnt IS 'MEG001 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.cosp.tot_qnt2 IS 'MEG002 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.cosp.tot_qnt3 IS 'MEG003 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.cosp.tot_qnt4 IS 'MEG004 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.cosp.tot_qnt5 IS 'MEG005 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.cosp.tot_qnt6 IS 'MEG006 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.cosp.tot_qnt7 IS 'MEG007 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.cosp.tot_qnt8 IS 'MEG008 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.cosp.tot_qnt9 IS 'MEG009 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.cosp.tot_qnt10 IS 'MEG010 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.cosp.tot_qnt11 IS 'MEG011 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.cosp.tot_qnt12 IS 'MEG012 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.cosp.tot_qnt13 IS 'MEG013 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.cosp.tot_qnt14 IS 'MEG014 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.cosp.tot_qnt15 IS 'MEG015 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.cosp.tot_qnt16 IS 'MEG016 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.cosp.qnt IS 'MEF001 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.cosp.qnt2 IS 'MEF002 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.cosp.qnt3 IS 'MEF003 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.cosp.qnt4 IS 'MEF004 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.cosp.qnt5 IS 'MEF005 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.cosp.qnt6 IS 'MEF006 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.cosp.qnt7 IS 'MEF007 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.cosp.qnt8 IS 'MEF008 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.cosp.qnt9 IS 'MEF009 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.cosp.qnt10 IS 'MEF010 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.cosp.qnt11 IS 'MEF011 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.cosp.qnt12 IS 'MEF012 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.cosp.qnt13 IS 'MEF013 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.cosp.qnt14 IS 'MEF014 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.cosp.qnt15 IS 'MEF015 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.cosp.qnt16 IS 'MEF016 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.cosp.muv001 IS 'MUV001 — Quantities Incomplete';
COMMENT ON COLUMN co.cosp.muv002 IS 'MUV002 — Quantities Incomplete';
COMMENT ON COLUMN co.cosp.muv003 IS 'MUV003 — Quantities Incomplete';
COMMENT ON COLUMN co.cosp.muv004 IS 'MUV004 — Quantities Incomplete';
COMMENT ON COLUMN co.cosp.muv005 IS 'MUV005 — Quantities Incomplete';
COMMENT ON COLUMN co.cosp.muv006 IS 'MUV006 — Quantities Incomplete';
COMMENT ON COLUMN co.cosp.muv007 IS 'MUV007 — Quantities Incomplete';
COMMENT ON COLUMN co.cosp.muv008 IS 'MUV008 — Quantities Incomplete';
COMMENT ON COLUMN co.cosp.muv009 IS 'MUV009 — Quantities Incomplete';
COMMENT ON COLUMN co.cosp.muv010 IS 'MUV010 — Quantities Incomplete';
COMMENT ON COLUMN co.cosp.muv011 IS 'MUV011 — Quantities Incomplete';
COMMENT ON COLUMN co.cosp.muv012 IS 'MUV012 — Quantities Incomplete';
COMMENT ON COLUMN co.cosp.muv013 IS 'MUV013 — Quantities Incomplete';
COMMENT ON COLUMN co.cosp.muv014 IS 'MUV014 — Quantities Incomplete';
COMMENT ON COLUMN co.cosp.muv015 IS 'MUV015 — Quantities Incomplete';
COMMENT ON COLUMN co.cosp.muv016 IS 'MUV016 — Quantities Incomplete';
COMMENT ON COLUMN co.cosp.dbt_gen IS 'BELTP — Debit type [debitum genus]';
COMMENT ON COLUMN co.cosp.tmp_cre IS 'TIMESTMP — Time created (Greenwich Meantime) [tempus creatus]';
COMMENT ON COLUMN co.cosp.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN co.cosp.afn IS 'FKBER — Functional Area [area functionis]';
COMMENT ON COLUMN co.cosp.seg IS 'SEGMENT — Segment for Segmental Reporting [segmentum]';
COMMENT ON COLUMN co.cosp.geber IS 'GEBER — Fund';
COMMENT ON COLUMN co.cosp.grant_nbr IS 'GRANT_NBR — Grant';
COMMENT ON COLUMN co.cosp.per IS 'BUDGET_PD — FM: Budget Period [periodus]';

CREATE TABLE IF NOT EXISTS co.coss (
  cli char(3),
  lbr varchar(2),
  obi_num varchar(22),
  anf varchar(4),
  val_gen varchar(2),
  vrs varchar(3),
  smp_elm varchar(10),
  clv varchar(14),
  vrgng varchar(4),
  scs_obi varchar(22),
  fns_obi_csm varchar(22),
  dbt_crd_idx varchar(1),
  mon varchar(5),
  per_obx varchar(3),
  men varchar(3),
  tot_val_mon numeric(15,2),
  tot_val_mon2 numeric(15,2),
  tot_val_mon3 numeric(15,2),
  tot_val_mon4 numeric(15,2),
  tot_val_mon5 numeric(15,2),
  tot_val_mon6 numeric(15,2),
  tot_val_mon7 numeric(15,2),
  tot_val_mon8 numeric(15,2),
  tot_val_mon9 numeric(15,2),
  tot_val_mon10 numeric(15,2),
  tot_val_mon11 numeric(15,2),
  tot_val_mon12 numeric(15,2),
  tot_val_mon13 numeric(15,2),
  tot_val_mon14 numeric(15,2),
  tot_val_mon15 numeric(15,2),
  tot_val_mon16 numeric(15,2),
  tot_val_obi numeric(15,2),
  tot_val_obi2 numeric(15,2),
  tot_val_obi3 numeric(15,2),
  tot_val_obi4 numeric(15,2),
  tot_val_obi5 numeric(15,2),
  tot_val_obi6 numeric(15,2),
  tot_val_obi7 numeric(15,2),
  tot_val_obi8 numeric(15,2),
  tot_val_obi9 numeric(15,2),
  tot_val_obi10 numeric(15,2),
  tot_val_obi11 numeric(15,2),
  tot_val_obi12 numeric(15,2),
  tot_val_obi13 numeric(15,2),
  tot_val_obi14 numeric(15,2),
  tot_val_obi15 numeric(15,2),
  tot_val_obi16 numeric(15,2),
  tot_val_amd numeric(15,2),
  tot_val_amd2 numeric(15,2),
  tot_val_amd3 numeric(15,2),
  tot_val_amd4 numeric(15,2),
  tot_val_amd5 numeric(15,2),
  tot_val_amd6 numeric(15,2),
  tot_val_amd7 numeric(15,2),
  tot_val_amd8 numeric(15,2),
  tot_val_amd9 numeric(15,2),
  tot_val_amd10 numeric(15,2),
  tot_val_amd11 numeric(15,2),
  tot_val_amd12 numeric(15,2),
  tot_val_amd13 numeric(15,2),
  tot_val_amd14 numeric(15,2),
  tot_val_amd15 numeric(15,2),
  tot_val_amd16 numeric(15,2),
  val_amd_mon numeric(15,2),
  val_amd_mon2 numeric(15,2),
  val_amd_mon3 numeric(15,2),
  val_amd_mon4 numeric(15,2),
  val_amd_mon5 numeric(15,2),
  val_amd_mon6 numeric(15,2),
  val_amd_mon7 numeric(15,2),
  val_amd_mon8 numeric(15,2),
  val_amd_mon9 numeric(15,2),
  val_amd_mon10 numeric(15,2),
  val_amd_mon11 numeric(15,2),
  val_amd_mon12 numeric(15,2),
  val_amd_mon13 numeric(15,2),
  val_amd_mon14 numeric(15,2),
  val_amd_mon15 numeric(15,2),
  val_amd_mon16 numeric(15,2),
  tot_pre_are numeric(15,2),
  tot_pre_are2 numeric(15,2),
  tot_pre_are3 numeric(15,2),
  tot_pre_are4 numeric(15,2),
  tot_pre_are5 numeric(15,2),
  tot_pre_are6 numeric(15,2),
  tot_pre_are7 numeric(15,2),
  tot_pre_are8 numeric(15,2),
  tot_pre_are9 numeric(15,2),
  tot_pre_are10 numeric(15,2),
  tot_pre_are11 numeric(15,2),
  tot_pre_are12 numeric(15,2),
  tot_pre_are13 numeric(15,2),
  tot_pre_are14 numeric(15,2),
  tot_pre_are15 numeric(15,2),
  tot_pre_are16 numeric(15,2),
  pre_are_mon numeric(15,2),
  pre_are_mon2 numeric(15,2),
  pre_are_mon3 numeric(15,2),
  pre_are_mon4 numeric(15,2),
  pre_are_mon5 numeric(15,2),
  pre_are_mon6 numeric(15,2),
  pre_are_mon7 numeric(15,2),
  pre_are_mon8 numeric(15,2),
  pre_are_mon9 numeric(15,2),
  pre_are_mon10 numeric(15,2),
  pre_are_mon11 numeric(15,2),
  pre_are_mon12 numeric(15,2),
  pre_are_mon13 numeric(15,2),
  pre_are_mon14 numeric(15,2),
  pre_are_mon15 numeric(15,2),
  pre_are_mon16 numeric(15,2),
  tot_qnt numeric(15,3),
  tot_qnt2 numeric(15,3),
  tot_qnt3 numeric(15,3),
  tot_qnt4 numeric(15,3),
  tot_qnt5 numeric(15,3),
  tot_qnt6 numeric(15,3),
  tot_qnt7 numeric(15,3),
  tot_qnt8 numeric(15,3),
  tot_qnt9 numeric(15,3),
  tot_qnt10 numeric(15,3),
  tot_qnt11 numeric(15,3),
  tot_qnt12 numeric(15,3),
  tot_qnt13 numeric(15,3),
  tot_qnt14 numeric(15,3),
  tot_qnt15 numeric(15,3),
  tot_qnt16 numeric(15,3),
  qnt numeric(15,3),
  qnt2 numeric(15,3),
  qnt3 numeric(15,3),
  qnt4 numeric(15,3),
  qnt5 numeric(15,3),
  qnt6 numeric(15,3),
  qnt7 numeric(15,3),
  qnt8 numeric(15,3),
  qnt9 numeric(15,3),
  qnt10 numeric(15,3),
  qnt11 numeric(15,3),
  qnt12 numeric(15,3),
  qnt13 numeric(15,3),
  qnt14 numeric(15,3),
  qnt15 numeric(15,3),
  qnt16 numeric(15,3),
  muv001 varchar(1),
  muv002 varchar(1),
  muv003 varchar(1),
  muv004 varchar(1),
  muv005 varchar(1),
  muv006 varchar(1),
  muv007 varchar(1),
  muv008 varchar(1),
  muv009 varchar(1),
  muv010 varchar(1),
  muv011 varchar(1),
  muv012 varchar(1),
  muv013 varchar(1),
  muv014 varchar(1),
  muv015 varchar(1),
  muv016 varchar(1),
  dbt_gen varchar(1),
  tmp_cre numeric(16,0),
  soc varchar(4),
  afn varchar(16),
  seg varchar(10),
  geber varchar(10),
  grant_nbr varchar(20),
  per varchar(10),
  CONSTRAINT coss_pk PRIMARY KEY (cli, lbr, obi_num, anf, val_gen, vrs, smp_elm, clv, vrgng, scs_obi)
);
COMMENT ON TABLE co.coss IS 'COSS — CO Object: Cost Totals for Internal Postings — period-bucketed totals (16 posting periods per row) for internally generated CO postings (activity allocations, assessments, distributions) against any CO object (cost center, order, WBS element). The aggregate counterpart to the COEP line-item table.';
COMMENT ON COLUMN co.coss.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN co.coss.lbr IS 'LEDNR — Ledger for Controlling objects [liber]';
COMMENT ON COLUMN co.coss.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN co.coss.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN co.coss.val_gen IS 'WRTTP — Value Type [valor genus]';
COMMENT ON COLUMN co.coss.vrs IS 'VERSN — Version [versio]';
COMMENT ON COLUMN co.coss.smp_elm IS 'KSTAR — Cost Element [sumptus elementum]';
COMMENT ON COLUMN co.coss.clv IS 'HRKFT — CO key subnumber [clavis]';
COMMENT ON COLUMN co.coss.vrgng IS 'VRGNG — CO Business Transaction';
COMMENT ON COLUMN co.coss.scs_obi IS 'PAROB — Partner Object [socius obiectum]';
COMMENT ON COLUMN co.coss.fns_obi_csm IS 'USPOB — Source Object (Cost Center/Activity Type) [fons obiectum centrum sumptus]';
COMMENT ON COLUMN co.coss.dbt_crd_idx IS 'BEKNZ — Debit/credit indicator [debitum creditum index]';
COMMENT ON COLUMN co.coss.mon IS 'TWAER — Transaction Currency [moneta]';
COMMENT ON COLUMN co.coss.per_obx IS 'PERBL — Period block [periodus obex]';
COMMENT ON COLUMN co.coss.men IS 'MEINH — Unit of Measure [mensura]';
COMMENT ON COLUMN co.coss.tot_val_mon IS 'WTG001 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coss.tot_val_mon2 IS 'WTG002 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coss.tot_val_mon3 IS 'WTG003 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coss.tot_val_mon4 IS 'WTG004 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coss.tot_val_mon5 IS 'WTG005 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coss.tot_val_mon6 IS 'WTG006 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coss.tot_val_mon7 IS 'WTG007 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coss.tot_val_mon8 IS 'WTG008 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coss.tot_val_mon9 IS 'WTG009 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coss.tot_val_mon10 IS 'WTG010 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coss.tot_val_mon11 IS 'WTG011 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coss.tot_val_mon12 IS 'WTG012 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coss.tot_val_mon13 IS 'WTG013 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coss.tot_val_mon14 IS 'WTG014 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coss.tot_val_mon15 IS 'WTG015 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coss.tot_val_mon16 IS 'WTG016 — Total Value in Transaction Currency [summa totalis valor moneta]';
COMMENT ON COLUMN co.coss.tot_val_obi IS 'WOG001 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coss.tot_val_obi2 IS 'WOG002 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coss.tot_val_obi3 IS 'WOG003 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coss.tot_val_obi4 IS 'WOG004 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coss.tot_val_obi5 IS 'WOG005 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coss.tot_val_obi6 IS 'WOG006 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coss.tot_val_obi7 IS 'WOG007 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coss.tot_val_obi8 IS 'WOG008 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coss.tot_val_obi9 IS 'WOG009 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coss.tot_val_obi10 IS 'WOG010 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coss.tot_val_obi11 IS 'WOG011 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coss.tot_val_obi12 IS 'WOG012 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coss.tot_val_obi13 IS 'WOG013 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coss.tot_val_obi14 IS 'WOG014 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coss.tot_val_obi15 IS 'WOG015 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coss.tot_val_obi16 IS 'WOG016 — Total Value in Object Currency [summa totalis valor obiectum]';
COMMENT ON COLUMN co.coss.tot_val_amd IS 'WKG001 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coss.tot_val_amd2 IS 'WKG002 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coss.tot_val_amd3 IS 'WKG003 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coss.tot_val_amd4 IS 'WKG004 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coss.tot_val_amd5 IS 'WKG005 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coss.tot_val_amd6 IS 'WKG006 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coss.tot_val_amd7 IS 'WKG007 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coss.tot_val_amd8 IS 'WKG008 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coss.tot_val_amd9 IS 'WKG009 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coss.tot_val_amd10 IS 'WKG010 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coss.tot_val_amd11 IS 'WKG011 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coss.tot_val_amd12 IS 'WKG012 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coss.tot_val_amd13 IS 'WKG013 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coss.tot_val_amd14 IS 'WKG014 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coss.tot_val_amd15 IS 'WKG015 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coss.tot_val_amd16 IS 'WKG016 — Total Value in Controlling Area Currency [summa totalis valor area moderationis]';
COMMENT ON COLUMN co.coss.val_amd_mon IS 'WKF001 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coss.val_amd_mon2 IS 'WKF002 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coss.val_amd_mon3 IS 'WKF003 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coss.val_amd_mon4 IS 'WKF004 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coss.val_amd_mon5 IS 'WKF005 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coss.val_amd_mon6 IS 'WKF006 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coss.val_amd_mon7 IS 'WKF007 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coss.val_amd_mon8 IS 'WKF008 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coss.val_amd_mon9 IS 'WKF009 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coss.val_amd_mon10 IS 'WKF010 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coss.val_amd_mon11 IS 'WKF011 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coss.val_amd_mon12 IS 'WKF012 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coss.val_amd_mon13 IS 'WKF013 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coss.val_amd_mon14 IS 'WKF014 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coss.val_amd_mon15 IS 'WKF015 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coss.val_amd_mon16 IS 'WKF016 — Fixed Value in Controlling Area Currency [valor area moderationis moneta]';
COMMENT ON COLUMN co.coss.tot_pre_are IS 'PAG001 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coss.tot_pre_are2 IS 'PAG002 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coss.tot_pre_are3 IS 'PAG003 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coss.tot_pre_are4 IS 'PAG004 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coss.tot_pre_are5 IS 'PAG005 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coss.tot_pre_are6 IS 'PAG006 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coss.tot_pre_are7 IS 'PAG007 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coss.tot_pre_are8 IS 'PAG008 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coss.tot_pre_are9 IS 'PAG009 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coss.tot_pre_are10 IS 'PAG010 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coss.tot_pre_are11 IS 'PAG011 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coss.tot_pre_are12 IS 'PAG012 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coss.tot_pre_are13 IS 'PAG013 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coss.tot_pre_are14 IS 'PAG014 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coss.tot_pre_are15 IS 'PAG015 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coss.tot_pre_are16 IS 'PAG016 — Total Price Variance in CO Area Currency [summa totalis pretium area]';
COMMENT ON COLUMN co.coss.pre_are_mon IS 'PAF001 — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coss.pre_are_mon2 IS 'PAF002 — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coss.pre_are_mon3 IS 'PAF003 — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coss.pre_are_mon4 IS 'PAF004 — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coss.pre_are_mon5 IS 'PAF005 — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coss.pre_are_mon6 IS 'PAF006 — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coss.pre_are_mon7 IS 'PAF007 — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coss.pre_are_mon8 IS 'PAF008 — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coss.pre_are_mon9 IS 'PAF009 — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coss.pre_are_mon10 IS 'PAF010 — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coss.pre_are_mon11 IS 'PAF011 — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coss.pre_are_mon12 IS 'PAF012 — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coss.pre_are_mon13 IS 'PAF013 — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coss.pre_are_mon14 IS 'PAF014 — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coss.pre_are_mon15 IS 'PAF015 — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coss.pre_are_mon16 IS 'PAF016 — Fixed Price Variance in CO Area Currency [pretium area moneta]';
COMMENT ON COLUMN co.coss.tot_qnt IS 'MEG001 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coss.tot_qnt2 IS 'MEG002 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coss.tot_qnt3 IS 'MEG003 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coss.tot_qnt4 IS 'MEG004 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coss.tot_qnt5 IS 'MEG005 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coss.tot_qnt6 IS 'MEG006 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coss.tot_qnt7 IS 'MEG007 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coss.tot_qnt8 IS 'MEG008 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coss.tot_qnt9 IS 'MEG009 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coss.tot_qnt10 IS 'MEG010 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coss.tot_qnt11 IS 'MEG011 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coss.tot_qnt12 IS 'MEG012 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coss.tot_qnt13 IS 'MEG013 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coss.tot_qnt14 IS 'MEG014 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coss.tot_qnt15 IS 'MEG015 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coss.tot_qnt16 IS 'MEG016 — Total Quantity [summa totalis quantitas]';
COMMENT ON COLUMN co.coss.qnt IS 'MEF001 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coss.qnt2 IS 'MEF002 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coss.qnt3 IS 'MEF003 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coss.qnt4 IS 'MEF004 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coss.qnt5 IS 'MEF005 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coss.qnt6 IS 'MEF006 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coss.qnt7 IS 'MEF007 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coss.qnt8 IS 'MEF008 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coss.qnt9 IS 'MEF009 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coss.qnt10 IS 'MEF010 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coss.qnt11 IS 'MEF011 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coss.qnt12 IS 'MEF012 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coss.qnt13 IS 'MEF013 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coss.qnt14 IS 'MEF014 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coss.qnt15 IS 'MEF015 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coss.qnt16 IS 'MEF016 — Fixed Quantity [quantitas]';
COMMENT ON COLUMN co.coss.muv001 IS 'MUV001 — Quantities Incomplete';
COMMENT ON COLUMN co.coss.muv002 IS 'MUV002 — Quantities Incomplete';
COMMENT ON COLUMN co.coss.muv003 IS 'MUV003 — Quantities Incomplete';
COMMENT ON COLUMN co.coss.muv004 IS 'MUV004 — Quantities Incomplete';
COMMENT ON COLUMN co.coss.muv005 IS 'MUV005 — Quantities Incomplete';
COMMENT ON COLUMN co.coss.muv006 IS 'MUV006 — Quantities Incomplete';
COMMENT ON COLUMN co.coss.muv007 IS 'MUV007 — Quantities Incomplete';
COMMENT ON COLUMN co.coss.muv008 IS 'MUV008 — Quantities Incomplete';
COMMENT ON COLUMN co.coss.muv009 IS 'MUV009 — Quantities Incomplete';
COMMENT ON COLUMN co.coss.muv010 IS 'MUV010 — Quantities Incomplete';
COMMENT ON COLUMN co.coss.muv011 IS 'MUV011 — Quantities Incomplete';
COMMENT ON COLUMN co.coss.muv012 IS 'MUV012 — Quantities Incomplete';
COMMENT ON COLUMN co.coss.muv013 IS 'MUV013 — Quantities Incomplete';
COMMENT ON COLUMN co.coss.muv014 IS 'MUV014 — Quantities Incomplete';
COMMENT ON COLUMN co.coss.muv015 IS 'MUV015 — Quantities Incomplete';
COMMENT ON COLUMN co.coss.muv016 IS 'MUV016 — Quantities Incomplete';
COMMENT ON COLUMN co.coss.dbt_gen IS 'BELTP — Debit type [debitum genus]';
COMMENT ON COLUMN co.coss.tmp_cre IS 'TIMESTMP — Time created (Greenwich Meantime) [tempus creatus]';
COMMENT ON COLUMN co.coss.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN co.coss.afn IS 'FKBER — Functional Area [area functionis]';
COMMENT ON COLUMN co.coss.seg IS 'SEGMENT — Segment for Segmental Reporting [segmentum]';
COMMENT ON COLUMN co.coss.geber IS 'GEBER — Fund';
COMMENT ON COLUMN co.coss.grant_nbr IS 'GRANT_NBR — Grant';
COMMENT ON COLUMN co.coss.per IS 'BUDGET_PD — FM: Budget Period [periodus]';

CREATE TABLE IF NOT EXISTS co.cska (
  cli char(3),
  tbr varchar(4),
  smp_elm varchar(10),
  cre date,
  usnam varchar(12),
  smp_elm_trb varchar(1),
  smp_elm_sol varchar(1),
  smp_elm2 varchar(10),
  afn varchar(16),
  CONSTRAINT cska_pk PRIMARY KEY (cli, tbr, smp_elm)
);
COMMENT ON TABLE co.cska IS 'CSKA — Cost Elements (Data Dependent on Chart of Accounts) — chart-of-accounts-level master data linking cost elements to G/L accounts.';
COMMENT ON COLUMN co.cska.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN co.cska.tbr IS 'KTOPL — Chart of Accounts [tabula rationum]';
COMMENT ON COLUMN co.cska.smp_elm IS 'KSTAR — Cost Element [sumptus elementum]';
COMMENT ON COLUMN co.cska.cre IS 'ERSDA — Created on [creatus]';
COMMENT ON COLUMN co.cska.usnam IS 'USNAM — Entered by';
COMMENT ON COLUMN co.cska.smp_elm_trb IS 'STEKZ — Cost element is tax-relevant [sumptus elementum tributum]';
COMMENT ON COLUMN co.cska.smp_elm_sol IS 'ZAHKZ — Cost element affecting payment [sumptus elementum solutio]';
COMMENT ON COLUMN co.cska.smp_elm2 IS 'KSTSN — Cost element [sumptus elementum]';
COMMENT ON COLUMN co.cska.afn IS 'FUNC_AREA — Functional Area [area functionis]';

CREATE TABLE IF NOT EXISTS co.cskb (
  cli char(3),
  amd varchar(4),
  smp_elm varchar(10),
  vld_die date,
  vla_die date,
  smp_elm_ctg varchar(2),
  cre date,
  usnam varchar(12),
  smp_elm2 varchar(8),
  idx_cns varchar(1),
  idx_cns_loc varchar(1),
  cns_usr varchar(2),
  csm_atb_smp varchar(10),
  mnd_num_atb varchar(12),
  idx varchar(1),
  uni_msu varchar(3),
  idx_smp_elm varchar(1),
  idx_smp_elm2 varchar(1),
  idx2 varchar(2),
  CONSTRAINT cskb_pk PRIMARY KEY (cli, amd, smp_elm, vld_die)
);
COMMENT ON TABLE co.cskb IS 'CSKB — Cost Elements (Data Dependent on Controlling Area) — the controlling-area-level extension of a cost element (CSKA), time-sliced, carrying the cost-element category and, for secondary cost elements, the allocation cost center/order. This is the check table AUFK-KSTAR points at for the order''s settlement cost element.';
COMMENT ON COLUMN co.cskb.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN co.cskb.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN co.cskb.smp_elm IS 'KSTAR — Cost Element [sumptus elementum]';
COMMENT ON COLUMN co.cskb.vld_die IS 'DATBI — Valid To Date [validus ad dies]';
COMMENT ON COLUMN co.cskb.vla_die IS 'DATAB — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN co.cskb.smp_elm_ctg IS 'KATYP — Cost element category [sumptus elementum categoria]';
COMMENT ON COLUMN co.cskb.cre IS 'ERSDA — Created on [creatus]';
COMMENT ON COLUMN co.cskb.usnam IS 'USNAM — Entered by';
COMMENT ON COLUMN co.cskb.smp_elm2 IS 'EIGEN — Cost element attributes [sumptus elementum]';
COMMENT ON COLUMN co.cskb.idx_cns IS 'PLAZU — Indicator for planning access [index consilium]';
COMMENT ON COLUMN co.cskb.idx_cns_loc IS 'PLAOR — Indicator for the planning location [index consilium locus]';
COMMENT ON COLUMN co.cskb.cns_usr IS 'PLAUS — Indicators for planning user [consilium usor]';
COMMENT ON COLUMN co.cskb.csm_atb_smp IS 'KOSTL — Cost Center (allocation cost center for secondary cost elements) [centrum sumptus attributio sumptus]';
COMMENT ON COLUMN co.cskb.mnd_num_atb IS 'AUFNR — Order Number (allocation order for secondary cost elements) [mandatum numerus attributio]';
COMMENT ON COLUMN co.cskb.idx IS 'MGEFL — Indicator for Recording Consumption Quantities [index]';
COMMENT ON COLUMN co.cskb.uni_msu IS 'MSEHI — Unit of Measurement [unitas mensuratio]';
COMMENT ON COLUMN co.cskb.idx_smp_elm IS 'DEAKT — Indicator: Cost element deactivated [index sumptus elementum]';
COMMENT ON COLUMN co.cskb.idx_smp_elm2 IS 'LOEVM — Indicator: Cost element is flagged for deletion [index sumptus elementum]';
COMMENT ON COLUMN co.cskb.idx2 IS 'RECID — Recovery Indicator [index]';

CREATE TABLE IF NOT EXISTS co.csks (
  cli char(3),
  amd varchar(4),
  csm varchar(10),
  vld_die date,
  vla_die date,
  obx_idx_acl varchar(1),
  obx_idx_cns varchar(1),
  soc varchar(4),
  ang varchar(4),
  csm_ctg varchar(1),
  psn varchar(20),
  usr varchar(12),
  cvm varchar(5),
  kalsm varchar(6),
  trb varchar(15),
  clu varchar(10),
  ofc varchar(4),
  logsystem varchar(10),
  cre date,
  usnam varchar(12),
  obx_idx_acl2 varchar(1),
  obx_idx_acl3 varchar(1),
  obx_idx varchar(1),
  obx_idx_cns2 varchar(1),
  obx_idx_cns3 varchar(1),
  idx_atb varchar(2),
  idx varchar(1),
  abtei varchar(12),
  csm2 varchar(10),
  cnd_tbl varchar(1),
  kappl varchar(2),
  clv varchar(6),
  ptr_clv varchar(3),
  ttl varchar(15),
  nom varchar(35),
  nom2 varchar(35),
  nom3 varchar(35),
  nom4 varchar(35),
  urb varchar(35),
  ort02 varchar(35),
  num varchar(35),
  pfach varchar(10),
  cod varchar(10),
  cod2 varchar(10),
  reg varchar(3),
  lng_clv char(1),
  num2 varchar(15),
  pri_tel_num varchar(16),
  tel_num varchar(16),
  num3 varchar(31),
  num4 varchar(30),
  num5 varchar(30),
  datlt varchar(14),
  drnam varchar(4),
  hir_are varchar(12),
  smp_clv varchar(23),
  sgn_csm_tpr varchar(1),
  idx_obi varchar(1),
  obi_num varchar(22),
  csm3 varchar(3),
  csm4 varchar(3),
  act_cns varchar(10),
  act_cns2 varchar(10),
  afn varchar(16),
  act_atb_csm varchar(10),
  act_atb_csm2 varchar(10),
  vname varchar(6),
  idx2 varchar(2),
  gen varchar(3),
  obi_gen varchar(4),
  cls varchar(3),
  jv_jibsa varchar(5),
  idx3 varchar(4),
  CONSTRAINT csks_pk PRIMARY KEY (cli, amd, csm, vld_die, vla_die)
);
COMMENT ON TABLE co.csks IS 'CSKS — Cost Center Master Data — time-dependent master data for cost centers, the organizational unit for controlling area cost collection.';
COMMENT ON COLUMN co.csks.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN co.csks.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN co.csks.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN co.csks.vld_die IS 'DATBI — Valid To Date [validus ad dies]';
COMMENT ON COLUMN co.csks.vla_die IS 'DATAB — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN co.csks.obx_idx_acl IS 'BKZKP — Lock Indicator for Actual Primary Postings [obex index actualis]';
COMMENT ON COLUMN co.csks.obx_idx_cns IS 'PKZKP — Lock Indicator for Plan Primary Costs [obex index consilium]';
COMMENT ON COLUMN co.csks.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN co.csks.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN co.csks.csm_ctg IS 'KOSAR — Cost Center Category [centrum sumptus categoria]';
COMMENT ON COLUMN co.csks.psn IS 'VERAK — Person Responsible [persona]';
COMMENT ON COLUMN co.csks.usr IS 'VERAK_USER — User Responsible [usor]';
COMMENT ON COLUMN co.csks.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN co.csks.kalsm IS 'KALSM — Costing Sheet';
COMMENT ON COLUMN co.csks.trb IS 'TXJCD — Tax Jurisdiction [tributum]';
COMMENT ON COLUMN co.csks.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN co.csks.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN co.csks.logsystem IS 'LOGSYSTEM — Logical System';
COMMENT ON COLUMN co.csks.cre IS 'ERSDA — Created on [creatus]';
COMMENT ON COLUMN co.csks.usnam IS 'USNAM — Entered by';
COMMENT ON COLUMN co.csks.obx_idx_acl2 IS 'BKZKS — Lock Indicator for Actual Secondary Costs [obex index actualis]';
COMMENT ON COLUMN co.csks.obx_idx_acl3 IS 'BKZER — Lock Indicator for Actual Revenue Postings [obex index actualis]';
COMMENT ON COLUMN co.csks.obx_idx IS 'BKZOB — Lock Indicator for Commitment Update [obex index]';
COMMENT ON COLUMN co.csks.obx_idx_cns2 IS 'PKZKS — Lock Indicator for Plan Secondary Costs [obex index consilium]';
COMMENT ON COLUMN co.csks.obx_idx_cns3 IS 'PKZER — Lock Indicator for Planning Revenues [obex index consilium]';
COMMENT ON COLUMN co.csks.idx_atb IS 'VMETH — Indicator for Allowed Allocation Methods [index attributio]';
COMMENT ON COLUMN co.csks.idx IS 'MGEFL — Indicator for Recording Consumption Quantities [index]';
COMMENT ON COLUMN co.csks.abtei IS 'ABTEI — Department';
COMMENT ON COLUMN co.csks.csm2 IS 'NKOST — Subsequent cost center [centrum sumptus]';
COMMENT ON COLUMN co.csks.cnd_tbl IS 'KVEWE — Usage of the condition table [condicio tabula]';
COMMENT ON COLUMN co.csks.kappl IS 'KAPPL — Application';
COMMENT ON COLUMN co.csks.clv IS 'KOSZSCHL — CO-CCA Overhead Key [clavis]';
COMMENT ON COLUMN co.csks.ptr_clv IS 'LAND1 — Country Key [patria clavis]';
COMMENT ON COLUMN co.csks.ttl IS 'ANRED — Title [titulus]';
COMMENT ON COLUMN co.csks.nom IS 'NAME1 — Name 1 [nomen]';
COMMENT ON COLUMN co.csks.nom2 IS 'NAME2 — Name 2 [nomen]';
COMMENT ON COLUMN co.csks.nom3 IS 'NAME3 — Name 3 [nomen]';
COMMENT ON COLUMN co.csks.nom4 IS 'NAME4 — Name 4 [nomen]';
COMMENT ON COLUMN co.csks.urb IS 'ORT01 — City [urbs]';
COMMENT ON COLUMN co.csks.ort02 IS 'ORT02 — District';
COMMENT ON COLUMN co.csks.num IS 'STRAS — House number and street [numerus]';
COMMENT ON COLUMN co.csks.pfach IS 'PFACH — PO Box';
COMMENT ON COLUMN co.csks.cod IS 'PSTLZ — Postal Code [codex]';
COMMENT ON COLUMN co.csks.cod2 IS 'PSTL2 — P.O. Box Postal Code [codex]';
COMMENT ON COLUMN co.csks.reg IS 'REGIO — Region (State, Province, County) [regio]';
COMMENT ON COLUMN co.csks.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN co.csks.num2 IS 'TELBX — Telebox number [numerus]';
COMMENT ON COLUMN co.csks.pri_tel_num IS 'TELF1 — First telephone number [primus telephonum numerus]';
COMMENT ON COLUMN co.csks.tel_num IS 'TELF2 — Second telephone number [telephonum numerus]';
COMMENT ON COLUMN co.csks.num3 IS 'TELFX — Fax Number [numerus]';
COMMENT ON COLUMN co.csks.num4 IS 'TELTX — Teletex number [numerus]';
COMMENT ON COLUMN co.csks.num5 IS 'TELX1 — Telex number [numerus]';
COMMENT ON COLUMN co.csks.datlt IS 'DATLT — Data communication line no.';
COMMENT ON COLUMN co.csks.drnam IS 'DRNAM — Printer destination for CCtr report';
COMMENT ON COLUMN co.csks.hir_are IS 'KHINR — Standard Hierarchy Area [hierarchia area]';
COMMENT ON COLUMN co.csks.smp_clv IS 'CCKEY — Cost collector key [sumptus clavis]';
COMMENT ON COLUMN co.csks.sgn_csm_tpr IS 'KOMPL — Completion flag for the cost center master record [signum centrum sumptus tabula principalis]';
COMMENT ON COLUMN co.csks.idx_obi IS 'STAKZ — Indicator. object is statistical [index obiectum]';
COMMENT ON COLUMN co.csks.obi_num IS 'OBJNR — Object number [obiectum numerus]';
COMMENT ON COLUMN co.csks.csm3 IS 'FUNKT — Function of cost center [centrum sumptus]';
COMMENT ON COLUMN co.csks.csm4 IS 'AFUNK — Alternative function of cost center [centrum sumptus]';
COMMENT ON COLUMN co.csks.act_cns IS 'CPI_TEMPL — Template for Activity-Independent Formula Planning [actio consilium]';
COMMENT ON COLUMN co.csks.act_cns2 IS 'CPD_TEMPL — Template for Activity-Dependent Formula Planning [actio consilium]';
COMMENT ON COLUMN co.csks.afn IS 'FUNC_AREA — Functional Area [area functionis]';
COMMENT ON COLUMN co.csks.act_atb_csm IS 'SCI_TEMPL — Template: Activity-Independent Allocation to Cost Center [actio attributio centrum sumptus]';
COMMENT ON COLUMN co.csks.act_atb_csm2 IS 'SCD_TEMPL — Template: Activity-Dependent Allocation to Cost Center [actio attributio centrum sumptus]';
COMMENT ON COLUMN co.csks.vname IS 'VNAME — Joint Venture';
COMMENT ON COLUMN co.csks.idx2 IS 'RECID — Recovery Indicator [index]';
COMMENT ON COLUMN co.csks.gen IS 'ETYPE — Equity type [genus]';
COMMENT ON COLUMN co.csks.obi_gen IS 'JV_OTYPE — Joint Venture Object Type [obiectum genus]';
COMMENT ON COLUMN co.csks.cls IS 'JV_JIBCL — JIB/JIBE Class [classis]';
COMMENT ON COLUMN co.csks.jv_jibsa IS 'JV_JIBSA — JIB/JIBE Subclass A';
COMMENT ON COLUMN co.csks.idx3 IS 'FERC_IND — Regulatory indicator [index]';

CREATE TABLE IF NOT EXISTS co.cskt (
  cli char(3),
  lng_clv char(1),
  amd varchar(4),
  csm varchar(10),
  vld_die date,
  nom varchar(20),
  dsc varchar(40),
  mctxt varchar(20),
  CONSTRAINT cskt_pk PRIMARY KEY (cli, lng_clv, amd, csm, vld_die)
);
COMMENT ON TABLE co.cskt IS 'CSKT — Cost Center Texts — language-dependent short and long names for a cost center, keyed by controlling area, cost center, and validity end date. The CO-side twin of CEPCT for profit centers.';
COMMENT ON COLUMN co.cskt.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN co.cskt.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN co.cskt.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN co.cskt.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN co.cskt.vld_die IS 'DATBI — Valid To Date [validus ad dies]';
COMMENT ON COLUMN co.cskt.nom IS 'KTEXT — General Name [nomen]';
COMMENT ON COLUMN co.cskt.dsc IS 'LTEXT — Description [descriptio]';
COMMENT ON COLUMN co.cskt.mctxt IS 'MCTXT — Search term for matchcode use';

CREATE TABLE IF NOT EXISTS co.csla (
  cli char(3),
  amd varchar(4),
  act_gen varchar(6),
  vld_die date,
  vla_die date,
  act_uni varchar(3),
  act_gen_ctg varchar(1),
  act_gen_ctg2 varchar(1),
  cre date,
  usnam varchar(12),
  csm varchar(8),
  uni varchar(3),
  ausfk numeric(5,2),
  atb_smp_elm varchar(10),
  idx_cmn varchar(1),
  idx_cmn2 varchar(1),
  obx_idx varchar(1),
  org_cts_smp varchar(4),
  gen varchar(1),
  pre_idx_atb varchar(3),
  pre_per varchar(1),
  idx_acl_atb varchar(3),
  idx_qnt_acl varchar(1),
  idx_cns_qnt varchar(1),
  CONSTRAINT csla_pk PRIMARY KEY (cli, amd, act_gen, vld_die, vla_die)
);
COMMENT ON TABLE co.csla IS 'CSLA — Activity Type Master — time-dependent master data for activity types within a controlling area: the record that lets an hour (or other unit) of internal work carry a price and post as a currency amount against a cost center in the ledger, completing the cost-object picture alongside CSKS cost centers and CSKA/CSKB cost elements.';
COMMENT ON COLUMN co.csla.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN co.csla.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN co.csla.act_gen IS 'LSTAR — Activity Type [actio genus]';
COMMENT ON COLUMN co.csla.vld_die IS 'DATBI — Valid To Date [validus ad dies]';
COMMENT ON COLUMN co.csla.vla_die IS 'DATAB — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN co.csla.act_uni IS 'LEINH — Activity Unit [actio unitas]';
COMMENT ON COLUMN co.csla.act_gen_ctg IS 'LATYP — Activity Type Category [actio genus categoria]';
COMMENT ON COLUMN co.csla.act_gen_ctg2 IS 'LATYPI — Variant Activity Type Category for Actual Postings [actio genus categoria]';
COMMENT ON COLUMN co.csla.cre IS 'ERSDA — Created on [creatus]';
COMMENT ON COLUMN co.csla.usnam IS 'USNAM — Entered by';
COMMENT ON COLUMN co.csla.csm IS 'KSTTY — Valid Cost Center Categories [centrum sumptus]';
COMMENT ON COLUMN co.csla.uni IS 'AUSEH — Output Unit [unitas]';
COMMENT ON COLUMN co.csla.ausfk IS 'AUSFK — Output factor';
COMMENT ON COLUMN co.csla.atb_smp_elm IS 'VKSTA — Allocation Cost Element [attributio sumptus elementum]';
COMMENT ON COLUMN co.csla.idx_cmn IS 'LARK1 — Indicator for component relevancy CO [index componens]';
COMMENT ON COLUMN co.csla.idx_cmn2 IS 'LARK2 — Indicator: Component Relevance, HR [index componens]';
COMMENT ON COLUMN co.csla.obx_idx IS 'SPRKZ — Lock Indicator [obex index]';
COMMENT ON COLUMN co.csla.org_cts_smp IS 'HRKFT — Origin Group as Subdivision of Cost Element [origo coetus sumptus]';
COMMENT ON COLUMN co.csla.gen IS 'FIXVO — Predistribution of fixed costs for acty type/bus. process [genus]';
COMMENT ON COLUMN co.csla.pre_idx_atb IS 'TARKZ — Price Indicator: Calculate Allocation Price [pretium index attributio]';
COMMENT ON COLUMN co.csla.pre_per IS 'YRATE — Price Calculation with Period-Based Average Prices [pretium periodus]';
COMMENT ON COLUMN co.csla.idx_acl_atb IS 'TARKZ_I — Indicator: Actual Allocation Price [index actualis attributio]';
COMMENT ON COLUMN co.csla.idx_qnt_acl IS 'MANIST — Indicator: Confirm quantity manually in actual [index quantitas actualis]';
COMMENT ON COLUMN co.csla.idx_cns_qnt IS 'MANPLAN — Indicator: Plan quantity manually set. [index consilium quantitas]';

CREATE TABLE IF NOT EXISTS co.cslt (
  cli char(3),
  lng_clv char(1),
  amd varchar(4),
  act_gen varchar(6),
  vld_die date,
  nom varchar(20),
  dsc varchar(40),
  mctxt varchar(20),
  CONSTRAINT cslt_pk PRIMARY KEY (cli, lng_clv, amd, act_gen, vld_die)
);
COMMENT ON TABLE co.cslt IS 'CSLT — Activity Type Texts — language-dependent short and long descriptions for CSLA activity types, giving the human-readable label for the record that prices an hour of internal work into a currency amount.';
COMMENT ON COLUMN co.cslt.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN co.cslt.lng_clv IS 'SPRAS — Language Key [lingua clavis]';
COMMENT ON COLUMN co.cslt.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN co.cslt.act_gen IS 'LSTAR — Activity Type [actio genus]';
COMMENT ON COLUMN co.cslt.vld_die IS 'DATBI — Valid To Date [validus ad dies]';
COMMENT ON COLUMN co.cslt.nom IS 'KTEXT — General Name [nomen]';
COMMENT ON COLUMN co.cslt.dsc IS 'LTEXT — Description [descriptio]';
COMMENT ON COLUMN co.cslt.mctxt IS 'MCTXT — Search term for matchcode use';

CREATE TABLE IF NOT EXISTS co.tka01 (
  cli char(3),
  amd varchar(4),
  nom_amd varchar(25),
  cvm varchar(5),
  tbr varchar(4),
  anf varchar(2),
  atb_idx varchar(1),
  logsystem varchar(10),
  csm varchar(2),
  cur varchar(10),
  hir_smp varchar(12),
  idx varchar(1),
  idx_amd varchar(1),
  idx2 varchar(1),
  erkrs varchar(4),
  clu varchar(10),
  clu_are varchar(12),
  clu_lbr varchar(2),
  vlm_clu varchar(1),
  idx_soc_mon varchar(1),
  hir_are varchar(12),
  idx3 varchar(1),
  smp_elm_ven varchar(10),
  gen_vdt varchar(10),
  mon_clu varchar(5),
  mon_gen_clu varchar(2),
  mon varchar(1),
  mon_gen_amd varchar(2),
  lbr varchar(1),
  gdo_lbr varchar(2),
  are varchar(4),
  lbr2 varchar(1),
  luc varchar(2),
  aes_vis varchar(1),
  mon_aes varchar(4),
  mon_aes2 varchar(1),
  psn_amd varchar(12),
  rat_aes varchar(1),
  aes_vis2 varchar(1),
  clu2 varchar(10),
  hir varchar(1),
  pri_hir varchar(1),
  hir2 varchar(1),
  hir3 varchar(1),
  pri_hir2 varchar(1),
  hir4 varchar(1),
  CONSTRAINT tka01_pk PRIMARY KEY (cli, amd)
);
COMMENT ON TABLE co.tka01 IS 'TKA01 — Controlling Areas — the organizational root every CO object and every ACDOCA line''s KOKRS field checks against; defines the operating currency, chart of accounts, fiscal year variant, and operating concern that govern the entire controlling area. SAP''s real table carries roughly 50 fields; this definition carries the full functional field set that the model and a controlling-area crosswalk actually consume.';
COMMENT ON COLUMN co.tka01.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN co.tka01.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN co.tka01.nom_amd IS 'BEZEI — Name of the controlling area [nomen area moderationis]';
COMMENT ON COLUMN co.tka01.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN co.tka01.tbr IS 'KTOPL — Chart of Accounts [tabula rationum]';
COMMENT ON COLUMN co.tka01.anf IS 'LMONA — Fiscal Year Variant [annus fiscalis]';
COMMENT ON COLUMN co.tka01.atb_idx IS 'KOKFI — Allocation Indicator [attributio index]';
COMMENT ON COLUMN co.tka01.logsystem IS 'LOGSYSTEM — Logical System';
COMMENT ON COLUMN co.tka01.csm IS 'ALEMT — Cost center distribution method via ALE [centrum sumptus]';
COMMENT ON COLUMN co.tka01.cur IS 'MD_LOGSYSTEM — Logical system for master data maintenance [curatio]';
COMMENT ON COLUMN co.tka01.hir_smp IS 'KHINR — Standard Hierarchy for Cost Centers [hierarchia sumptus]';
COMMENT ON COLUMN co.tka01.idx IS 'KOMP1 — Indicator: Revenue must be converted [index]';
COMMENT ON COLUMN co.tka01.idx_amd IS 'KOMP0 — Productive indicator for controlling area [index area moderationis]';
COMMENT ON COLUMN co.tka01.idx2 IS 'KOMP2 — Indicator: reserve (not used at present) [index]';
COMMENT ON COLUMN co.tka01.erkrs IS 'ERKRS — Operating concern';
COMMENT ON COLUMN co.tka01.clu IS 'DPRCT — Dummy Profit Center [centrum lucri]';
COMMENT ON COLUMN co.tka01.clu_are IS 'PHINR — Profit center area [centrum lucri area]';
COMMENT ON COLUMN co.tka01.clu_lbr IS 'PCLDG — Profit center ledger [centrum lucri liber]';
COMMENT ON COLUMN co.tka01.vlm_clu IS 'PCBEL — Elimination of internal bus. volume for Profit Center Acctg [volumen centrum lucri]';
COMMENT ON COLUMN co.tka01.idx_soc_mon IS 'XWBUK — Indicator: Different Company Code Currency is Allowed [index codex societatis moneta]';
COMMENT ON COLUMN co.tka01.hir_are IS 'BPHINR — Standard Hierarchy Area [hierarchia area]';
COMMENT ON COLUMN co.tka01.idx3 IS 'XBPALE — Indicator: ALE for active business process (process costs) [index]';
COMMENT ON COLUMN co.tka01.smp_elm_ven IS 'KSTAR_FIN — Cost element for vendor downpayments w/o purchase ord. ref. [sumptus elementum venditor]';
COMMENT ON COLUMN co.tka01.gen_vdt IS 'KSTAR_FID — Revenue type for debitor downpayments without sales ord. ref [genus venditio]';
COMMENT ON COLUMN co.tka01.mon_clu IS 'PCACUR — Local Currency for Profit Center Accounting [moneta centrum lucri]';
COMMENT ON COLUMN co.tka01.mon_gen_clu IS 'PCACURTP — Currency type of the profit center report currency [moneta genus centrum lucri]';
COMMENT ON COLUMN co.tka01.mon IS 'PCATRCUR — Store transaction currency in EC-PCA [moneta]';
COMMENT ON COLUMN co.tka01.mon_gen_amd IS 'CTYP — Currency Type for Controlling Area [moneta genus area moderationis]';
COMMENT ON COLUMN co.tka01.lbr IS 'RCLAC — Reconciliation Ledger Active [liber]';
COMMENT ON COLUMN co.tka01.gdo_lbr IS 'BLART — Document Type for Reconcil. Postings From Reconcil. Ledger [genus documenti liber]';
COMMENT ON COLUMN co.tka01.are IS 'FIKRS — Financial Management Area [area]';
COMMENT ON COLUMN co.tka01.lbr2 IS 'RCL_PRIMAC — Reconciliation Ledger: Acct Determination for Primary CElms [liber]';
COMMENT ON COLUMN co.tka01.luc IS 'PCA_ALEMT — Method for Distributing Profit Centers Using ALE [lucrum]';
COMMENT ON COLUMN co.tka01.aes_vis IS 'PCA_VALU — Valuation View [aestimatio visus]';
COMMENT ON COLUMN co.tka01.mon_aes IS 'CVPROF — Currency and Valuation Profile [moneta aestimatio]';
COMMENT ON COLUMN co.tka01.mon_aes2 IS 'CVACT — Ind.: Currency and Valuation Profile Active [moneta aestimatio]';
COMMENT ON COLUMN co.tka01.psn_amd IS 'VNAME — Person Responsible for the Controlling Area [persona area moderationis]';
COMMENT ON COLUMN co.tka01.rat_aes IS 'PCA_ACC_DIFF — Account control when transferring valuation differences [ratio aestimatio]';
COMMENT ON COLUMN co.tka01.aes_vis2 IS 'TP_VALOHB — Valuation View for Calculation Base [aestimatio visus]';
COMMENT ON COLUMN co.tka01.clu2 IS 'DEFPRCTR — Default Profit Center for Nonassigned Processes [centrum lucri]';
COMMENT ON COLUMN co.tka01.hir IS 'AUTH_USE_NO_STD — Do Not Use Standard Hierarchy for Authorizations [hierarchia]';
COMMENT ON COLUMN co.tka01.pri_hir IS 'AUTH_USE_ADD1 — Use First Alternative Hierarchy for Authorizations [primus hierarchia]';
COMMENT ON COLUMN co.tka01.hir2 IS 'AUTH_USE_ADD2 — Use Second Alternative Hierarchy for Authorizations [hierarchia]';
COMMENT ON COLUMN co.tka01.hir3 IS 'AUTH_KE_NO_STD — Do Not Use Standard Hierarchy for Authorizations (Operating Concern) [hierarchia]';
COMMENT ON COLUMN co.tka01.pri_hir2 IS 'AUTH_KE_USE_ADD1 — Use First Alternative Hierarchy for Authorizations (Operating Concern) [primus hierarchia]';
COMMENT ON COLUMN co.tka01.hir4 IS 'AUTH_KE_USE_ADD2 — Use Second Alternative Hierarchy for Authorizations (Operating Concern) [hierarchia]';

CREATE TABLE IF NOT EXISTS co.tka02 (
  cli char(3),
  soc varchar(4),
  ang varchar(4),
  amd varchar(4),
  CONSTRAINT tka02_pk PRIMARY KEY (cli, soc)
);
COMMENT ON TABLE co.tka02 IS 'TKA02 — Controlling Area Assignment — assigns company codes (and business areas) to a controlling area; the table that proves whether a controlling area spans a single company code or many, i.e. whether cross-company controlling is in play.';
COMMENT ON COLUMN co.tka02.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN co.tka02.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN co.tka02.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN co.tka02.amd IS 'KOKRS — Controlling Area [area moderationis]';

