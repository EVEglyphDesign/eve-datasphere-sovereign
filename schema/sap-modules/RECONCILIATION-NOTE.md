# Reconciliation note — `TABLES.yaml` inventory vs. `tables/*.yaml` definitions

**Status:** DOCUMENTED as of this pass. This note records the gap the
[alignment brief](https://github.com/EVEglyphDesign/eve-hawkins-cdk-twin) surfaced for CO
and generalizes it: every module's `TABLES.yaml` inventory was checked field-by-field
against its `tables/` directory. A crosswalk that points at an undefined table is not
alignment — this note exists so nobody has to re-derive that fact.

## Closed this pass

CO's five gaps, closed with field-level YAML sourced from
[leanx.eu](https://leanx.eu) (see each file's `source:`):

- [`AUFK`](co/tables/AUFK.yaml) — Order master data. This was the critical closure: the
  CDK Drive repair order keys directly on `AUFK-AUFNR`, and until this pass the crosswalk
  pointed at a table that existed only as a name in `TABLES.yaml`.
- [`COSS`](co/tables/COSS.yaml) — Cost Totals for Internal Postings.
- [`COSP`](co/tables/COSP.yaml) — Cost Totals for External Postings.
- [`CSKB`](co/tables/CSKB.yaml) — Cost Elements (Controlling Area level).
- [`CSKT`](co/tables/CSKT.yaml) — Cost Center Texts.

CO module is now 11/19 inventoried tables landed at field level (was 6/19).

## Still open — inventoried but undefined (by module)

Counts as of this pass. Not closed in this session — recorded honestly rather than
padded or silently dropped.

| Module | Inventoried | Defined | Still undefined | Notably absent |
|---|---|---|---|---|
| FI | 40 | 10 | 30 | `T001` (company code), `SKAT` (G/L account texts), `BSIK`/`BSAK`/`BSID`/`BSAD` (open-item subledgers — exactly what the ACDOCA-feeder brief calls out for accounting-schedule reconciliation), `GLT0`, `FAGLFLEXA`/`FAGLFLEXT` |
| CO | 19 | 11 | 8 | `CSLA`/`CSLT` (activity type master/texts — needed for labour-line costing), `CE1`–`CE4` (COPA, client-generated so inherently thin), `TKA01`/`TKA02` (controlling area org) |
| MM | 24 | 8 | 16 | `MAKT` (material texts), `MARD` (storage-location stock), `EKBE` (PO history — sublet/parts receipt tie-out), `MATDOC` (S/4 unified material document) |
| PM | 53 | 14 | 39 | `AFKO`/`AFPO`/`AFVC`/`AFVV` (order operations — labour-line detail), `EQBS`/`EQSE` |
| SD | 21 | 7 | 14 | `VBUK`/`VBUP` (sales doc status — `AUFK-KDAUF` foreign key target), `VBPA`, pricing condition masters |
| PP | 17 | 8 | 9 | `AFRU` (order confirmations — technician time-punch analogue) |
| QM | 10 | 3 | 7 | `QMEL`/`QMFE` (notifications — warranty-claim analogue) |
| PS | 8 | 0 | 8 | Entire module unstarted (`PROJ`, `PRPS`, `AFKO`, `AFVC`) |
| HR | 17 | 0 | 17 | Entire module unstarted (infotypes, org management, payroll clusters) |
| BW | 6 | 0 | 6 | Entire module unstarted |
| CROSS | 38 | 0 | 38 | Entire module unstarted — this is the DDIC/foundation layer (`T000`, `ADRC`, `TCURC`, `ONR00`) that nearly every other module's `check_table` references |

**Highest-priority remaining gap for the CDK feeder lane specifically:** `CROSS` is
entirely undefined, yet `ONR00` (object number), `T001` (company code), `TCURC`
(currency), and `ADRC` (address) are check-tables referenced by nearly every field-level
YAML written so far, including the five closed this pass. They are load-bearing and
currently undocumented at field level anywhere in this repository. `BSIK`/`BSAK` (vendor
open items) and `BSID`/`BSAD` (customer open items) are the second-highest priority — the
ALIGNMENT_BRIEF names the accounting-schedule subledger explicitly as a CDK feeder target,
and neither is defined yet.

This is a finding, not a fix. It is recorded here so the next lane to touch this
repository does not have to re-derive it.

---
© 2026 Dany Thériault / EVE Glyph Design. Pour le bien-être du peuple.
