-- EVE Datasphere Sovereign — PostgreSQL materialisation
-- Generated 2026-08-01T02:17:52Z by scripts/emit_postgres.py. Do not hand-edit; regenerate.
-- Column names are the canonical Latin layer (EgD-LATIN-001). The legacy SAP field name
-- is preserved in COMMENT ON COLUMN and in egd_catalog.field_map, and is the join key.
-- Mirror, never cannibalise. Pour le bien-etre du peuple.

-- module INT

CREATE TABLE IF NOT EXISTS int.acdoci (
  cli char(3),
  eph_ann varchar(4),
  eph_ndo varchar(20),
  eph_pos varchar(6),
  fns_sys_itr varchar(10),
  fns_obi_tbl varchar(40),
  tor varchar(60),
  fns_tbl_itr varchar(60),
  ult_sor numeric(15,0),
  spc_fns numeric(15,0),
  hsh_fns varchar(64),
  itr_gen_voc varchar(10),
  cnl_itr varchar(10),
  drc varchar(1),
  pin_psn_clv varchar(32),
  prc_psn_clv varchar(32),
  psn_itr varchar(32),
  orm_itr varchar(18),
  soc_itr varchar(4),
  csm_smp_itr varchar(10),
  clu_itr varchar(10),
  ops_elm_itr varchar(8),
  mnd_num_itr varchar(12),
  emp_num_tbl varchar(10),
  ven_rat_num varchar(10),
  inm_num_itr varchar(18),
  itr_ini_die date,
  itr_ini_tmp time,
  itr_fin_die date,
  itr_fin_tmp time,
  itr_mra numeric(13,0),
  ztm_itr varchar(6),
  ord_ops_cts varchar(30),
  pri_sor varchar(2),
  grv_sor varchar(2),
  sta_sor varchar(10),
  sta_val_sor varchar(40),
  rsl_cod varchar(10),
  rsp_tmp numeric(13,0),
  tmp_rsl numeric(13,0),
  num_itr varchar(3),
  esc_grd varchar(3),
  psf_itr numeric(5,2),
  aff_itr_cns numeric(5,2),
  arg_itr varchar(40),
  rfr_sor varchar(60),
  rfr_itr_sor varchar(60),
  hsh_tbl varchar(64),
  idx_cns varchar(1),
  cns_sta_itr varchar(1),
  cns_rfr varchar(60),
  rtn_clv varchar(10),
  idx varchar(1),
  lng_itr char(1),
  ptr_clv_itr varchar(3),
  reg_itr varchar(3),
  gin_pin varchar(10),
  sms_itr numeric(23,2),
  cvm_sms varchar(5),
  ndo_itr_ins varchar(10),
  anf_doc varchar(4),
  ins_pos_doc varchar(6),
  efc_pos_nmr varchar(3),
  rvs_rfr_itr varchar(6),
  CONSTRAINT acdoci_pk PRIMARY KEY (cli, eph_ann, eph_ndo, eph_pos)
);
COMMENT ON TABLE int.acdoci IS 'ACDOCI — Universal Interaction Journal. The same idea as ACDOCA, applied to human interaction: one line per interaction, carrying every dimension that interaction belongs to, whatever system of record it originated in. A case in Salesforce, an incident in ServiceNow, a phone call, a satellite session and a visit in a parish hall all land as the same shape of row. The source record is never altered and never replaced — SRCSYS, SRCTYP and SRCID always point back to it. Carries the ACDOCA cost-object spine so an interaction can be tied to the money it caused and to the societal effect it produced.';
COMMENT ON COLUMN int.acdoci.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN int.acdoci.eph_ann IS 'IJYR — Interaction journal year [ephemeris commercii annus]';
COMMENT ON COLUMN int.acdoci.eph_ndo IS 'IJNO — Interaction journal document number [ephemeris commercii numerus documenti]';
COMMENT ON COLUMN int.acdoci.eph_pos IS 'IJLN — Interaction journal item [ephemeris commercii positio]';
COMMENT ON COLUMN int.acdoci.fns_sys_itr IS 'SRCSYS — Source system of record the interaction was mirrored from [fons systema tabularum commercium]';
COMMENT ON COLUMN int.acdoci.fns_obi_tbl IS 'SRCTYP — Source object or table name in the system of record [fons obiectum tabula]';
COMMENT ON COLUMN int.acdoci.tor IS 'SRCID — Source record identifier, unaltered [tabula originis]';
COMMENT ON COLUMN int.acdoci.fns_tbl_itr IS 'SRCPAR — Source parent record identifier, where the interaction hangs off a case or request [fons tabula commercium]';
COMMENT ON COLUMN int.acdoci.ult_sor IS 'SRCMOD — Last modified timestamp in the source system [ultimus systema originis]';
COMMENT ON COLUMN int.acdoci.spc_fns IS 'MIRTS — Mirror timestamp — when this line was read from the source [speculum fons]';
COMMENT ON COLUMN int.acdoci.hsh_fns IS 'MIRHSH — SHA-256 hash of the mirrored source payload, so drift is detectable [summa digesta fons]';
COMMENT ON COLUMN int.acdoci.itr_gen_voc IS 'INTTYP — Interaction type: case, incident, call, meeting, message, task, service request or visit [commercium genus vocatio]';
COMMENT ON COLUMN int.acdoci.cnl_itr IS 'CHANNL — Channel the interaction travelled over [canalis commercium]';
COMMENT ON COLUMN int.acdoci.drc IS 'DIRECT — Direction: inbound, outbound or internal [directio]';
COMMENT ON COLUMN int.acdoci.pin_psn_clv IS 'PTYINI — Initiating party — pseudonymous party key of whoever began the interaction [persona incipiens persona clavis]';
COMMENT ON COLUMN int.acdoci.prc_psn_clv IS 'PTYREC — Receiving party — pseudonymous party key of whoever answered [persona recipiens persona clavis]';
COMMENT ON COLUMN int.acdoci.psn_itr IS 'PTYOWN — Owning party — the person or team accountable for the interaction [persona commercium]';
COMMENT ON COLUMN int.acdoci.orm_itr IS 'MEMBER — Member organisation the interaction belongs to [organizatio membri commercium]';
COMMENT ON COLUMN int.acdoci.soc_itr IS 'RBUKRS — Company Code the interaction is attributed to [codex societatis commercium]';
COMMENT ON COLUMN int.acdoci.csm_smp_itr IS 'KOSTL — Cost Center carrying the cost of the interaction [centrum sumptus sumptus commercium]';
COMMENT ON COLUMN int.acdoci.clu_itr IS 'PRCTR — Profit Center carrying the interaction [centrum lucri commercium]';
COMMENT ON COLUMN int.acdoci.ops_elm_itr IS 'PS_PSP_PNR — Work Breakdown Structure Element the interaction belongs to [opus elementum commercium]';
COMMENT ON COLUMN int.acdoci.mnd_num_itr IS 'AUFNR — Order Number the interaction belongs to [mandatum numerus commercium]';
COMMENT ON COLUMN int.acdoci.emp_num_tbl IS 'KUNNR — Customer Number, where the counterparty is a customer of record [emptor numerus tabula]';
COMMENT ON COLUMN int.acdoci.ven_rat_num IS 'LIFNR — Vendor Account Number, where the counterparty is a supplier [venditor ratio numerus]';
COMMENT ON COLUMN int.acdoci.inm_num_itr IS 'EQUNR — Equipment Number the interaction concerns, for field service and maintenance [instrumentum numerus commercium]';
COMMENT ON COLUMN int.acdoci.itr_ini_die IS 'BEGDAT — Interaction start date [commercium initium dies]';
COMMENT ON COLUMN int.acdoci.itr_ini_tmp IS 'BEGTIM — Interaction start time [commercium initium tempus]';
COMMENT ON COLUMN int.acdoci.itr_fin_die IS 'ENDDAT — Interaction end date [commercium finis dies]';
COMMENT ON COLUMN int.acdoci.itr_fin_tmp IS 'ENDTIM — Interaction end time [commercium finis tempus]';
COMMENT ON COLUMN int.acdoci.itr_mra IS 'DURSEC — Interaction duration in seconds [commercium mora]';
COMMENT ON COLUMN int.acdoci.ztm_itr IS 'TZONE — Time zone the interaction occurred in [zona temporis commercium]';
COMMENT ON COLUMN int.acdoci.ord_ops_cts IS 'QUEUE — Queue or work group the interaction was handled in [ordo expectantium opus coetus]';
COMMENT ON COLUMN int.acdoci.pri_sor IS 'PRIORT — Priority assigned in the source system [prioritas systema originis]';
COMMENT ON COLUMN int.acdoci.grv_sor IS 'SEVERT — Severity assigned in the source system [gravitas systema originis]';
COMMENT ON COLUMN int.acdoci.sta_sor IS 'STATUS — Canonical status, crosswalked from the source system status [status systema originis]';
COMMENT ON COLUMN int.acdoci.sta_val_sor IS 'SRCSTA — Status value exactly as held in the source system, never normalised away [status valor systema originis]';
COMMENT ON COLUMN int.acdoci.rsl_cod IS 'RESCOD — Resolution code, crosswalked [resolutio codex]';
COMMENT ON COLUMN int.acdoci.rsp_tmp IS 'FSTSEC — First response time in seconds [responsum primum tempus]';
COMMENT ON COLUMN int.acdoci.tmp_rsl IS 'RESSEC — Time to resolution in seconds [tempus resolutio]';
COMMENT ON COLUMN int.acdoci.num_itr IS 'REOPEN — Number of times the interaction was reopened [numerus commercium]';
COMMENT ON COLUMN int.acdoci.esc_grd IS 'ESCLVL — Escalation level reached [escalatio gradus]';
COMMENT ON COLUMN int.acdoci.psf_itr IS 'CSATSC — Satisfaction score recorded for the interaction [punctum satisfactionis commercium]';
COMMENT ON COLUMN int.acdoci.aff_itr_cns IS 'SENTIM — Sentiment score derived from the interaction, where consent permits derivation [affectus commercium consensus]';
COMMENT ON COLUMN int.acdoci.arg_itr IS 'TOPIC — Topic classification of the interaction [argumentum commercium]';
COMMENT ON COLUMN int.acdoci.rfr_sor IS 'SUBJRF — Subject reference — pointer to the subject line held in the source system [referentia systema originis]';
COMMENT ON COLUMN int.acdoci.rfr_itr_sor IS 'CNTREF — Content reference — pointer to the interaction body in the source system. The body is not copied here [referentia commercium systema originis]';
COMMENT ON COLUMN int.acdoci.hsh_tbl IS 'CNTHSH — SHA-256 hash of the referenced content, so a record cannot be silently rewritten [summa digesta tabula]';
COMMENT ON COLUMN int.acdoci.idx_cns IS 'PIIIND — Personal data indicator: the line references personal data and is consent-scoped [index consensus]';
COMMENT ON COLUMN int.acdoci.cns_sta_itr IS 'CNSSTA — Consent status governing use of this interaction record [consensus status commercium]';
COMMENT ON COLUMN int.acdoci.cns_rfr IS 'CNSREF — Consent reference — the recorded consent this use relies on [consensus referentia]';
COMMENT ON COLUMN int.acdoci.rtn_clv IS 'RETPOL — Retention policy key governing how long this line may be held [retentio clavis]';
COMMENT ON COLUMN int.acdoci.idx IS 'LEGHLD — Legal hold indicator suspending deletion [index]';
COMMENT ON COLUMN int.acdoci.lng_itr IS 'SPRAS — Language the interaction was conducted in [lingua commercium]';
COMMENT ON COLUMN int.acdoci.ptr_clv_itr IS 'LAND1 — Country Key the interaction occurred in [patria clavis commercium]';
COMMENT ON COLUMN int.acdoci.reg_itr IS 'GEOREG — Region the interaction occurred in [regio commercium]';
COMMENT ON COLUMN int.acdoci.gin_pin IS 'DEVTYP — Device type used by the initiating party [genus instrumenti persona incipiens]';
COMMENT ON COLUMN int.acdoci.sms_itr IS 'COSTAM — Cost to serve the interaction [sumptus serviendi commercium]';
COMMENT ON COLUMN int.acdoci.cvm_sms IS 'COSTCU — Currency key of the cost to serve [clavis monetae sumptus serviendi]';
COMMENT ON COLUMN int.acdoci.ndo_itr_ins IS 'FI_BELNR — Accounting Document Number this interaction caused, where it caused a posting [numerus documenti commercium inscriptio]';
COMMENT ON COLUMN int.acdoci.anf_doc IS 'FI_GJAHR — Fiscal Year of the accounting document [annus fiscalis documentum]';
COMMENT ON COLUMN int.acdoci.ins_pos_doc IS 'FI_DOCLN — Posting item of the accounting document [inscriptio positio documentum]';
COMMENT ON COLUMN int.acdoci.efc_pos_nmr IS 'EFFLN — Effect item counter, where the interaction produced a recorded societal effect [effectus positio numerator]';
COMMENT ON COLUMN int.acdoci.rvs_rfr_itr IS 'REVLN — Reversal reference to the interaction line this line supersedes [reversio referentia commercium]';

