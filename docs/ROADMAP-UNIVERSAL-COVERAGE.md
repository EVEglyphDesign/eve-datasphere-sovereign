# Roadmap — universal coverage register

**Generated:** 2026-07-31 · inventory vs. field-level definitions across `schema/sap-modules/`.

Coverage is counted as `tables/*.yaml` definitions present against the module's `TABLES.yaml` inventory. Missing entries are promises outstanding, listed so no lane has to re-derive them.

| Module | Defined | Inventoried | Coverage | Outstanding |
|---|---:|---:|---:|---|
| BW | 0 | 6 | 0% | `/BI0/*`, `/BIC/A*`, `RSDCUBE`, `RSDIOBJ`, `RSDODSO`, `RSMONFACT` |
| CO | 11 | 19 | 58% | `CE1`, `CE2`, `CE3`, `CE4`, `CSLA`, `CSLT`, `TKA01`, `TKA02` |
| CROSS | 7 | 39 | 18% | `ADR2`, `ADR3`, `ADR6`, `ADRC`, `AUSP`, `CABN`, `CAWN`, `CDHDR`, `CDPOS`, `DD01L`, `DD01T`, `DD02L`, `DD02T`, `DD03L`, `DD03T`, `DD04L`, `DD04T`, `DD07L`, `DD08L`, `DD09L`, `DD12L`, `DD25L`, `DD30L`, `DD40L`, `JEST`, `JSTO`, `KLAH`, `T002`, `T005`, `T006A`, `TCURT`, `TJ02`, `TJ03` |
| FI | 17 | 42 | 40% | `ACDOCP`, `ACDOCU`, `ANEA`, `ANEK`, `ANEP`, `ANLB`, `ANLC`, `ANLH`, `ANLZ`, `BSAS`, `BSIS`, `FAGLFLEXA`, `FAGLFLEXT`, `FEBEP`, `FEBKO`, `GLT0`, `KNBK`, `KNVV`, `LFBK`, `LFM1`, `T001`, `T001W`, `T012`, `T012K`, `TGSB` |
| HR | 1 | 17 | 6% | `HRP1000`, `HRP1001`, `HRP1002`, `PA0000`, `PA0002`, `PA0006`, `PA0007`, `PA0008`, `PA0014`, `PA0105`, `PA2001`, `PA2002`, `PCL1`, `PCL2`, `PCL3`, `PCL4` |
| MM | 8 | 24 | 33% | `EBKN`, `EINA`, `EINE`, `EKBE`, `EKET`, `EKKN`, `EORD`, `MAKT`, `MARD`, `MATDOC`, `MCH1`, `MCHA`, `MCHB`, `MLGN`, `MLGT`, `MVKE` |
| PM | 14 | 53 | 26% | `AFFH`, `AFFT`, `AFFV`, `AFKO`, `AFPO`, `AFVC`, `AFVV`, `AUFK`, `EQBS`, `EQSE`, `FLEET`, `IHGNS`, `IHSG`, `IMPTX`, `IRLOT`, `IRLOTX`, `MCIPMIS`, `MHIO`, `MHIS`, `PLKO`, `PLMK`, `PLPO`, `PMCO`, `PMPL`, `QMMA`, `QMSM`, `QMUR`, `T024I`, `T352B`, `T357`, `T370B`, `T370C`, `T370F`, `T370K`, `T370S`, `T370T`, `T399I`, `T499S`, `VIQMEL` |
| PP | 9 | 17 | 53% | `AUFK`, `MAPL`, `MDKP`, `MDTB`, `MDVM`, `PLAB`, `PLMZ`, `STAS` |
| PS | 0 | 8 | 0% | `AFKO`, `AFVC`, `NAST`, `PRHI`, `PROJ`, `PRPS`, `PRTE`, `PRTX` |
| QM | 3 | 10 | 30% | `QAMR`, `QASR`, `QAVE`, `QMEL`, `QMFE`, `QMSM`, `QPMK`, `QPMT` |
| SD | 7 | 21 | 33% | `A004`, `KONH`, `KONP`, `TSPA`, `TVBVK`, `TVKBZ`, `TVKO`, `TVKOV`, `TVTA`, `VBEP`, `VBKD`, `VBPA`, `VBUK`, `VBUP` |
| **TOTAL** | **77** | **256** | **30%** | **179 outstanding** |

## Shared structures — define once, reference everywhere

Rule 4 of [the non-proliferation compact](DOCTRINE-MIRROR-NON-PROLIFERATION.md). These tables are inventoried by more than one module and must resolve to a single definition:

| Table | Claimed by |
|---|---|
| `AFKO` | PM, PP, PS |
| `AFPO` | PM, PP |
| `AFVC` | PM, PP, PS |
| `AUFK` | CO, PM, PP |
| `PLKO` | PM, PP |
| `PLPO` | PM, PP |
| `QMEL` | PM, QM |
| `QMFE` | PM, QM |
| `QMSM` | PM, QM |

*Pour le bien-être du peuple.*
