-- EVE Datasphere Sovereign — PostgreSQL materialisation
-- Generated 2026-08-01T01:47:33Z by scripts/emit_postgres.py. Do not hand-edit; regenerate.
-- Column names are the canonical Latin layer (EgD-LATIN-001). The legacy SAP field name
-- is preserved in COMMENT ON COLUMN and in egd_catalog.field_map, and is the join key.
-- Mirror, never cannibalise. Pour le bien-etre du peuple.

-- module SD

CREATE TABLE IF NOT EXISTS sd.a004 (
  cli char(3),
  kappl varchar(2),
  gcn varchar(4),
  ovd varchar(4),
  cds varchar(2),
  mat_num varchar(18),
  fin_die_tcn date,
  ini_die_tcn date,
  tcn_num varchar(10),
  CONSTRAINT a004_pk PRIMARY KEY (cli, kappl, gcn, ovd, cds, mat_num)
);
COMMENT ON TABLE sd.a004 IS 'A004 — Condition access table for material pricing — one of the standard SD pricing-procedure access sequence tables, keyed on sales organization, distribution channel and material, resolving to the KNUMH condition record number that joins into KONH/KONP to fetch the actual rate. Shows how a price is found: the pricing procedure walks an access sequence of tables like A004 in priority order until a valid, date-effective condition record is located.';
COMMENT ON COLUMN sd.a004.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.a004.kappl IS 'KAPPL — Application';
COMMENT ON COLUMN sd.a004.gcn IS 'KSCHL — Condition type [genus condicionis]';
COMMENT ON COLUMN sd.a004.ovd IS 'VKORG — Sales Organization [organizatio venditionis]';
COMMENT ON COLUMN sd.a004.cds IS 'VTWEG — Distribution Channel [canalis distributionis]';
COMMENT ON COLUMN sd.a004.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN sd.a004.fin_die_tcn IS 'DATBI — Validity end date of the condition record [finis dies tabula condicionis]';
COMMENT ON COLUMN sd.a004.ini_die_tcn IS 'DATAB — Validity start date of the condition record [initium dies tabula condicionis]';
COMMENT ON COLUMN sd.a004.tcn_num IS 'KNUMH — Condition record number [tabula condicionis numerus]';

CREATE TABLE IF NOT EXISTS sd.konh (
  cli char(3),
  tcn_num varchar(10),
  nom_psn_cre varchar(12),
  die_tbl_cre date,
  cnd_tbl varchar(1),
  cnd_tbl2 varchar(3),
  kappl varchar(2),
  gcn varchar(4),
  clv varchar(100),
  vla_die date,
  vld_die date,
  kosrt varchar(10),
  cnd_mat varchar(3),
  knuma_pi varchar(10),
  vdt varchar(10),
  vdt2 varchar(10),
  knuma_sd varchar(10),
  aktnr varchar(10),
  tsc varchar(10),
  trb_lcn_num varchar(20),
  die_lcn date,
  vadat varchar(100),
  CONSTRAINT konh_pk PRIMARY KEY (cli, tcn_num)
);
COMMENT ON TABLE sd.konh IS 'KONH — Condition header — the pricing master record header behind every condition record (rebate agreement, price list, promotion). Grouped with KONP (condition items/rates) as the master-data pair that condition-access tables such as A004 point to via KNUMH; document-level pricing captured in KONV during order/delivery/billing processing is a runtime snapshot of what KONH/KONP defined at the time of pricing.';
COMMENT ON COLUMN sd.konh.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.konh.tcn_num IS 'KNUMH — Condition record number [tabula condicionis numerus]';
COMMENT ON COLUMN sd.konh.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN sd.konh.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN sd.konh.cnd_tbl IS 'KVEWE — Usage of the condition table [condicio tabula]';
COMMENT ON COLUMN sd.konh.cnd_tbl2 IS 'KOTABNR — Condition table [condicio tabula]';
COMMENT ON COLUMN sd.konh.kappl IS 'KAPPL — Application';
COMMENT ON COLUMN sd.konh.gcn IS 'KSCHL — Condition type [genus condicionis]';
COMMENT ON COLUMN sd.konh.clv IS 'VAKEY — Variable key 100 bytes [clavis]';
COMMENT ON COLUMN sd.konh.vla_die IS 'DATAB — Valid-From Date [validus ab dies]';
COMMENT ON COLUMN sd.konh.vld_die IS 'DATBI — Valid To Date [validus ad dies]';
COMMENT ON COLUMN sd.konh.kosrt IS 'KOSRT — Search term for conditions';
COMMENT ON COLUMN sd.konh.cnd_mat IS 'KZUST — Responsibility in SD for condition/material [condicio materia]';
COMMENT ON COLUMN sd.konh.knuma_pi IS 'KNUMA_PI — Promotion';
COMMENT ON COLUMN sd.konh.vdt IS 'KNUMA_AG — Sales deal [venditio]';
COMMENT ON COLUMN sd.konh.vdt2 IS 'KNUMA_SQ — Sales quote [venditio]';
COMMENT ON COLUMN sd.konh.knuma_sd IS 'KNUMA_SD — Standard agreement';
COMMENT ON COLUMN sd.konh.aktnr IS 'AKTNR — Promotion';
COMMENT ON COLUMN sd.konh.tsc IS 'KNUMA_BO — Agreement (subsequent settlement) [transactio]';
COMMENT ON COLUMN sd.konh.trb_lcn_num IS 'LICNO — Tax exemption license number [tributum licentia numerus]';
COMMENT ON COLUMN sd.konh.die_lcn IS 'LICDT — Date license granted [dies licentia]';
COMMENT ON COLUMN sd.konh.vadat IS 'VADAT — Variable Data Part';

CREATE TABLE IF NOT EXISTS sd.konp (
  cli char(3),
  tcn_num varchar(10),
  num_cnd varchar(2),
  kappl varchar(2),
  gcn varchar(4),
  num varchar(10),
  gen varchar(1),
  idx varchar(1),
  cnd_qnt numeric(15,3),
  cnd_men varchar(3),
  val numeric(15,2),
  mon varchar(5),
  gen_cnd varchar(1),
  rat_cnd_sum numeric(11,2),
  rat_uni_mon varchar(5),
  cnd_tax_uni numeric(5,0),
  cnd_uni varchar(3),
  cts varchar(4),
  cnd numeric(5,0),
  cnd2 numeric(5,0),
  men varchar(3),
  cnd_rat_sum numeric(11,2),
  cnd_rat numeric(11,2),
  cnd_val numeric(15,2),
  cnd_mon varchar(5),
  cnd_idx varchar(1),
  emp_num varchar(10),
  rat_num_ven varchar(10),
  trb_vdt_cod varchar(2),
  idx_cnd_pos varchar(1),
  mat_tsc varchar(18),
  sum numeric(11,2),
  kspae varchar(1),
  tcn_sta varchar(1),
  knuma_pi varchar(10),
  vdt varchar(10),
  vdt2 varchar(10),
  val2 varchar(2),
  val_die date,
  sol_clv varchar(4),
  num_vdt_tcn varchar(2),
  cnd_val2 numeric(15,3),
  cnd_val3 numeric(15,3),
  cnd_val4 numeric(13,2),
  vdt_pre_tax varchar(1),
  aktnr varchar(10),
  tsc varchar(10),
  trb_cod varchar(2),
  pct_gen varchar(1),
  pct_num varchar(13),
  gen2 varchar(4),
  idx_cur varchar(1),
  ems_sta varchar(1),
  sta_vlm_cnd varchar(1),
  CONSTRAINT konp_pk PRIMARY KEY (cli, tcn_num, num_cnd)
);
COMMENT ON TABLE sd.konp IS 'KONP — Condition item — the pricing master record rate/value line under KONH, holding the actual amount, percentage, or scale that a condition record resolves to. Condition-access tables (e.g. A004) point to KNUMH, which joins KONH (header) to KONP (item, keyed additionally by KOPOS) to retrieve the rate applied when KONV builds the transaction-level pricing snapshot on a sales document. SAP''s real table carries roughly 90 fields (including several industry-specific IS-OIL fields); this definition is scoped to the key, calculation/scale, currency, quantity, account/partner, and validity fields the pr';
COMMENT ON COLUMN sd.konp.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.konp.tcn_num IS 'KNUMH — Condition record number [tabula condicionis numerus]';
COMMENT ON COLUMN sd.konp.num_cnd IS 'KOPOS — Sequential number of the condition [numerus condicio]';
COMMENT ON COLUMN sd.konp.kappl IS 'KAPPL — Application';
COMMENT ON COLUMN sd.konp.gcn IS 'KSCHL — Condition type [genus condicionis]';
COMMENT ON COLUMN sd.konp.num IS 'KNUMT — Number of texts [numerus]';
COMMENT ON COLUMN sd.konp.gen IS 'STFKZ — Scale Type [genus]';
COMMENT ON COLUMN sd.konp.idx IS 'KZBZG — Scale basis indicator [index]';
COMMENT ON COLUMN sd.konp.cnd_qnt IS 'KSTBM — Condition scale quantity [condicio quantitas]';
COMMENT ON COLUMN sd.konp.cnd_men IS 'KONMS — Condition scale unit of measure [condicio mensura]';
COMMENT ON COLUMN sd.konp.val IS 'KSTBW — Scale value [valor]';
COMMENT ON COLUMN sd.konp.mon IS 'KONWS — Scale currency [moneta]';
COMMENT ON COLUMN sd.konp.gen_cnd IS 'KRECH — Calculation type for condition [genus condicio]';
COMMENT ON COLUMN sd.konp.rat_cnd_sum IS 'KBETR — Rate (condition amount or percentage) where no scale exists [ratio condicio summa]';
COMMENT ON COLUMN sd.konp.rat_uni_mon IS 'KONWA — Rate unit (currency or percentage) [ratio unitas moneta]';
COMMENT ON COLUMN sd.konp.cnd_tax_uni IS 'KPEIN — Condition pricing unit [condicio taxatio unitas]';
COMMENT ON COLUMN sd.konp.cnd_uni IS 'KMEIN — Condition unit [condicio unitas]';
COMMENT ON COLUMN sd.konp.cts IS 'PRSCH — Scale Group [coetus]';
COMMENT ON COLUMN sd.konp.cnd IS 'KUMZA — Numerator for converting condition units to base units [condicio]';
COMMENT ON COLUMN sd.konp.cnd2 IS 'KUMNE — Denominator for converting condition units to base units [condicio]';
COMMENT ON COLUMN sd.konp.men IS 'MEINS — Base Unit of Measure [mensura]';
COMMENT ON COLUMN sd.konp.cnd_rat_sum IS 'MXWRT — Lower limit of the condition rate/amount [condicio ratio summa]';
COMMENT ON COLUMN sd.konp.cnd_rat IS 'GKWRT — Upper limit for the condition rate [condicio ratio]';
COMMENT ON COLUMN sd.konp.cnd_val IS 'PKWRT — Planned condition value [condicio valor]';
COMMENT ON COLUMN sd.konp.cnd_mon IS 'KWAEH — Condition currency (for cumulation fields) [condicio moneta]';
COMMENT ON COLUMN sd.konp.cnd_idx IS 'KZNEP — Condition exclusion indicator [condicio index]';
COMMENT ON COLUMN sd.konp.emp_num IS 'KUNNR — Customer Number [emptor numerus]';
COMMENT ON COLUMN sd.konp.rat_num_ven IS 'LIFNR — Account Number of Vendor or Creditor [ratio numerus venditor]';
COMMENT ON COLUMN sd.konp.trb_vdt_cod IS 'MWSK1 — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN sd.konp.idx_cnd_pos IS 'LOEVM_KO — Deletion Indicator for Condition Item [index condicio positio]';
COMMENT ON COLUMN sd.konp.mat_tsc IS 'BOMAT — Material for rebate settlement [materia transactio]';
COMMENT ON COLUMN sd.konp.sum IS 'KBRUE — Accrual Amount [summa]';
COMMENT ON COLUMN sd.konp.kspae IS 'KSPAE — Rebate was set up retroactively';
COMMENT ON COLUMN sd.konp.tcn_sta IS 'BOSTA — Condition Record Status (Rebate) [tabula condicionis status]';
COMMENT ON COLUMN sd.konp.knuma_pi IS 'KNUMA_PI — Promotion';
COMMENT ON COLUMN sd.konp.vdt IS 'KNUMA_AG — Sales deal [venditio]';
COMMENT ON COLUMN sd.konp.vdt2 IS 'KNUMA_SQ — Sales quote [venditio]';
COMMENT ON COLUMN sd.konp.val2 IS 'VALTG — Additional value days [valor]';
COMMENT ON COLUMN sd.konp.val_die IS 'VALDT — Fixed value date [valor dies]';
COMMENT ON COLUMN sd.konp.sol_clv IS 'ZTERM — Terms of Payment Key [solutio clavis]';
COMMENT ON COLUMN sd.konp.num_vdt_tcn IS 'ANZAUF — Maximum number of sales orders per condition record [numerus venditio tabula condicionis]';
COMMENT ON COLUMN sd.konp.cnd_val2 IS 'MIKBAS — Minimum condition base value [condicio valor]';
COMMENT ON COLUMN sd.konp.cnd_val3 IS 'MXKBAS — Maximum condition base value [condicio valor]';
COMMENT ON COLUMN sd.konp.cnd_val4 IS 'KOMXWRT — Maximum condition value [condicio valor]';
COMMENT ON COLUMN sd.konp.vdt_pre_tax IS 'VKKAL — Sales Price Calculation: Relevant to pricing [venditio pretium taxatio]';
COMMENT ON COLUMN sd.konp.aktnr IS 'AKTNR — Promotion';
COMMENT ON COLUMN sd.konp.tsc IS 'KNUMA_BO — Agreement (subsequent settlement) [transactio]';
COMMENT ON COLUMN sd.konp.trb_cod IS 'MWSK2 — Withholding tax code [tributum codex]';
COMMENT ON COLUMN sd.konp.pct_gen IS 'VERTT — Contract Type [pactum genus]';
COMMENT ON COLUMN sd.konp.pct_num IS 'VERTN — Contract Number [pactum numerus]';
COMMENT ON COLUMN sd.konp.gen2 IS 'VBEWA — Flow Type [genus]';
COMMENT ON COLUMN sd.konp.idx_cur IS 'MDFLG — Indicator: Matrix maintenance [index curatio]';
COMMENT ON COLUMN sd.konp.ems_sta IS 'KFRST — Release status [emissio status]';
COMMENT ON COLUMN sd.konp.sta_vlm_cnd IS 'UASTA — Status of business volume comparison for a condition [status volumen condicio]';

