# eve-datasphere-sovereign

**ACDOCA extended through every system. Every transaction scored for ESG. Every interaction record attributes profitability to the human who produced the good. Hashed, published, freely tradeable.**

This is the truth ledger — the technical ledger and the ESG ledger — as one continuous ACDOCA extension, seeded from the disaster-recovery copy of SAP the customer already owns as a capital asset.

Pour le bien-être du peuple.

---

## The thesis in one paragraph

Every enterprise already produces ACDOCA-shaped journal lines. The disaster-recovery instance the customer already owns is enough to mirror those lines, on customer-owned infrastructure, under customer-owned copyright. On top of that spine we attach two companion column sets on every line — an **ESG score** (E, S, G triple, scored at posting time) and an **interaction record** (which humans contributed, weighted by causal share). The chain is hashed with the same primitive already proven in [truth-ledger/msl](https://github.com/EVEglyphDesign/truth-ledger/tree/main/msl), published through the [agent-governance-ledger](https://github.com/EVEglyphDesign/agent-governance-ledger) rail, and permission-free to trade. **Profitability per human** becomes a first-class query. **ESG value flows at transaction granularity**, no existing institution required. **Sovereign AI requires sovereign data — and this is the sovereign data.**

This is not anti-SAP. It is not third-party support. It is not a migration play. It is **extension** — the customer's own capital asset, extended into the ledger that lets the world heal at the speed of commerce.

Full doctrine: [`docs/DOCTRINE-ESG-ACDOCA-EXTENSION.md`](docs/DOCTRINE-ESG-ACDOCA-EXTENSION.md) (DRAFT v0, awaiting Apex ratification).

---

## Why now

- **ECC 2027 deadline** is forcing customers into RISE / Cloud ERP subscriptions they can't afford and don't want.
- **AI value is being gated behind cloud migration.** Chad Stewart's July 2026 TechRadar piece captures the pattern: [Agentic AI has a price: it's called ERP migration](https://www.techradar.com/pro/agentic-ai-has-a-price-its-called-erp-migration).
- **Bundeskartellamt** (30 July 2026) preliminary decision on SAP/Celonis confirms that the spring API policy is being watched by regulators. Data-access rights are now a public policy question.
- **Sovereign AI is the only remaining moat.** Every serious enterprise buyer is being told to bring AI to their data, not send their data to someone else's AI. The DR copy in the DMZ is where that promise becomes real.

---

## Architecture (v0)

```
┌──────────────────────────┐         ┌─────────────────────────────────┐
│  SAP Production (ECC /   │  HANA   │   Customer DR / Standby (HANA)  │
│  S/4HANA / any release)  ├────────▶│   Permanently licensed. Passive │
│  Customer owns.          │  SR     │   until now.                    │
└──────────────────────────┘         └───────────────┬─────────────────┘
                                                     │  log-based CDC /
                                                     │  SLT / HSR async
                                                     ▼
                              ┌─────────────────────────────────────┐
                              │  Sovereign Reference Server (DMZ)   │
                              │  ─────────────────────────────────  │
                              │  • ACDOCA + full journal            │
                              │  • Master data (KNA1, LFA1, MARA…)  │
                              │  • Datasphere-parity semantic layer │
                              │  • Non-SAP feeders (CRM, ops, IoT)  │
                              │  • Ledger extensions                │
                              │  • Agent memory + audit trail       │
                              │  All schemas versioned in this repo.│
                              └─────────────────┬───────────────────┘
                                                │
                        ┌───────────────────────┼───────────────────────┐
                        ▼                       ▼                       ▼
                  Decision support      Sovereign AI / agents     Downstream ledgers
                  (BI, planning)        (RAG, knowledge graph)    (PAIX, caisse,
                                                                   industry roll-ups)
```

Key design commitments:

1. **Read-only from SAP.** Never write back to primary. Never violate SAP support terms.
2. **DR-seeded, CDC-maintained.** Cadence configurable per table (real-time for ACDOCA, hourly for master data, daily for reference).
3. **Datasphere-parity, not Datasphere-dependent.** Every base structure Datasphere ships is reproduced here as customer-owned DDL. Extensions go beyond what SAP exposes.
4. **Standards-driven consolidation.** Once a vertical reference model is proven (utilities, parishes, logistics), every next customer in that vertical onboards in a fraction of the time. First mover in each vertical owns the roll-up.

---

## Repository layout

```
docs/
  DOCTRINE-ESG-ACDOCA-EXTENSION.md   The governing doctrine (DRAFT v0)
  DOCTRINE-SYMMETRIC-ALIGNMENT.md    One identity across every twin (DRAFT v0)
  thesis.md                          Positioning
schema/
  acdoca/                            Layer 1 — the transactional spine (real-time CDC)
  datasphere-parity/                 Scaffolding: SAP base structures reproduced as sovereign DDL
  master-data/                       Feeders: customer/vendor/material/org/chart-of-accounts
  extensions/                        Layer 2 (ESG score) + Layer 3 (interaction record) columns
  sap-modules/                       Field-level SAP table YAMLs by module (FI, CO, MM, SD, PM, PP, QM…)
  feeders/                           Non-SAP systems of record (e.g. CDK Drive DMS) mapped into the spine
replication/                         CDC pipelines, cadence config, DR-seeding runbooks
governance/                          Sovereignty guarantees + copyright footer
agents/                              Agents that read the sovereign ledger (never SAP directly)
.github/workflows/                   CI: schema validation, chain integrity, audit-log generation
```

---

## Positioning

**Not** cannibalizing SAP. **Not** third-party support. **Not** a migration.

- To the customer: "Your SAP license is a capital asset. We help you extract 10× the value from it — on your infrastructure, under your control — instead of paying SAP a subscription to do less."
- To SAP: "Your customer is still a customer. We didn't reduce your license count. We just helped them use what they already bought."
- To the regulator: "The customer owns the data. The customer owns the copyright on the extension. The customer chooses which vendor sees what."

Aligned with sister repos in the EVEglyphDesign canon:

- [dmzopen-ai](https://github.com/EVEglyphDesign/dmzopen-ai) — sovereign enterprise AI positioning
- [eve-hawkins-sovereign-enterprise](https://github.com/EVEglyphDesign/eve-hawkins-sovereign-enterprise) — sovereign enterprise thesis for dealer networks
- [eve-hawkins-cdk-twin](https://github.com/EVEglyphDesign/eve-hawkins-cdk-twin) — the CDK Drive DMS twin for Peterbilt Atlantic; the first non-SAP feeder aligned into this spine under `schema/feeders/`
- [eve-hyperloop](https://github.com/EVEglyphDesign/eve-hyperloop) — SAP lock-in escalation watch
- [enterprise-grade-criteria](https://github.com/EVEglyphDesign/enterprise-grade-criteria) — audit rubric for AI platform sovereignty claims

---

## Status

**v0 — scaffolding, open-item subledger and CROSS foundation closed.** Repository
structure, thesis, positioning, and initial Datasphere-parity schema tree are laid down.
The CO module's cost-object gap is closed — `AUFK`, `COSS`, `COSP`, `CSKB`, and `CSKT`
now have field-level YAML, closing the crosswalk the
[CDK Drive twin](https://github.com/EVEglyphDesign/eve-hawkins-cdk-twin) keys its
repair-order identity on (`AUFK-AUFNR`). The FI open-item subledgers that a dealer
accounting-schedule reconciliation keys on — `BSID`, `BSAD`, `BSIK`, `BSAK`, plus `SKAT`,
`KNC1`, and `LFC1` — are now field-level defined, and the CROSS foundation layer has
opened with `T000`, `T001`, `TCURC`, `TCURR`, `TCURX`, `ONR00`, and `T006` (the single
most-referenced check table in the whole schema, 221 references). A full reconciliation
of every module's table inventory against its field-level definitions, plus a ranked
list of what to close next by dealer-tie-out blocking impact, is recorded in
[`schema/sap-modules/RECONCILIATION-NOTE.md`](schema/sap-modules/RECONCILIATION-NOTE.md).
The non-SAP feeder lane under [`schema/feeders/`](schema/feeders/) now includes a full
[schedule-reconciliation mapping](schema/feeders/cdk-dms/schedule-reconciliation.md) from
a CDK accounting schedule's control key through `ZUONR` open-item assignment, aging, and
the clearing event, for the Hawkins / Peterbilt Atlantic dealer group — the first system
of record in this canon with no SAP instance behind it at all. The symmetric-identity
rule governing all of this is stated as doctrine in
[`docs/DOCTRINE-SYMMETRIC-ALIGNMENT.md`](docs/DOCTRINE-SYMMETRIC-ALIGNMENT.md) (DRAFT v0,
awaiting Apex ratification). Next: `BSAS`/`BSIS` (G/L open/cleared items — the
reconciliation-account counterpart to the subledgers just closed) and `EKBE` (purchase
order history), per the ranked list in the reconciliation note.

---

*Founder of design: Dany Thériault.*
*Pour le bien-être du peuple.*
