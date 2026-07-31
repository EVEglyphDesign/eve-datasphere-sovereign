# DOCTRINE — ACDOCA Extension: ESG per Transaction, Profitability per Human

**Document ID:** `EgD-DOC-ACDOCA-01`
**Status:** DRAFT v0 — awaiting Apex ratification.
**Founder of design:** Dany Thériault.
**Umbrella:** EVE Glyph Design canon.
**Boot contract:** [`EgD-BOOT-001`](https://github.com/EVEglyphDesign/eve-glyph-boot-contract).

Pour le bien-être du peuple.

---

## 0. The one-line thesis

**ACDOCA extended through every system. Every transaction carries an ESG score. Every interaction record attributes profitability to the human who produced the good. The chain is hashed, published, and freely tradeable — no existing institution required.**

That is the whole design. Every other component in the sovereign reference server serves this line.

---

## 1. What this doctrine is not

- **Not** a sovereign Datasphere clone for its own sake. Datasphere-parity is scaffolding, not the point.
- **Not** a SAP catalog project. The SAP data model is public knowledge, harvested only to the extent it feeds the ledger.
- **Not** a vendor-lock-in play. This is the opposite: the ledger is portable by construction.
- **Not** a new ESG rating scheme layered on top of the existing regulatory market. This is a **flow rail** that lets ESG value move at the transaction level, permission-free.

---

## 2. The three layers

### Layer 1 — The ACDOCA spine (transactional truth)

Every enterprise, whether it runs SAP or not, produces journal-line-equivalent postings. ACDOCA is the canonical shape — one line per business event, keyed by company code, GL account, cost object, profit center, functional area, and dozens more coefficient fields. It is dense, structured, and semantically consistent. It is the operational nervous system SAP spent a decade consolidating.

The sovereign reference server ingests ACDOCA (or ACDOCA-shaped equivalents from non-SAP feeders) as its primary transactional stream. Cadence: real-time. Method: log-based CDC from the customer-owned disaster-recovery instance. See [`schema/acdoca/`](../schema/acdoca/).

### Layer 2 — The ESG scoring extension (moral truth)

Every ACDOCA line, at posting time, is scored on ESG dimensions. The score is not a batch analytic run months later — it is a **companion column set** written in the same commit as the journal line. The line and its ESG score are inseparable from that moment forward.

**Scoring surface (v0, to be ratified):**

- **E — Environmental:** carbon-equivalent per unit of the underlying good/service, resource intensity, waste externality.
- **S — Social:** attribution to a human producer (see Layer 3), fair-labor coefficient, community benefit coefficient.
- **G — Governance:** provenance verifiability, audit-trail completeness, related-party disclosure completeness.

Each dimension resolves to a signed numeric value with a defined unit. Positive values represent contribution; negative values represent extraction. The line's ESG signature is a triple `(E, S, G)` plus a scoring-method hash so the method is auditable, contestable, and versioned.

**Sourcing.** ESG coefficients come from the customer's own operational data (measured), from a shared coefficient library (declared), or from a pending flag (unmeasured, contestable). A line is never blocked for missing ESG — but a missing coefficient is itself a governance signal that lowers the G score of the posting entity until resolved.

### Layer 3 — The interaction record (per-human attribution)

Every good produced inside the enterprise passes through human hands and human decisions. The **interaction record** is the second companion column set on every ACDOCA line: which humans, in which roles, contributed to the event, weighted by their causal share.

The weights are not opinion. They are derived from operational signals already produced by the system of work — task assignment, approval chain, sign-off, edit history, decision authorship, time-on-task. Every enterprise already generates these signals. The interaction record is the sovereign collector that ties them to the journal line.

**Profitability per human** is then computable as a first-class query: for any human, over any period, sum the ACDOCA lines they contributed to, weighted by their interaction share, netted against the resource cost they consumed. The result is a measured contribution, not a self-reported one. It is the metric management always wanted and never had, because the underlying join was never made explicit.

---

## 3. Hashing, publication, and free flow

### 3.1 Hash chain

Every ledger entry follows the hash-chain primitive already proven in [`truth-ledger/msl/`](https://github.com/EVEglyphDesign/truth-ledger/tree/main/msl):

```
entry_hash = sha256(prior_head + canonical_entry_json)
HEAD file always points at the current chain head
```

Same primitive. Different payload. The payload here is the ACDOCA line + its ESG signature + its interaction record.

The customer runs their own chain inside their DMZ. Chain heads publish outward on a schedule the customer sets — never the raw payload, only the head hash and its timestamp. The customer chooses which slices to disclose downstream, in what form.

### 3.2 Publication

The chain head, and any slice the customer chooses to publish, lands on a public surface under the [agent-governance-ledger](https://github.com/EVEglyphDesign/agent-governance-ledger) pattern — portable, verifiable, vendor-neutral, federated, public-domain. That is the rail.

Publication is a right of the human whose contribution is recorded. If they want their contribution visible, no institution can suppress it. If they don't, no institution can force it. The default is customer-controlled; the human always has the withdrawal right.

### 3.3 Free flow

Because each ESG score is bound to a specific transaction and a specific human contribution, ESG value becomes a first-class object with its own provenance. It can be **traded directly** — one party's positive-E contribution can offset another party's negative-E footprint, one party's positive-S contribution can be recognized and rewarded by any counterparty willing to value it.

No existing institution is required to intermediate. The regulatory ESG market can keep running in parallel. This is not a replacement rail. It is the **free-flow rail** underneath it — the one that lets ESG heal at the same speed as commerce, at the same granularity as the transactions that produce the harm and the good.

---

## 4. Outcome-weighted redistribution

The ESG score at posting time is a claim. The **outcome** — measured downstream, over the actual lifecycle of the good — is the truth. When outcome data arrives (product returned, emission measured, community benefit observed), the ledger records the delta between claim and outcome as a new entry, linked to the original by hash.

Distribution back to humans follows outcome, not claim. A human whose interaction record contributed to a line whose claimed ESG later proved true receives the recognition. A human whose contribution proved harmful receives the negative recognition, contestable, appealable, but not erasable.

The record is permanent. Pardons attach, never erase — the doctrine already carried by [truth-ledger](https://github.com/EVEglyphDesign/truth-ledger).

---

## 5. Why the whole world can heal

ESG today is a compliance overhead that the largest actors absorb and the smallest cannot afford. It moves slowly, in annual cycles, in aggregated numbers no human can trace to their own labor.

When ESG value flows at transaction granularity, permission-free, hash-verified, tied to the human who produced the good — every actor becomes visible, every contribution becomes measurable, every harm becomes attributable, and every reward becomes distributable. The world does not need a new institution to make this happen. It needs a rail. This is the rail.

---

## 6. Relationship to the wider canon

| Canon element | Role in this doctrine |
|---|---|
| [truth-ledger](https://github.com/EVEglyphDesign/truth-ledger) | Provides the hash-chain primitive (`msl/` proves it works). ESG ledger inherits the pattern. |
| [agent-governance-ledger](https://github.com/EVEglyphDesign/agent-governance-ledger) | Provides the portable, federated, public-domain publication rail. |
| [WOBBLE-CONTROL-PIANO](https://github.com/EVEglyphDesign/eve-glyph-archive/blob/main/canon/WOBBLE-CONTROL-PIANO.md) | Governs the wobble-control loop that watches for aligned deviations across the ledger before they compound. |
| [NA-Nuclear-Utilities](https://github.com/EVEglyphDesign/NA-Nuclear-Utilities) | First vertical proof point: nuclear operators whose equipment record feeds Layer 1 and whose ESG signature is unusually high-stakes. |
| [dmzopen-ai](https://github.com/EVEglyphDesign/dmzopen-ai) | Sovereign-AI positioning envelope. Sovereign AI requires sovereign data; this doctrine defines the sovereign data. |
| [enterprise-grade-criteria](https://github.com/EVEglyphDesign/enterprise-grade-criteria) | Audit rubric a platform must pass to claim enterprise grade. The ledger is auditable by construction against this rubric. |

---

## 7. Status and next actions

**Status:** DRAFT v0. Not ratified. Not for external quotation.

**Immediate next actions (Apex-gated):**

1. Ratify or edit this doctrine.
2. Ratify the (E, S, G) coefficient shape.
3. Ratify the interaction-record weighting method.
4. Approve first-mover vertical — nuclear (via `NA-Nuclear-Utilities`) is the obvious candidate given the wobble-control mandate.

No implementation moves ahead of ratification.

---

© 2026 Dany Thériault / EVE Glyph Design. Controlled copy.
*Pour le bien-être du peuple.*
