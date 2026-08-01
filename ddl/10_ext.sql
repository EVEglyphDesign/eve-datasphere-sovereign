-- EVE Datasphere Sovereign — PostgreSQL materialisation
-- Generated 2026-08-01T02:19:53Z by scripts/emit_postgres.py. Do not hand-edit; regenerate.
-- Column names are the canonical Latin layer (EgD-LATIN-001). The legacy SAP field name
-- is preserved in COMMENT ON COLUMN and in egd_catalog.field_map, and is the join key.
-- Mirror, never cannibalise. Pour le bien-etre du peuple.

-- module EXT

CREATE TABLE IF NOT EXISTS ext.acdocx (
  cli char(3),
  lbr varchar(2),
  soc varchar(4),
  anf varchar(4),
  ndo varchar(10),
  ins_pos_lbr varchar(6),
  efc_pos_nmr varchar(3),
  gef_efs varchar(10),
  efc_drc_ptf varchar(1),
  efc_qnt_sum numeric(23,3),
  men_efc_qnt varchar(3),
  vmn_efc_lbr numeric(23,2),
  cvm_efc_val varchar(5),
  bnf_cts_cmn varchar(18),
  bnf_reg_efc varchar(3),
  atb_efc_ins varchar(4),
  atb_efc numeric(5,2),
  pnm_efc varchar(20),
  evd_gen varchar(4),
  evd_rfr_doc varchar(60),
  hsh_evd varchar(64),
  vrf_sta varchar(1),
  pvr_mbr varchar(18),
  vrf_die date,
  rcg_efc numeric(23,3),
  cus_sta varchar(1),
  orm_efc varchar(18),
  gds_efc varchar(4),
  csm_efc_smp varchar(10),
  clu_efc varchar(10),
  ops_elm_efc varchar(8),
  mnd_num_efc varchar(12),
  mat_num_efc varchar(40),
  ven_rat_num varchar(10),
  emp_num_efc varchar(10),
  amb_ems_gen varchar(1),
  efc_per_ini date,
  efc_per_fin date,
  die_efc date,
  tmp_efc time,
  usr_nom_efc varchar(12),
  rvs_rfr_efc varchar(3),
  CONSTRAINT acdocx_pk PRIMARY KEY (cli, lbr, soc, anf, ndo, ins_pos_lbr, efc_pos_nmr)
);
COMMENT ON TABLE ext.acdocx IS 'ACDOCX — Universal Journal societal effect line. The extension at the edge of ACDOCA: for one accounting document line, zero or more effect lines recording what that money did in the world. The key is ACDOCA''s own key plus an effect item counter, so an effect line cannot exist without a posting behind it and the financial line is never modified. A ledger that records only the amount records half the transaction.';
COMMENT ON COLUMN ext.acdocx.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN ext.acdocx.lbr IS 'RLDNR — Ledger in General Ledger Accounting [liber]';
COMMENT ON COLUMN ext.acdocx.soc IS 'RBUKRS — Company Code [codex societatis]';
COMMENT ON COLUMN ext.acdocx.anf IS 'GJAHR — Fiscal Year [annus fiscalis]';
COMMENT ON COLUMN ext.acdocx.ndo IS 'BELNR — Accounting Document Number [numerus documenti]';
COMMENT ON COLUMN ext.acdocx.ins_pos_lbr IS 'DOCLN — Six-Character Posting Item for Ledger [inscriptio positio liber]';
COMMENT ON COLUMN ext.acdocx.efc_pos_nmr IS 'EFFLN — Effect item counter within the posting item [effectus positio numerator]';
COMMENT ON COLUMN ext.acdocx.gef_efs IS 'EFFCAT — Effect category — what kind of societal effect this is [genus effectus effectus socialis]';
COMMENT ON COLUMN ext.acdocx.efc_drc_ptf IS 'EFFDIR — Effect direction: benefit, burden or neutral disclosure [effectus directio patefactio]';
COMMENT ON COLUMN ext.acdocx.efc_qnt_sum IS 'EFFQTY — Effect quantity — the measured amount of the effect [effectus quantitas summa]';
COMMENT ON COLUMN ext.acdocx.men_efc_qnt IS 'EFFUOM — Unit of measure of the effect quantity [mensura effectus quantitas]';
COMMENT ON COLUMN ext.acdocx.vmn_efc_lbr IS 'EFFAMT — Monetised value of the effect in the ledger currency, where a defensible price exists [valor monetarius effectus liber]';
COMMENT ON COLUMN ext.acdocx.cvm_efc_val IS 'EFFCUR — Currency key of the monetised effect value [clavis monetae effectus valor]';
COMMENT ON COLUMN ext.acdocx.bnf_cts_cmn IS 'BENGRP — Beneficiary group — the community, cohort or public that received the effect [beneficiarius coetus communitas]';
COMMENT ON COLUMN ext.acdocx.bnf_reg_efc IS 'BENREG — Beneficiary region — geography in which the effect landed [beneficiarius regio effectus]';
COMMENT ON COLUMN ext.acdocx.atb_efc_ins IS 'ATTMTH — Attribution method: how this effect was assigned to this posting line [attributio effectus inscriptio]';
COMMENT ON COLUMN ext.acdocx.atb_efc IS 'ATTPCT — Attribution share of the effect claimed by this line, as a percentage [attributio effectus]';
COMMENT ON COLUMN ext.acdocx.pnm_efc IS 'EFFSTD — Reporting standard datapoint this effect answers to [punctum normae effectus]';
COMMENT ON COLUMN ext.acdocx.evd_gen IS 'EVDTYP — Evidence type: measured, metered, surveyed, attested or estimated [evidentia genus]';
COMMENT ON COLUMN ext.acdocx.evd_rfr_doc IS 'EVDREF — Evidence reference — document, meter, attestation or ledger hash supporting the claim [evidentia referentia documentum]';
COMMENT ON COLUMN ext.acdocx.hsh_evd IS 'EVDHSH — SHA-256 content hash of the evidence, so a claim cannot be silently restated [summa digesta evidentia]';
COMMENT ON COLUMN ext.acdocx.vrf_sta IS 'VERSTA — Verification status: unverified, self-attested, peer-reviewed or independently assured [verificatio status]';
COMMENT ON COLUMN ext.acdocx.pvr_mbr IS 'VERPTY — Verifying party — member or body that reviewed the claim [pars verificans membrum]';
COMMENT ON COLUMN ext.acdocx.vrf_die IS 'VERDAT — Verification date [verificatio dies]';
COMMENT ON COLUMN ext.acdocx.rcg_efc IS 'MRTAMT — Recognition units minted against this effect line [recognitio effectus]';
COMMENT ON COLUMN ext.acdocx.cus_sta IS 'MRTSTA — Minting status: pending, minted, held or reversed [cusio status]';
COMMENT ON COLUMN ext.acdocx.orm_efc IS 'MEMBER — Member organisation credited with the effect [organizatio membri effectus]';
COMMENT ON COLUMN ext.acdocx.gds_efc IS 'DSTLVL — Distribution level: the organisational depth to which this effect is pushed down [gradus distributionis effectus]';
COMMENT ON COLUMN ext.acdocx.csm_efc_smp IS 'KOSTL — Cost Center carrying the effect, where the effect is distributed to a cost object [centrum sumptus effectus sumptus]';
COMMENT ON COLUMN ext.acdocx.clu_efc IS 'PRCTR — Profit Center carrying the effect [centrum lucri effectus]';
COMMENT ON COLUMN ext.acdocx.ops_elm_efc IS 'PS_PSP_PNR — Work Breakdown Structure Element carrying the effect [opus elementum effectus]';
COMMENT ON COLUMN ext.acdocx.mnd_num_efc IS 'AUFNR — Order Number carrying the effect [mandatum numerus effectus]';
COMMENT ON COLUMN ext.acdocx.mat_num_efc IS 'MATNR — Material Number the effect attaches to [materia numerus effectus]';
COMMENT ON COLUMN ext.acdocx.ven_rat_num IS 'LIFNR — Vendor Account Number, where the effect occurred upstream in the supply chain [venditor ratio numerus]';
COMMENT ON COLUMN ext.acdocx.emp_num_efc IS 'KUNNR — Customer Number, where the effect occurred downstream [emptor numerus effectus]';
COMMENT ON COLUMN ext.acdocx.amb_ems_gen IS 'SCOPE1 — Scope classification for emissions-type effects: 1, 2 or 3 [ambitus emissiones genus]';
COMMENT ON COLUMN ext.acdocx.efc_per_ini IS 'PERBEG — Effect period start date [effectus periodus initium]';
COMMENT ON COLUMN ext.acdocx.efc_per_fin IS 'PEREND — Effect period end date [effectus periodus finis]';
COMMENT ON COLUMN ext.acdocx.die_efc IS 'CPUDT — Date on which the effect line was entered [dies effectus]';
COMMENT ON COLUMN ext.acdocx.tmp_efc IS 'CPUTM — Time at which the effect line was entered [tempus effectus]';
COMMENT ON COLUMN ext.acdocx.usr_nom_efc IS 'USNAM — User name that entered the effect line [usor nomen effectus]';
COMMENT ON COLUMN ext.acdocx.rvs_rfr_efc IS 'REVLN — Reversal reference to the effect line this line reverses [reversio referentia effectus]';