CREATE TABLE IF NOT EXISTS sd.konv (
  cli char(3),
  num_doc_cnd varchar(10),
  cnd_pos_num varchar(6),
  num varchar(3),
  cnd_nmr varchar(2),
  kappl varchar(2),
  gcn varchar(4),
  cnd_tax_die date,
  gen_cnd varchar(1),
  cnd_val numeric(15,2),
  rat_cnd_sum numeric(11,2),
  cvm varchar(5),
  cnd_rpm_mon numeric(9,5),
  cnd_tax_uni numeric(5,0),
  cnd_uni_doc varchar(3),
  cnd_ctg_trb varchar(1),
  cnd_stt varchar(1),
  gen varchar(1),
  cnd varchar(1),
  cnd_fac varchar(1),
  org_cnd varchar(1),
  cts_cnd varchar(1),
  cnd2 varchar(1),
  tcn_num varchar(10),
  rat_clv varchar(3),
  rat_num varchar(10),
  trb_vdt_cod varchar(2),
  rat_clv2 varchar(3),
  num_rat varchar(10),
  rat_num_ven varchar(10),
  emp_num varchar(10),
  cnd3 numeric(5,2),
  cnd_val2 numeric(13,2),
  cnd4 varchar(1),
  cnd5 varchar(1),
  cnd_cls varchar(1),
  idx_cnd_val varchar(1),
  idx_cnd_sum varchar(1),
  idx varchar(1),
  val_cnd numeric(15,2),
  cnd_men varchar(3),
  mon varchar(5),
  CONSTRAINT konv_pk PRIMARY KEY (cli, num_doc_cnd, cnd_pos_num, num, cnd_nmr, kappl, gcn, cnd_tax_die, gen_cnd)
);
COMMENT ON TABLE sd.konv IS 'KONV — Transaction-level pricing conditions — the condition/pricing engine behind order, delivery, and billing net values.';
COMMENT ON COLUMN sd.konv.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.konv.num_doc_cnd IS 'KNUMV — Number of the document condition [numerus documentum condicio]';
COMMENT ON COLUMN sd.konv.cnd_pos_num IS 'KPOSN — Condition item number [condicio positio numerus]';
COMMENT ON COLUMN sd.konv.num IS 'STUNR — Step number [numerus]';
COMMENT ON COLUMN sd.konv.cnd_nmr IS 'ZAEHK — Condition counter [condicio numerator]';
COMMENT ON COLUMN sd.konv.kappl IS 'KAPPL — Application';
COMMENT ON COLUMN sd.konv.gcn IS 'KSCHL — Condition type [genus condicionis]';
COMMENT ON COLUMN sd.konv.cnd_tax_die IS 'KDATU — Condition pricing date [condicio taxatio dies]';
COMMENT ON COLUMN sd.konv.gen_cnd IS 'KRECH — Calculation type for condition [genus condicio]';
COMMENT ON COLUMN sd.konv.cnd_val IS 'KAWRT — Condition base value [condicio valor]';
COMMENT ON COLUMN sd.konv.rat_cnd_sum IS 'KBETR — Rate (condition amount or percentage) [ratio condicio summa]';
COMMENT ON COLUMN sd.konv.cvm IS 'WAERS — Currency Key [clavis monetae]';
COMMENT ON COLUMN sd.konv.cnd_rpm_mon IS 'KKURS — Condition exchange rate for conversion to local currency [condicio ratio permutationis moneta]';
COMMENT ON COLUMN sd.konv.cnd_tax_uni IS 'KPEIN — Condition pricing unit [condicio taxatio unitas]';
COMMENT ON COLUMN sd.konv.cnd_uni_doc IS 'KMEIN — Condition unit in the document [condicio unitas documentum]';
COMMENT ON COLUMN sd.konv.cnd_ctg_trb IS 'KNTYP — Condition category (examples: tax, freight, price, cost) [condicio categoria tributum]';
COMMENT ON COLUMN sd.konv.cnd_stt IS 'KSTAT — Condition is used for statistics [condicio statistica]';
COMMENT ON COLUMN sd.konv.gen IS 'KNPRS — Scale Type [genus]';
COMMENT ON COLUMN sd.konv.cnd IS 'KRUEK — Condition is Relevant for Accrual (e.g. Freight) [condicio]';
COMMENT ON COLUMN sd.konv.cnd_fac IS 'KRELI — Condition for invoice list [condicio factura]';
COMMENT ON COLUMN sd.konv.org_cnd IS 'KHERK — Origin of the condition [origo condicio]';
COMMENT ON COLUMN sd.konv.cts_cnd IS 'KGRPE — Group condition [coetus condicio]';
COMMENT ON COLUMN sd.konv.cnd2 IS 'KOUPD — Condition update [condicio]';
COMMENT ON COLUMN sd.konv.tcn_num IS 'KNUMH — Condition record number [tabula condicionis numerus]';
COMMENT ON COLUMN sd.konv.rat_clv IS 'KVSL1 — Account key [ratio clavis]';
COMMENT ON COLUMN sd.konv.rat_num IS 'SAKN1 — G/L Account Number [ratio numerus]';
COMMENT ON COLUMN sd.konv.trb_vdt_cod IS 'MWSK1 — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN sd.konv.rat_clv2 IS 'KVSL2 — Account key - accruals / provisions [ratio clavis]';
COMMENT ON COLUMN sd.konv.num_rat IS 'SAKN2 — Number of Provision Account [numerus ratio]';
COMMENT ON COLUMN sd.konv.rat_num_ven IS 'LIFNR — Account Number of Vendor or Creditor [ratio numerus venditor]';
COMMENT ON COLUMN sd.konv.emp_num IS 'KUNNR — Customer number (rebate recipient) [emptor numerus]';
COMMENT ON COLUMN sd.konv.cnd3 IS 'KDIFF — Rounding-off difference of the condition [condicio]';
COMMENT ON COLUMN sd.konv.cnd_val2 IS 'KWERT — Condition value [condicio valor]';
COMMENT ON COLUMN sd.konv.cnd4 IS 'KSTEU — Condition control [condicio]';
COMMENT ON COLUMN sd.konv.cnd5 IS 'KINAK — Condition is inactive [condicio]';
COMMENT ON COLUMN sd.konv.cnd_cls IS 'KOAID — Condition class [condicio classis]';
COMMENT ON COLUMN sd.konv.idx_cnd_val IS 'KMXAW — Indicator for maximum condition base value [index condicio valor]';
COMMENT ON COLUMN sd.konv.idx_cnd_sum IS 'KMXWR — Indicator for maximum condition amount [index condicio summa]';
COMMENT ON COLUMN sd.konv.idx IS 'KZBZG — Scale basis indicator [index]';
COMMENT ON COLUMN sd.konv.val_cnd IS 'KSTBS — Scale base value of the condition [valor condicio]';
COMMENT ON COLUMN sd.konv.cnd_men IS 'KONMS — Condition scale unit of measure [condicio mensura]';
COMMENT ON COLUMN sd.konv.mon IS 'KONWS — Scale currency [moneta]';

CREATE TABLE IF NOT EXISTS sd.likp (
  cli char(3),
  trd varchar(10),
  nom_psn_cre text,
  tmp text,
  die_tbl_cre text,
  vdt varchar(6),
  vstel varchar(4),
  ovd varchar(4),
  trd_gen varchar(4),
  trd_vdt_mnd text,
  mtm_die text,
  die text,
  trd_die text,
  die2 text,
  inco1 varchar(3),
  inco2 text,
  route varchar(6),
  fac_obx_doc varchar(2),
  trd_obx_doc varchar(2),
  doc_ctg text,
  trd2 varchar(2),
  vsbed varchar(2),
  kunnr varchar(10),
  kunag varchar(10),
  emp_cts varchar(2),
  tot_pnd varchar(3),
  net_pnd varchar(3),
  pnd_uni varchar(3),
  vlm varchar(3),
  vlm_uni varchar(3),
  tot_num_trd text,
  tmp_trd text,
  lstel varchar(2),
  cts varchar(4),
  fac_gen_trd varchar(4),
  fac_die_idx text,
  tax varchar(6),
  num_doc_cnd text,
  doc_mon varchar(5),
  vdt2 varchar(4),
  stt_mon varchar(5),
  num varchar(10),
  nom_psn_mut text,
  mut text,
  nhr_hor varchar(3),
  afd varchar(4),
  emp_rat_num varchar(10),
  crd_ctg varchar(3),
  cvm_afd varchar(5),
  crd_val_doc varchar(2),
  bolnr text,
  ven_rat_num text,
  gen varchar(4),
  traid text,
  ddc_doc text,
  acl_mtm_die text,
  csa varchar(2),
  trd_adn text,
  mnd_num varchar(12),
  net_val_vdt varchar(2),
  ofc varchar(4),
  soc text,
  die_trd text,
  rfr_ndo text,
  CONSTRAINT likp_pk PRIMARY KEY (cli, trd)
);
COMMENT ON TABLE sd.likp IS 'LIKP — Outbound delivery header data — shipping and goods-issue control for the SD delivery step.';
COMMENT ON COLUMN sd.likp.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.likp.trd IS 'VBELN — Delivery [traditio]';
COMMENT ON COLUMN sd.likp.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN sd.likp.tmp IS 'ERZET — Entry time [tempus]';
COMMENT ON COLUMN sd.likp.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN sd.likp.vdt IS 'BZIRK — Sales district [venditio]';
COMMENT ON COLUMN sd.likp.vstel IS 'VSTEL — Shipping Point/Receiving Point';
COMMENT ON COLUMN sd.likp.ovd IS 'VKORG — Sales Organization [organizatio venditionis]';
COMMENT ON COLUMN sd.likp.trd_gen IS 'LFART — Delivery Type [traditio genus]';
COMMENT ON COLUMN sd.likp.trd_vdt_mnd IS 'AUTLF — Complete delivery defined for each sales order? [traditio venditio mandatum]';
COMMENT ON COLUMN sd.likp.mtm_die IS 'WADAT — Planned goods movement date [motus mercium dies]';
COMMENT ON COLUMN sd.likp.die IS 'LDDAT — Loading Date [dies]';
COMMENT ON COLUMN sd.likp.trd_die IS 'LFDAT — Delivery Date [traditio dies]';
COMMENT ON COLUMN sd.likp.die2 IS 'KODAT — Picking Date [dies]';
COMMENT ON COLUMN sd.likp.inco1 IS 'INCO1 — Incoterms (Part 1)';
COMMENT ON COLUMN sd.likp.inco2 IS 'INCO2 — Incoterms (Part 2)';
COMMENT ON COLUMN sd.likp.route IS 'ROUTE — Route';
COMMENT ON COLUMN sd.likp.fac_obx_doc IS 'FAKSK — Billing block in SD document [factura obex documentum]';
COMMENT ON COLUMN sd.likp.trd_obx_doc IS 'LIFSK — Delivery block (document header) [traditio obex documentum]';
COMMENT ON COLUMN sd.likp.doc_ctg IS 'VBTYP — SD document category [documentum categoria]';
COMMENT ON COLUMN sd.likp.trd2 IS 'LPRIO — Delivery Priority [traditio]';
COMMENT ON COLUMN sd.likp.vsbed IS 'VSBED — Shipping Conditions';
COMMENT ON COLUMN sd.likp.kunnr IS 'KUNNR — Ship-to party';
COMMENT ON COLUMN sd.likp.kunag IS 'KUNAG — Sold-to party';
COMMENT ON COLUMN sd.likp.emp_cts IS 'KDGRP — Customer group [emptor coetus]';
COMMENT ON COLUMN sd.likp.tot_pnd IS 'BTGEW — Total Weight [summa totalis pondus]';
COMMENT ON COLUMN sd.likp.net_pnd IS 'NTGEW — Net weight [netus pondus]';
COMMENT ON COLUMN sd.likp.pnd_uni IS 'GEWEI — Weight Unit [pondus unitas]';
COMMENT ON COLUMN sd.likp.vlm IS 'VOLUM — Volume [volumen]';
COMMENT ON COLUMN sd.likp.vlm_uni IS 'VOLEH — Volume unit [volumen unitas]';
COMMENT ON COLUMN sd.likp.tot_num_trd IS 'ANZPK — Total number of packages in delivery [summa totalis numerus traditio]';
COMMENT ON COLUMN sd.likp.tmp_trd IS 'LFUHR — Time of delivery [tempus traditio]';
COMMENT ON COLUMN sd.likp.lstel IS 'LSTEL — Loading Point';
COMMENT ON COLUMN sd.likp.cts IS 'TRAGR — Transportation Group [coetus]';
COMMENT ON COLUMN sd.likp.fac_gen_trd IS 'FKARV — Proposed billing type for a delivery-related billing doc. [factura genus traditio]';
COMMENT ON COLUMN sd.likp.fac_die_idx IS 'FKDAT — Billing date for billing index and printout [factura dies index]';
COMMENT ON COLUMN sd.likp.tax IS 'KALSM — Procedure (Pricing, Output Control, Acct. Det., Costing,...) [taxatio]';
COMMENT ON COLUMN sd.likp.num_doc_cnd IS 'KNUMV — Number of the document condition [numerus documentum condicio]';
COMMENT ON COLUMN sd.likp.doc_mon IS 'WAERK — SD Document Currency [documentum moneta]';
COMMENT ON COLUMN sd.likp.vdt2 IS 'VKBUR — Sales Office [venditio]';
COMMENT ON COLUMN sd.likp.stt_mon IS 'STWAE — Statistics currency [statistica moneta]';
COMMENT ON COLUMN sd.likp.num IS 'EXNUM — Number of foreign trade data in MM and SD documents [numerus]';
COMMENT ON COLUMN sd.likp.nom_psn_mut IS 'AENAM — Name of Person Who Changed Object [nomen persona mutatus]';
COMMENT ON COLUMN sd.likp.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN sd.likp.nhr_hor IS 'LGNUM — Warehouse Number / Warehouse Complex [numerus horrei horreum]';
COMMENT ON COLUMN sd.likp.afd IS 'KKBER — Credit control area [area fidei]';
COMMENT ON COLUMN sd.likp.emp_rat_num IS 'KNKLI — Customer''s account number with credit limit reference [emptor ratio numerus]';
COMMENT ON COLUMN sd.likp.crd_ctg IS 'CTLPC — Credit management: Risk category [creditum categoria]';
COMMENT ON COLUMN sd.likp.cvm_afd IS 'CMWAE — Currency key of credit control area [clavis monetae area fidei]';
COMMENT ON COLUMN sd.likp.crd_val_doc IS 'AMTBL — Released credit value of the document [creditum valor documentum]';
COMMENT ON COLUMN sd.likp.bolnr IS 'BOLNR — Bill of lading';
COMMENT ON COLUMN sd.likp.ven_rat_num IS 'LIFNR — Vendor Account Number [venditor ratio numerus]';
COMMENT ON COLUMN sd.likp.gen IS 'TRATY — Means-of-Transport Type [genus]';
COMMENT ON COLUMN sd.likp.traid IS 'TRAID — Means of Transport ID';
COMMENT ON COLUMN sd.likp.ddc_doc IS 'BLDAT — Document Date in Document [dies documenti documentum]';
COMMENT ON COLUMN sd.likp.acl_mtm_die IS 'WADAT_IST — Actual Goods Movement Date [actualis motus mercium dies]';
COMMENT ON COLUMN sd.likp.csa IS 'TRSPG — Shipment Blocking Reason [causa]';
COMMENT ON COLUMN sd.likp.trd_adn IS 'LIFEX — External Identification of Delivery Note [traditio adnotatio]';
COMMENT ON COLUMN sd.likp.mnd_num IS 'TERNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN sd.likp.net_val_vdt IS 'NETWR — Net Value of the Sales Order in Document Currency [netus valor venditio]';
COMMENT ON COLUMN sd.likp.ofc IS 'WERKS — Receiving plant for deliveries [officina]';
COMMENT ON COLUMN sd.likp.soc IS 'VBUND — Company ID [societas]';
COMMENT ON COLUMN sd.likp.die_trd IS 'PODAT — Date (proof of delivery) [dies traditio]';
COMMENT ON COLUMN sd.likp.rfr_ndo IS 'XBLNR — Reference Document Number [referentia numerus documenti]';

