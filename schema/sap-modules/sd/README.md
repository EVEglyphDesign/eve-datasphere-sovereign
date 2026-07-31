# SD — Sales and Distribution

This lane documents the SAP Sales and Distribution (SD) chain: the sequence
of documents that carries a customer sale from order entry through delivery
to billing, and the pricing engine that computes the values along the way.

## Document chain

```
VBAK/VBAP   (Sales Order: header/item)
    │  VGBEL/VGPOS, KDAUF/KDPOS
    ▼
LIKP/LIPS   (Outbound Delivery: header/item)
    │  VGBEL/VGPOS
    ▼
VBRK/VBRP   (Billing Document: header/item)
    │  BELNR → BKPF / ACDOCA (FI)
    ▼
ACDOCA      (Universal Journal: revenue lines)
```

- **VBAK / VBAP** — Sales document header and item data for orders,
  quotations, and contracts. `VBAK-KNUMV` links the header to its pricing
  conditions in KONV; `VBAP-MATNR`, `WERKS`, and `KWMENG` drive delivery and
  billing quantities downstream.
- **LIKP / LIPS** — Outbound delivery header and item data. `LIPS-KDAUF` /
  `KDPOS` reference the originating sales order item (VBAK/VBAP); `LFIMG`
  carries the actual quantity picked and shipped, which becomes the basis
  for invoiced quantity in VBRP.
- **VBRK / VBRP** — Billing document header and item data (invoices, credit
  and debit memos). `VBRP-AUBEL`/`AUPOS` and `VGBEL`/`VGPOS` trace back to
  the sales order and delivery. `VBRK-KNUMV` links to its own pricing
  conditions, and `VBRK-BELNR`/`GJAHR` identify the FI accounting document
  created when the billing document is released to accounting.

## Condition pricing (KONV)

**KONV** is the transaction-level pricing and condition engine shared by
all three document types. Every pricing-relevant document (VBAK, LIKP,
VBRK) carries a `KNUMV` (document condition number); KONV rows keyed by
that `KNUMV` plus `KPOSN` (condition item), `STUNR`/`ZAEHK` (pricing
procedure step/counter), and `KSCHL` (condition type) hold the individual
price, discount, surcharge, freight, and tax components that are summed
into `NETWR` on VBAP/VBRP and `MWSBP`/`MWSBK` tax fields. `KVSL1`/`SAKN1`
on each condition record identify the G/L account that revenue or
deduction postings are made to.

## Feeding ACDOCA

When a billing document (VBRK) is released to accounting, SAP creates an
FI document referenced by `VBRK-BELNR`/`GJAHR`. That accounting document
posts revenue, tax, and cost-of-goods-sold lines into `BKPF`/`BSEG` and,
in a Universal Journal (S/4HANA) system, directly into **ACDOCA** — see
[`../fi/tables/ACDOCA.yaml`](../fi/tables/ACDOCA.yaml). The condition
values computed in KONV and carried on VBRP items are what populate the
revenue and discount amount fields on those ACDOCA lines, closing the loop
from sales order to the general ledger.

## Tables in this lane

| Table | Role |
|---|---|
| [VBAK](tables/VBAK.yaml) | Sales document header |
| [VBAP](tables/VBAP.yaml) | Sales document item |
| [LIKP](tables/LIKP.yaml) | Delivery header |
| [LIPS](tables/LIPS.yaml) | Delivery item |
| [VBRK](tables/VBRK.yaml) | Billing document header |
| [VBRP](tables/VBRP.yaml) | Billing document item |
| [KONV](tables/KONV.yaml) | Pricing/condition transaction data |

Sources: [leanx.eu SAP table reference](https://leanx.eu/en/sap/table/vbak.html).

# © 2026 Dany Thériault / EVE Glyph Design. Pour le bien-être du peuple.
