# Agents

Agent definitions that read the sovereign reference server. Agents **never** read SAP directly.

Every agent registered here has:

- A name and a purpose.
- A scoped read authority (which spaces / tables it can query).
- A human owner.
- Approval gates for any destructive or spend-affecting action (see [Ma Cherie Cortez's 5 gates](https://www.linkedin.com/posts/macheriecortez_agenticai-aigovernance-digitaltransformation-activity-7488126177371422720-bhm3) and [Craig Bracken's agent requirements](https://www.linkedin.com/posts/craigbracken_ai-agents-are-being-given-executive-authority-activity-7488204157632569345-ItWG) — canon references from the ERP+AI monitor).
- An immutable audit trail.
- A rollback playbook.

## Initial agent slots

- **Trial-balance agent** — reads the finance space, projects trial balance on demand.
- **Open-items agent** — customer and vendor open-item explanations.
- **Ledger-projection agent** — projects ACDOCA lines into downstream sovereign ledgers (parish caisse, truth ledger, industry roll-ups).
- **Anomaly agent** — flags journal patterns that break the customer's own configured rules.
- **Knowledge-graph agent** — maintains the semantic graph over master data.

*All to be authored.*