CREATE TABLE IF NOT EXISTS sd.lips (
  cli char(3),
  trd varchar(10),
  trd_pos varchar(6),
  trd_pos_ctg varchar(4),
  nom_psn_cre text,
  tmp text,
  die_tbl_cre text,
  mat_num varchar(18),
  mat varchar(18),
  mat_cts varchar(9),
  ofc varchar(4),
  loc varchar(4),
  grx_num varchar(10),
  mat_emp text,
  hir varchar(18),
  acl_qnt_vdt varchar(3),
  men varchar(3),
  vdt_uni varchar(3),
  net_pnd varchar(3),
  grs_pnd varchar(3),
  pnd_uni varchar(3),
  vlm varchar(3),
  vlm_uni varchar(3),
  obx varchar(2),
  mat_die text,
  acl_qnt varchar(3),
  txt_vdt_mnd text,
  lgpbe text,
  doc varchar(10),
  pos varchar(6),
  ndo_rfr_doc varchar(10),
  pos_num_rfr varchar(6),
  fac text,
  cts varchar(4),
  cts2 varchar(4),
  nhr_hor varchar(3),
  grp varchar(3),
  lgpla varchar(10),
  mtm_gen varchar(3),
  mat_gen varchar(4),
  aes_gen varchar(10),
  cts3 varchar(2),
  ang varchar(4),
  vdt varchar(4),
  vdt_cts varchar(3),
  cds varchar(2),
  dvs varchar(2),
  smp_doc_mon varchar(2),
  cpa_idx varchar(1),
  mut text,
  csm varchar(10),
  amd varchar(4),
  seg_num text,
  clu text,
  ops_elm_eop text,
  mnd_num varchar(12),
  vdt_mnd_num text,
  pos_num_vdt text,
  rat_asg_ctg varchar(1),
  net_pre varchar(2),
  net_val_doc varchar(2),
  cnd_tax_uni text,
  cnd_uni varchar(3),
  val_pct varchar(10),
  val_pct_pos varchar(6),
  num_rqs text,
  pos_num_rqs text,
  doc_ctg text,
  rat_num text,
  die text,
  die2 text,
  doc_rfr text,
  pos_rfr_doc text,
  CONSTRAINT lips_pk PRIMARY KEY (cli, trd, trd_pos)
);
COMMENT ON TABLE sd.lips IS 'LIPS — Outbound delivery item data — quantities, batches, and warehouse detail per delivery line.';
COMMENT ON COLUMN sd.lips.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.lips.trd IS 'VBELN — Delivery [traditio]';
COMMENT ON COLUMN sd.lips.trd_pos IS 'POSNR — Delivery Item [traditio positio]';
COMMENT ON COLUMN sd.lips.trd_pos_ctg IS 'PSTYV — Delivery item category [traditio positio categoria]';
COMMENT ON COLUMN sd.lips.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN sd.lips.tmp IS 'ERZET — Entry time [tempus]';
COMMENT ON COLUMN sd.lips.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN sd.lips.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN sd.lips.mat IS 'MATWA — Material entered [materia]';
COMMENT ON COLUMN sd.lips.mat_cts IS 'MATKL — Material Group [materia coetus]';
COMMENT ON COLUMN sd.lips.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN sd.lips.loc IS 'LGORT — Storage Location [locus repositionis]';
COMMENT ON COLUMN sd.lips.grx_num IS 'CHARG — Batch Number [grex numerus]';
COMMENT ON COLUMN sd.lips.mat_emp IS 'KDMAT — Material belonging to the customer [materia emptor]';
COMMENT ON COLUMN sd.lips.hir IS 'PRODH — Product hierarchy [hierarchia]';
COMMENT ON COLUMN sd.lips.acl_qnt_vdt IS 'LFIMG — Actual quantity delivered (in sales units) [actualis quantitas venditio]';
COMMENT ON COLUMN sd.lips.men IS 'MEINS — Base Unit of Measure [mensura]';
COMMENT ON COLUMN sd.lips.vdt_uni IS 'VRKME — Sales unit [venditio unitas]';
COMMENT ON COLUMN sd.lips.net_pnd IS 'NTGEW — Net weight [netus pondus]';
COMMENT ON COLUMN sd.lips.grs_pnd IS 'BRGEW — Gross weight [crassus pondus]';
COMMENT ON COLUMN sd.lips.pnd_uni IS 'GEWEI — Weight Unit [pondus unitas]';
COMMENT ON COLUMN sd.lips.vlm IS 'VOLUM — Volume [volumen]';
COMMENT ON COLUMN sd.lips.vlm_uni IS 'VOLEH — Volume unit [volumen unitas]';
COMMENT ON COLUMN sd.lips.obx IS 'FAKSP — Block [obex]';
COMMENT ON COLUMN sd.lips.mat_die IS 'MBDAT — Material Staging/Availability Date [materia dies]';
COMMENT ON COLUMN sd.lips.acl_qnt IS 'LGMNG — Actual quantity delivered in stockkeeping units [actualis quantitas]';
COMMENT ON COLUMN sd.lips.txt_vdt_mnd IS 'ARKTX — Short text for sales order item [textus venditio mandatum]';
COMMENT ON COLUMN sd.lips.lgpbe IS 'LGPBE — Storage Bin';
COMMENT ON COLUMN sd.lips.doc IS 'VBELV — Originating document [documentum]';
COMMENT ON COLUMN sd.lips.pos IS 'POSNV — Originating item [positio]';
COMMENT ON COLUMN sd.lips.ndo_rfr_doc IS 'VGBEL — Document number of the reference document [numerus documenti referentia documentum]';
COMMENT ON COLUMN sd.lips.pos_num_rfr IS 'VGPOS — Item number of the reference item [positio numerus referentia]';
COMMENT ON COLUMN sd.lips.fac IS 'FKREL — Relevant for Billing [factura]';
COMMENT ON COLUMN sd.lips.cts IS 'LADGR — Loading Group [coetus]';
COMMENT ON COLUMN sd.lips.cts2 IS 'TRAGR — Transportation Group [coetus]';
COMMENT ON COLUMN sd.lips.nhr_hor IS 'LGNUM — Warehouse Number / Warehouse Complex [numerus horrei horreum]';
COMMENT ON COLUMN sd.lips.grp IS 'LGTYP — Storage Type [genus repositionis]';
COMMENT ON COLUMN sd.lips.lgpla IS 'LGPLA — Storage Bin';
COMMENT ON COLUMN sd.lips.mtm_gen IS 'BWART — Movement Type (Inventory Management) [motus genus]';
COMMENT ON COLUMN sd.lips.mat_gen IS 'MTART — Material Type [materia genus]';
COMMENT ON COLUMN sd.lips.aes_gen IS 'BWTAR — Valuation Type [aestimatio genus]';
COMMENT ON COLUMN sd.lips.cts3 IS 'MTVFP — Checking Group for Availability Check [coetus]';
COMMENT ON COLUMN sd.lips.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN sd.lips.vdt IS 'VKBUR — Sales Office [venditio]';
COMMENT ON COLUMN sd.lips.vdt_cts IS 'VKGRP — Sales Group [venditio coetus]';
COMMENT ON COLUMN sd.lips.cds IS 'VTWEG — Distribution Channel [canalis distributionis]';
COMMENT ON COLUMN sd.lips.dvs IS 'SPART — Division [divisio]';
COMMENT ON COLUMN sd.lips.smp_doc_mon IS 'WAVWR — Cost in document currency [sumptus documentum moneta]';
COMMENT ON COLUMN sd.lips.cpa_idx IS 'SOBKZ — Special Stock Indicator [copia index]';
COMMENT ON COLUMN sd.lips.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN sd.lips.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN sd.lips.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN sd.lips.seg_num IS 'PAOBJNR — Profitability Segment Number (CO-PA) [segmentum numerus]';
COMMENT ON COLUMN sd.lips.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN sd.lips.ops_elm_eop IS 'PS_PSP_PNR — Work Breakdown Structure Element (WBS Element) [opus elementum elementum operis]';
COMMENT ON COLUMN sd.lips.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN sd.lips.vdt_mnd_num IS 'KDAUF — Sales Order Number [venditio mandatum numerus]';
COMMENT ON COLUMN sd.lips.pos_num_vdt IS 'KDPOS — Item Number in Sales Order [positio numerus venditio]';
COMMENT ON COLUMN sd.lips.rat_asg_ctg IS 'KNTTP — Account Assignment Category [ratio assignatio categoria]';
COMMENT ON COLUMN sd.lips.net_pre IS 'NETPR — Net price [netus pretium]';
COMMENT ON COLUMN sd.lips.net_val_doc IS 'NETWR — Net Value in Document Currency [netus valor documentum]';
COMMENT ON COLUMN sd.lips.cnd_tax_uni IS 'KPEIN — Condition pricing unit [condicio taxatio unitas]';
COMMENT ON COLUMN sd.lips.cnd_uni IS 'KMEIN — Condition unit [condicio unitas]';
COMMENT ON COLUMN sd.lips.val_pct IS 'WKTNR — Value contract no. [valor pactum]';
COMMENT ON COLUMN sd.lips.val_pct_pos IS 'WKTPS — Value contract item [valor pactum positio]';
COMMENT ON COLUMN sd.lips.num_rqs IS 'RSNUM — Number of Reservation/Dependent Requirement [numerus requisitum]';
COMMENT ON COLUMN sd.lips.pos_num_rqs IS 'RSPOS — Item Number of Reservation/Dependent Requirement [positio numerus requisitum]';
COMMENT ON COLUMN sd.lips.doc_ctg IS 'VGTYP — SD document category [documentum categoria]';
COMMENT ON COLUMN sd.lips.rat_num IS 'KONTO — G/L Account Number [ratio numerus]';
COMMENT ON COLUMN sd.lips.die IS 'VFDAT — Shelf Life Expiration or Best-Before Date [dies]';
COMMENT ON COLUMN sd.lips.die2 IS 'HSDAT — Date of Manufacture [dies]';
COMMENT ON COLUMN sd.lips.doc_rfr IS 'LFBNR — Document No. of a Reference Document [documentum referentia]';
COMMENT ON COLUMN sd.lips.pos_rfr_doc IS 'LFPOS — Item of a Reference Document [positio referentia documentum]';

CREATE TABLE IF NOT EXISTS sd.tspa (
  cli char(3),
  dvs varchar(2),
  CONSTRAINT tspa_pk PRIMARY KEY (cli, dvs)
);
COMMENT ON TABLE sd.tspa IS 'TSPA — Organizational check table: sales divisions — the master list of divisions (SPART) that every SD document''s division field validates against, and the target of the reference-division fields on TVTA. SAP''s real table is minimal at the client/key level (division text and further attributes live on language-dependent and extension tables); this definition carries the base key structure as sourced. Carried complete as a small organizational customizing table.';
COMMENT ON COLUMN sd.tspa.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.tspa.dvs IS 'SPART — Division [divisio]';

CREATE TABLE IF NOT EXISTS sd.tvbvk (
  cli char(3),
  vdt varchar(4),
  vdt_cts varchar(3),
  CONSTRAINT tvbvk_pk PRIMARY KEY (cli, vdt, vdt_cts)
);
COMMENT ON TABLE sd.tvbvk IS 'TVBVK — Organizational check table: sales groups per sales office — validates which sales groups (VKGRP) are permitted under a given sales office (VKBUR), the assignment that document fields VKBUR/VKGRP on VBAK are checked against. Carried complete as a small organizational customizing table.';
COMMENT ON COLUMN sd.tvbvk.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.tvbvk.vdt IS 'VKBUR — Sales Office [venditio]';
COMMENT ON COLUMN sd.tvbvk.vdt_cts IS 'VKGRP — Sales Group [venditio coetus]';

CREATE TABLE IF NOT EXISTS sd.tvkbz (
  cli char(3),
  ovd varchar(4),
  cds varchar(2),
  dvs varchar(2),
  vdt varchar(4),
  CONSTRAINT tvkbz_pk PRIMARY KEY (cli, ovd, cds, dvs, vdt)
);
COMMENT ON TABLE sd.tvkbz IS 'TVKBZ — Organizational check table: sales office assignment to sales area — validates which sales offices (VKBUR) are assigned to which sales area (VKORG/VTWEG/SPART), the assignment the VKBUR field on SD documents is checked against in context of the document''s sales area. Carried complete as a small organizational customizing table.';
COMMENT ON COLUMN sd.tvkbz.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.tvkbz.ovd IS 'VKORG — Sales Organization [organizatio venditionis]';
COMMENT ON COLUMN sd.tvkbz.cds IS 'VTWEG — Distribution Channel [canalis distributionis]';
COMMENT ON COLUMN sd.tvkbz.dvs IS 'SPART — Division [divisio]';
COMMENT ON COLUMN sd.tvkbz.vdt IS 'VKBUR — Sales Office [venditio]';

CREATE TABLE IF NOT EXISTS sd.tvko (
  cli char(3),
  ovd varchar(4),
  stt_mon varchar(5),
  soc_ovd varchar(4),
  dml varchar(10),
  txt_nom_frm varchar(16),
  txt_nom_frm2 varchar(16),
  txt_nom varchar(16),
  txt_nom_frm3 varchar(16),
  rfr_vdt_are varchar(4),
  emp_num_fac varchar(10),
  ovd2 varchar(1),
  ovd3 varchar(2),
  oem varchar(4),
  cts varchar(3),
  rat_num_ven varchar(10),
  ofc varchar(4),
  gmd varchar(4),
  mtm_gen varchar(3),
  loc varchar(4),
  txt varchar(16),
  trb_cod varchar(2),
  num varchar(1),
  num_fac_doc varchar(3),
  CONSTRAINT tvko_pk PRIMARY KEY (cli, ovd)
);
COMMENT ON TABLE sd.tvko IS 'TVKO — Organizational check table: sales organizations — the master list of sales organizations that every SD document''s VKORG field validates against, carrying the sales org''s company code assignment, statistics currency, address, and default purchasing/plant/storage-location references for intercompany processing. Carried complete as a small organizational customizing table.';
COMMENT ON COLUMN sd.tvko.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.tvko.ovd IS 'VKORG — Sales Organization [organizatio venditionis]';
COMMENT ON COLUMN sd.tvko.stt_mon IS 'WAERS — Statistics currency [statistica moneta]';
COMMENT ON COLUMN sd.tvko.soc_ovd IS 'BUKRS — Company code of the sales organization [codex societatis organizatio venditionis]';
COMMENT ON COLUMN sd.tvko.dml IS 'ADRNR — Address [domicilium]';
COMMENT ON COLUMN sd.tvko.txt_nom_frm IS 'TXNAM_ADR — Text name for form text module short address [textus nomen forma]';
COMMENT ON COLUMN sd.tvko.txt_nom_frm2 IS 'TXNAM_KOP — Text name for form text module letter header [textus nomen forma]';
COMMENT ON COLUMN sd.tvko.txt_nom IS 'TXNAM_FUS — Text name for formula text module footer lines [textus nomen]';
COMMENT ON COLUMN sd.tvko.txt_nom_frm3 IS 'TXNAM_GRU — Text name for form text module: Greeting [textus nomen forma]';
COMMENT ON COLUMN sd.tvko.rfr_vdt_are IS 'VKOAU — Reference sales org.for sales doc.types (by sales area) [referentia venditio area]';
COMMENT ON COLUMN sd.tvko.emp_num_fac IS 'KUNNR — Customer number for intercompany billing [emptor numerus factura]';
COMMENT ON COLUMN sd.tvko.ovd2 IS 'BOAVO — Rebate processing active in the sales organization [organizatio venditionis]';
COMMENT ON COLUMN sd.tvko.ovd3 IS 'VKOKL — Sales organization calendar [organizatio venditionis]';
COMMENT ON COLUMN sd.tvko.oem IS 'EKORG — Purchasing Organization [organizatio emptionis]';
COMMENT ON COLUMN sd.tvko.cts IS 'EKGRP — Purchasing Group [coetus]';
COMMENT ON COLUMN sd.tvko.rat_num_ven IS 'LIFNR — Account Number of Vendor or Creditor [ratio numerus venditor]';
COMMENT ON COLUMN sd.tvko.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN sd.tvko.gmd IS 'BSART — Order Type (Purchasing) [genus mandati]';
COMMENT ON COLUMN sd.tvko.mtm_gen IS 'BWART — Movement Type (Inventory Management) [motus genus]';
COMMENT ON COLUMN sd.tvko.loc IS 'LGORT — Storage Location [locus repositionis]';
COMMENT ON COLUMN sd.tvko.txt IS 'TXNAM_SDB — Text names for layout-set module SDS sender [textus]';
COMMENT ON COLUMN sd.tvko.trb_cod IS 'MWSKZ — Tax code for SD documents [tributum codex]';
COMMENT ON COLUMN sd.tvko.num IS 'XSTCEG — Determining the VAT registration number [numerus]';
COMMENT ON COLUMN sd.tvko.num_fac_doc IS 'MAXBI — Maximum Number of Items in Billing Document [numerus factura documentum]';