CREATE TABLE IF NOT EXISTS int.chnl (
  cli char(3),
  cnl_clv varchar(10),
  cnl_dsc varchar(60),
  cnl_cts_psn varchar(4),
  cnl varchar(1),
  cnl_tlp varchar(1),
  cnl_stl varchar(1),
  nrm_smp_uni numeric(23,2),
  cvm_nrm_smp varchar(5),
  cls varchar(4),
  CONSTRAINT chnl_pk PRIMARY KEY (cli, cnl_clv)
);
COMMENT ON TABLE int.chnl IS 'CHNL — Channel master. The medium an interaction travelled over — voice, chat, email, portal, field visit, in person, satellite link, letter. Held as master data so that a channel nobody has thought of yet is an insert, not a schema change.';
COMMENT ON COLUMN int.chnl.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN int.chnl.cnl_clv IS 'CHANNL — Channel key [canalis clavis]';
COMMENT ON COLUMN int.chnl.cnl_dsc IS 'CHNTXT — Channel description [canalis descriptio]';
COMMENT ON COLUMN int.chnl.cnl_cts_psn IS 'CHNGRP — Channel group: synchronous, asynchronous or in person [canalis coetus persona]';
COMMENT ON COLUMN int.chnl.cnl IS 'SYNCHR — Channel is synchronous — both parties present at once [canalis]';
COMMENT ON COLUMN int.chnl.cnl_tlp IS 'EXTFLG — Channel requires the telephony extension [canalis telephonia]';
COMMENT ON COLUMN int.chnl.cnl_stl IS 'SATFLG — Channel requires the satellite extension [canalis satelles]';
COMMENT ON COLUMN int.chnl.nrm_smp_uni IS 'COSTUN — Standard cost per unit of use of this channel [norma sumptus unitas]';
COMMENT ON COLUMN int.chnl.cvm_nrm_smp IS 'COSTCU — Currency key of the standard cost [clavis monetae norma sumptus]';
COMMENT ON COLUMN int.chnl.cls IS 'ACCESS — Accessibility class — channels that reach people other channels do not [classis]';

