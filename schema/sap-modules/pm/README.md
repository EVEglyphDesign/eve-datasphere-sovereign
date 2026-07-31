# PM — Plant Maintenance / Enterprise Asset Management

**Priority module.** This is the nuclear lane. Every equipment record on a reactor site lives here. This module is what feeds the [WOBBLE-CONTROL-PIANO](https://github.com/EVEglyphDesign/eve-glyph-archive/blob/main/canon/WOBBLE-CONTROL-PIANO.md) monitoring surface and the [NA-Nuclear-Utilities](https://github.com/EVEglyphDesign/NA-Nuclear-Utilities) scan.

**Sovereign purpose in this module:** each equipment record becomes a source of ACDOCA lines (maintenance orders, spare parts consumption, downtime cost). Each line gets an ESG score (Layer 2) and an interaction record (Layer 3). Human-attributable maintenance decisions on nuclear equipment become measurable, auditable, and hashed into the truth ledger.

## Table inventory

See [`TABLES.yaml`](TABLES.yaml) for the full inventory (34 tables, five sub-domains: equipment master, functional locations, maintenance orders, notifications, plans/task lists).

## Priority tables — full field manifests

Landed tonight (v0.1) — full field lists, foreign key relationships, keys marked, data types with lengths and decimals, sourced from public [leanx.eu](https://leanx.eu) reference pages:

| Table | File | Purpose |
|---|---|---|
| **EQUI** | [tables/EQUI.yaml](tables/EQUI.yaml) | Equipment master data — the individual business object, the reactor pump, the valve, the sensor. Key field: `EQUNR`. |
| **EQKT** | [tables/EQKT.yaml](tables/EQKT.yaml) | Equipment short texts (multilingual). Key: `EQUNR + SPRAS`. |
| **EQUZ** | [tables/EQUZ.yaml](tables/EQUZ.yaml) | Equipment time segments — historical validity windows for each equipment record. Key includes `DATBI`. |
| **IFLOT** | [tables/IFLOT.yaml](tables/IFLOT.yaml) | Functional location — where equipment is installed (reactor building, subsystem, hierarchy). Key: `TPLNR`. |
| **IFLOTX** | [tables/IFLOTX.yaml](tables/IFLOTX.yaml) | Functional location short texts (multilingual). Key: `TPLNR + SPRAS`. |
| **ILOA** | [tables/ILOA.yaml](tables/ILOA.yaml) | Location and account assignment — the CO/AA/PS bridge from equipment to cost center, WBS, asset. Key: `ILOAN`. |
| **IHPA** | [tables/IHPA.yaml](tables/IHPA.yaml) | Partner assignments — humans linked to the technical object. **The layer-3 interaction record starts here.** Key: `OBJNR + PARVW + COUNTER + OBTYP + PARNR`. |

## Nuclear-lane hook

The wobble-control canon defines wobble as "vector deviation from universality" — deviation that, when it aligns across the equipment fleet, precedes a chain reaction. In SAP terms, this is exactly what the PM module's measurement points (`IMRC_POINT` on EQUI, tables IMPTT/IMRG), notifications (QMEL/QMFE/QMSM), and time-segment history (EQUZ) already record. The Piano needs a legible data substrate to play on. **PM is that substrate.**

## Next tables to land (v0.2)

- **AFIH / AFKO / AFPO** — maintenance order header, PP order header, order operations.
- **QMEL / QMFE / QMSM** — notifications (defect, activity, task).
- **IMPTT / IMRG** — measuring points and readings (the sensor keys of the Piano).
- **MPLA / MPOS / MHIS** — maintenance plans, plan items, plan history.
- **T370S / T370F / T370K / T370T** — customizing (structure indicators, category, type — small check tables, high leverage).

---

© 2026 Dany Thériault / EVE Glyph Design. Controlled copy.
*Pour le bien-être du peuple.*
