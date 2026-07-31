# QM — Quality Management

QM is the inspection spine: inspection lots get opened, characteristics get sampled and recorded, and a usage decision closes the loop. This module answers a narrower question than PM's "what happened to the equipment" — it answers "was the output within spec, and who signed off on it."

**Sovereign purpose in this module:** every inspection lot is a discrete, timestamped, attributable observation event. That is exactly the shape the truth-ledger needs — a bounded claim, made by a named user, against a defined material/vendor/plant combination, resolvable to pass/fail. QALS rows are candidate truth-ledger observation records; QINF/QMAT are the policy layer that decided an inspection was required in the first place.

## Table inventory

See [`TABLES.yaml`](TABLES.yaml) for the full inventory. Landed tonight (v0.1):

| Table | File | Purpose |
|---|---|---|
| **QALS** | [tables/QALS.yaml](tables/QALS.yaml) | Inspection lot record — the spine table. Origin, ~50 status bitfields (`STAT01`–`STAT50`), sampling, usage decision, full account assignment (cost center, WBS, order, asset). Key: `MANDANT + PRUEFLOS + WERK + ART + HERKUNFT + OBJNR + OBTYP + STSMA + QMATAUTH`. |
| **QINF** | [tables/QINF.yaml](tables/QINF.yaml) | Quality info record — material/vendor-level quality agreement: release status, vendor QM system, source-inspection control. Key: `MANDT + MATNR + ZAEHL + LIEFERANT`. |
| **QMAT** | [tables/QMAT.yaml](tables/QMAT.yaml) | Inspection type — material/plant parameters. Controls whether an inspection type is active, sampling procedure, and stock posting behavior for a material at a plant. Key: `MANDT + ART + MATNR + WERKS`. |

QMEL and QMFE (notification header/items) are shared with PM and are written under [`../pm/tables/`](../pm/tables/) since PM is their primary lane; QALS/QINF/QMAT reference them but do not duplicate them.

## Hooks

QM plugs into the same nuclear-lane substrate as PM. `IMPTT`/`IMRG` (written under PM — the sensor-key surface: measuring points and their readings) already carry `PRUEFLOS` (inspection lot) and `MERKNR` (characteristic number) foreign keys straight into `QALS`. That means a sensor reading and an inspection-lot result can sit on the same object number chain. `IHPA` (PM, human-equipment Layer-3 partner assignments) closes the loop on the human side: a person can be tied to both the equipment record and, transitively through QMEL/QALS, the inspection outcome. Kept deliberately thin here — the detail lives in the PM README's nuclear-lane section.

## Next tables to land (v0.2)

- **QAMR / QASR** — characteristic and sample results recorded during inspection processing.
- **QAVE** — inspection processing / usage decision detail.
- **QMSM** — notification tasks (shared with PM notification chain).
- **QPMK / QPMZ** — master inspection characteristics and their versions.
- **TQ30 / TQ31 / TQ80** — customizing (inspection type, lot origin, notification type — small check tables, high leverage).

---

© 2026 Dany Thériault / EVE Glyph Design. Controlled copy.
*Pour le bien-être du peuple.*
