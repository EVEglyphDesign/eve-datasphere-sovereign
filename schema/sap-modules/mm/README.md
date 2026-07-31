# MM — Materials Management

The MM lane models the materials and procurement spine: what a material *is*,
where it lives, what it's worth, how it gets requested and purchased, and how
its movement is recorded. This is the operational half of the value chain that
the FI lane (`ACDOCA`) turns into financial truth.

## Table groups

**Material master** — `MARA` (client-level general data: type, group, base
unit of measure, weight/volume), `MARC` (plant-level extension: MRP type,
procurement type, purchasing group, lot-size rules), `MBEW` (valuation-area
level: price control, moving average/standard price, valuation class, stock
value). Together these three answer "what is this material, where is it
stocked, and what is it worth" at increasing levels of granularity —
client → plant → valuation area.

**Purchase requisitions** — `EBAN` is the internal ask: a requester's request
to buy a material or service, carrying quantity, delivery date, desired
vendor, and account assignment before any commitment exists.

**Purchase orders** — `EKKO` (header: vendor, purchasing org, terms, currency,
release status) and `EKPO` (item: material, quantity, net price, account
assignment category, GR/IR control flags) form the legal commitment to a
vendor. An `EKPO` item can trace back to the `EBAN` requisition that spawned it
via `BANFN`/`BNFPO`, and forward to the `EKKO` header via `EBELN`.

**Goods movement** — `MKPF` (document header: movement date, user, reference)
and `MSEG` (line items: movement type, quantity, plant/storage location,
account assignment, and the G/L account touched) capture the physical and
value-relevant event — goods receipt, issue, or transfer — against a
purchase order, reservation, or standalone movement.

## The procure-to-record chain

```
EBAN (requisition) → EKKO/EKPO (purchase order) → MKPF/MSEG (goods movement) → BSEG/ACDOCA (FI posting)
        ▲                     ▲                           ▲
      MARA/MARC/MBEW ─────────┴───────────────────────────┘
      (material identity, plant scope, valuation)
```

A requisition (`EBAN`) is converted into a purchase order (`EKKO`/`EKPO`).
Receiving goods against that order posts a material document (`MKPF`/`MSEG`),
which values the movement using the material's current price in `MBEW` and
simultaneously triggers an FI/CO posting — the `MSEG`-to-`BSEG` chain — landing
in `ACDOCA` as the system of record. `MARC` supplies the plant-specific control
data (MRP type, procurement type) that determines whether a requisition or
order is even generated in the first place.

## Key fields at a glance

| Table | Primary key |
|---|---|
| MARA | MANDT, MATNR |
| MARC | MANDT, MATNR, WERKS |
| MBEW | MANDT, MATNR, BWKEY, BWTAR |
| EBAN | MANDT, BANFN, BNFPO |
| EKKO | MANDT, EBELN |
| EKPO | MANDT, EBELN, EBELP |
| MKPF | MANDT, MBLNR, MJAHR |
| MSEG | MANDT, MBLNR, MJAHR, ZEILE |

## Source

Field manifests harvested from [leanx.eu](https://leanx.eu/en/sap/) per-table
pages; see each table's YAML `source:` field for the exact URL.

# © 2026 Dany Thériault / EVE Glyph Design. Pour le bien-être du peuple.
