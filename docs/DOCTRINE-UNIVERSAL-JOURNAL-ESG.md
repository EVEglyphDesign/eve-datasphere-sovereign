# Doctrine — the extended Universal Journal (EgD-UJX-001)

**Status:** DRAFT v0 · 2026-07-31 · awaiting Apex ratification
**Structures:** [`ACDOCX`](../schema/extension/ext/tables/ACDOCX.yaml) ·
[`EFFCAT`](../schema/extension/ext/tables/EFFCAT.yaml) ·
[`EFFSTD`](../schema/extension/ext/tables/EFFSTD.yaml) ·
[`MRTDOC`](../schema/extension/ext/tables/MRTDOC.yaml) ·
[`MEMBR`](../schema/extension/ext/tables/MEMBR.yaml)

---

## What this repository is, said plainly

It is a **reference model**, consolidated and held in the open. It is not SAP software, not an
SAP product, and not anybody's data. Nothing here can be downloaded out of a running system.
The structures are described in the source vendor's own vocabulary for a single practical
reason: a model a practitioner cannot already read is a model nobody adopts.

Anyone reading this page as an offer to extract a vendor's property has misread it. The
correction is this document.

## The half-transaction problem

The Universal Journal was the right idea. One line, every dimension, one place. But that line
answers one question — what did this cost, and where did the money sit. It cannot answer what
the money **did**. An organisation that hires locally, trains apprentices, cleans a watershed
or keeps a parish school open records the same debit as one that does none of it.

So the model extends the line rather than replacing it.

## The rule: extension at the edges, never in the middle

`ACDOCX` is keyed on `ACDOCA`'s own key — client, ledger, company code, fiscal year, document
number, posting item — plus an effect item counter. Consequences, all deliberate:

- **An effect cannot exist without a posting behind it.** No orphan claims.
- **The financial line is never modified.** Finance reconciles exactly as it did before, and an
  auditor can ignore the extension entirely without losing a cent.
- **One posting may carry many effects**, in different categories, in different directions.
- Remove the extension and what remains is a clean, unaltered Universal Journal.

## Distribution down the organisation

The effect line carries the same cost objects the accounting line does — cost centre, profit
centre, WBS element, order, material, vendor, customer. An effect is therefore attributable to
the branch, crew, project or parish that actually earned it, instead of surfacing as one flat
number at the group level where nobody can be credited and nobody can be held to it. It also
runs upstream and downstream: an effect is recorded where it happened in the chain, not only
where it was paid for.

## Claims must carry their evidence

Every effect line records its attribution method and share, an evidence type (measured,
metered, surveyed, attested or estimated), an evidence reference, a **SHA-256 hash of that
evidence** so a claim cannot be silently restated, and a verification status: unverified,
self-attested, peer-reviewed, or independently assured. Verification names the party who did
it.

The taxonomy is master data (`EFFCAT`), not hard-coded, so a community extends its own
vocabulary the way an operating concern extends CO-PA. Each category maps outward through
`EFFSTD` to the published disclosure point it answers — GRI, ESRS, ISSB, SASB or a community
standard — so internal measurement can be reported in the language a regulator already reads,
without the community adopting that language internally.

## Recognition, minted by the community

`MRTDOC` is a ledger in its own right: double-sided, reversible, hash-chained, decaying if
unspent. Units mint against **verified** effect lines only — no verified line, no units.
Nothing is minted from an intention.

It is **not a security, not a financial instrument, and not a tradeable asset**. It is
standing within a professional community, and its only power is that it is earned and
auditable. An organisation that accomplished what its peers could only plan for should be able
to prove it and be visibly the better for it. That is the difference between this and a
sustainability brochure.

## Why a member register

`MEMBR` is the point of the exercise: firms, parishes, councils, schools and non-profits that
post effects, verify each other's claims, and hold standing within a peer group. A profession
that consolidates what its members learned separately, into one record the next generation can
pick up and read instead of learning it all again from scratch. Membership is consent-scoped —
every member controls the visibility of its own record — and qualified non-profits are flagged,
because the blueprint is free to them.

## Open questions, recorded rather than hidden

- Monetisation of effects (`EFFAMT`) is permitted only where a defensible price exists. The
  pricing method itself is not yet canon.
- Minting rates per category (`EFFCAT-MINTRT`) are a governance decision, not a technical one.
- Decay and expiry policy for unspent recognition is declared in the structure but not yet set.
- Double-counting across members in a shared supply chain is constrained by `ATTPCT`, but the
  reconciliation rule that enforces the total across members is not yet written.

---

*Pour le bien-être du peuple.*

© 2026 EVEglyphDesign. All rights reserved. Controlled copy.