CREATE TABLE IF NOT EXISTS int.ijsat (
  cli char(3),
  eph_ann varchar(4),
  eph_ndo varchar(20),
  eph_pos varchar(6),
  stl_cst_mbr varchar(20),
  cst varchar(20),
  gen varchar(4),
  rad_tml varchar(20),
  prt varchar(20),
  tml varchar(30),
  tml_gen varchar(10),
  vsb varchar(20),
  ftr_ini_tmp numeric(15,0),
  ftr_fin_tmp numeric(15,0),
  ael_stl numeric(5,2),
  azimut numeric(6,2),
  rss numeric(6,2),
  rainfd numeric(6,2),
  mor numeric(9,2),
  byteup numeric(20,0),
  bytedn numeric(20,0),
  mim_ltb_set varchar(1),
  set_idx_itr varchar(1),
  itr_min numeric(13,0),
  tml_cns_tbl numeric(9,5),
  tml_cns_tbl2 numeric(9,5),
  geoprc numeric(9,0),
  CONSTRAINT ijsat_pk PRIMARY KEY (cli, eph_ann, eph_ndo, eph_pos)
);
COMMENT ON TABLE int.ijsat IS 'IJSAT — Satellite and remote-link extension of the interaction journal. An interaction carried over a satellite terminal has properties no terrestrial channel has — a pass window, an elevation angle, a beam, a link budget — and they decide whether the interaction could happen at all. Recorded so that service to remote and underserved places can be measured honestly rather than averaged away against urban traffic.';
COMMENT ON COLUMN int.ijsat.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN int.ijsat.eph_ann IS 'IJYR — Interaction journal year [ephemeris commercii annus]';
COMMENT ON COLUMN int.ijsat.eph_ndo IS 'IJNO — Interaction journal document number [ephemeris commercii numerus documenti]';
COMMENT ON COLUMN int.ijsat.eph_pos IS 'IJLN — Interaction journal item [ephemeris commercii positio]';
COMMENT ON COLUMN int.ijsat.stl_cst_mbr IS 'SATID — Satellite or constellation member the session used [satelles constellatio membrum]';
COMMENT ON COLUMN int.ijsat.cst IS 'CONSTL — Constellation or operator identifier [constellatio]';
COMMENT ON COLUMN int.ijsat.gen IS 'ORBTYP — Orbit type: geostationary, medium or low earth orbit [genus]';
COMMENT ON COLUMN int.ijsat.rad_tml IS 'BEAMID — Beam or spot the terminal was served by [radius terminale]';
COMMENT ON COLUMN int.ijsat.prt IS 'GATWAY — Ground gateway the session was routed through [porta]';
COMMENT ON COLUMN int.ijsat.tml IS 'TERMID — Terminal identifier of the remote station [terminale]';
COMMENT ON COLUMN int.ijsat.tml_gen IS 'TERTYP — Terminal type: fixed, portable, maritime, aeronautical or handheld [terminale genus]';
COMMENT ON COLUMN int.ijsat.vsb IS 'PASSID — Pass identifier of the visibility window used [visibilitas]';
COMMENT ON COLUMN int.ijsat.ftr_ini_tmp IS 'PASBEG — Pass window start time [fenestra transitus initium tempus]';
COMMENT ON COLUMN int.ijsat.ftr_fin_tmp IS 'PASEND — Pass window end time [fenestra transitus finis tempus]';
COMMENT ON COLUMN int.ijsat.ael_stl IS 'ELEVAT — Elevation angle of the satellite above the horizon, in degrees [angulus elevationis satelles]';
COMMENT ON COLUMN int.ijsat.azimut IS 'AZIMUT — Azimuth of the link, in degrees';
COMMENT ON COLUMN int.ijsat.rss IS 'SNRDB — Signal to noise ratio of the link, in decibels [ratio signi ad strepitum]';
COMMENT ON COLUMN int.ijsat.rainfd IS 'RAINFD — Rain fade attenuation observed on the link, in decibels';
COMMENT ON COLUMN int.ijsat.mor IS 'LATMS — One-way link latency in milliseconds [mora]';
COMMENT ON COLUMN int.ijsat.byteup IS 'BYTEUP — Bytes sent on the uplink during the session';
COMMENT ON COLUMN int.ijsat.bytedn IS 'BYTEDN — Bytes received on the downlink during the session';
COMMENT ON COLUMN int.ijsat.mim_ltb_set IS 'DEGRAD — Session ran in degraded mode: reduced bandwidth or store and forward [modus imminutus latitudo bandae serva et transmitte]';
COMMENT ON COLUMN int.ijsat.set_idx_itr IS 'STOFWD — Store and forward indicator — the interaction was queued until a pass was available [serva et transmitte index commercium]';
COMMENT ON COLUMN int.ijsat.itr_min IS 'QUEMIN — Minutes the interaction waited for a link, the honest measure of remote service [commercium ministerium]';
COMMENT ON COLUMN int.ijsat.tml_cns_tbl IS 'GEOLAT — Terminal latitude, rounded to the precision the consent record permits [terminale consensus tabula]';
COMMENT ON COLUMN int.ijsat.tml_cns_tbl2 IS 'GEOLON — Terminal longitude, rounded to the precision the consent record permits [terminale consensus tabula]';
COMMENT ON COLUMN int.ijsat.geoprc IS 'GEOPRC — Geographic precision actually applied, in metres';