CREATE TABLE IF NOT EXISTS sd.tvkov (
  cli char(3),
  ovd varchar(4),
  cds varchar(2),
  rfr_cds varchar(2),
  cds_vdt varchar(2),
  rfr_mat varchar(2),
  rfr_ofc_ctg varchar(4),
  ctg varchar(1),
  tax_grd varchar(1),
  CONSTRAINT tvkov_pk PRIMARY KEY (cli, ovd, cds)
);
COMMENT ON TABLE sd.tvkov IS 'TVKOV — Organizational check table: distribution channels per sales organization — validates the VKORG/VTWEG combination every SD document''s distribution channel field must resolve to, and carries reference distribution channels used to share condition records, sales document types, and customer/material master data across channels. Carried complete as a small organizational customizing table.';
COMMENT ON COLUMN sd.tvkov.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.tvkov.ovd IS 'VKORG — Sales Organization [organizatio venditionis]';
COMMENT ON COLUMN sd.tvkov.cds IS 'VTWEG — Distribution Channel [canalis distributionis]';
COMMENT ON COLUMN sd.tvkov.rfr_cds IS 'VTWKO — Reference distribution channel for conditions [referentia canalis distributionis]';
COMMENT ON COLUMN sd.tvkov.cds_vdt IS 'VTWAU — Distribution channel for sales doc types [canalis distributionis venditio]';
COMMENT ON COLUMN sd.tvkov.rfr_mat IS 'VTWKU — Reference distrib.channel for cust.and material masters [referentia materia]';
COMMENT ON COLUMN sd.tvkov.rfr_ofc_ctg IS 'VLGFI — Reference Plant of the Category "Store" (Material Master) [referentia officina categoria]';
COMMENT ON COLUMN sd.tvkov.ctg IS 'VLTYP — Distribution chain category [categoria]';
COMMENT ON COLUMN sd.tvkov.tax_grd IS 'VLKEB — Allowed pricing levels below distribution chain level [taxatio gradus]';

CREATE TABLE IF NOT EXISTS sd.tvta (
  cli char(3),
  ovd varchar(4),
  cds varchar(2),
  dvs varchar(2),
  rfr_mat varchar(2),
  rfr_dvs varchar(2),
  rfr_cds varchar(2),
  rfr_dvs2 varchar(2),
  are varchar(2),
  rfr_vdt_are varchar(4),
  cds_vdt varchar(2),
  rfr_dvs_doc varchar(2),
  ang varchar(4),
  ang2 varchar(3),
  revfp varchar(1),
  trd_die_qnt varchar(1),
  afind varchar(1),
  afd varchar(4),
  CONSTRAINT tvta_pk PRIMARY KEY (cli, ovd, cds, dvs)
);
COMMENT ON TABLE sd.tvta IS 'TVTA — Organizational check table: sales area assignments — validates the combination of sales organization, distribution channel and division (VKORG/VTWEG/SPART) that defines a sales area, the fundamental organizational unit every SD sales document is assigned to, and carries the business area, credit control area, and reference-division/channel rules that flow down onto documents in that sales area. Carried complete as a small organizational customizing table.';
COMMENT ON COLUMN sd.tvta.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.tvta.ovd IS 'VKORG — Sales Organization [organizatio venditionis]';
COMMENT ON COLUMN sd.tvta.cds IS 'VTWEG — Distribution Channel [canalis distributionis]';
COMMENT ON COLUMN sd.tvta.dvs IS 'SPART — Division [divisio]';
COMMENT ON COLUMN sd.tvta.rfr_mat IS 'VTWKU — Reference distrib.channel for cust.and material masters [referentia materia]';
COMMENT ON COLUMN sd.tvta.rfr_dvs IS 'SPAKU — Reference division for customers [referentia divisio]';
COMMENT ON COLUMN sd.tvta.rfr_cds IS 'VTWKO — Reference distribution channel for conditions [referentia canalis distributionis]';
COMMENT ON COLUMN sd.tvta.rfr_dvs2 IS 'SPAKO — Reference division for conditions [referentia divisio]';
COMMENT ON COLUMN sd.tvta.are IS 'MABER — Dunning Area [area]';
COMMENT ON COLUMN sd.tvta.rfr_vdt_are IS 'VKOAU — Reference sales org.for sales doc.types (by sales area) [referentia venditio area]';
COMMENT ON COLUMN sd.tvta.cds_vdt IS 'VTWAU — Distribution channel for sales doc types [canalis distributionis venditio]';
COMMENT ON COLUMN sd.tvta.rfr_dvs_doc IS 'SPAAU — Reference division for document types (by sales area) [referentia divisio documentum]';
COMMENT ON COLUMN sd.tvta.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN sd.tvta.ang2 IS 'REGGB — Rule for determining the business area [area negotii]';
COMMENT ON COLUMN sd.tvta.revfp IS 'REVFP — Rule for transferring the results of the availability check';
COMMENT ON COLUMN sd.tvta.trd_die_qnt IS 'FIXMG — Delivery date and quantity fixed [traditio dies quantitas]';
COMMENT ON COLUMN sd.tvta.afind IS 'AFIND — Promo determination';
COMMENT ON COLUMN sd.tvta.afd IS 'KKBER — Credit control area [area fidei]';

CREATE TABLE IF NOT EXISTS sd.vbak (
  cli char(3),
  dvd varchar(10),
  die_tbl_cre text,
  tmp text,
  nom_psn_cre text,
  vla text,
  die_vld text,
  ddc_die text,
  doc_ctg text,
  cts text,
  dvd_gen varchar(4),
  mnd_csa varchar(3),
  die text,
  trd_obx_doc varchar(2),
  fac_obx_doc varchar(2),
  net_val_vdt varchar(2),
  doc_mon varchar(5),
  ovd varchar(4),
  cds varchar(2),
  dvs varchar(2),
  vdt_cts varchar(3),
  vdt varchar(4),
  ang varchar(4),
  vla_die text,
  vld_die text,
  num_doc_cnd text,
  trd_die text,
  trd_vdt_mnd text,
  vdt_tax varchar(6),
  vsbed varchar(2),
  fac_gen_mnd varchar(4),
  vdt2 text,
  emp_mem_num text,
  emp_mem_die text,
  rfr text,
  kunnr varchar(10),
  csm text,
  stt_mon varchar(5),
  mut text,
  emp_cts varchar(3),
  emp_cts2 varchar(3),
  knuma varchar(10),
  amd varchar(4),
  ops_elm_eop varchar(8),
  rpm_gen varchar(4),
  afd varchar(4),
  emp_rat_num varchar(10),
  crd_ctg varchar(3),
  cvm_afd varchar(5),
  crd_val_doc varchar(2),
  idx varchar(3),
  ndo_rfr_doc varchar(10),
  obi_num_cap varchar(22),
  soc varchar(4),
  rfr_ndo text,
  asg_num text,
  doc_ctg2 text,
  mnd_num varchar(12),
  nts varchar(12),
  num_sol_cns varchar(10),
  trb_ptr varchar(3),
  CONSTRAINT vbak_pk PRIMARY KEY (cli, dvd)
);
COMMENT ON TABLE sd.vbak IS 'VBAK — Sales document header data (order, quotation, contract) — origin of the SD sales cycle.';
COMMENT ON COLUMN sd.vbak.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.vbak.dvd IS 'VBELN — Sales Document [documentum venditionis]';
COMMENT ON COLUMN sd.vbak.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN sd.vbak.tmp IS 'ERZET — Entry time [tempus]';
COMMENT ON COLUMN sd.vbak.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN sd.vbak.vla IS 'ANGDT — Quotation/Inquiry is valid from [validus ab]';
COMMENT ON COLUMN sd.vbak.die_vld IS 'BNDDT — Date until which bid/quotation is binding (valid-to date) [dies validus ad]';
COMMENT ON COLUMN sd.vbak.ddc_die IS 'AUDAT — Document Date (Date Received/Sent) [dies documenti dies]';
COMMENT ON COLUMN sd.vbak.doc_ctg IS 'VBTYPS — D document category [documentum categoria]';
COMMENT ON COLUMN sd.vbak.cts IS 'TRVOG — Transaction group [coetus]';
COMMENT ON COLUMN sd.vbak.dvd_gen IS 'AUART — Sales Document Type [documentum venditionis genus]';
COMMENT ON COLUMN sd.vbak.mnd_csa IS 'AUGRU — Order reason (reason for the business transaction) [mandatum causa]';
COMMENT ON COLUMN sd.vbak.die IS 'GWLDT — Warranty Date [dies]';
COMMENT ON COLUMN sd.vbak.trd_obx_doc IS 'LIFSK — Delivery block (document header) [traditio obex documentum]';
COMMENT ON COLUMN sd.vbak.fac_obx_doc IS 'FAKSK — Billing block in SD document [factura obex documentum]';
COMMENT ON COLUMN sd.vbak.net_val_vdt IS 'NETWR — Net Value of the Sales Order in Document Currency [netus valor venditio]';
COMMENT ON COLUMN sd.vbak.doc_mon IS 'WAERK — SD Document Currency [documentum moneta]';
COMMENT ON COLUMN sd.vbak.ovd IS 'VKORG — Sales Organization [organizatio venditionis]';
COMMENT ON COLUMN sd.vbak.cds IS 'VTWEG — Distribution Channel [canalis distributionis]';
COMMENT ON COLUMN sd.vbak.dvs IS 'SPART — Division [divisio]';
COMMENT ON COLUMN sd.vbak.vdt_cts IS 'VKGRP — Sales Group [venditio coetus]';
COMMENT ON COLUMN sd.vbak.vdt IS 'VKBUR — Sales Office [venditio]';
COMMENT ON COLUMN sd.vbak.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN sd.vbak.vla_die IS 'GUEBG — Valid-from date (outline agreements, product proposals) [validus ab dies]';
COMMENT ON COLUMN sd.vbak.vld_die IS 'GUEEN — Valid-to date (outline agreements, product proposals) [validus ad dies]';
COMMENT ON COLUMN sd.vbak.num_doc_cnd IS 'KNUMV — Number of the document condition [numerus documentum condicio]';
COMMENT ON COLUMN sd.vbak.trd_die IS 'VDATU — Requested delivery date [traditio dies]';
COMMENT ON COLUMN sd.vbak.trd_vdt_mnd IS 'AUTLF — Complete delivery defined for each sales order? [traditio venditio mandatum]';
COMMENT ON COLUMN sd.vbak.vdt_tax IS 'KALSM — Sales and Distribution: Pricing Procedure in Pricing [venditio taxatio]';
COMMENT ON COLUMN sd.vbak.vsbed IS 'VSBED — Shipping Conditions';
COMMENT ON COLUMN sd.vbak.fac_gen_mnd IS 'FKARA — Proposed billing type for an order-related billing document [factura genus mandatum]';
COMMENT ON COLUMN sd.vbak.vdt2 IS 'AWAHR — Sales probability [venditio]';
COMMENT ON COLUMN sd.vbak.emp_mem_num IS 'BSTNK — Customer purchase order number [emptor mandatum emptionis numerus]';
COMMENT ON COLUMN sd.vbak.emp_mem_die IS 'BSTDK — Customer purchase order date [emptor mandatum emptionis dies]';
COMMENT ON COLUMN sd.vbak.rfr IS 'IHREZ — Your Reference [referentia]';
COMMENT ON COLUMN sd.vbak.kunnr IS 'KUNNR — Sold-to party';
COMMENT ON COLUMN sd.vbak.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN sd.vbak.stt_mon IS 'STWAE — Statistics currency [statistica moneta]';
COMMENT ON COLUMN sd.vbak.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN sd.vbak.emp_cts IS 'KVGR1 — Customer group 1 [emptor coetus]';
COMMENT ON COLUMN sd.vbak.emp_cts2 IS 'KVGR2 — Customer group 2 [emptor coetus]';
COMMENT ON COLUMN sd.vbak.knuma IS 'KNUMA — Agreement (various conditions grouped together)';
COMMENT ON COLUMN sd.vbak.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN sd.vbak.ops_elm_eop IS 'PS_PSP_PNR — Work Breakdown Structure Element (WBS Element) [opus elementum elementum operis]';
COMMENT ON COLUMN sd.vbak.rpm_gen IS 'KURST — Exchange Rate Type [ratio permutationis genus]';
COMMENT ON COLUMN sd.vbak.afd IS 'KKBER — Credit control area [area fidei]';
COMMENT ON COLUMN sd.vbak.emp_rat_num IS 'KNKLI — Customer''s account number with credit limit reference [emptor ratio numerus]';
COMMENT ON COLUMN sd.vbak.crd_ctg IS 'CTLPC — Credit management: Risk category [creditum categoria]';
COMMENT ON COLUMN sd.vbak.cvm_afd IS 'CMWAE — Currency key of credit control area [clavis monetae area fidei]';
COMMENT ON COLUMN sd.vbak.crd_val_doc IS 'AMTBL — Released credit value of the document [creditum valor documentum]';
COMMENT ON COLUMN sd.vbak.idx IS 'ABRVW — Usage Indicator [index]';
COMMENT ON COLUMN sd.vbak.ndo_rfr_doc IS 'VGBEL — Document number of the reference document [numerus documenti referentia documentum]';
COMMENT ON COLUMN sd.vbak.obi_num_cap IS 'OBJNR — Object number at header level [obiectum numerus caput]';
COMMENT ON COLUMN sd.vbak.soc IS 'BUKRS_VF — Company code to be billed [codex societatis]';
COMMENT ON COLUMN sd.vbak.rfr_ndo IS 'XBLNR — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN sd.vbak.asg_num IS 'ZUONR — Assignment number [assignatio numerus]';
COMMENT ON COLUMN sd.vbak.doc_ctg2 IS 'VGTYP — Document category of preceding SD document [documentum categoria]';
COMMENT ON COLUMN sd.vbak.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN sd.vbak.nts IS 'QMNUM — Notification No [nuntius]';
COMMENT ON COLUMN sd.vbak.num_sol_cns IS 'RPLNR — Number of payment card plan type [numerus solutio consilium]';
COMMENT ON COLUMN sd.vbak.trb_ptr IS 'LANDTX — Tax departure country [tributum patria]';

