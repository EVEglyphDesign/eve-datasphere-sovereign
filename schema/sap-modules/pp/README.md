# PP — Production Planning / Manufacturing Execution

**The manufacturing spine.** This module carries the bill-of-material chain and
the routing chain into live production orders — the exact sequence that turns
a material master and a plant into a scheduled shop-floor operation with
booked costs. PP is the connective tissue between MM's material flow and PM's
equipment/work-center world.

**Sovereign purpose in this module:** every production order line eventually
lands cost in ACDOCA (material consumption, activity confirmations, order
settlement). Each BOM component and each routing operation is a decision
point — what gets built, from what, on which resource — and each becomes an
auditable, human-attributable link in the truth ledger.

## Table inventory — full field manifests

Landed (wave 6) — full field lists, foreign key relationships, keys marked,
data types with lengths and decimals, sourced from public
[leanx.eu](https://leanx.eu) reference pages:

| Table | File | Purpose |
|---|---|---|
| **MAST** | [tables/MAST.yaml](tables/MAST.yaml) | Material-to-BOM link — ties a material/plant/BOM-usage to its bill of material number and alternative. Entry point of the BOM chain. Key: `MATNR + WERKS + STLAN + STLNR + STLAL`. |
| **STKO** | [tables/STKO.yaml](tables/STKO.yaml) | BOM header — category, alternative, base quantity, status, change-number tracking. Key: `STLTY + STLNR + STLAL + STKOZ + DATUV`. |
| **STPO** | [tables/STPO.yaml](tables/STPO.yaml) | BOM item — individual component lines (quantity, item category, scrap, procurement, purchasing group). Key: `STLTY + STLNR + STLKN + STPOZ + DATUV`. |
| **PLKO** | [tables/PLKO.yaml](tables/PLKO.yaml) | Task list (routing) group header — usage, status, planner group, lot-size validity. Key: `PLNTY + PLNNR + PLNAL`. |
| **PLPO** | [tables/PLPO.yaml](tables/PLPO.yaml) | Task list operation/activity — control key, work center, standard values, scheduling floats. Key: `PLNTY + PLNNR + PLNKN + ZAEHL`. |
| **AFKO** | [tables/AFKO.yaml](tables/AFKO.yaml) | Order header data (PP orders) — dates, quantities, BOM/routing references, MRP controller. Key: `AUFNR`. |
| **AFPO** | [tables/AFPO.yaml](tables/AFPO.yaml) | Order item — production order line detail (material, quantities, goods receipt, batch, storage location). Key: `AUFNR + POSNR`. |
| **AFVC** | [tables/AFVC.yaml](tables/AFVC.yaml) | Operation within an order — work center, control key, standard values, confirmations. Key: `AUFPL + APLZL`. |

## The manufacturing spine

Two upstream master-data chains feed one downstream execution chain:

```
BOM chain:      MAST → STKO → STPO        (what a material is built from)
Routing chain:  PLKO → PLPO                (how/where it gets built)
                          \        /
Production spine:     AFKO → AFPO → AFVC   (the scheduled, costed instance)
```

`AFKO` carries `STLNR`/`STLAL` (BOM reference) and `PLNNR`/`PLNAL` (routing
reference) — the order header is where the two master-data chains are
snapshotted into an executable order. `AFPO` holds the component/material
side per order item; `AFVC` holds the operation/work-center side per order
activity, mirroring `STPO` and `PLPO` respectively but bound to a real
`AUFNR`.

## Cross-module hooks

- **→ MM**: `MAST.MATNR`/`STPO.IDNRK` resolve against `MARA`; component
  issues post through `MSEG`/`MKPF`. Purchasing fields on `STPO`/`PLPO`
  (`EKGRP`, `EKORG`, `LIFNR`) bridge to `EKKO`/`EKPO`.
- **→ PM**: `PLPO`/`AFVC` carry `TPLNR`/`EQUNR` — a routing operation or
  order activity can be tied directly to a functional location or piece of
  equipment, linking production execution to the PM asset spine.
- **→ CO**: `AFVC` activity types (`LAR01`-`LAR06`, `LARNT`) and cost
  elements (`SAKTO`) settle into `CSKS`/`CSKA`; order settlement ultimately
  posts to `ACDOCA`.

## Next tables to land

- **CRHD / CRTX** — work center master and texts (referenced by `PLPO.ARBID`/`AFVC.ARBID`).
- **RESB** — reservations (referenced via `AFKO.RSNUM`/`AFPO.KRSNR`).
- **MAPL** — material-to-task-list assignment, the routing-side counterpart to `MAST`.

---

© 2026 Dany Thériault / EVE Glyph Design. Controlled copy.
*Pour le bien-être du peuple.*