CREATE TABLE IF NOT EXISTS ext.effcat (
  cli char(3),
  gef_clv varchar(10),
  efc_dmi_cmn varchar(1),
  gef_dsc varchar(60),
  men_ctg varchar(3),
  ctg_pre varchar(1),
  ctg_rcg_cus varchar(1),
  rcg_uni_efc numeric(13,5),
  evd_gen_ctg varchar(4),
  vla_die_ctg date,
  vld_die_ctg date,
  CONSTRAINT effcat_pk PRIMARY KEY (cli, gef_clv)
);
COMMENT ON TABLE ext.effcat IS 'EFFCAT — Effect category master — the taxonomy of societal effects a ledger line may carry. Held as master data rather than hard-coded so a community can extend its own vocabulary without a schema change, the same way an operating concern extends CO-PA.';
COMMENT ON COLUMN ext.effcat.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN ext.effcat.gef_clv IS 'EFFCAT — Effect category key [genus effectus clavis]';
COMMENT ON COLUMN ext.effcat.efc_dmi_cmn IS 'EFFDOM — Effect domain: environmental, social, governance or community [effectus dominium communitas]';
COMMENT ON COLUMN ext.effcat.gef_dsc IS 'EFFTXT — Effect category description [genus effectus descriptio]';
COMMENT ON COLUMN ext.effcat.men_ctg IS 'DEFUOM — Default unit of measure for quantities in this category [mensura categoria]';
COMMENT ON COLUMN ext.effcat.ctg_pre IS 'MONETB — Category may be monetised: a defensible price exists [categoria pretium]';
COMMENT ON COLUMN ext.effcat.ctg_rcg_cus IS 'MINTBL — Category is eligible for recognition minting [categoria recognitio cusio]';
COMMENT ON COLUMN ext.effcat.rcg_uni_efc IS 'MINTRT — Recognition units minted per unit of measured effect [recognitio unitas effectus]';
COMMENT ON COLUMN ext.effcat.evd_gen_ctg IS 'EVDMIN — Minimum evidence type accepted before a claim in this category counts [evidentia genus categoria]';
COMMENT ON COLUMN ext.effcat.vla_die_ctg IS 'VALFRM — Valid from date of the category definition [validus ab dies categoria]';
COMMENT ON COLUMN ext.effcat.vld_die_ctg IS 'VALTO — Valid to date of the category definition [validus ad dies categoria]';