CREATE TABLE IF NOT EXISTS int.ijtel (
  cli char(3),
  eph_ann varchar(4),
  eph_ndo varchar(20),
  eph_pos varchar(6),
  tvc_rfr_fns varchar(60),
  voc varchar(60),
  hsh_num varchar(64),
  hsh_num2 varchar(64),
  itn varchar(8),
  cts_voc varchar(30),
  voc_gen varchar(10),
  tmp_voc numeric(13,0),
  tmp numeric(13,0),
  tmp2 numeric(13,0),
  voc_ops_tmp numeric(13,0),
  num_voc varchar(3),
  voc2 varchar(1),
  cod_fin_voc varchar(10),
  codec varchar(20),
  voc3 numeric(3,1),
  jittms numeric(9,2),
  pktlos numeric(5,2),
  mor numeric(9,2),
  voc_idx varchar(1),
  rfr_fns varchar(60),
  idx varchar(1),
  CONSTRAINT ijtel_pk PRIMARY KEY (cli, eph_ann, eph_ndo, eph_pos)
);
COMMENT ON TABLE int.ijtel IS 'IJTEL — Telephony extension of the interaction journal. Keyed on the interaction line, so a voice interaction carries its call detail without every other channel inheriting empty columns. Numbers are held as salted hashes, never in the clear: a call record is personal data and the mirror is not a wiretap.';
COMMENT ON COLUMN int.ijtel.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN int.ijtel.eph_ann IS 'IJYR — Interaction journal year [ephemeris commercii annus]';
COMMENT ON COLUMN int.ijtel.eph_ndo IS 'IJNO — Interaction journal document number [ephemeris commercii numerus documenti]';
COMMENT ON COLUMN int.ijtel.eph_pos IS 'IJLN — Interaction journal item [ephemeris commercii positio]';
COMMENT ON COLUMN int.ijtel.tvc_rfr_fns IS 'CDRREF — Call detail record reference in the source telephony platform [tabula vocationis referentia fons]';
COMMENT ON COLUMN int.ijtel.voc IS 'CALLID — Session identifier of the call [vocatio]';
COMMENT ON COLUMN int.ijtel.hsh_num IS 'ANIHSH — Salted hash of the calling number [summa digesta numerus]';
COMMENT ON COLUMN int.ijtel.hsh_num2 IS 'DNIHSH — Salted hash of the dialled number [summa digesta numerus]';
COMMENT ON COLUMN int.ijtel.itn IS 'NUMPFX — Dialling prefix retained for routing and geography, without identifying the subscriber [itinerarium]';
COMMENT ON COLUMN int.ijtel.cts_voc IS 'CARRIR — Carrier or trunk group the call traversed [coetus vocatio]';
COMMENT ON COLUMN int.ijtel.voc_gen IS 'CALTYP — Call type: voice, video, conference, transfer leg or voicemail [vocatio genus]';
COMMENT ON COLUMN int.ijtel.tmp_voc IS 'RNGSEC — Ring time in seconds before the call was answered [tempus vocatio]';
COMMENT ON COLUMN int.ijtel.tmp IS 'TLKSEC — Talk time in seconds [tempus]';
COMMENT ON COLUMN int.ijtel.tmp2 IS 'HLDSEC — Hold time in seconds [tempus]';
COMMENT ON COLUMN int.ijtel.voc_ops_tmp IS 'WRPSEC — After-call work time in seconds [vocatio opus tempus]';
COMMENT ON COLUMN int.ijtel.num_voc IS 'XFRCNT — Number of transfers the call went through [numerus vocatio]';
COMMENT ON COLUMN int.ijtel.voc2 IS 'ABANDN — Call abandoned before answer [vocatio]';
COMMENT ON COLUMN int.ijtel.cod_fin_voc IS 'DISPCD — Disposition code recorded at the end of the call [codex finis vocatio]';
COMMENT ON COLUMN int.ijtel.codec IS 'CODEC — Audio codec negotiated for the session';
COMMENT ON COLUMN int.ijtel.voc3 IS 'MOSSCR — Mean opinion score of call quality [vocatio]';
COMMENT ON COLUMN int.ijtel.jittms IS 'JITTMS — Average jitter in milliseconds';
COMMENT ON COLUMN int.ijtel.pktlos IS 'PKTLOS — Packet loss during the session, as a percentage';
COMMENT ON COLUMN int.ijtel.mor IS 'LATMS — Mean round-trip latency in milliseconds [mora]';
COMMENT ON COLUMN int.ijtel.voc_idx IS 'RECIND — Call recorded indicator [vocatio index]';
COMMENT ON COLUMN int.ijtel.rfr_fns IS 'RECREF — Recording reference in the source platform; the recording itself is not mirrored [referentia fons]';
COMMENT ON COLUMN int.ijtel.idx IS 'TRNIND — Transcript exists indicator [index]';

