# Roadmap — universal coverage register

**Generated:** 2026-08-01 01:05 UTC by [`scripts/coverage.py`](../scripts/coverage.py). Do not hand-edit.

Coverage counts field-level `tables/*.yaml` definitions against each module's `TABLES.yaml` inventory, resolved model-wide. **Owned** is defined under that module. **Ref** is inventoried by the module and satisfied by a definition owned elsewhere — Rule 4 of [the non-proliferation compact](DOCTRINE-MIRROR-NON-PROLIFERATION.md), define once and reference everywhere. **Outstanding** entries are promises the model has made and not yet kept; they are listed so no lane has to re-derive them.

| Module | Owned | Ref | Inventoried | Resolved | Outstanding |
|---|---:|---:|---:|---:|---|
| BW | 0 | 0 | 6 | 0% | `/BI0/*`, `/BIC/A*`, `RSDCUBE`, `RSDIOBJ`, `RSDODSO`, `RSMONFACT` |
| CO | 11 | 0 | 19 | 58% | `CE1`, `CE2`, `CE3`, `CE4`, `CSLA`, `CSLT`, `TKA01`, `TKA02` |
| CROSS | 6 | 0 | 39 | 15% | `ADR2`, `ADR3`, `ADR6`, `ADRC`, `AUSP`, `CABN`, `CAWN`, `CDHDR`, `CDPOS`, `DD01L`, `DD01T`, `DD02L`, `DD02T`, `DD03L`, `DD03T`, `DD04L`, `DD04T`, `DD07L`, `DD08L`, `DD09L`, `DD12L`, `DD25L`, `DD30L`, `DD40L`, `JEST`, `JSTO`, `KLAH`, `T002`, `T005`, `T006A`, `TCURT`, `TJ02`, `TJ03` |
| FI | 17 | 1 | 42 | 43% | `ACDOCP`, `ACDOCU`, `ANEA`, `ANEK`, `ANEP`, `ANLB`, `ANLC`, `ANLH`, `ANLZ`, `BSAS`, `BSIS`, `FAGLFLEXA`, `FAGLFLEXT`, `FEBEP`, `FEBKO`, `GLT0`, `KNBK`, `KNVV`, `LFBK`, `LFM1`, `T001W`, `T012`, `T012K`, `TGSB` |
| HR | 1 | 0 | 17 | 6% | `HRP1000`, `HRP1001`, `HRP1002`, `PA0000`, `PA0002`, `PA0006`, `PA0007`, `PA0008`, `PA0014`, `PA0105`, `PA2001`, `PA2002`, `PCL1`, `PCL2`, `PCL3`, `PCL4` |
| MM | 8 | 0 | 24 | 33% | `EBKN`, `EINA`, `EINE`, `EKBE`, `EKET`, `EKKN`, `EORD`, `MAKT`, `MARD`, `MATDOC`, `MCH1`, `MCHA`, `MCHB`, `MLGN`, `MLGT`, `MVKE` |
| PM | 14 | 6 | 53 | 38% | `AFFH`, `AFFT`, `AFFV`, `AFVV`, `EQBS`, `EQSE`, `FLEET`, `IHGNS`, `IHSG`, `IMPTX`, `IRLOT`, `IRLOTX`, `MCIPMIS`, `MHIO`, `MHIS`, `PLMK`, `PMCO`, `PMPL`, `QMMA`, `QMSM`, `QMUR`, `T024I`, `T352B`, `T357`, `T370B`, `T370C`, `T370F`, `T370K`, `T370S`, `T370T`, `T399I`, `T499S`, `VIQMEL` |
| PP | 9 | 1 | 17 | 59% | `MAPL`, `MDKP`, `MDTB`, `MDVM`, `PLAB`, `PLMZ`, `STAS` |
| PS | 0 | 2 | 8 | 25% | `NAST`, `PRHI`, `PROJ`, `PRPS`, `PRTE`, `PRTX` |
| QM | 2 | 2 | 10 | 40% | `QAMR`, `QASR`, `QAVE`, `QMSM`, `QPMK`, `QPMT` |
| SD | 7 | 0 | 21 | 33% | `A004`, `KONH`, `KONP`, `TSPA`, `TVBVK`, `TVKBZ`, `TVKO`, `TVKOV`, `TVTA`, `VBEP`, `VBKD`, `VBPA`, `VBUK`, `VBUP` |
| **TOTAL** | **75** | **12** | **256** | **34%** | **169 outstanding** |

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
| `QMSM` | — | PM, QM | outstanding |

*Pour le bien-être du peuple.*
