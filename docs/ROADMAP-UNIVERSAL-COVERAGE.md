# Roadmap — universal coverage register

**Generated:** 2026-08-01 01:46 UTC by [`scripts/coverage.py`](../scripts/coverage.py). Do not hand-edit.

Coverage counts field-level `tables/*.yaml` definitions against each module's `TABLES.yaml` inventory, resolved model-wide. **Owned** is defined under that module. **Ref** is inventoried by the module and satisfied by a definition owned elsewhere — Rule 4 of [the non-proliferation compact](DOCTRINE-MIRROR-NON-PROLIFERATION.md), define once and reference everywhere. **Outstanding** entries are promises the model has made and not yet kept; they are listed so no lane has to re-derive them.

| Module | Owned | Ref | Inventoried | Resolved | Outstanding |
|---|---:|---:|---:|---:|---|
| BW | 6 | 0 | 6 | 100% | — |
| CO | 19 | 0 | 19 | 100% | — |
| CROSS | 39 | 0 | 39 | 100% | — |
| FI | 41 | 1 | 42 | 100% | — |
| HR | 17 | 0 | 17 | 100% | — |
| MM | 24 | 0 | 24 | 100% | — |
| PM | 47 | 6 | 53 | 100% | — |
| PP | 16 | 1 | 17 | 100% | — |
| PS | 6 | 2 | 8 | 100% | — |
| QM | 7 | 3 | 10 | 100% | — |
| SD | 21 | 0 | 21 | 100% | — |
| **TOTAL** | **243** | **13** | **256** | **100%** | **0 outstanding** |

## Shared structures — define once, reference everywhere

Inventoried by more than one module. Each resolves to a single definition; the owning module is authoritative and the others reference it. A second copy on disk would be proliferation by another name.

| Table | Owner | Also claimed by | Status |
|---|---|---|---|
| `AFKO` | PP | PM, PS | [defined](../schema/sap-modules/pp/tables/AFKO.yaml) |
| `AFPO` | PP | PM | [defined](../schema/sap-modules/pp/tables/AFPO.yaml) |
| `AFVC` | PP | PM, PS | [defined](../schema/sap-modules/pp/tables/AFVC.yaml) |
| `AUFK` | CO | PM, PP | [defined](../schema/sap-modules/co/tables/AUFK.yaml) |
| `PLKO` | PP | PM | [defined](../schema/sap-modules/pp/tables/PLKO.yaml) |
| `PLPO` | PP | PM | [defined](../schema/sap-modules/pp/tables/PLPO.yaml) |
| `QMEL` | PM | QM | [defined](../schema/sap-modules/pm/tables/QMEL.yaml) |
| `QMFE` | PM | QM | [defined](../schema/sap-modules/pm/tables/QMFE.yaml) |
| `QMSM` | PM | QM | [defined](../schema/sap-modules/pm/tables/QMSM.yaml) |

*Pour le bien-être du peuple.*