CREATE TABLE IF NOT EXISTS ext.effstd (
  cli char(3),
  pnm_clv varchar(20),
  cnm_cmn_nrm varchar(8),
  vrs_nrm varchar(10),
  cod_cnm varchar(30),
  dsc varchar(80),
  rfr varchar(255),
  gef varchar(10),
  nrm varchar(1),
  CONSTRAINT effstd_pk PRIMARY KEY (cli, pnm_clv)
);
COMMENT ON TABLE ext.effstd IS 'EFFSTD — Reporting standard datapoint registry. Maps an effect category to the published disclosure point it answers — a GRI, ESRS, ISSB or SASB code — so a community''s own measurement can be reported outward in the language a regulator or auditor already reads, without the community having to adopt that vocabulary internally.';
COMMENT ON COLUMN ext.effstd.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN ext.effstd.pnm_clv IS 'EFFSTD — Standard datapoint key [punctum normae clavis]';
COMMENT ON COLUMN ext.effstd.cnm_cmn_nrm IS 'STDBDY — Standard body: GRI, ESRS, ISSB, SASB or a community standard [corpus normae communitas norma]';
COMMENT ON COLUMN ext.effstd.vrs_nrm IS 'STDVER — Version of the standard the datapoint belongs to [versio norma]';
COMMENT ON COLUMN ext.effstd.cod_cnm IS 'STDCOD — Datapoint code as published by the standard body [codex corpus normae]';
COMMENT ON COLUMN ext.effstd.dsc IS 'STDTXT — Datapoint description [descriptio]';
COMMENT ON COLUMN ext.effstd.rfr IS 'STDURL — Public reference URL for the datapoint [referentia]';
COMMENT ON COLUMN ext.effstd.gef IS 'EFFCAT — Effect category that satisfies this datapoint [genus effectus]';
COMMENT ON COLUMN ext.effstd.nrm IS 'MANDTY — Datapoint is mandatory for members subject to this standard [norma]';