CREATE TABLE IF NOT EXISTS int.ityp (
  cli char(3),
  itr_gen_clv varchar(10),
  itr_gen_dsc varchar(60),
  dmi_min varchar(4),
  gsv_itr_gen varchar(1),
  itr_gen_efs varchar(1),
  gef_gen varchar(10),
  cns_itr_gen varchar(1),
  CONSTRAINT ityp_pk PRIMARY KEY (cli, itr_gen_clv)
);
COMMENT ON TABLE int.ityp IS 'ITYP — Interaction type master. What kind of human interaction the line records: a case, an incident, a call, a meeting, a task, a service request, a home visit, a sacrament, a class taught. The list is deliberately not limited to commercial support work, because the ledger is meant to cover all forms of human interaction, not only the ones that bill.';
COMMENT ON COLUMN int.ityp.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN int.ityp.itr_gen_clv IS 'INTTYP — Interaction type key [commercium genus clavis]';
COMMENT ON COLUMN int.ityp.itr_gen_dsc IS 'ITYTXT — Interaction type description [commercium genus descriptio]';
COMMENT ON COLUMN int.ityp.dmi_min IS 'ITYDOM — Domain: commercial, service, care, education, civic or faith [dominium ministerium]';
COMMENT ON COLUMN int.ityp.gsv_itr_gen IS 'SLAREL — Service level applies to this interaction type [gradus servitii commercium genus]';
COMMENT ON COLUMN int.ityp.itr_gen_efs IS 'EFFREL — Interaction type is expected to produce a societal effect line [commercium genus effectus socialis]';
COMMENT ON COLUMN int.ityp.gef_gen IS 'EFFCAT — Default effect category for interactions of this type [genus effectus genus]';
COMMENT ON COLUMN int.ityp.cns_itr_gen IS 'CNSREQ — Consent is required before an interaction of this type may be mirrored [consensus commercium genus]';

