# ACDOCA — the universal journal

ACDOCA is the operational spine of this reference server. In S/4HANA it is the single journal table into which every module posts. Every finance movement, every logistics posting, every controlling entry, every CO-PA slice — all of it hits ACDOCA. Mirror ACDOCA cleanly and you can reason about the entire enterprise from one table.

## Why ACDOCA first

- **One table, whole enterprise.** Replicating ACDOCA gives you the general ledger, the sub-ledgers, controlling, profitability, and asset accounting in a single stream.
- **CDC-friendly.** ACDOCA is append-heavy — new lines get inserted, existing lines are rarely updated. That makes log-based CDC efficient and cheap.
- **Ledger extensions are trivial.** Every downstream ledger (PAIX mutual-aid, caisse, industry roll-up, sovereign audit trail) can be modeled as an ACDOCA projection or an ACDOCA-parallel table with the same key structure.
- **AI-native.** ACDOCA lines are dense, structured, semantically consistent. RAG and agent memory over ACDOCA is directly useful without heavy transformation.

## Companion tables (also mirrored)

- **ACDOCP** — planning data, same key shape as ACDOCA.
- **BSEG** — for ECC hybrids and historical loads pre-S/4.
- **CE-1 / CE-4** — CO-PA operating concern slices.
- **BKPF** — document header.
- **FAGLFLEXA** — for older customers who haven't gone all-in on the universal journal.
- **MATDOC** — material document, for supply-chain agents.

## Replication cadence (default)

| Table       | Cadence          | Method             |
|-------------|------------------|--------------------|
| ACDOCA      | Real-time (<1m)  | Log-based CDC      |
| ACDOCP      | Hourly           | SLT or CDC         |
| BKPF        | Real-time (<1m)  | Log-based CDC      |
| BSEG        | Real-time (<5m)  | Log-based CDC      |
| CE-1 / CE-4 | Hourly           | SLT                |
| MATDOC      | Real-time (<5m)  | Log-based CDC      |
| FAGLFLEXA   | Hourly           | SLT                |

Customer overrides go in `../../replication/cadence.yaml`.

## Downstream ledgers

Every sovereign ledger built on top of this reference server extends ACDOCA by projection:

- **Parish caisse ledger** ([holy-trinity-caisse](https://github.com/EVEglyphDesign/holy-trinity-caisse)) — mutual-aid entries projected against parish cost centers.
- **Truth ledger** ([truth-ledger](https://github.com/EVEglyphDesign/truth-ledger)) — audit-grade projection of ACDOCA lines with SIN correlation.
- **Vertical roll-ups** — dealer parts, utility, logistics, each with their own projection layer.

## Status

Placeholder. Field-level DDL seeding begins next.
