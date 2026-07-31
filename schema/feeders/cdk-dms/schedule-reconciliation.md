# CDK accounting schedule → BSID/BSIK open items → ACDOCA spine

How a dealer's CDK Drive accounting schedule (the AR/AP sub-schedule a controller runs
each month to prove the subledger ties to the G/L) projects onto an SAP-shaped open-item
subledger, and from there onto the ACDOCA line. Source of truth for the CDK side: the
[CDK field dictionary](https://eveglyphdesign.github.io/eve-hawkins-cdk-twin/model/).
Source of truth for the tie-out state: the
[tie-out board](https://eveglyphdesign.github.io/eve-hawkins-cdk-twin/tieout/). Source
of truth for the SAP side: `schema/sap-modules/fi/tables/{BSID,BSAD,BSIK,BSAK}.yaml` in
this repository.

Confidence marks follow the same three used across this canon: **DOCUMENTED** (both
sides of the mapping are field-level defined here), **INFERRED** (a reasonable analogue
with no formal one-to-one SAP object), **UNVERIFIED** (asserted, not yet checked against
a live CDK extract or a live SAP open-item report).

## 1. Control key → assignment field

A CDK accounting schedule identifies each open balance by a dealer-meaningful control
key — an RO number, a stock number, a VIN fragment, a deal number. SAP's open-item
tables carry no such column natively; the entire mechanism for carrying dealer context
through the ledger is the assignment field.

| Schedule control key | SAP landing field | Table(s) | Confidence |
|---|---|---|---|
| Repair order number | `ZUONR` (Assignment Number, 18 char) | [`BSID`](../../sap-modules/fi/tables/BSID.yaml) / [`BSIK`](../../sap-modules/fi/tables/BSIK.yaml) | DOCUMENTED — `ZUONR` is a real, present field on both tables; the convention of populating it with a repair-order number is a dealership posting-rule choice, not an SAP default |
| Repair order number (redundant carry) | `AUFNR` (Order Number), checktable `AUFK` | `BSID` / `BSIK` | DOCUMENTED — both open-item tables carry a direct `AUFNR` field with `AUFK` as its check table, so the repair order can be resolved without parsing `ZUONR` text |
| Dealer invoice / document number | `XBLNR` (Reference Document Number, 16 char) | `BSID` / `BSAD` / `BSIK` / `BSAK` | DOCUMENTED — field exists on all four tables |
| Stock number / VIN fragment | `ZUONR`, overflow into `SGTXT` (Item Text, 50 char) if longer than 18 characters | `BSID` / `BSIK` | INFERRED — this is a plausible posting-rule pattern for VIN-based control keys that exceed `ZUONR`'s length, not a documented SAP standard |
| Sublet/parts purchase order number | `EBELN`/`EBELP` (Purchasing Document / Item), no check table constraint on `EBELP` | `BSIK` / `BSAK` only | DOCUMENTED — these fields exist only on the vendor-side tables; there is no customer-side analogue, which is itself the asymmetry a schedule reconciliation has to account for (see §4) |

## 2. Open-item aging

A CDK accounting schedule ages every open balance from a chosen baseline date, usually
invoice date or the dealer's own due-date rule. SAP's open-item aging is a computed
value, not a stored one — it is derived at report-run time from stored dates.

| Aging concept | SAP source field(s) | Table(s) | Confidence |
|---|---|---|---|
| Aging baseline date | `ZFBDT` (Baseline Date for Due Date Calculation) | `BSID` / `BSIK` | DOCUMENTED — field is present and is the documented SAP mechanism for this |
| Payment terms driving the due date | `ZTERM` (Terms of Payment Key), `ZBD1T`/`ZBD2T`/`ZBD3T` (cash-discount and net days) | `BSID` / `BSIK` | DOCUMENTED — all four fields present on the open-item tables; `BSAD`/`BSAK` carry `ZTERM` but not the discount-day breakdown, since a cleared item no longer needs a forward-looking due-date calculation |
| Posting date (fallback aging anchor when no baseline date is set) | `BUDAT` (Posting Date in the Document) | all four tables | DOCUMENTED |
| Document date (dealer-facing invoice date, distinct from posting date) | `BLDAT` (Document Date in Document) | all four tables | DOCUMENTED |
| Aging bucket itself (0-30 / 31-60 / etc.) | Not a stored field anywhere in SAP; computed by the aging report (`RFDOPR10`/`S_ALR_87012168`-class programs) from `ZFBDT` + `ZTERM` against the report run date | n/a — no table | INFERRED — this is standard SAP AR/AP aging behavior, not specific to this schema, and is asserted from general SAP knowledge rather than verified against a live report configuration in this environment |

**What this means for a schedule reconciliation:** a CDK schedule's aging bucket for a
given control key cannot be diffed directly against a stored SAP column — it has to be
recomputed from `ZFBDT`/`BUDAT` + `ZTERM` using the same as-of date the CDK schedule was
run at, or the two aging reports will disagree by construction even when the underlying
open items match exactly.

## 3. The clearing event

| Clearing concept | SAP mechanism | Confidence |
|---|---|---|
| An open item becomes closed | A row disappears from `BSID`/`BSIK` and the corresponding cleared row appears in `BSAD`/`BSAK` with `AUGDT` (Clearing Date) and `AUGBL` (Document Number of the Clearing Document) populated | DOCUMENTED — this is the literal purpose of the BSID/BSAD and BSIK/BSAK table pairs; confirmed structurally by field comparison between the four YAMLs in this repository |
| Partial clearing / partial payment | Represented as two separate accounting document line items sharing the same `ZUONR` — one clears the original item, one creates a new smaller open item — rather than as a single row being partially updated | INFERRED — standard SAP behavior for partial payment processing, not verified against a live document flow in this environment |
| Reversed clearing (a payment gets reversed after posting) | `XRAGL` (Indicator: Clearing was Reversed), present on all four tables, flags the item; the item returns to open-item status | DOCUMENTED — field present on all four tables |
| Which document caused the clearing | `AUGBL` (document number) + `AUGGJ` (fiscal year of clearing document), both present on `BSAD`/`BSAK` | DOCUMENTED |

**Reconciliation implication:** a dealer schedule that shows an item as "paid" on a
given date needs `AUGDT` to match, not `BUDAT` — the posting date of the *original*
invoice is unrelated to when it cleared. A tie-out that diffs on the wrong date field
will show false breaks on every item that didn't clear the same period it was posted.

## 4. What the dealer schedule has that SAP's subledger does not (and vice versa)

**On the schedule, not in the subledger:**

- **Deal-level narrative fields** — customer contact notes, promise-to-pay dates,
  collector assignment. `BSID`/`BSAD` have no analogue; this is CRM/collections-system
  data layered on top of the open item, not part of the accounting record itself.
  INFERRED — asserted from general dealer-accounting-schedule structure, not verified
  against a specific CDK schedule export.
- **F&I product unwind detail** — a vehicle-sale deal jacket's F&I product lines (service
  contracts, GAP) are recognized on the CDK side as a bundle; on the SAP side they would
  need to unwind into separate revenue lines with separate G/L accounts, which is not
  represented in `BSID`/`BSAD` at all — they show up only in the netted receivable
  amount. Cross-reference: [`deal-jacket-vehicle-sale`](mapping.md) in the Layer-3
  mapping table, marked INFERRED there for the same reason.
- **Stock-number-centric grouping** — a CDK schedule can group every open balance tied
  to a single vehicle regardless of transaction type (sale, service, parts). SAP's
  `ZUONR` is a flat text field with no enforced vocabulary; grouping by stock number is
  only possible if every posting rule consistently wrote the stock number into `ZUONR`,
  which is a dealership configuration discipline, not a structural guarantee. UNVERIFIED
  — whether this discipline holds for any specific dealer's postings cannot be answered
  without a live extract.

**In the subledger, not on the schedule:**

- **`BSCHL` (Posting Key)** — the two-digit code that determines debit/credit and
  account type at the accounting-document level. A CDK schedule works in terms of
  dealer transaction types (RO, invoice, payment); it has no reason to expose SAP's
  posting-key vocabulary, and a reconciliation has to translate one into the other
  rather than expect a direct match. DOCUMENTED (field exists; the absence on the CDK
  side is a structural fact, not an inference).
- **`MWSKZ`/`MWSTS`/`WMWST` (tax code and tax amounts)** — SAP's open-item tables carry
  full tax-code and tax-amount detail per line; a dealer schedule typically shows the
  post-tax total only, with tax handled in a separate tax-schedule report. DOCUMENTED.
- **Special G/L transaction typing (`UMSKS`/`UMSKZ`)** — SAP distinguishes down payments,
  guarantees, and other special-GL categories as part of the open-item's technical key.
  A dealer schedule has no equivalent typing; it treats a deposit and an invoice as
  different transaction types at the schedule level, not as a flag on the same table.
  INFERRED — the CDK-side absence is asserted from general dealer schedule structure.
- **`REBZG`/`REBZJ`/`REBZZ` (invoice-reference chain for credit memos)** — SAP tracks
  which specific invoice a credit memo reduces via a three-field composite key back to
  the original document. A dealer schedule typically shows credits as their own line
  netted against the customer/vendor total, without a stored pointer back to the
  specific invoice being credited. DOCUMENTED (fields exist; CDK-side absence UNVERIFIED
  against a specific export).

## 5. Roll-forward check

The one reconciliation a schedule and the ledger can agree on exactly, given clean data:

\[
\text{KNC1/LFC1 period total} = \text{prior period balance} + \sum \text{BSID/BSIK debits} - \sum \text{BSAD/BSAK clearings in period}
\]

[`KNC1`](../../sap-modules/fi/tables/KNC1.yaml) (customer) and
[`LFC1`](../../sap-modules/fi/tables/LFC1.yaml) (vendor) carry the stored period
debit/credit/sales totals (`UM01S`/`UM01H`/`UM01U` through `UM16S`/`UM16H`/`UM16U`) that
a schedule's period-end total should tie to exactly, independent of any individual
open-item detail. If the schedule total and the `KNC1`/`LFC1` total disagree, the break
is in the open-item detail somewhere upstream, not in the totals table itself — `KNC1`/
`LFC1` are a checksum, not a source of open-item-level truth. DOCUMENTED — this is the
literal designed purpose of the SAP transaction-figures tables; the framing of it as a
schedule-reconciliation checksum is this repository's own synthesis (INFERRED).

---
© 2026 Dany Thériault / EVE Glyph Design. Pour le bien-être du peuple.