CREATE TABLE IF NOT EXISTS int.party (
  cli char(3),
  psn_clv varchar(32),
  psn varchar(4),
  emp_opr_ven varchar(10),
  orm_psn varchar(18),
  sor_tbl varchar(10),
  psn_sor varchar(60),
  hsh_psn varchar(64),
  lng_psn char(1),
  ptr_clv_psn varchar(3),
  cns_sta_psn varchar(1),
  cns_rfr varchar(60),
  del_psn varchar(1),
  die_del date,
  vul_sgn varchar(1),
  CONSTRAINT party_pk PRIMARY KEY (cli, psn_clv)
);
COMMENT ON TABLE int.party IS 'PARTY — Party registry. Pseudonymous keys for the humans and organisations on either side of an interaction. The registry holds the key, the role, the member it belongs to and the consent governing it — the identifying detail stays in the system of record that is already lawfully holding it. A model that copies everyone''s name into a second database has not improved anybody''s position.';
COMMENT ON COLUMN int.party.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN int.party.psn_clv IS 'PARTY — Pseudonymous party key [persona clavis]';
COMMENT ON COLUMN int.party.psn IS 'PTYKND — Party kind: person, organisation, team, system or agent [persona]';
COMMENT ON COLUMN int.party.emp_opr_ven IS 'PTYROL — Primary role: customer, citizen, parishioner, employee, supplier, volunteer or agent [emptor operarius venditor]';
COMMENT ON COLUMN int.party.orm_psn IS 'MEMBER — Member organisation the party is associated with [organizatio membri persona]';
COMMENT ON COLUMN int.party.sor_tbl IS 'SRCSYS — Source system holding the identifying record [systema originis tabula]';
COMMENT ON COLUMN int.party.psn_sor IS 'SRCID — Identifier of the party in that source system [persona systema originis]';
COMMENT ON COLUMN int.party.hsh_psn IS 'IDHASH — Salted hash used to resolve the same party across systems without storing identity [summa digesta persona]';
COMMENT ON COLUMN int.party.lng_psn IS 'SPRAS — Language the party prefers to be addressed in [lingua persona]';
COMMENT ON COLUMN int.party.ptr_clv_psn IS 'LAND1 — Country Key of the party [patria clavis persona]';
COMMENT ON COLUMN int.party.cns_sta_psn IS 'CNSSTA — Consent status governing use of this party record [consensus status persona]';
COMMENT ON COLUMN int.party.cns_rfr IS 'CNSREF — Consent reference [consensus referentia]';
COMMENT ON COLUMN int.party.del_psn IS 'ERASRQ — Erasure requested — the party has asked to be forgotten [deletio persona]';
COMMENT ON COLUMN int.party.die_del IS 'ERASDT — Date the erasure request was recorded [dies deletio]';
COMMENT ON COLUMN int.party.vul_sgn IS 'VULNFL — Vulnerability flag requiring additional care in handling [vulnerabilitas signum]';