CREATE TABLE IF NOT EXISTS sd.vbap (
  cli char(3),
  dvd varchar(10),
  dvd_pos varchar(6),
  mat_num varchar(18),
  mat varchar(18),
  tax_rfr_mat varchar(18),
  grx_num varchar(10),
  mat_cts varchar(9),
  txt_vdt_mnd varchar(40),
  dvd_pos_ctg varchar(4),
  pos_gen varchar(1),
  pos_trd varchar(1),
  fac varchar(1),
  grd_pos_ixm varchar(6),
  csa_vdt varchar(2),
  hir varchar(18),
  mta_val_doc numeric(13,2),
  mta_qnt_vdt numeric(13,3),
  mta_qnt varchar(3),
  men varchar(3),
  pos_num_mem varchar(6),
  mat_num_emp varchar(35),
  idx varchar(3),
  trd_cts varchar(3),
  fac_obx_pos varchar(2),
  dvs varchar(2),
  ang varchar(4),
  net_val_mnd numeric(15,2),
  doc_mon varchar(5),
  mnd_qnt_vdt numeric(15,3),
  qnt_vdt_uni numeric(15,3),
  vdt_uni varchar(3),
  grs_pnd_pos numeric(15,3),
  net_pnd_pos numeric(15,3),
  pnd_uni varchar(3),
  vlm_pos numeric(15,3),
  vlm_uni varchar(3),
  doc varchar(10),
  pos varchar(6),
  ndo_rfr_doc varchar(10),
  pos_num_rfr varchar(6),
  trd varchar(2),
  ofc varchar(4),
  loc varchar(4),
  vstel varchar(4),
  route varchar(6),
  die_tbl_cre date,
  nom_psn_cre varchar(12),
  tmp time,
  net_pre numeric(11,2),
  cnd_tax_uni numeric(5,0),
  cnd_uni varchar(3),
  pos2 varchar(1),
  cts varchar(2),
  mat_tax_cts varchar(2),
  rat_asg_cts varchar(2),
  vlm_cts varchar(2),
  cts2 varchar(2),
  aes_gen varchar(10),
  mut date,
  clu varchar(10),
  mat_cts2 varchar(3),
  mat_cts3 varchar(3),
  cpa_idx varchar(1),
  seg_num varchar(10),
  ops_elm_eop varchar(8),
  mnd_num varchar(12),
  rat_asg_ctg varchar(1),
  obi_num_pos varchar(22),
  cuobj varchar(18),
  doc_ctg varchar(1),
  num_tcn_grx varchar(10),
  val_pct varchar(10),
  val_pct_pos varchar(6),
  knuma_pi varchar(10),
  vdt varchar(10),
  trb_sum_doc numeric(13,2),
  csm varchar(10),
  CONSTRAINT vbap_pk PRIMARY KEY (cli, dvd, dvd_pos)
);
COMMENT ON TABLE sd.vbap IS 'VBAP — Sales document item data — line items for orders, quotations, and contracts.';
COMMENT ON COLUMN sd.vbap.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.vbap.dvd IS 'VBELN — Sales Document [documentum venditionis]';
COMMENT ON COLUMN sd.vbap.dvd_pos IS 'POSNR — Sales Document Item [documentum venditionis positio]';
COMMENT ON COLUMN sd.vbap.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN sd.vbap.mat IS 'MATWA — Material entered [materia]';
COMMENT ON COLUMN sd.vbap.tax_rfr_mat IS 'PMATN — Pricing Reference Material [taxatio referentia materia]';
COMMENT ON COLUMN sd.vbap.grx_num IS 'CHARG — Batch Number [grex numerus]';
COMMENT ON COLUMN sd.vbap.mat_cts IS 'MATKL — Material Group [materia coetus]';
COMMENT ON COLUMN sd.vbap.txt_vdt_mnd IS 'ARKTX — Short text for sales order item [textus venditio mandatum]';
COMMENT ON COLUMN sd.vbap.dvd_pos_ctg IS 'PSTYV — Sales document item category [documentum venditionis positio categoria]';
COMMENT ON COLUMN sd.vbap.pos_gen IS 'POSAR — Item type [positio genus]';
COMMENT ON COLUMN sd.vbap.pos_trd IS 'LFREL — Item is relevant for delivery [positio traditio]';
COMMENT ON COLUMN sd.vbap.fac IS 'FKREL — Relevant for Billing [factura]';
COMMENT ON COLUMN sd.vbap.grd_pos_ixm IS 'UEPOS — Higher-level item in bill of material structures [gradus positio index materiarum]';
COMMENT ON COLUMN sd.vbap.csa_vdt IS 'ABGRU — Reason for rejection of quotations and sales orders [causa venditio]';
COMMENT ON COLUMN sd.vbap.hir IS 'PRODH — Product hierarchy [hierarchia]';
COMMENT ON COLUMN sd.vbap.mta_val_doc IS 'ZWERT — Target Value for Outline Agreement in Document Currency [meta valor documentum]';
COMMENT ON COLUMN sd.vbap.mta_qnt_vdt IS 'ZMENG — Target quantity in sales units [meta quantitas venditio]';
COMMENT ON COLUMN sd.vbap.mta_qnt IS 'ZIEME — Target quantity UoM [meta quantitas]';
COMMENT ON COLUMN sd.vbap.men IS 'MEINS — Base Unit of Measure [mensura]';
COMMENT ON COLUMN sd.vbap.pos_num_mem IS 'POSEX — Item Number of the Underlying Purchase Order [positio numerus mandatum emptionis]';
COMMENT ON COLUMN sd.vbap.mat_num_emp IS 'KDMAT — Material Number Used by Customer [materia numerus emptor]';
COMMENT ON COLUMN sd.vbap.idx IS 'VKAUS — Usage Indicator [index]';
COMMENT ON COLUMN sd.vbap.trd_cts IS 'GRKOR — Delivery group (items are delivered together) [traditio coetus]';
COMMENT ON COLUMN sd.vbap.fac_obx_pos IS 'FAKSP — Billing block for item [factura obex positio]';
COMMENT ON COLUMN sd.vbap.dvs IS 'SPART — Division [divisio]';
COMMENT ON COLUMN sd.vbap.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN sd.vbap.net_val_mnd IS 'NETWR — Net value of the order item in document currency [netus valor mandatum]';
COMMENT ON COLUMN sd.vbap.doc_mon IS 'WAERK — SD Document Currency [documentum moneta]';
COMMENT ON COLUMN sd.vbap.mnd_qnt_vdt IS 'KWMENG — Cumulative Order Quantity in Sales Units [mandatum quantitas venditio]';
COMMENT ON COLUMN sd.vbap.qnt_vdt_uni IS 'KBMENG — Cumulative confirmed quantity in sales unit [quantitas venditio unitas]';
COMMENT ON COLUMN sd.vbap.vdt_uni IS 'VRKME — Sales unit [venditio unitas]';
COMMENT ON COLUMN sd.vbap.grs_pnd_pos IS 'BRGEW — Gross Weight of the Item [crassus pondus positio]';
COMMENT ON COLUMN sd.vbap.net_pnd_pos IS 'NTGEW — Net Weight of the Item [netus pondus positio]';
COMMENT ON COLUMN sd.vbap.pnd_uni IS 'GEWEI — Weight Unit [pondus unitas]';
COMMENT ON COLUMN sd.vbap.vlm_pos IS 'VOLUM — Volume of the item [volumen positio]';
COMMENT ON COLUMN sd.vbap.vlm_uni IS 'VOLEH — Volume unit [volumen unitas]';
COMMENT ON COLUMN sd.vbap.doc IS 'VBELV — Originating document [documentum]';
COMMENT ON COLUMN sd.vbap.pos IS 'POSNV — Originating item [positio]';
COMMENT ON COLUMN sd.vbap.ndo_rfr_doc IS 'VGBEL — Document number of the reference document [numerus documenti referentia documentum]';
COMMENT ON COLUMN sd.vbap.pos_num_rfr IS 'VGPOS — Item number of the reference item [positio numerus referentia]';
COMMENT ON COLUMN sd.vbap.trd IS 'LPRIO — Delivery Priority [traditio]';
COMMENT ON COLUMN sd.vbap.ofc IS 'WERKS — Plant (Own or External) [officina]';
COMMENT ON COLUMN sd.vbap.loc IS 'LGORT — Storage Location [locus repositionis]';
COMMENT ON COLUMN sd.vbap.vstel IS 'VSTEL — Shipping Point/Receiving Point';
COMMENT ON COLUMN sd.vbap.route IS 'ROUTE — Route';
COMMENT ON COLUMN sd.vbap.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN sd.vbap.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN sd.vbap.tmp IS 'ERZET — Entry time [tempus]';
COMMENT ON COLUMN sd.vbap.net_pre IS 'NETPR — Net price [netus pretium]';
COMMENT ON COLUMN sd.vbap.cnd_tax_uni IS 'KPEIN — Condition pricing unit [condicio taxatio unitas]';
COMMENT ON COLUMN sd.vbap.cnd_uni IS 'KMEIN — Condition unit [condicio unitas]';
COMMENT ON COLUMN sd.vbap.pos2 IS 'SHKZG — Returns Item [positio]';
COMMENT ON COLUMN sd.vbap.cts IS 'MTVFP — Checking Group for Availability Check [coetus]';
COMMENT ON COLUMN sd.vbap.mat_tax_cts IS 'KONDM — Material Pricing Group [materia taxatio coetus]';
COMMENT ON COLUMN sd.vbap.rat_asg_cts IS 'KTGRM — Account assignment group for this material [ratio assignatio coetus]';
COMMENT ON COLUMN sd.vbap.vlm_cts IS 'BONUS — Volume rebate group [volumen coetus]';
COMMENT ON COLUMN sd.vbap.cts2 IS 'PROVG — Commission group [coetus]';
COMMENT ON COLUMN sd.vbap.aes_gen IS 'BWTAR — Valuation Type [aestimatio genus]';
COMMENT ON COLUMN sd.vbap.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN sd.vbap.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN sd.vbap.mat_cts2 IS 'MVGR1 — Material group 1 [materia coetus]';
COMMENT ON COLUMN sd.vbap.mat_cts3 IS 'MVGR2 — Material group 2 [materia coetus]';
COMMENT ON COLUMN sd.vbap.cpa_idx IS 'SOBKZ — Special Stock Indicator [copia index]';
COMMENT ON COLUMN sd.vbap.seg_num IS 'PAOBJNR — Profitability Segment Number (CO-PA) [segmentum numerus]';
COMMENT ON COLUMN sd.vbap.ops_elm_eop IS 'PS_PSP_PNR — Work Breakdown Structure Element (WBS Element) [opus elementum elementum operis]';
COMMENT ON COLUMN sd.vbap.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN sd.vbap.rat_asg_ctg IS 'KNTTP — Account Assignment Category [ratio assignatio categoria]';
COMMENT ON COLUMN sd.vbap.obi_num_pos IS 'OBJNR — Object number at item level [obiectum numerus positio]';
COMMENT ON COLUMN sd.vbap.cuobj IS 'CUOBJ — Configuration';
COMMENT ON COLUMN sd.vbap.doc_ctg IS 'VGTYP — Document category of preceding SD document [documentum categoria]';
COMMENT ON COLUMN sd.vbap.num_tcn_grx IS 'KNUMH — Number of condition record from batch determination [numerus tabula condicionis grex]';
COMMENT ON COLUMN sd.vbap.val_pct IS 'WKTNR — Value contract no. [valor pactum]';
COMMENT ON COLUMN sd.vbap.val_pct_pos IS 'WKTPS — Value contract item [valor pactum positio]';
COMMENT ON COLUMN sd.vbap.knuma_pi IS 'KNUMA_PI — Promotion';
COMMENT ON COLUMN sd.vbap.vdt IS 'KNUMA_AG — Sales deal [venditio]';
COMMENT ON COLUMN sd.vbap.trb_sum_doc IS 'MWSBP — Tax amount in document currency [tributum summa documentum]';
COMMENT ON COLUMN sd.vbap.csm IS 'KOSTL — Cost Center [centrum sumptus]';

