# FI — Financial Accounting

The FI lane is the **truth ledger** of the sovereign reference schema. Every
value posted anywhere else in the SAP landscape (MM goods movements, SD
billing, PP order settlement, CO cost allocations) eventually lands here as
a hard accounting document. If a number disagrees with FI, FI wins.

## Backbone: ACDOCA

[`ACDOCA`](tables/ACDOCA.yaml) is the S/4HANA Universal Journal — a single
line-item table that merges FI, CO, Asset Accounting, Material Ledger, and
CO-PA into one row grain (ledger, company code, fiscal year, document,
line). It is the reporting backbone: nearly every field in the tables below
is either a source for, or a foreign key from, ACDOCA. ACDOCA was written
in a prior wave and is not modified here.

## Journal / GL spine

- [`BKPF`](tables/BKPF.yaml) — Accounting Document Header. One row per
  posted FI document: company code, fiscal year, document type, posting
  and document dates, currency, reference key.
- [`BSEG`](tables/BSEG.yaml) — Accounting Document Segment (line items).
  The classical (pre-S/4) journal line table; ~350 fields in the real
  system, first 100 including all key fields captured here. Carries the
  vendor/customer/G-L/asset account assignment for every posting.
- [`SKA1`](tables/SKA1.yaml) — G/L Account Master, chart-of-accounts level
  (account exists once per chart of accounts, e.g. balance sheet flag,
  P&L type, group account number).
- [`SKB1`](tables/SKB1.yaml) — G/L Account Master, company-code level
  (open item management, tolerance group, tax category, interest calc).

`SKA1` + `SKB1` together define a G/L account the way `MARA` + `MARC`
define a material: global attributes plus per-company-code control data.

## Vendor spine (Accounts Payable) / Customer spine (Accounts Receivable)

- [`LFA1`](tables/LFA1.yaml) / [`KNA1`](tables/KNA1.yaml) — general section:
  client-wide identity, address, country, tax numbers, bank-independent data.
- [`LFB1`](tables/LFB1.yaml) / [`KNB1`](tables/KNB1.yaml) — company code
  segment: reconciliation account, payment terms, dunning, payment block.

Vendor and customer masters mirror each other by design: `LFA1`/`KNA1` hold
what is true regardless of company code, `LFB1`/`KNB1` hold what a specific
company code agreed with that business partner (reconciliation account,
payment method, dunning).

## Asset spine (Asset Accounting / FI-AA)

- [`ANLA`](tables/ANLA.yaml) — Asset Master Record Segment. One row per
  main asset / sub-number: asset class, capitalization date, acquisition
  value, leasing terms. Depreciation areas and period values live in
  companion tables (`ANLB`, `ANLC`) not yet harvested in this wave.

Assets post into `BSEG`/`ACDOCA` via `ANLN1`/`ANLN2`, so `ANLA` closes the
loop between the physical/fiscal asset record and the journal.

## How the pieces connect

```
BKPF (header) ──1:N── BSEG (line items) ──┬── SKB1/SKA1 (G/L account)
                                            ├── LFB1/LFA1 (vendor)
                                            ├── KNB1/KNA1 (customer)
                                            └── ANLA (asset)
                         │
                         └──> ACDOCA (Universal Journal — same facts,
                                       S/4HANA single-table grain)
```

## Sources

Field manifests were harvested from [leanx.eu](https://leanx.eu) SAP table
dictionary pages, one page per table (see `source:` key in each YAML file).

# © 2026 Dany Thériault / EVE Glyph Design. Pour le bien-être du peuple.
