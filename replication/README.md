# Replication

How the sovereign reference server stays fresh against the customer's SAP instance.

## Methods (in order of preference)

1. **HANA System Replication (async)** — from primary or DR to the sovereign HANA node in the DMZ. Native, supported, high-throughput.
2. **Log-based CDC** — trigger-free, low-impact reads off the DR copy's transaction log. Best for ACDOCA, BKPF, MATDOC where update rates are high.
3. **SLT (SAP Landscape Transformation)** — trigger-based, more intrusive, but customer already owns it and it handles ECC hybrids well.
4. **Extractors / OData** — last resort for tables/objects not exposed through the above.

## What we *never* do

- Never write back to SAP production.
- Never read from SAP production directly if a DR/standby is available.
- Never use un-licensed replication paths.
- Never bypass SAP's authorization model.

## Cadence

Table-by-table cadence lives in `cadence.yaml` (to be authored). Defaults are documented in `../schema/acdoca/README.md` for the universal journal and its companions.

## Runbooks

- `dr-seeding.md` — one-time seed from the DR copy into the DMZ reference server.
- `daily-ops.md` — the day-two operational runbook.
- `recovery.md` — how to re-seed if the sovereign copy is ever lost.

*All to be authored.*