CREATE TABLE IF NOT EXISTS ext.membr (
  cli char(3),
  orm_clv varchar(18),
  orm_nom varchar(80),
  mbr_gen_luc varchar(4),
  grx_mbr varchar(10),
  soc_mbr_lbr varchar(4),
  ptr_clv_mbr varchar(3),
  lng_clv_mbr char(1),
  luc varchar(1),
  sec_ven_ops varchar(1),
  ssl_sec varchar(4),
  luc_sta_sec varchar(4),
  die_mbr_cmn date,
  mbr_efc varchar(1),
  dgn_rcg_net numeric(23,3),
  vsb_cns_grx varchar(1),
  dml_num_mbr varchar(10),
  CONSTRAINT membr_pk PRIMARY KEY (cli, orm_clv)
);
COMMENT ON TABLE ext.membr IS 'MEMBR — Member organisation registry. The professional community this model exists to serve: the firms, parishes, councils, schools and non-profits that post effects, verify each other''s claims and hold recognition. Membership carries a peer group and a standing, because the point of the register is that an organisation which accomplished something can be told apart from one that described something.';
COMMENT ON COLUMN ext.membr.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN ext.membr.orm_clv IS 'MEMBER — Member organisation key [organizatio membri clavis]';
COMMENT ON COLUMN ext.membr.orm_nom IS 'MEMNAM — Member organisation name [organizatio membri nomen]';
COMMENT ON COLUMN ext.membr.mbr_gen_luc IS 'MEMTYP — Member type: enterprise, non-profit, parish, council, school or individual practitioner [membrum genus lucrum]';
COMMENT ON COLUMN ext.membr.grx_mbr IS 'PEERGP — Peer group the member is compared within [grex parium membrum]';
COMMENT ON COLUMN ext.membr.soc_mbr_lbr IS 'BUKRS — Company Code the member posts under, where the member runs its own ledger [codex societatis membrum liber]';
COMMENT ON COLUMN ext.membr.ptr_clv_mbr IS 'LAND1 — Country Key of the member [patria clavis membrum]';
COMMENT ON COLUMN ext.membr.lng_clv_mbr IS 'SPRAS — Language Key in which the member reads the model [lingua clavis membrum]';
COMMENT ON COLUMN ext.membr.luc IS 'NPOIND — Qualified non-profit: blueprint designs are provided without charge [lucrum]';
COMMENT ON COLUMN ext.membr.sec_ven_ops IS 'SAFIND — Legacy safety systems vendor: blueprint designs and services are provided without charge. Work that keeps people alive is not a revenue opportunity [securitas venditor opus]';
COMMENT ON COLUMN ext.membr.ssl_sec IS 'SAFKND — Safety system kind: emergency dispatch, alarm and monitoring, life safety, industrial safety instrumented systems, marine or aviation safety, or public safety communications [systema salutis securitas]';
COMMENT ON COLUMN ext.membr.luc_sta_sec IS 'FOCBAS — Basis on which charges are waived: non-profit status, safety vendor status, parish or council standing, or granted exception [lucrum status securitas]';
COMMENT ON COLUMN ext.membr.die_mbr_cmn IS 'JOINDT — Date the member joined the community [dies membrum communitas]';
COMMENT ON COLUMN ext.membr.mbr_efc IS 'VERRGT — Member is entitled to verify other members effect claims [membrum effectus]';
COMMENT ON COLUMN ext.membr.dgn_rcg_net IS 'STANDG — Standing: recognition held net of decay, the members visible record [dignitas recognitio netus]';
COMMENT ON COLUMN ext.membr.vsb_cns_grx IS 'VISIBL — Visibility consent: private, peer group or public [visibilitas consensus grex parium]';
COMMENT ON COLUMN ext.membr.dml_num_mbr IS 'ADRNR — Address number of the member [domicilium numerus membrum]';

