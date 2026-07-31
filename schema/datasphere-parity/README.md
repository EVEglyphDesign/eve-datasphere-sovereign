# Datasphere-parity schema

Every base structure SAP Datasphere ships, reproduced here as customer-owned DDL.

## What Datasphere ships (and we mirror)

Datasphere's model has four tiers we replicate one-for-one:

1. **Spaces** — logical, governed containers with their own storage, compute, and access rules. Mirrored here as folders under `spaces/` with per-space governance metadata.
2. **Local tables** — physical HANA tables that hold replicated or ingested data. Mirrored as versioned DDL under `local-tables/`.
3. **Views** — graphical, SQL, and analytic-model views that project business meaning over the physical layer. Mirrored under `views/` as SQL + YAML manifest.
4. **Semantic layer** — analytic models, dimensions, hierarchies, and measures exposed to consumption tools. Mirrored under `semantic/`.

Plus the two horizontal capabilities that make Datasphere work:

5. **Replication flows** — CDC pipelines from source systems. Mirrored under `../replication/flows/`.
6. **Task chains** — orchestration. Mirrored under `../replication/task-chains/`.

## Directory layout (target)

```
datasphere-parity/
  spaces/
    finance/
    supply-chain/
    hr/
    <vertical>/
  local-tables/
    acdoca.sql
    kna1.sql
    lfa1.sql
    mara.sql
    ...
  views/
    finance/
      trial-balance.sql
      customer-open-items.sql
    supply-chain/
      inventory-on-hand.sql
      open-purchase-orders.sql
  semantic/
    dimensions/
    hierarchies/
    measures/
```

## Design commitments

- Every DDL file is idempotent (safe to re-run).
- Every view has a companion `.yaml` manifest describing owner, lineage, refresh cadence, and downstream consumers.
- No SAP proprietary content is copied verbatim. Field lists, join logic, and semantic definitions are derived from public documentation and customer-owned metadata extracts. Where SAP delivers a business-content model, we describe the shape and let the customer's own instance provide the field-level definitions at deploy time.
- Everything is versioned in Git. Every change is a PR. Every PR is auditable.

## Status

Placeholder. Field-level DDL seeding begins next.