CREATE TABLE IF NOT EXISTS sd.vbep (
  cli char(3),
  dvd varchar(10),
  dvd_pos varchar(6),
  trd_lor_num varchar(4),
  lor_ctg varchar(2),
  pos_trd varchar(1),
  lor_die date,
  tmp time,
  mnd_qnt_vdt numeric(13,3),
  qnt numeric(13,3),
  vdt_uni varchar(3),
  qnt2 numeric(13,3),
  men varchar(3),
  rqs_die date,
  rqs_gen varchar(2),
  ndo varchar(10),
  pos_num varchar(6),
  lor varchar(4),
  die date,
  pem_num varchar(10),
  gmd varchar(4),
  cnf_sta_lor varchar(1),
  fac_idx varchar(1),
  die2 date,
  cns_die date,
  mat_die date,
  die3 date,
  mrc_die date,
  qnt_vdt_uni numeric(13,3),
  lor_trd varchar(2),
  ems_gen varchar(1),
  pvs_trd_num varchar(10),
  mtm_gen varchar(3),
  pos_num_pem varchar(5),
  lor_gen varchar(1),
  mnd_num varchar(12),
  mnd_num2 varchar(10),
  num varchar(8),
  aulwe varchar(10),
  die_loc date,
  CONSTRAINT vbep_pk PRIMARY KEY (cli, dvd, dvd_pos, trd_lor_num)
);
COMMENT ON TABLE sd.vbep IS 'VBEP — Sales document schedule line data — one or more delivery schedule lines per sales document item, each carrying requested/confirmed quantities and the delivery, material availability, transportation, loading and goods-issue dates the shipping and MRP processes plan against. Sits below VBAP in the SD document hierarchy (VBAK header / VBAP item / VBEP schedule line).';
COMMENT ON COLUMN sd.vbep.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.vbep.dvd IS 'VBELN — Sales Document [documentum venditionis]';
COMMENT ON COLUMN sd.vbep.dvd_pos IS 'POSNR — Sales Document Item [documentum venditionis positio]';
COMMENT ON COLUMN sd.vbep.trd_lor_num IS 'ETENR — Delivery Schedule Line Number [traditio linea ordinis numerus]';
COMMENT ON COLUMN sd.vbep.lor_ctg IS 'ETTYP — Schedule line category [linea ordinis categoria]';
COMMENT ON COLUMN sd.vbep.pos_trd IS 'LFREL — Item is relevant for delivery [positio traditio]';
COMMENT ON COLUMN sd.vbep.lor_die IS 'EDATU — Schedule line date [linea ordinis dies]';
COMMENT ON COLUMN sd.vbep.tmp IS 'EZEIT — Arrival time [tempus]';
COMMENT ON COLUMN sd.vbep.mnd_qnt_vdt IS 'WMENG — Order quantity in sales units [mandatum quantitas venditio]';
COMMENT ON COLUMN sd.vbep.qnt IS 'BMENG — Confirmed Quantity [quantitas]';
COMMENT ON COLUMN sd.vbep.vdt_uni IS 'VRKME — Sales unit [venditio unitas]';
COMMENT ON COLUMN sd.vbep.qnt2 IS 'LMENG — Required quantity for mat.management in stockkeeping units [quantitas]';
COMMENT ON COLUMN sd.vbep.men IS 'MEINS — Base Unit of Measure [mensura]';
COMMENT ON COLUMN sd.vbep.rqs_die IS 'BDDAT — Requirement date (deadline for procurement) [requisitum dies]';
COMMENT ON COLUMN sd.vbep.rqs_gen IS 'BDART — Requirement type [requisitum genus]';
COMMENT ON COLUMN sd.vbep.ndo IS 'VBELE — Business document number [numerus documenti]';
COMMENT ON COLUMN sd.vbep.pos_num IS 'POSNE — Business item number [positio numerus]';
COMMENT ON COLUMN sd.vbep.lor IS 'ETENE — Schedule line [linea ordinis]';
COMMENT ON COLUMN sd.vbep.die IS 'RSDAT — Earliest possible reservation date [dies]';
COMMENT ON COLUMN sd.vbep.pem_num IS 'BANFN — Purchase Requisition Number [petitio emptionis numerus]';
COMMENT ON COLUMN sd.vbep.gmd IS 'BSART — Order Type (Purchasing) [genus mandati]';
COMMENT ON COLUMN sd.vbep.cnf_sta_lor IS 'WEPOS — Confirmation status of schedule line (incl.ALE) [confirmatio status linea ordinis]';
COMMENT ON COLUMN sd.vbep.fac_idx IS 'REPOS — Invoice Receipt Indicator [factura index]';
COMMENT ON COLUMN sd.vbep.die2 IS 'LRGDT — Return date for returnable packaging [dies]';
COMMENT ON COLUMN sd.vbep.cns_die IS 'TDDAT — Transportation Planning Date [consilium dies]';
COMMENT ON COLUMN sd.vbep.mat_die IS 'MBDAT — Material Staging/Availability Date [materia dies]';
COMMENT ON COLUMN sd.vbep.die3 IS 'LDDAT — Loading Date [dies]';
COMMENT ON COLUMN sd.vbep.mrc_die IS 'WADAT — Goods Issue Date [merces dies]';
COMMENT ON COLUMN sd.vbep.qnt_vdt_uni IS 'CMENG — Corrected quantity in sales unit [quantitas venditio unitas]';
COMMENT ON COLUMN sd.vbep.lor_trd IS 'LIFSP — Schedule line blocked for delivery [linea ordinis traditio]';
COMMENT ON COLUMN sd.vbep.ems_gen IS 'ABART — Release type [emissio genus]';
COMMENT ON COLUMN sd.vbep.pvs_trd_num IS 'ABRUF — Forecast Delivery schedule number [praevisio traditio numerus]';
COMMENT ON COLUMN sd.vbep.mtm_gen IS 'BWART — Movement Type (Inventory Management) [motus genus]';
COMMENT ON COLUMN sd.vbep.pos_num_pem IS 'BNFPO — Item Number of Purchase Requisition [positio numerus petitio emptionis]';
COMMENT ON COLUMN sd.vbep.lor_gen IS 'ETART — Schedule line type EDI [linea ordinis genus]';
COMMENT ON COLUMN sd.vbep.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN sd.vbep.mnd_num2 IS 'PLNUM — Planned order number [mandatum numerus]';
COMMENT ON COLUMN sd.vbep.num IS 'SERNR — BOM explosion number [numerus]';
COMMENT ON COLUMN sd.vbep.aulwe IS 'AULWE — Route Schedule';
COMMENT ON COLUMN sd.vbep.die_loc IS 'HANDOVERDATE — Handover Date at the Handover Location [dies locus]';

CREATE TABLE IF NOT EXISTS sd.vbkd (
  cli char(3),
  vdt_ndo varchar(10),
  pos_num_doc varchar(6),
  pre_cts_emp varchar(2),
  emp_cts varchar(2),
  vdt varchar(6),
  pre_gen varchar(2),
  inco1 varchar(3),
  inco2 varchar(28),
  fac varchar(2),
  fac2 varchar(2),
  rpm numeric(9,5),
  val varchar(2),
  val_die date,
  sol_clv varchar(4),
  sol varchar(1),
  rat_asg_cts varchar(2),
  rpm_pre numeric(9,5),
  die_tax_rpm date,
  fac_die_idx date,
  die date,
  anf varchar(4),
  ins_per varchar(3),
  rpm_stt numeric(9,5),
  fac_cns_num varchar(10),
  waktion varchar(10),
  num varchar(4),
  emp_mem_num varchar(35),
  emp_mem_die date,
  emp_mem_gen varchar(4),
  rfr varchar(12),
  mem_num varchar(35),
  die2 date,
  val_pct_mon varchar(5),
  rpm_val_pct numeric(9,5),
  trd_tmp varchar(3),
  idx varchar(2),
  fac_frm varchar(2),
  gen varchar(2),
  idx2 varchar(4),
  afn varchar(16),
  pct_rat_num varchar(12),
  CONSTRAINT vbkd_pk PRIMARY KEY (cli, vdt_ndo, pos_num_doc)
);
COMMENT ON TABLE sd.vbkd IS 'VBKD — Sales document business data — header- and item-level commercial terms (price group, Incoterms, payment terms, exchange rates for pricing, billing plan reference, customer PO reference) that condition the pricing and billing of a sales document. Can occur once per document (header, POSNR = ''000000'') or per item where item-specific business data overrides the header. SAP''s real table carries roughly 130 fields, many industry-specific (IS-OIL, tax, SEPA); this definition is scoped to the key, pricing/currency, payment, and reference fields the SD pricing and billing model consumes — never silent';
COMMENT ON COLUMN sd.vbkd.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.vbkd.vdt_ndo IS 'VBELN — Sales and Distribution Document Number [venditio numerus documenti]';
COMMENT ON COLUMN sd.vbkd.pos_num_doc IS 'POSNR — Item number of the SD document [positio numerus documentum]';
COMMENT ON COLUMN sd.vbkd.pre_cts_emp IS 'KONDA — Price group (customer) [pretium coetus emptor]';
COMMENT ON COLUMN sd.vbkd.emp_cts IS 'KDGRP — Customer group [emptor coetus]';
COMMENT ON COLUMN sd.vbkd.vdt IS 'BZIRK — Sales district [venditio]';
COMMENT ON COLUMN sd.vbkd.pre_gen IS 'PLTYP — Price list type [pretium genus]';
COMMENT ON COLUMN sd.vbkd.inco1 IS 'INCO1 — Incoterms (Part 1)';
COMMENT ON COLUMN sd.vbkd.inco2 IS 'INCO2 — Incoterms (Part 2)';
COMMENT ON COLUMN sd.vbkd.fac IS 'PERFK — Invoice dates (calendar identification) [factura]';
COMMENT ON COLUMN sd.vbkd.fac2 IS 'PERRL — Invoice list schedule (calendar identification) [factura]';
COMMENT ON COLUMN sd.vbkd.rpm IS 'KURRF — Exchange rate for FI postings [ratio permutationis]';
COMMENT ON COLUMN sd.vbkd.val IS 'VALTG — Additional value days [valor]';
COMMENT ON COLUMN sd.vbkd.val_die IS 'VALDT — Fixed value date [valor dies]';
COMMENT ON COLUMN sd.vbkd.sol_clv IS 'ZTERM — Terms of Payment Key [solutio clavis]';
COMMENT ON COLUMN sd.vbkd.sol IS 'ZLSCH — Payment Method [solutio]';
COMMENT ON COLUMN sd.vbkd.rat_asg_cts IS 'KTGRD — Account assignment group for this customer [ratio assignatio coetus]';
COMMENT ON COLUMN sd.vbkd.rpm_pre IS 'KURSK — Exchange Rate for Price Determination [ratio permutationis pretium]';
COMMENT ON COLUMN sd.vbkd.die_tax_rpm IS 'PRSDT — Date for pricing and exchange rate [dies taxatio ratio permutationis]';
COMMENT ON COLUMN sd.vbkd.fac_die_idx IS 'FKDAT — Billing date for billing index and printout [factura dies index]';
COMMENT ON COLUMN sd.vbkd.die IS 'FBUDA — Date on which services rendered [dies]';
COMMENT ON COLUMN sd.vbkd.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN sd.vbkd.ins_per IS 'POPER — Posting period [inscriptio periodus]';
COMMENT ON COLUMN sd.vbkd.rpm_stt IS 'STCUR — Exchange rate for statistics [ratio permutationis statistica]';
COMMENT ON COLUMN sd.vbkd.fac_cns_num IS 'FPLNR — Billing plan number / invoicing plan number [factura consilium numerus]';
COMMENT ON COLUMN sd.vbkd.waktion IS 'WAKTION — Promotion';
COMMENT ON COLUMN sd.vbkd.num IS 'ABTNR — Department number [numerus]';
COMMENT ON COLUMN sd.vbkd.emp_mem_num IS 'BSTKD — Customer purchase order number [emptor mandatum emptionis numerus]';
COMMENT ON COLUMN sd.vbkd.emp_mem_die IS 'BSTDK — Customer purchase order date [emptor mandatum emptionis dies]';
COMMENT ON COLUMN sd.vbkd.emp_mem_gen IS 'BSARK — Customer purchase order type [emptor mandatum emptionis genus]';
COMMENT ON COLUMN sd.vbkd.rfr IS 'IHREZ — Your Reference [referentia]';
COMMENT ON COLUMN sd.vbkd.mem_num IS 'BSTKD_E — Ship-to Party''s Purchase Order Number [mandatum emptionis numerus]';
COMMENT ON COLUMN sd.vbkd.die2 IS 'BSTDK_E — Ship-to party''s PO date [dies]';
COMMENT ON COLUMN sd.vbkd.val_pct_mon IS 'WKWAE — Value contract currency [valor pactum moneta]';
COMMENT ON COLUMN sd.vbkd.rpm_val_pct IS 'WKKUR — Exchange rate in value contract currency [ratio permutationis valor pactum]';
COMMENT ON COLUMN sd.vbkd.trd_tmp IS 'DELCO — Agreed delivery time [traditio tempus]';
COMMENT ON COLUMN sd.vbkd.idx IS 'BEMOT — Accounting Indicator [index]';
COMMENT ON COLUMN sd.vbkd.fac_frm IS 'FAKTF — Billing form [factura forma]';
COMMENT ON COLUMN sd.vbkd.gen IS 'VSART — Shipping type [genus]';
COMMENT ON COLUMN sd.vbkd.idx2 IS 'SDABW — Special processing indicator [index]';
COMMENT ON COLUMN sd.vbkd.afn IS 'FKBER — Functional Area [area functionis]';
COMMENT ON COLUMN sd.vbkd.pct_rat_num IS 'VKONT — Contract Account Number [pactum ratio numerus]';

CREATE TABLE IF NOT EXISTS sd.vbpa (
  cli char(3),
  vdt_ndo varchar(10),
  pos_num_doc varchar(6),
  scs varchar(2),
  emp_num varchar(10),
  rat_num_ven varchar(10),
  nps varchar(8),
  num_psn varchar(10),
  dml varchar(10),
  ablad varchar(25),
  ptr_clv varchar(3),
  dml_idx varchar(1),
  idx_rat_tmp varchar(1),
  emp_hir_gen varchar(1),
  pre varchar(1),
  idx_emp varchar(1),
  grd_num_hir varchar(2),
  emp_dsc_scs varchar(30),
  mrc varchar(10),
  asg_hir varchar(2),
  num varchar(20),
  idx varchar(1),
  psn_num varchar(10),
  kale varchar(1),
  CONSTRAINT vbpa_pk PRIMARY KEY (cli, vdt_ndo, pos_num_doc, scs)
);
COMMENT ON TABLE sd.vbpa IS 'VBPA — Sales document partner — the partner-function table that answers who the sold-to, ship-to, payer, and bill-to actually were on a given sales document (header, POSNR = ''000000'') or item, each row keyed by PARVW (partner function, e.g. AG sold-to, WE ship-to, RE bill-to, RG payer) and resolving to a customer (KUNNR) or vendor (LIFNR).';
COMMENT ON COLUMN sd.vbpa.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.vbpa.vdt_ndo IS 'VBELN — Sales and Distribution Document Number [venditio numerus documenti]';
COMMENT ON COLUMN sd.vbpa.pos_num_doc IS 'POSNR — Item number of the SD document [positio numerus documentum]';
COMMENT ON COLUMN sd.vbpa.scs IS 'PARVW — Partner Function [socius]';
COMMENT ON COLUMN sd.vbpa.emp_num IS 'KUNNR — Customer Number [emptor numerus]';
COMMENT ON COLUMN sd.vbpa.rat_num_ven IS 'LIFNR — Account Number of Vendor or Creditor [ratio numerus venditor]';
COMMENT ON COLUMN sd.vbpa.nps IS 'PERNR — Personnel Number [numerus personae]';
COMMENT ON COLUMN sd.vbpa.num_psn IS 'PARNR — Number of contact person [numerus persona]';
COMMENT ON COLUMN sd.vbpa.dml IS 'ADRNR — Address [domicilium]';
COMMENT ON COLUMN sd.vbpa.ablad IS 'ABLAD — Unloading Point';
COMMENT ON COLUMN sd.vbpa.ptr_clv IS 'LAND1 — Country Key [patria clavis]';
COMMENT ON COLUMN sd.vbpa.dml_idx IS 'ADRDA — Address indicator [domicilium index]';
COMMENT ON COLUMN sd.vbpa.idx_rat_tmp IS 'XCPDK — Indicator: Is the account a one-time account? [index ratio tempus]';
COMMENT ON COLUMN sd.vbpa.emp_hir_gen IS 'HITYP — Customer hierarchy type [emptor hierarchia genus]';
COMMENT ON COLUMN sd.vbpa.pre IS 'PRFRE — Relevant for price determination ID [pretium]';
COMMENT ON COLUMN sd.vbpa.idx_emp IS 'BOKRE — Indicator: Customer Is Rebate-Relevant [index emptor]';
COMMENT ON COLUMN sd.vbpa.grd_num_hir IS 'HISTUNR — Level number within hierarchy [gradus numerus hierarchia]';
COMMENT ON COLUMN sd.vbpa.emp_dsc_scs IS 'KNREF — Customer description of partner (plant, storage location) [emptor descriptio socius]';
COMMENT ON COLUMN sd.vbpa.mrc IS 'LZONE — Transportation zone to or from which the goods are delivered [merces]';
COMMENT ON COLUMN sd.vbpa.asg_hir IS 'HZUOR — Assignment to Hierarchy [assignatio hierarchia]';
COMMENT ON COLUMN sd.vbpa.num IS 'STCEG — VAT Registration Number [numerus]';
COMMENT ON COLUMN sd.vbpa.idx IS 'PARVW_FF — Indicator ''further partners in this function'' (VBPA2) [index]';
COMMENT ON COLUMN sd.vbpa.psn_num IS 'ADRNP — Person number [persona numerus]';
COMMENT ON COLUMN sd.vbpa.kale IS 'KALE — Maintain appointments in calendar';

