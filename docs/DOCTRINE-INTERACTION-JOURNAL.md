# Doctrine — the Universal Interaction Journal (EgD-UIJ-001)

**Status:** DRAFT v0 · 2026-07-31 · awaiting Apex ratification
**Structures:** [`ACDOCI`](../schema/interaction/int/tables/ACDOCI.yaml) ·
[`IJTEL`](../schema/interaction/int/tables/IJTEL.yaml) ·
[`IJSAT`](../schema/interaction/int/tables/IJSAT.yaml) ·
[`SYSRC`](../schema/interaction/int/tables/SYSRC.yaml) ·
[`XWALK`](../schema/interaction/int/tables/XWALK.yaml) ·
[`STSMAP`](../schema/interaction/int/tables/STSMAP.yaml) ·
[`CHNL`](../schema/interaction/int/tables/CHNL.yaml) ·
[`ITYP`](../schema/interaction/int/tables/ITYP.yaml) ·
[`PARTY`](../schema/interaction/int/tables/PARTY.yaml)

---

## The order of construction

**The foundation is SAP, and it stays SAP.** Not out of loyalty — because it is the only place
where an enterprise's financial truth is already reconciled, and a model that cannot tie back to
the ledger is an opinion. ACDOCA is the spine.

From there the same shape is applied outward: **an ACDOCA-style ledger for all forms of human
interaction.** One line, every dimension it belongs to, in one place, immutable, reversible
rather than editable, and reconcilable. That discipline is the actual invention of the Universal
Journal, and nothing about it is specific to money.

The consolidation starts where interaction actually lives: the CRM and the service-management
platform, under **one combined schema**, and it is built to extend to **telephony and satellite**
from the first version rather than as an afterthought.

## Why a combined schema is not a merge

Two vendors will never agree on a field list, and waiting for them to is how this work never gets
done. The combined schema is achieved by declaring the mapping instead:

- `ACDOCI` holds the canonical interaction line.
- `XWALK` records **every source field, one row each** — target field, transform rule, confidence,
  whether the mapping is lossy, and who is accountable for it. A source field with no home is
  recorded as `unmapped`, not quietly dropped.
- `STSMAP` crosswalks status vocabularies, while `SRCSTA` keeps the source's own word on the line.
  Normalisation that destroys the original is not normalisation, it is loss.
- `SYSRC` registers each system of record: who operates it, under what legal basis it is read, at
  what cadence, and read-only always.

Adding a third system — a phone platform, a satellite ground segment, a parish register, a
dispatch console from 1998 — is then a configuration exercise: register the source, write the
crosswalk rows. No schema change, no rewrite, no negotiation.

## Channel extensions at the edges

The same rule as the effect line: extend at the edges, never in the middle.

- `IJTEL` carries call detail for voice — ring, talk, hold, wrap, transfers, codec, MOS, jitter,
  packet loss. **Numbers are held only as salted hashes.** A prefix is kept for routing and
  geography; the subscriber is not identified. A mirror is not a wiretap.
- `IJSAT` carries what only a remote link has — satellite, beam, gateway, terminal, pass window,
  elevation, rain fade, latency, store-and-forward, and **minutes spent waiting for a link**. That
  last field exists on purpose: it is the honest measure of what service to a remote place costs
  the person receiving it, and it is the number that disappears when remote traffic is averaged
  against urban traffic.

## Privacy is structural, not configurable

`PARTY` holds pseudonymous keys, a role, a consent status and an erasure flag. Identifying detail
stays in the system already lawfully holding it. `ACDOCI` references content — it does not copy
bodies, transcripts or recordings — and hashes what it references so a record cannot be silently
rewritten. Consent status, consent reference, retention policy and legal hold are fields on the
line, not settings in an admin console.

Copying everyone's name into a second database improves nobody's position. A model that needs to
do that to work is the wrong model.

## Free of charge, recorded in the schema

Two waivers stand, and both are fields on the member register so they cannot quietly stop being
true:

- **Qualified non-profit organizations** — `MEMBR-NPOIND`.
- **Legacy safety systems vendors** — `MEMBR-SAFIND`, with `MEMBR-SAFKND` recording the kind of
  safety system carried. Emergency dispatch, alarm and monitoring, life safety, safety
  instrumented systems, marine and aviation safety, public safety communications. These systems
  are often old, unglamorous, and kept alive by small firms who cannot fund a data-model
  programme and should not be asked to. **Work that keeps people alive is not a revenue
  opportunity.**

`MEMBR-FOCBAS` records the basis on which charges were waived, so the decision is auditable
rather than remembered.

## Not yet done, and recorded as such

- Salesforce and ServiceNow object field lists are **not yet sourced**. `XWALK` is the structure
  that will hold them; it is currently empty. No mapping is asserted that has not been read from
  a real object definition.
- Telephony shapes follow standard call-detail and SIP session practice; satellite shapes follow
  standard ground-segment session practice. Neither is copied from a vendor schema, and neither
  has yet been reconciled against a live platform.
- The salting and key-rotation policy behind `PARTY-IDHASH` is declared in structure but not yet
  written as canon.

---

*Pour le bien-être du peuple.*

© 2026 EVEglyphDesign. All rights reserved. Controlled copy.
