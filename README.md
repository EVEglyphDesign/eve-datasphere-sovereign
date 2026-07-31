# eve-datasphere-sovereign

**The Sovereign Datasphere Mirror.** A customer-owned, GitHub-native reference server that mirrors and extends SAP Datasphere on the customer's side of the wire — seeded from the disaster-recovery copy of SAP the customer already owns as a capital asset.

Pour le bien-être du peuple.

---

## The thesis in one paragraph

SAP customers hold a permanent-license disaster-recovery instance they've already paid for. That DR copy — plus SAP's own replication tooling — is enough to stand up a full mirror of the master data and transactional model inside the customer's DMZ, on customer-owned infrastructure, under customer-owned copyright. Once mirrored, the reference server becomes the true operational spine: SAP shrinks from "system of record" to "one of the transactional feeders," and every AI, analytics, ledger extension, and downstream ledger runs on the sovereign copy. **Sovereign AI requires sovereign data.** This repository is the sovereign data.

This is not anti-SAP. It is not third-party support. It is not a migration play. It is **extension** — helping customers extract more value from a capital asset they already own, at a moment when SAP's subscription pressure gives them nowhere else to go.

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
schema/
  datasphere-parity/     Every Datasphere base structure, reproduced as sovereign DDL
  acdoca/                The universal journal — the operational spine
  master-data/           Customer, vendor, material, org, chart-of-accounts
  extensions/            Sovereign extensions: agent memory, ledger overlays, industry models
replication/             CDC pipelines, table cadence config, DR-seeding runbooks
governance/              Copyright footer, audit-trail spec, sovereignty guarantees
agents/                  Agent definitions that read the sovereign schema (never SAP directly)
docs/                    Thesis papers, positioning, buyer briefs, replication playbooks
.github/workflows/       CI: schema validation, lineage checks, audit-log generation
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
- [eve-hyperloop](https://github.com/EVEglyphDesign/eve-hyperloop) — SAP lock-in escalation watch
- [enterprise-grade-criteria](https://github.com/EVEglyphDesign/enterprise-grade-criteria) — audit rubric for AI platform sovereignty claims

---

## Status

**v0 — scaffolding.** Repository structure, thesis, positioning, and initial Datasphere-parity schema tree are being laid down. Next: seed the ACDOCA field-level DDL and the first vertical reference model.

---

*Founder of design: Dany Thériault.*
*Pour le bien-être du peuple.*