CREATE TABLE IF NOT EXISTS sd.vbrk (
  cli char(3),
  fac_doc varchar(10),
  fac_gen varchar(4),
  fac_ctg text,
  doc_ctg text,
  doc_mon varchar(5),
  ovd varchar(4),
  cds varchar(2),
  vdt_tax varchar(6),
  num_doc_cnd text,
  vsbed varchar(2),
  fac_die_idx text,
  ndo text,
  anf text,
  ins_per text,
  emp_cts varchar(2),
  vdt varchar(6),
  inco1 varchar(3),
  inco2 text,
  sta text,
  sol_clv text,
  sol varchar(1),
  ptr varchar(3),
  reg varchar(3),
  soc varchar(4),
  net_val_doc varchar(2),
  nom_psn_cre text,
  tmp text,
  die_tbl_cre text,
  kunrg varchar(10),
  kunag varchar(10),
  stt_mon varchar(5),
  num varchar(10),
  num2 text,
  mut text,
  fac_ndo varchar(10),
  knuma varchar(10),
  rpm_gen varchar(4),
  dvs varchar(2),
  afd varchar(4),
  emp_rat_num varchar(10),
  cvm_afd varchar(5),
  emp_mem_num text,
  soc_sng varchar(6),
  rfr_ndo text,
  asg_num text,
  trb_sum_doc varchar(2),
  logsys text,
  fac_doc2 text,
  num_sol_cns varchar(10),
  bupla varchar(4),
  csa_rvs varchar(2),
  CONSTRAINT vbrk_pk PRIMARY KEY (cli, fac_doc)
);
COMMENT ON TABLE sd.vbrk IS 'VBRK — Billing document header data — invoice/credit/debit memo header, links to FI via BELNR.';
COMMENT ON COLUMN sd.vbrk.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.vbrk.fac_doc IS 'VBELN — Billing Document [factura documentum]';
COMMENT ON COLUMN sd.vbrk.fac_gen IS 'FKART — Billing Type [factura genus]';
COMMENT ON COLUMN sd.vbrk.fac_ctg IS 'FKTYP — Billing category [factura categoria]';
COMMENT ON COLUMN sd.vbrk.doc_ctg IS 'VBTYP — SD document category [documentum categoria]';
COMMENT ON COLUMN sd.vbrk.doc_mon IS 'WAERK — SD Document Currency [documentum moneta]';
COMMENT ON COLUMN sd.vbrk.ovd IS 'VKORG — Sales Organization [organizatio venditionis]';
COMMENT ON COLUMN sd.vbrk.cds IS 'VTWEG — Distribution Channel [canalis distributionis]';
COMMENT ON COLUMN sd.vbrk.vdt_tax IS 'KALSM — Sales and Distribution: Pricing Procedure in Pricing [venditio taxatio]';
COMMENT ON COLUMN sd.vbrk.num_doc_cnd IS 'KNUMV — Number of the document condition [numerus documentum condicio]';
COMMENT ON COLUMN sd.vbrk.vsbed IS 'VSBED — Shipping Conditions';
COMMENT ON COLUMN sd.vbrk.fac_die_idx IS 'FKDAT — Billing date for billing index and printout [factura dies index]';
COMMENT ON COLUMN sd.vbrk.ndo IS 'BELNR — Accounting Document Number [numerus documenti]';
COMMENT ON COLUMN sd.vbrk.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN sd.vbrk.ins_per IS 'POPER — Posting period [inscriptio periodus]';
COMMENT ON COLUMN sd.vbrk.emp_cts IS 'KDGRP — Customer group [emptor coetus]';
COMMENT ON COLUMN sd.vbrk.vdt IS 'BZIRK — Sales district [venditio]';
COMMENT ON COLUMN sd.vbrk.inco1 IS 'INCO1 — Incoterms (Part 1)';
COMMENT ON COLUMN sd.vbrk.inco2 IS 'INCO2 — Incoterms (Part 2)';
COMMENT ON COLUMN sd.vbrk.sta IS 'RFBSK — Status for transfer to accounting [status]';
COMMENT ON COLUMN sd.vbrk.sol_clv IS 'ZTERM — Terms of Payment Key [solutio clavis]';
COMMENT ON COLUMN sd.vbrk.sol IS 'ZLSCH — Payment Method [solutio]';
COMMENT ON COLUMN sd.vbrk.ptr IS 'LAND1 — Country of Destination [patria]';
COMMENT ON COLUMN sd.vbrk.reg IS 'REGIO — Region (State, Province, County) [regio]';
COMMENT ON COLUMN sd.vbrk.soc IS 'BUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN sd.vbrk.net_val_doc IS 'NETWR — Net Value in Document Currency [netus valor documentum]';
COMMENT ON COLUMN sd.vbrk.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN sd.vbrk.tmp IS 'ERZET — Entry time [tempus]';
COMMENT ON COLUMN sd.vbrk.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN sd.vbrk.kunrg IS 'KUNRG — Payer';
COMMENT ON COLUMN sd.vbrk.kunag IS 'KUNAG — Sold-to party';
COMMENT ON COLUMN sd.vbrk.stt_mon IS 'STWAE — Statistics currency [statistica moneta]';
COMMENT ON COLUMN sd.vbrk.num IS 'EXNUM — Number of foreign trade data in MM and SD documents [numerus]';
COMMENT ON COLUMN sd.vbrk.num2 IS 'STCEG — VAT Registration Number [numerus]';
COMMENT ON COLUMN sd.vbrk.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN sd.vbrk.fac_ndo IS 'SFAKN — Cancelled billing document number [factura numerus documenti]';
COMMENT ON COLUMN sd.vbrk.knuma IS 'KNUMA — Agreement (various conditions grouped together)';
COMMENT ON COLUMN sd.vbrk.rpm_gen IS 'KURST — Exchange Rate Type [ratio permutationis genus]';
COMMENT ON COLUMN sd.vbrk.dvs IS 'SPART — Division [divisio]';
COMMENT ON COLUMN sd.vbrk.afd IS 'KKBER — Credit control area [area fidei]';
COMMENT ON COLUMN sd.vbrk.emp_rat_num IS 'KNKLI — Customer''s account number with credit limit reference [emptor ratio numerus]';
COMMENT ON COLUMN sd.vbrk.cvm_afd IS 'CMWAE — Currency key of credit control area [clavis monetae area fidei]';
COMMENT ON COLUMN sd.vbrk.emp_mem_num IS 'BSTNK_VF — Customer purchase order number [emptor mandatum emptionis numerus]';
COMMENT ON COLUMN sd.vbrk.soc_sng IS 'VBUND — Company ID of trading partner [societas socius negotiationis]';
COMMENT ON COLUMN sd.vbrk.rfr_ndo IS 'XBLNR — Reference Document Number [referentia numerus documenti]';
COMMENT ON COLUMN sd.vbrk.asg_num IS 'ZUONR — Assignment number [assignatio numerus]';
COMMENT ON COLUMN sd.vbrk.trb_sum_doc IS 'MWSBK — Tax amount in document currency [tributum summa documentum]';
COMMENT ON COLUMN sd.vbrk.logsys IS 'LOGSYS — Logical system';
COMMENT ON COLUMN sd.vbrk.fac_doc2 IS 'FKSTO — Billing document is cancelled [factura documentum]';
COMMENT ON COLUMN sd.vbrk.num_sol_cns IS 'RPLNR — Number of payment card plan type [numerus solutio consilium]';
COMMENT ON COLUMN sd.vbrk.bupla IS 'BUPLA — Business Place';
COMMENT ON COLUMN sd.vbrk.csa_rvs IS 'STGRD — Reason for Reversal [causa reversio]';

CREATE TABLE IF NOT EXISTS sd.vbrp (
  cli char(3),
  fac_doc varchar(10),
  fac_pos varchar(6),
  acl_qnt varchar(3),
  vdt_uni varchar(3),
  men varchar(3),
  net_pnd varchar(3),
  grs_pnd varchar(3),
  pnd_uni varchar(3),
  vlm varchar(3),
  vlm_uni varchar(3),
  ang varchar(4),
  die_tax_rpm text,
  die text,
  net_val_fac varchar(2),
  doc varchar(10),
  pos varchar(6),
  ndo_rfr_doc varchar(10),
  pos_num_rfr varchar(6),
  doc_ctg text,
  dvd varchar(10),
  dvd_pos varchar(6),
  mat_num varchar(18),
  txt_vdt_mnd text,
  tax_rfr_mat varchar(18),
  grx_num varchar(10),
  mat_cts varchar(9),
  dvd_pos_ctg text,
  hir varchar(18),
  vstel varchar(4),
  dvs varchar(2),
  ofc varchar(4),
  ptr_mrc varchar(3),
  mat_tax_cts varchar(2),
  rat_asg_cts varchar(2),
  csm text,
  vlm_cts varchar(2),
  cts varchar(2),
  vdt_cts varchar(3),
  vdt varchar(4),
  nom_psn_cre text,
  die_tbl_cre text,
  tmp text,
  aes_gen varchar(10),
  loc varchar(4),
  smp_doc_mon varchar(2),
  clu text,
  amd varchar(4),
  seg_num text,
  ops_elm_eop text,
  mnd_num varchar(12),
  trb text,
  fac_cns_num varchar(10),
  pos_fac_cns text,
  trb_sum_doc varchar(2),
  trb_vdt_cod text,
  val_pct varchar(10),
  val_pct_pos varchar(6),
  pos_txt text,
  pct_num text,
  ctg text,
  logsys text,
  CONSTRAINT vbrp_pk PRIMARY KEY (cli, fac_doc, fac_pos)
);
COMMENT ON TABLE sd.vbrp IS 'VBRP — Billing document item data — invoiced quantities and net/tax values per billing line.';
COMMENT ON COLUMN sd.vbrp.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.vbrp.fac_doc IS 'VBELN — Billing Document [factura documentum]';
COMMENT ON COLUMN sd.vbrp.fac_pos IS 'POSNR — Billing item [factura positio]';
COMMENT ON COLUMN sd.vbrp.acl_qnt IS 'FKIMG — Actual Invoiced Quantity [actualis quantitas]';
COMMENT ON COLUMN sd.vbrp.vdt_uni IS 'VRKME — Sales unit [venditio unitas]';
COMMENT ON COLUMN sd.vbrp.men IS 'MEINS — Base Unit of Measure [mensura]';
COMMENT ON COLUMN sd.vbrp.net_pnd IS 'NTGEW — Net weight [netus pondus]';
COMMENT ON COLUMN sd.vbrp.grs_pnd IS 'BRGEW — Gross weight [crassus pondus]';
COMMENT ON COLUMN sd.vbrp.pnd_uni IS 'GEWEI — Weight Unit [pondus unitas]';
COMMENT ON COLUMN sd.vbrp.vlm IS 'VOLUM — Volume [volumen]';
COMMENT ON COLUMN sd.vbrp.vlm_uni IS 'VOLEH — Volume unit [volumen unitas]';
COMMENT ON COLUMN sd.vbrp.ang IS 'GSBER — Business Area [area negotii]';
COMMENT ON COLUMN sd.vbrp.die_tax_rpm IS 'PRSDT — Date for pricing and exchange rate [dies taxatio ratio permutationis]';
COMMENT ON COLUMN sd.vbrp.die IS 'FBUDA — Date on which services rendered [dies]';
COMMENT ON COLUMN sd.vbrp.net_val_fac IS 'NETWR — Net value of the billing item in document currency [netus valor factura]';
COMMENT ON COLUMN sd.vbrp.doc IS 'VBELV — Originating document [documentum]';
COMMENT ON COLUMN sd.vbrp.pos IS 'POSNV — Originating item [positio]';
COMMENT ON COLUMN sd.vbrp.ndo_rfr_doc IS 'VGBEL — Document number of the reference document [numerus documenti referentia documentum]';
COMMENT ON COLUMN sd.vbrp.pos_num_rfr IS 'VGPOS — Item number of the reference item [positio numerus referentia]';
COMMENT ON COLUMN sd.vbrp.doc_ctg IS 'VGTYP — Document category of preceding SD document [documentum categoria]';
COMMENT ON COLUMN sd.vbrp.dvd IS 'AUBEL — Sales Document [documentum venditionis]';
COMMENT ON COLUMN sd.vbrp.dvd_pos IS 'AUPOS — Sales Document Item [documentum venditionis positio]';
COMMENT ON COLUMN sd.vbrp.mat_num IS 'MATNR — Material Number [materia numerus]';
COMMENT ON COLUMN sd.vbrp.txt_vdt_mnd IS 'ARKTX — Short text for sales order item [textus venditio mandatum]';
COMMENT ON COLUMN sd.vbrp.tax_rfr_mat IS 'PMATN — Pricing Reference Material [taxatio referentia materia]';
COMMENT ON COLUMN sd.vbrp.grx_num IS 'CHARG — Batch Number [grex numerus]';
COMMENT ON COLUMN sd.vbrp.mat_cts IS 'MATKL — Material Group [materia coetus]';
COMMENT ON COLUMN sd.vbrp.dvd_pos_ctg IS 'PSTYV — Sales document item category [documentum venditionis positio categoria]';
COMMENT ON COLUMN sd.vbrp.hir IS 'PRODH — Product hierarchy [hierarchia]';
COMMENT ON COLUMN sd.vbrp.vstel IS 'VSTEL — Shipping Point/Receiving Point';
COMMENT ON COLUMN sd.vbrp.dvs IS 'SPART — Division [divisio]';
COMMENT ON COLUMN sd.vbrp.ofc IS 'WERKS — Plant [officina]';
COMMENT ON COLUMN sd.vbrp.ptr_mrc IS 'ALAND — Departure country (country from which the goods are sent) [patria merces]';
COMMENT ON COLUMN sd.vbrp.mat_tax_cts IS 'KONDM — Material Pricing Group [materia taxatio coetus]';
COMMENT ON COLUMN sd.vbrp.rat_asg_cts IS 'KTGRM — Account assignment group for this material [ratio assignatio coetus]';
COMMENT ON COLUMN sd.vbrp.csm IS 'KOSTL — Cost Center [centrum sumptus]';
COMMENT ON COLUMN sd.vbrp.vlm_cts IS 'BONUS — Volume rebate group [volumen coetus]';
COMMENT ON COLUMN sd.vbrp.cts IS 'PROVG — Commission group [coetus]';
COMMENT ON COLUMN sd.vbrp.vdt_cts IS 'VKGRP — Sales Group [venditio coetus]';
COMMENT ON COLUMN sd.vbrp.vdt IS 'VKBUR — Sales Office [venditio]';
COMMENT ON COLUMN sd.vbrp.nom_psn_cre IS 'ERNAM — Name of Person who Created the Object [nomen persona creatus]';
COMMENT ON COLUMN sd.vbrp.die_tbl_cre IS 'ERDAT — Date on Which Record Was Created [dies tabula creatus]';
COMMENT ON COLUMN sd.vbrp.tmp IS 'ERZET — Entry time [tempus]';
COMMENT ON COLUMN sd.vbrp.aes_gen IS 'BWTAR — Valuation Type [aestimatio genus]';
COMMENT ON COLUMN sd.vbrp.loc IS 'LGORT — Storage Location [locus repositionis]';
COMMENT ON COLUMN sd.vbrp.smp_doc_mon IS 'WAVWR — Cost in document currency [sumptus documentum moneta]';
COMMENT ON COLUMN sd.vbrp.clu IS 'PRCTR — Profit Center [centrum lucri]';
COMMENT ON COLUMN sd.vbrp.amd IS 'KOKRS — Controlling Area [area moderationis]';
COMMENT ON COLUMN sd.vbrp.seg_num IS 'PAOBJNR — Profitability Segment Number (CO-PA) [segmentum numerus]';
COMMENT ON COLUMN sd.vbrp.ops_elm_eop IS 'PS_PSP_PNR — Work Breakdown Structure Element (WBS Element) [opus elementum elementum operis]';
COMMENT ON COLUMN sd.vbrp.mnd_num IS 'AUFNR — Order Number [mandatum numerus]';
COMMENT ON COLUMN sd.vbrp.trb IS 'TXJCD — Tax Jurisdiction [tributum]';
COMMENT ON COLUMN sd.vbrp.fac_cns_num IS 'FPLNR — Billing plan number / invoicing plan number [factura consilium numerus]';
COMMENT ON COLUMN sd.vbrp.pos_fac_cns IS 'FPLTR — Item for billing plan/invoice plan/payment cards [positio factura consilium]';
COMMENT ON COLUMN sd.vbrp.trb_sum_doc IS 'MWSBP — Tax amount in document currency [tributum summa documentum]';
COMMENT ON COLUMN sd.vbrp.trb_vdt_cod IS 'MWSKZ — Tax on sales/purchases code [tributum venditio codex]';
COMMENT ON COLUMN sd.vbrp.val_pct IS 'WKTNR — Value contract no. [valor pactum]';
COMMENT ON COLUMN sd.vbrp.val_pct_pos IS 'WKTPS — Value contract item [valor pactum positio]';
COMMENT ON COLUMN sd.vbrp.pos_txt IS 'SGTXT — Item Text [positio textus]';
COMMENT ON COLUMN sd.vbrp.pct_num IS 'VERTN — Contract Number [pactum numerus]';
COMMENT ON COLUMN sd.vbrp.ctg IS 'RRREL — Revenue recognition category [categoria]';
COMMENT ON COLUMN sd.vbrp.logsys IS 'LOGSYS — Logical system';

