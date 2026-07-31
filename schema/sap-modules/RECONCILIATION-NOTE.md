# Reconciliation note — `TABLES.yaml` inventory vs. `tables/*.yaml` definitions

**Status:** DOCUMENTED as of this pass. This note records the gap the
[alignment brief](https://github.com/EVEglyphDesign/eve-hawkins-cdk-twin) surfaced for CO
and generalizes it: every module's `TABLES.yaml` inventory was checked field-by-field
against its `tables/` directory. A crosswalk that points at an undefined table is not
alignment — this note exists so nobody has to re-derive that fact.

## Closed this pass

**HR and PP time/personnel spine** — the two tables named as the last blocking failures
in the CDK twin's crosswalk validator, sourced field-level from
[leanx.eu](https://leanx.eu) (see each file's `source:`):

- [`PA0001`](hr/tables/PA0001.yaml) — HR Master Record: Infotype 0001 (Organizational
  Assignment), the SAP analogue for the CDK employee/technician master. Personnel number
  (`PERNR`), name (`SNAME`/`ENAME`), cost centre (`KOSTL`), org unit (`ORGEH`), position
  (`PLANS`), personnel area/subarea (`WERKS`/`BTRTL`), employee group/subgroup
  (`PERSG`/`PERSK`), and the `BEGDA`/`ENDDA` validity interval every infotype record
  carries. This closes HR's entire-module-unstarted gap at the one table the crosswalk
  actually needs; the other 16 inventoried HR tables (infotypes, OM, payroll clusters)
  remain undefined and are not claimed otherwise.
- [`AFRU`](pp/tables/AFRU.yaml) — Order Completion Confirmations, the SAP analogue for the
  CDK technician time-punch. Confirmation number and counter (`RUECK`/`RMZHL`), order and
  operation (`AUFNR`/`APLZL`/`VORNR`), work-centre object (`ARBID`), personnel number
  (`PERNR`), actual duration and unit (`ISMNW`/`ISMNE`, `IDAUR`/`IDAUE`), start/finish date
  and time (`ISDD`/`ISDZ`/`IEDD`/`IEDZ`), posting date (`BUDAT`), and the reversal
  indicator (`STOKZ`, with `STZHL` pointing at the reversed confirmation). SAP's real AFRU
  carries well over 100 fields, most of them PDC/business-process/mill-industry extension
  columns with no dealer analogue; this definition is scoped to the fields a dealer
  tie-out actually consumes, following the same scoping discipline already applied to
  `T001` — stated explicitly in the file's `description`, not silently truncated.

**`CATSDB` — checked, not closed.** `CATSDB` (CATS time sheet database) is referenced in
[`schema/feeders/cdk-dms/mapping.md`](../feeders/cdk-dms/mapping.md) as the SAP analogue
for the CDK technician-time-punch feeder lane, but it does not appear in any module's
`TABLES.yaml` inventory — not PP, not HR, not CROSS. There is nothing to close: an
inventory entry was never made, so under this doctrine there is no promise outstanding,
only a mapping-doc reference that should be read as INFERRED until `CATSDB` is actually
inventoried and defined. Recorded here rather than fabricated, so the next lane does not
assume it was silently skipped.

PP module is now 9/17 inventoried tables landed at field level (was 8/17). HR module is
now 1/17 (was 0/17, entire module unstarted).

**FI open-item subledgers** — the accounting-schedule reconciliation targets named
explicitly in the ALIGNMENT_BRIEF, sourced field-level from [leanx.eu](https://leanx.eu)
(see each file's `source:`):

- [`BSID`](fi/tables/BSID.yaml) — customer open items. The critical closure: this is
  where a CDK accounting-schedule assignment (`ZUONR`) sits until it clears.
- [`BSAD`](fi/tables/BSAD.yaml) — customer cleared items, the destination `BSID` rows
  move to on the clearing event (`AUGDT`/`AUGBL`).
- [`BSIK`](fi/tables/BSIK.yaml) — vendor open items, with `EBELN`/`EBELP` carried
  through for sublet/parts purchase-order tie-out.
- [`BSAK`](fi/tables/BSAK.yaml) — vendor cleared items.
- [`SKAT`](fi/tables/SKAT.yaml) — G/L account texts, needed to make any `HKONT` value
  in the above four tables legible.
- [`KNC1`](fi/tables/KNC1.yaml) — customer transaction figures (period debit/credit/sales
  totals), the roll-forward total a schedule reconciliation checks `BSID`/`BSAD` against.
- [`LFC1`](fi/tables/LFC1.yaml) — vendor transaction figures, the AP-side counterpart.

FI module is now 17/42 inventoried tables landed at field level (was 10/40 — two new
inventory entries, `KNC1` and `LFC1`, were added alongside their definitions since
neither existed in `fi/TABLES.yaml` before this pass).

**CROSS foundation layer** — previously entirely unstarted; this pass opens it because
it is the load-bearing layer every other module's `check_table` references:

- [`T000`](cross/tables/T000.yaml) — Clients. The `MANDT` root every table in this
  repository keys on first.
- [`T001`](cross/tables/T001.yaml) — Company Codes. Carries the core identity, currency,
  and org-linkage fields a dealer tie-out actually consumes (not SAP's full ~90-field
  configuration surface — see the file's description for that scoping decision).
- [`TCURC`](cross/tables/TCURC.yaml) — Currency Codes. The single most-referenced check
  table found in a repository-wide grep (118 references) before this pass.
- [`TCURR`](cross/tables/TCURR.yaml) — Exchange Rates, the from/to conversion table that
  only becomes meaningful once `TCURC` exists.
- [`TCURX`](cross/tables/TCURX.yaml) — Decimal Places in Currencies, the exception list
  needed to correctly interpret `DMBTR`/`WRBTR` magnitude on non-two-decimal currencies.
  This table was also missing from `cross/TABLES.yaml`'s inventory and has been added.
- [`ONR00`](cross/tables/ONR00.yaml) — General Object Number, the number-range object
  behind every CO `OBJNR` (already load-bearing for the CO tables closed last pass).
- [`T006`](cross/tables/T006.yaml) — Units of Measurement. **Not named in the original
  request**, added because a repository-wide grep on `check_table:` values across every
  already-defined table (`fi`, `co`, `mm`, `pm`, `pp`, `qm`, `sd`) found it referenced
  **221 times** — more than any other undefined check table, by more than 2x over the
  next candidate (`T001W`, plants/branches, 84 references, still open). This is the
  "any other check-table referenced by three or more existing YAMLs" clause exercised
  at the single highest-value point rather than opened into a long tail; the long tail
  is recorded below rather than silently closed.

CROSS module is now 7/39 inventoried tables landed at field level (was 0/38 — `TCURX`
added to the inventory in this pass, bringing the total inventoried count to 39).

## Still open — inventoried but undefined (by module)

Counts as of this pass. Not closed in this session — recorded honestly rather than
padded or silently dropped.

| Module | Inventoried | Defined | Still undefined | Notably absent |
|---|---|---|---|---|
| FI | 42 | 17 | 25 | `GLT0`, `FAGLFLEXA`/`FAGLFLEXT` (New GL — ACDOCA supersedes these but they remain the ECC-side tie-out target), `BSAS`/`BSIS` (G/L open/cleared items — the reconciliation-account counterpart to the customer/vendor subledgers just closed), `T001W` (plants/branches, 84 references), `TGSB` (business areas, 48 references) |
| CO | 19 | 11 | 8 | `CSLA`/`CSLT` (activity type master/texts — needed for labour-line costing, 73 references), `CE1`–`CE4` (COPA, client-generated so inherently thin), `TKA01`/`TKA02` (controlling area org, 43 references) |
| MM | 24 | 8 | 16 | `MAKT` (material texts), `MARD` (storage-location stock), `EKBE` (PO history — sublet/parts receipt tie-out), `MATDOC` (S/4 unified material document) |
| PM | 53 | 14 | 39 | `AFKO`/`AFPO`/`AFVC`/`AFVV` (order operations — labour-line detail), `EQBS`/`EQSE` |
| SD | 21 | 7 | 14 | `VBUK`/`VBUP` (sales doc status — `AUFK-KDAUF` foreign key target, 61/41 references), `VBPA`, pricing condition masters |
| PP | 17 | 9 | 8 | `AFKO`/`AFPO`/`AFVC` remain the next PP priority (order operations, labour-line detail) |
| QM | 10 | 3 | 7 | `QMEL`/`QMFE` (notifications — warranty-claim analogue) |
| PS | 8 | 0 | 8 | Entire module unstarted (`PROJ`, `PRPS`, `AFKO`, `AFVC`) |
| HR | 17 | 1 | 16 | `PA0001` (org assignment) now defined; `PA0002`/`PA0007`/`PA0008` (personal data, planned working time, basic pay) and OM/payroll cluster tables remain undefined |
| BW | 6 | 0 | 6 | Entire module unstarted |
| CROSS | 39 | 7 | 32 | `T005` (countries, 30 references), `T002` (languages, 48 references), `TGSB` cross-listed above, `ADRC`/`ADR2`/`ADR3`/`ADR6` (addresses), the entire DDIC layer (`DD02L` etc.) |

## Ranked list — what to close next, by dealer tie-out blocking impact

This ranking is deliberately **not** ordered by module tidiness (it would be easy to
"finish CROSS" next since it now has momentum). It is ordered by how much each gap
blocks an actual CDK-schedule-to-ACDOCA tie-out from running end to end.

1. **`BSAS`/`BSIS`** (FI, G/L open/cleared items). The customer and vendor subledgers
   closed this pass show *who* owes or is owed; `BSAS`/`BSIS` show the reconciliation
   account balance itself. Without them, a tie-out can prove the subledger detail but
   not that the subledger sums to the G/L control account — the actual definition of
   "reconciled." This is the single highest-impact remaining gap.
2. **`EKBE`** (MM, purchase order history). The [schedule reconciliation](../feeders/cdk-dms/schedule-reconciliation.md)
   note below depends on tying a vendor open item (`BSIK`) back to a goods/invoice
   receipt event. `BSIK-EBELN`/`EBELP` point at the PO; `EKBE` is where the receipt
   that triggered the payable actually lives. Without it, "why does this payable exist"
   stops one hop short.
3. **`AFVC`/`AFKO`/`AFPO`** (PM/PP, order operations). Named as the next PM/PP priority
   before this pass and still true: this is the labour-line detail behind an `AUFK`
   repair order, and a dealer's labour schedule cannot be reconciled to SAP without it.
4. **`T005` and `T002`** (CROSS, countries and languages). Low effort, high leverage —
   referenced 30 and 48 times respectively, and both are single-digit-field tables.
   Closing these two would very likely clear more dangling check-table references per
   line of new YAML than anything else on this list.
5. **`VBUK`/`VBUP`** (SD, sales document status). Named in the brief's existing gap list
   as the `AUFK-KDAUF` foreign-key target; still open, still blocks a full trace from a
   vehicle-sale deal jacket back through to its order status.
6. **`GLT0`/`FAGLFLEXA`/`FAGLFLEXT`** (FI, G/L totals). Lower priority than `BSAS`/`BSIS`
   despite being in the same family — these are ECC-era totals tables that ACDOCA
   supersedes in S/4HANA; useful for a legacy-system tie-out, not for the CDK feeder
   lane specifically.

This is a finding, not a fix. It is recorded here so the next lane to touch this
repository does not have to re-derive it.

---
© 2026 Dany Thériault / EVE Glyph Design. Pour le bien-être du peuple.
