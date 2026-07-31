# CO — Controlling (Management Accounting)

CO is SAP's internal management-accounting lane: cost objects, cost elements,
and profit centers that carry a company's *internal* view of where money and
value move — as distinct from FI's external, statutory view. In classic ECC,
CO postings live in their own tables (COEP/COBK/COSS/COSP); in S/4HANA every
CO line item is also written straight into
[`ACDOCA`](../fi/tables/ACDOCA.yaml), the Universal Journal — so CO is no
longer a parallel ledger but a set of *dimensions* (cost center, profit
center, cost element) hanging off the same truth-ledger row as FI and Asset
Accounting.

## Table inventory

See [`TABLES.yaml`](TABLES.yaml) for the full inventory (19 tables spanning
line items/totals, cost center master, cost elements, profit centers,
internal orders, activity types, and COPA).

## Priority tables — full field manifests

Full field lists, foreign keys, keys marked, data types with lengths and
decimals, sourced from public [leanx.eu](https://leanx.eu) reference pages:

| Table | File | Purpose |
|---|---|---|
| **COEP** | [tables/COEP.yaml](tables/COEP.yaml) | CO Object: Line Items by Period — the granular actual/plan posting record for cost centers, orders, and other CO objects. Key: `KOKRS + BELNR + BUZEI + PERIO + OBJNR + GJAHR + WRTTP + VERSN + KSTAR + HRKFT + VRGNG`. |
| **COBK** | [tables/COBK.yaml](tables/COBK.yaml) | CO Object: Document Header — one header per CO document, linking line items back to the originating business transaction. Key: `KOKRS + BELNR + GJAHR`. |
| **COSS** | [tables/COSS.yaml](tables/COSS.yaml) | CO Object: Cost Totals for Internal Postings — 16-period totals bucket for internally generated CO postings (allocations, assessments, distributions). Key: `OBJNR + GJAHR + WRTTP + VERSN + KSTAR + HRKFT + VRGNG + PAROB`. |
| **COSP** | [tables/COSP.yaml](tables/COSP.yaml) | CO Object: Cost Totals for External Postings — 16-period totals bucket for CO postings sourced outside Controlling (FI, MM). Key: `OBJNR + GJAHR + WRTTP + VERSN + KSTAR + HRKFT + VRGNG + VBUND`. |
| **CSKS** | [tables/CSKS.yaml](tables/CSKS.yaml) | Cost Center Master Data — the organizational unit that collects costs within a controlling area, time-sliced by validity period. Key: `KOKRS + KOSTL + DATBI + DATAB`. |
| **CSKT** | [tables/CSKT.yaml](tables/CSKT.yaml) | Cost Center Texts — language-dependent short/long names for a cost center. Key: `SPRAS + KOKRS + KOSTL + DATBI`. |
| **CSKA** | [tables/CSKA.yaml](tables/CSKA.yaml) | Cost Elements (chart-of-accounts level) — the CO-side twin of a G/L account, classifying what kind of cost or revenue is being tracked. Key: `KTOPL + KSTAR`. |
| **CSKB** | [tables/CSKB.yaml](tables/CSKB.yaml) | Cost Elements (Controlling Area level) — time-sliced controlling-area extension of a cost element, carrying category and allocation cost center/order. Key: `KOKRS + KSTAR + DATBI`. |
| **CEPC** | [tables/CEPC.yaml](tables/CEPC.yaml) | Profit Center Master Data — the internal profitability reporting unit; feeds `PRCTR` on ACDOCA lines directly. Key: `PRCTR + DATBI + KOKRS`. |
| **CEPCT** | [tables/CEPCT.yaml](tables/CEPCT.yaml) | Profit Center Texts — language-dependent short/long names for profit centers. Key: `SPRAS + PRCTR + DATBI`. |
| **AUFK** | [tables/AUFK.yaml](tables/AUFK.yaml) | Order master data — the header shared by every SAP order type (internal order, maintenance order, service order). **This is the table the CDK Drive repair order keys against**: `AUFK-AUFNR` is the SAP analogue of a CDK repair-order number. Key: `MANDT + AUFNR`. |

## How CO feeds the Universal Journal

`ACDOCA` carries CO dimensions natively:

- `RCNTR` (Cost Center) ← `CSKS.KOSTL`
- `PRCTR` / `PPRCTR` (Profit Center / Partner Profit Center) ← `CEPC.PRCTR`
- `KOKRS` (Controlling Area) ← `TKA01`
- account/cost-element assignment ties `RACCT` back to `CSKA.KSTAR` via the
  shared chart of accounts

Classic CO totals/line-item tables (COEP, COSS, COSP) still exist in
S/4HANA as compatibility views over ACDOCA — the sovereign shape here
documents both the classic tables (what most on-prem ECC systems still run)
and the dimensions they project into the universal journal.

## Why this is a sovereign artifact

A company's cost centers and profit centers are the shape of how it
internally attributes value and expense to people, sites, and activities.
Documenting that shape publicly means any organization running SAP can
reconstruct, audit, and extend its own management-accounting model without
depending on SAP to explain it back to them.

---
© 2026 Dany Thériault / EVE Glyph Design. Controlled copy.
*Pour le bien-être du peuple.*