CREATE TABLE IF NOT EXISTS ext.mrtdoc (
  cli char(3),
  rcg_lbr_ann varchar(4),
  rcg_ndo varchar(10),
  rcg_doc_pos varchar(3),
  gdo_rvs varchar(4),
  orm varchar(18),
  rcg_pos numeric(23,3),
  dbt_crd_idx varchar(1),
  gef varchar(10),
  fns_ndo_efc varchar(10),
  fns_anf_efc varchar(4),
  fns_ins_pos varchar(6),
  fns_efc_pos varchar(3),
  vrf_sta_efc varchar(1),
  din_rcg_pos date,
  rcg_per varchar(3),
  exp_die date,
  usr_nom_rcg varchar(12),
  rcg_doc_pos2 varchar(10),
  hsh_pos_rcg varchar(64),
  CONSTRAINT mrtdoc_pk PRIMARY KEY (cli, rcg_lbr_ann, rcg_ndo, rcg_doc_pos)
);
COMMENT ON TABLE ext.mrtdoc IS 'MRTDOC — Recognition ledger. Units minted against verified effect lines, held by member organisations and spent on standing within the community. It is a ledger in its own right, double-sided and reversible, because a recognition that cannot be audited is a marketing claim. Minting requires a verified ACDOCX line behind it; nothing is minted from an intention.';
COMMENT ON COLUMN ext.mrtdoc.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN ext.mrtdoc.rcg_lbr_ann IS 'MRTYR — Recognition ledger year [recognitio liber annus]';
COMMENT ON COLUMN ext.mrtdoc.rcg_ndo IS 'MRTNO — Recognition document number [recognitio numerus documenti]';
COMMENT ON COLUMN ext.mrtdoc.rcg_doc_pos IS 'MRTLN — Recognition document item [recognitio documentum positio]';
COMMENT ON COLUMN ext.mrtdoc.gdo_rvs IS 'MRTTYP — Document type: mint, transfer, hold, spend or reversal [genus documenti reversio]';
COMMENT ON COLUMN ext.mrtdoc.orm IS 'MEMBER — Member organisation holding or receiving the units [organizatio membri]';
COMMENT ON COLUMN ext.mrtdoc.rcg_pos IS 'MRTAMT — Recognition units on this item [recognitio positio]';
COMMENT ON COLUMN ext.mrtdoc.dbt_crd_idx IS 'DEBCRE — Debit or credit indicator of the recognition item [debitum creditum index]';
COMMENT ON COLUMN ext.mrtdoc.gef IS 'EFFCAT — Effect category the units were minted against [genus effectus]';
COMMENT ON COLUMN ext.mrtdoc.fns_ndo_efc IS 'SRCBLN — Source accounting document number of the effect line [fons numerus documenti effectus]';
COMMENT ON COLUMN ext.mrtdoc.fns_anf_efc IS 'SRCGJR — Source fiscal year of the effect line [fons annus fiscalis effectus]';
COMMENT ON COLUMN ext.mrtdoc.fns_ins_pos IS 'SRCDLN — Source posting item of the effect line [fons inscriptio positio]';
COMMENT ON COLUMN ext.mrtdoc.fns_efc_pos IS 'SRCEFF — Source effect item counter of the effect line [fons effectus positio]';
COMMENT ON COLUMN ext.mrtdoc.vrf_sta_efc IS 'VERSTA — Verification status inherited from the effect line at the time of minting [verificatio status effectus]';
COMMENT ON COLUMN ext.mrtdoc.din_rcg_pos IS 'MRTDAT — Posting date of the recognition item [dies inscriptionis recognitio positio]';
COMMENT ON COLUMN ext.mrtdoc.rcg_per IS 'MRTPER — Recognition period [recognitio periodus]';
COMMENT ON COLUMN ext.mrtdoc.exp_die IS 'EXPDAT — Expiry date after which unspent units decay [expiratio dies]';
COMMENT ON COLUMN ext.mrtdoc.usr_nom_rcg IS 'USNAM — User name that posted the recognition item [usor nomen recognitio]';
COMMENT ON COLUMN ext.mrtdoc.rcg_doc_pos2 IS 'REVDOC — Recognition document this item reverses [recognitio documentum positio]';
COMMENT ON COLUMN ext.mrtdoc.hsh_pos_rcg IS 'MRTHSH — SHA-256 hash chaining this item to the previous recognition item [summa digesta positio recognitio]';

