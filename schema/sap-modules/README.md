# SAP Module Catalog

This directory mirrors the SAP data model, module by module, as YAML manifests. Each module has a `TABLES.yaml` inventory of every table we track; priority tables have full field-level manifests under `<module>/tables/<TABLE>.yaml`.

**Sources:** [SAP Help Portal](https://help.sap.com/), [leanx.eu](https://leanx.eu/), and public community references. Every field manifest carries a `source:` URL back to its origin.

## Modules

| Module | Description | Inventory | Field manifests |
|---|---|---|---|
| **[PM](pm/)** — Plant Maintenance / EAM | Equipment, functional locations, maintenance orders, notifications, measuring points, plans | [TABLES.yaml](pm/TABLES.yaml) | 7 landed |
| **[FI](fi/)** — Financial Accounting | Universal Journal (ACDOCA), classic FI docs, GL master, AR/AP master, Asset Accounting, bank | [TABLES.yaml](fi/TABLES.yaml) | pending |
| **[CO](co/)** — Controlling | Cost centers, profit centers, internal orders, activity types, COPA | [TABLES.yaml](co/TABLES.yaml) | pending |
| **[MM](mm/)** — Materials Management | Material master, purchasing, inventory movements, batches | [TABLES.yaml](mm/TABLES.yaml) | pending |
| **[SD](sd/)** — Sales & Distribution | Sales orders, delivery, billing, pricing conditions, sales org | [TABLES.yaml](sd/TABLES.yaml) | pending |
| **[PP](pp/)** — Production Planning | BOM, routings, production orders, MRP | [TABLES.yaml](pp/TABLES.yaml) | pending |
| **[QM](qm/)** — Quality Management | Inspection lots, notifications, master inspection characteristics | [TABLES.yaml](qm/TABLES.yaml) | pending |
| **[PS](ps/)** — Project System | Projects, WBS, networks, activities | [TABLES.yaml](ps/TABLES.yaml) | pending |
| **[HR](hr/)** — Human Resources | Personnel infotypes (PA*/PB*), Org Mgmt (HRP*), time, payroll clusters (PCL*) | [TABLES.yaml](hr/TABLES.yaml) | pending |
| **[BW](bw/)** — Business Warehouse | InfoObjects, InfoProviders, DSOs, load monitoring | [TABLES.yaml](bw/TABLES.yaml) | pending |
| **[CROSS](cross/)** — Cross-application | DDIC (the model's own model), addresses, currencies, UOMs, object numbers, classification, change docs | [TABLES.yaml](cross/TABLES.yaml) | pending |

## Field manifest shape

Every table with a field manifest follows the same canonical shape (see [`pm/tables/EQUI.yaml`](pm/tables/EQUI.yaml) for a worked example):

```yaml
table: EQUI
module: PM
description: "..."
source: https://leanx.eu/sap/table/equi/
fields:
  - name: FIELD
    description: "..."
    data_element: XXX
    check_table: XXX or ~
    datatype: CHAR|DATS|NUMC|CURR|QUAN|UNIT|CUKY|CLNT|LANG|RAW|TIMS|DEC|INT4
    length: N
    decimals: N
    key: true|false
foreign_keys:
  - field: X
    check_table: Y
    check_field: Z
```

## Why this is a sovereign artifact

Every ACDOCA line in a customer's SAP system is a fact about that customer's business — postings, movements, transactions, human interactions. The SAP data model is the *shape* of that fact-space. This directory encodes that shape as public, forkable, non-proprietary YAML so any customer running SAP can reason about, extract, and extend their own data without asking SAP for permission to understand their own model.

**Not a SAP redistribution.** These YAML files describe the *shape* of standard SAP tables (names, keys, foreign keys, field lists) using information published by SAP itself on help.sap.com and by third-party references. Customer data is never included.

---

*Doctrine:* [`docs/DOCTRINE-ESG-ACDOCA-EXTENSION.md`](../../docs/DOCTRINE-ESG-ACDOCA-EXTENSION.md)
*Repository:* [`EVEglyphDesign/eve-datasphere-sovereign`](https://github.com/EVEglyphDesign/eve-datasphere-sovereign)

© 2026 Dany Thériault / EVE Glyph Design. Pour le bien-être du peuple.