CREATE TABLE IF NOT EXISTS sd.vbuk (
  cli char(3),
  vdt_ndo varchar(10),
  rfr_doc_cap varchar(1),
  tot_rfr_sta varchar(1),
  cnf_sta varchar(1),
  trd_sta varchar(1),
  trd_sta2 varchar(1),
  tot_mtm_sta varchar(1),
  fac_sta varchar(1),
  fac_sta_mnd varchar(1),
  ins_sta_fac varchar(1),
  sta_doc varchar(1),
  sta_doc2 varchar(1),
  sta varchar(1),
  sta_hor varchar(1),
  sta_cap varchar(1),
  cap_sta_trd varchar(1),
  cap_sta_fac varchar(1),
  doc_tax varchar(1),
  doc_ctg varchar(1),
  doc_obi varchar(1),
  mut date,
  fac_sta2 varchar(1),
  fac_sta_doc varchar(1),
  sta2 varchar(1),
  sta_crd varchar(1),
  cns_sta varchar(1),
  sta_cnf varchar(1),
  cnf_sta2 varchar(1),
  ems varchar(4),
  sta3 varchar(1),
  uni_cpa varchar(1),
  sta4 varchar(1),
  idx_doc varchar(1),
  fac_obx_sta varchar(1),
  trd_obx_sta varchar(1),
  sta5 varchar(1),
  sta_cap_grd varchar(1),
  doc_ctg2 varchar(4),
  CONSTRAINT vbuk_pk PRIMARY KEY (cli, vdt_ndo)
);
COMMENT ON TABLE sd.vbuk IS 'VBUK — Sales document header status and administrative data — the overall header-level status of a sales document across confirmation, delivery, goods movement, billing, credit checks, picking, packing, and rejection. NOTE ON RELEASE: VBUK is an ECC-era status table. In S/4HANA, SAP replaced VBUK (and its item-level counterpart VBUP) with status fields carried directly on VBAK (header) and VBAP (item) — VBUK/VBUP still exist as compatibility views/tables in S/4HANA for backward compatibility, but new status logic reads VBAK/VBAP directly. This model must read both releases: consult VBUK/VBUP for ECC ';
COMMENT ON COLUMN sd.vbuk.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.vbuk.vdt_ndo IS 'VBELN — Sales and Distribution Document Number [venditio numerus documenti]';
COMMENT ON COLUMN sd.vbuk.rfr_doc_cap IS 'RFSTK — Reference document header status [referentia documentum caput]';
COMMENT ON COLUMN sd.vbuk.tot_rfr_sta IS 'RFGSK — Total reference status of all items [summa totalis referentia status]';
COMMENT ON COLUMN sd.vbuk.cnf_sta IS 'BESTK — Confirmation status [confirmatio status]';
COMMENT ON COLUMN sd.vbuk.trd_sta IS 'LFSTK — Delivery status [traditio status]';
COMMENT ON COLUMN sd.vbuk.trd_sta2 IS 'LFGSK — Overall delivery status for all items [traditio status]';
COMMENT ON COLUMN sd.vbuk.tot_mtm_sta IS 'WBSTK — Total goods movement status [summa totalis motus mercium status]';
COMMENT ON COLUMN sd.vbuk.fac_sta IS 'FKSTK — Billing status [factura status]';
COMMENT ON COLUMN sd.vbuk.fac_sta_mnd IS 'FKSAK — Billing status (order-related billing document) [factura status mandatum]';
COMMENT ON COLUMN sd.vbuk.ins_sta_fac IS 'BUCHK — Posting Status of Billing Document [inscriptio status factura]';
COMMENT ON COLUMN sd.vbuk.sta_doc IS 'ABSTK — Overall rejection status of all document items [status documentum]';
COMMENT ON COLUMN sd.vbuk.sta_doc2 IS 'GBSTK — Overall processing status of document [status documentum]';
COMMENT ON COLUMN sd.vbuk.sta IS 'KOSTK — Overall picking / putaway status [status]';
COMMENT ON COLUMN sd.vbuk.sta_hor IS 'LVSTK — Overall status of warehouse management activities [status horreum]';
COMMENT ON COLUMN sd.vbuk.sta_cap IS 'UVALL — General incompletion status of the header [status caput]';
COMMENT ON COLUMN sd.vbuk.cap_sta_trd IS 'UVVLK — Header incompletion status concerning delivery [caput status traditio]';
COMMENT ON COLUMN sd.vbuk.cap_sta_fac IS 'UVFAK — Header incompletion status with respect to billing [caput status factura]';
COMMENT ON COLUMN sd.vbuk.doc_tax IS 'UVPRS — Document is incomplete with respect to pricing [documentum taxatio]';
COMMENT ON COLUMN sd.vbuk.doc_ctg IS 'VBTYP — SD document category [documentum categoria]';
COMMENT ON COLUMN sd.vbuk.doc_obi IS 'VBOBJ — SD document object [documentum obiectum]';
COMMENT ON COLUMN sd.vbuk.mut IS 'AEDAT — Changed On [mutatus]';
COMMENT ON COLUMN sd.vbuk.fac_sta2 IS 'FKIVK — Billing totals status for intercompany billing [factura status]';
COMMENT ON COLUMN sd.vbuk.fac_sta_doc IS 'RELIK — Invoice list status of billing document [factura status documentum]';
COMMENT ON COLUMN sd.vbuk.sta2 IS 'PKSTK — Overall packing status of all items [status]';
COMMENT ON COLUMN sd.vbuk.sta_crd IS 'CMGST — Overall status of credit checks [status creditum]';
COMMENT ON COLUMN sd.vbuk.cns_sta IS 'TRSTA — Transportation planning status [consilium status]';
COMMENT ON COLUMN sd.vbuk.sta_cnf IS 'KOQUK — Status of pick confirmation [status confirmatio]';
COMMENT ON COLUMN sd.vbuk.cnf_sta2 IS 'COSTA — Confirmation status for ALE [confirmatio status]';
COMMENT ON COLUMN sd.vbuk.ems IS 'SAPRL — SAP Release [emissio]';
COMMENT ON COLUMN sd.vbuk.sta3 IS 'DCSTK — Delay status [status]';
COMMENT ON COLUMN sd.vbuk.uni_cpa IS 'VESTK — Handling Unit Placed in Stock [unitas copia]';
COMMENT ON COLUMN sd.vbuk.sta4 IS 'RRSTA — Revenue determination status [status]';
COMMENT ON COLUMN sd.vbuk.idx_doc IS 'BLOCK — Indicator: Document preselected for archiving [index documentum]';
COMMENT ON COLUMN sd.vbuk.fac_obx_sta IS 'FSSTK — Overall billing block status [factura obex status]';
COMMENT ON COLUMN sd.vbuk.trd_obx_sta IS 'LSSTK — Overall delivery block status [traditio obex status]';
COMMENT ON COLUMN sd.vbuk.sta5 IS 'SPSTG — Overall blocked status [status]';
COMMENT ON COLUMN sd.vbuk.sta_cap_grd IS 'PDSTK — POD status on header level [status caput gradus]';
COMMENT ON COLUMN sd.vbuk.doc_ctg2 IS 'VBTYP_EXT — Extension of SD Document Category [documentum categoria]';

CREATE TABLE IF NOT EXISTS sd.vbup (
  cli char(3),
  vdt_ndo varchar(10),
  pos_num_doc varchar(6),
  rfr_sta varchar(1),
  sta_rfr varchar(1),
  cnf_sta_doc varchar(1),
  trd_sta varchar(1),
  trd_sta_pos varchar(1),
  mtm_sta varchar(1),
  fac_sta_trd varchar(1),
  fac_sta_mnd varchar(1),
  sta_pos varchar(1),
  sta_doc_pos varchar(1),
  sta varchar(1),
  sta_hor varchar(1),
  sta_pos2 varchar(1),
  sta_pos_trd varchar(1),
  pos_sta_fac varchar(1),
  tax_pos varchar(1),
  fac_sta varchar(1),
  sta_pos3 varchar(1),
  cnf_sta varchar(1),
  cnf_sta2 varchar(1),
  sta2 varchar(1),
  sta3 varchar(1),
  fac_obx_sta varchar(1),
  trd_obx_sta varchar(1),
  sta_pos_grd varchar(1),
  CONSTRAINT vbup_pk PRIMARY KEY (cli, vdt_ndo, pos_num_doc)
);
COMMENT ON TABLE sd.vbup IS 'VBUP — Sales document item status — the item-level counterpart to VBUK, carrying per-item confirmation, delivery, goods-movement, billing, rejection, credit, picking, packing and incompletion status. NOTE ON RELEASE: VBUP is an ECC-era status table. In S/4HANA, SAP replaced VBUP (and its header-level counterpart VBUK) with status fields carried directly on VBAP (item) and VBAK (header) — VBUK/VBUP still exist as compatibility views/tables in S/4HANA for backward compatibility, but new status logic reads VBAP/VBAK directly. This model must read both releases: consult VBUP/VBUK for ECC systems and VBAP';
COMMENT ON COLUMN sd.vbup.cli IS 'MANDT — Client [cliens]';
COMMENT ON COLUMN sd.vbup.vdt_ndo IS 'VBELN — Sales and Distribution Document Number [venditio numerus documenti]';
COMMENT ON COLUMN sd.vbup.pos_num_doc IS 'POSNR — Item number of the SD document [positio numerus documentum]';
COMMENT ON COLUMN sd.vbup.rfr_sta IS 'RFSTA — Reference status [referentia status]';
COMMENT ON COLUMN sd.vbup.sta_rfr IS 'RFGSA — Overall status of reference [status referentia]';
COMMENT ON COLUMN sd.vbup.cnf_sta_doc IS 'BESTA — Confirmation Status of Document Item [confirmatio status documentum]';
COMMENT ON COLUMN sd.vbup.trd_sta IS 'LFSTA — Delivery status [traditio status]';
COMMENT ON COLUMN sd.vbup.trd_sta_pos IS 'LFGSA — Overall delivery status of the item [traditio status positio]';
COMMENT ON COLUMN sd.vbup.mtm_sta IS 'WBSTA — Goods movement status [motus mercium status]';
COMMENT ON COLUMN sd.vbup.fac_sta_trd IS 'FKSTA — Billing status of delivery-related billing documents [factura status traditio]';
COMMENT ON COLUMN sd.vbup.fac_sta_mnd IS 'FKSAA — Billing Status for Order-Related Billing Documents [factura status mandatum]';
COMMENT ON COLUMN sd.vbup.sta_pos IS 'ABSTA — Rejection status for SD item [status positio]';
COMMENT ON COLUMN sd.vbup.sta_doc_pos IS 'GBSTA — Overall processing status of the SD document item [status documentum positio]';
COMMENT ON COLUMN sd.vbup.sta IS 'KOSTA — Picking status/Putaway status [status]';
COMMENT ON COLUMN sd.vbup.sta_hor IS 'LVSTA — Status of warehouse management activities [status horreum]';
COMMENT ON COLUMN sd.vbup.sta_pos2 IS 'UVALL — General Incompletion Status of Item [status positio]';
COMMENT ON COLUMN sd.vbup.sta_pos_trd IS 'UVVLK — Incompletion status of the item with regard to delivery [status positio traditio]';
COMMENT ON COLUMN sd.vbup.pos_sta_fac IS 'UVFAK — Item Incompletion Status with Respect to Billing [positio status factura]';
COMMENT ON COLUMN sd.vbup.tax_pos IS 'UVPRS — Pricing for item is incomplete [taxatio positio]';
COMMENT ON COLUMN sd.vbup.fac_sta IS 'FKIVP — Intercompany Billing Status [factura status]';
COMMENT ON COLUMN sd.vbup.sta_pos3 IS 'PKSTA — Packing status of item [status positio]';
COMMENT ON COLUMN sd.vbup.cnf_sta IS 'KOQUA — Confirmation status of picking/putaway [confirmatio status]';
COMMENT ON COLUMN sd.vbup.cnf_sta2 IS 'COSTA — Confirmation status for ALE [confirmatio status]';
COMMENT ON COLUMN sd.vbup.sta2 IS 'DCSTA — Delay status [status]';
COMMENT ON COLUMN sd.vbup.sta3 IS 'RRSTA — Revenue determination status [status]';
COMMENT ON COLUMN sd.vbup.fac_obx_sta IS 'FSSTA — Billing block status for items [factura obex status]';
COMMENT ON COLUMN sd.vbup.trd_obx_sta IS 'LSSTA — Delivery block status for item [traditio obex status]';
COMMENT ON COLUMN sd.vbup.sta_pos_grd IS 'PDSTA — POD status on item level [status positio gradus]';