CREATE TABLE IF NOT EXISTS int.stsmap (
  cli char(3),
  sor_clv varchar(10),
  fns_obi_tbl varchar(40),
  fns_sta_val varchar(40),
  sta_fns_val varchar(10),
  sta_dsc varchar(60),
  opncls varchar(1),
  sta_gsv varchar(1),
  sta_tml_sor varchar(1),
  CONSTRAINT stsmap_pk PRIMARY KEY (cli, sor_clv, fns_obi_tbl, fns_sta_val)
);
COMMENT ON TABLE int.stsmap IS 'STSMAP — Status crosswalk. Salesforce case statuses, ServiceNow incident states, telephony dispositions and a parish register''s own words all resolve to one canonical status set, while the source value stays on the interaction line untouched. Normalisation that destroys the original is not normalisation, it is loss.';
COMMENT ON COLUMN int.stsmap.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN int.stsmap.sor_clv IS 'SRCSYS — Source system key [systema originis clavis]';
COMMENT ON COLUMN int.stsmap.fns_obi_tbl IS 'SRCTYP — Source object or table name [fons obiectum tabula]';
COMMENT ON COLUMN int.stsmap.fns_sta_val IS 'SRCSTA — Source status value [fons status valor]';
COMMENT ON COLUMN int.stsmap.sta_fns_val IS 'STATUS — Canonical status the source value resolves to [status fons valor]';
COMMENT ON COLUMN int.stsmap.sta_dsc IS 'STATXT — Canonical status description [status descriptio]';
COMMENT ON COLUMN int.stsmap.opncls IS 'OPNCLS — Open, closed or cancelled classification';
COMMENT ON COLUMN int.stsmap.sta_gsv IS 'SLACLK — Status stops the service level clock [status gradus servitii]';
COMMENT ON COLUMN int.stsmap.sta_tml_sor IS 'TERMNL — Status is terminal in the source system [status terminale systema originis]';

