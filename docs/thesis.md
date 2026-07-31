# Thesis: The Sovereign Reference Server

## Problem

Every SAP customer has been quietly co-opted. They paid — often for decades — to load their operational reality into SAP's schema. In exchange they got a system of record. Now SAP is telling them the AI, the analytics, and even the read paths to their own data all require moving to a subscription cloud tier. The value SAP built with the customer's data is being sold back to the customer as a service.

Third-party support firms (Rimini, Spinnaker, Support Revolution) fight for the maintenance dollar. Migration consultancies fight for the RISE dollar. Nobody is fighting for the **data sovereignty** dollar. That is the gap.

## Insight

Every serious SAP customer already owns a **disaster-recovery instance** on permanent license terms. That DR copy is the seed. SAP's own replication tooling (HANA System Replication, SLT, log-based CDC) is the pipe. The customer's DMZ is the destination. Nothing in SAP's support agreement forbids the customer from reading their own DR copy.

Point that pipe at a customer-owned, GitHub-versioned, Datasphere-parity schema, and the customer suddenly has:

- Every ACDOCA journal line, replicated at whatever cadence they need.
- Every master data record, versioned and forkable.
- Every Datasphere base structure, but as customer-owned DDL under customer copyright.
- Room to extend beyond SAP's schema into whatever operational reality the customer actually lives in — non-SAP feeders, industry overlays, agent memory, sovereign identity, downstream ledgers.

That is the sovereign data substrate. Sovereign AI requires sovereign data. This is the sovereign data.

## The consolidation lever

The first customer in each vertical who stands this up owns the vertical. Once the utility reference model works, every next utility onboards in weeks, not years. Once the parish model works, every next parish (see [holy-trinity-caisse](https://github.com/EVEglyphDesign/holy-trinity-caisse) and [paix-parish-platform](https://github.com/EVEglyphDesign/paix-parish-platform)) inherits it. Once the dealer model works (see [eve-hawkins-sovereign-enterprise](https://github.com/EVEglyphDesign/eve-hawkins-sovereign-enterprise) and [eve-dealer-parts-twin](https://github.com/EVEglyphDesign/eve-dealer-parts-twin)), every dealer network in the region can adopt it.

Whoever gets there first buys the rest.

## Non-goals

- **Not** competing with SAP on the transactional core. Let SAP keep posting journals. We just mirror them.
- **Not** third-party support. We do not touch the production instance.
- **Not** a data-migration project. The customer keeps SAP running as long as they want.
- **Not** an anti-SAP campaign. Public voice stays on data-rights and sovereignty, not on attacking SAP the company.

## The song

**Own the DR copy → replicate fast and often → project everything through ACDOCA as the ledger backbone → decision support and extension surface scale horizontally across the org, on the customer's infrastructure, on the customer's terms.**

Datasphere pretends to be sovereign. This one actually is.