CREATE TABLE IF NOT EXISTS int.sysrc (
  cli char(3),
  sor_clv varchar(10),
  sor_nom varchar(60),
  ven_sor varchar(40),
  min_tlp_stl varchar(10),
  orm_sor varchar(18),
  vrs_spc varchar(20),
  spc varchar(1),
  flg_pct_cns varchar(4),
  rfr_spc varchar(60),
  spc_fns varchar(10),
  ult numeric(15,0),
  rtn_fns varchar(5),
  fns varchar(1),
  CONSTRAINT sysrc_pk PRIMARY KEY (cli, sor_clv)
);
COMMENT ON TABLE int.sysrc IS 'SYSRC — System of record registry. Every source the interaction journal mirrors from: a Salesforce org, a ServiceNow instance, a telephony platform, a satellite ground segment, a parish register. Records what is read, under whose authority, how often, and on what legal basis — because a mirror without a declared basis is surveillance.';
COMMENT ON COLUMN int.sysrc.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN int.sysrc.sor_clv IS 'SRCSYS — Source system key [systema originis clavis]';
COMMENT ON COLUMN int.sysrc.sor_nom IS 'SRCNAM — Source system name [systema originis nomen]';
COMMENT ON COLUMN int.sysrc.ven_sor IS 'SRCVND — Vendor or operator of the source system [venditor systema originis]';
COMMENT ON COLUMN int.sysrc.min_tlp_stl IS 'SRCKND — Kind: CRM, service management, telephony, satellite, messaging, ledger or register [ministerium telephonia satelles]';
COMMENT ON COLUMN int.sysrc.orm_sor IS 'MEMBER — Member organisation that owns the source system [organizatio membri systema originis]';
COMMENT ON COLUMN int.sysrc.vrs_spc IS 'APIVER — Interface version the mirror reads through [versio speculum]';
COMMENT ON COLUMN int.sysrc.spc IS 'RDONLY — Read only: the mirror never writes back to this system [speculum]';
COMMENT ON COLUMN int.sysrc.flg_pct_cns IS 'LEGBAS — Legal basis for mirroring: contract, consent, legitimate interest or legal obligation [fundamentum legale pactum consensus]';
COMMENT ON COLUMN int.sysrc.rfr_spc IS 'AUTHRF — Authorisation reference — the agreement permitting the mirror [referentia speculum]';
COMMENT ON COLUMN int.sysrc.spc_fns IS 'CADENC — Mirror cadence: how often the source is read [speculum fons]';
COMMENT ON COLUMN int.sysrc.ult IS 'LASTRD — Last successful read timestamp [ultimus]';
COMMENT ON COLUMN int.sysrc.rtn_fns IS 'RETDAY — Retention in days applied to mirrored lines from this source [retentio fons]';
COMMENT ON COLUMN int.sysrc.fns IS 'ACTIVE — Source is currently mirrored [fons]';

CREATE TABLE IF NOT EXISTS int.xwalk (
  cli char(3),
  sor_clv varchar(10),
  fns_obi_tbl varchar(40),
  fns_cmp_nom varchar(60),
  mta_tbl_eph varchar(40),
  mta_cmp_eph varchar(60),
  nom_mta_cmp varchar(64),
  dsg_gen varchar(10),
  tfm varchar(255),
  fid_dsg varchar(1),
  dsg_fns_val varchar(1),
  psn_dsg varchar(32),
  vla_die_dsg date,
  dsg varchar(255),
  CONSTRAINT xwalk_pk PRIMARY KEY (cli, sor_clv, fns_obi_tbl, fns_cmp_nom)
);
COMMENT ON TABLE int.xwalk IS 'XWALK — Field crosswalk registry. The combined schema is not achieved by forcing Salesforce and ServiceNow to agree; it is achieved by recording, field by field, how each one maps onto the canonical interaction line. Every mapping declares its transform and its confidence, and an unmapped source field is recorded as unmapped rather than quietly dropped. This table is what makes a third system — a phone platform, a satellite ground segment, a parish register — a configuration exercise instead of a rewrite.';
COMMENT ON COLUMN int.xwalk.cli IS 'RCLNT — Client [cliens]';
COMMENT ON COLUMN int.xwalk.sor_clv IS 'SRCSYS — Source system key [systema originis clavis]';
COMMENT ON COLUMN int.xwalk.fns_obi_tbl IS 'SRCTYP — Source object or table name [fons obiectum tabula]';
COMMENT ON COLUMN int.xwalk.fns_cmp_nom IS 'SRCFLD — Source field or attribute name [fons campus nomen]';
COMMENT ON COLUMN int.xwalk.mta_tbl_eph IS 'TGTTAB — Target table in the interaction journal [meta tabula ephemeris commercii]';
COMMENT ON COLUMN int.xwalk.mta_cmp_eph IS 'TGTFLD — Target field in the interaction journal [meta campus ephemeris commercii]';
COMMENT ON COLUMN int.xwalk.nom_mta_cmp IS 'TGTCAN — Canonical Latin name of the target field [nomen meta campus]';
COMMENT ON COLUMN int.xwalk.dsg_gen IS 'MAPTYP — Mapping type: direct, transformed, derived, constant, crosswalked or unmapped [designatio genus]';
COMMENT ON COLUMN int.xwalk.tfm IS 'TRNRUL — Transform rule applied, stated plainly enough to be argued with [transformatio]';
COMMENT ON COLUMN int.xwalk.fid_dsg IS 'CONFID — Confidence in the mapping: asserted, reviewed or verified against live data [fiducia designatio]';
COMMENT ON COLUMN int.xwalk.dsg_fns_val IS 'LOSSY — Mapping loses information; the source value is preserved in the raw mirror [designatio fons valor]';
COMMENT ON COLUMN int.xwalk.psn_dsg IS 'OWNER — Party accountable for the correctness of this mapping [persona designatio]';
COMMENT ON COLUMN int.xwalk.vla_die_dsg IS 'VALFRM — Valid from date of the mapping [validus ab dies designatio]';
COMMENT ON COLUMN int.xwalk.dsg IS 'NOTES — Notes recording why the mapping is what it is [designatio]';

