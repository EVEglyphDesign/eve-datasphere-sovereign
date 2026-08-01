# Doctrine — Mirror, Not Cannibalise: the Non-Proliferation Compact

**Status:** DRAFT v0 · stated by the operator 2026-07-31 · awaiting Apex ratification
**Applies to:** every feeder, every module, every downstream lane in this repository.

---

## The compact in one paragraph

This model does not compete with the systems it reads. It **mirrors** them. In exchange for
full cooperation with the platform vendors — read-only access, no write-back, no support-term
violation, no third-party maintenance play, no displacement of the system of record — we
reserve the right to mirror whatever we need out of those environments in order to offer
**new-dimensional services** that the source platform does not offer and does not intend to.
Mirror rights for cooperation rights. That is the trade. It is a non-proliferation compact,
not a migration play.

## Why universality is the whole point

A consolidation of an industry can only be built on a model every participant already speaks.
The moment a mirror invents its own vocabulary, it stops being a mirror and becomes another
proprietary silo — one more thing that has to be integrated. **Anything that does not work
with SAP does not work.** SAP is the backbone of the enterprise platform, so SAP's own
structures are the backbone of this model. We adopt SAP's names, keys, data elements and
check tables verbatim, and we extend only at the edges the vendor has left open.

## The four standing rules

1. **Mirror, never cannibalise.** Read-only from the source. The customer's production system
   remains the system of record and remains supported. We never position as a replacement.
2. **Source vocabulary wins.** Table names, field names, data types, domains and check-table
   references are SAP's. No renaming for taste. Non-SAP feeders project *into* this vocabulary
   (see `schema/feeders/`), never the reverse.
3. **Extension at the edges only.** New value — ESG triples, interaction records, provenance
   hashes — attaches as companion columns on the line. It never alters the meaning of a
   standard field.
4. **Define once, reference everywhere.** A table belongs to the model, not to a module. Where
   modules share a structure (`AUFK`, `AFKO`, `AFVC`, `QMSM`), there is one definition and the
   modules reference it. Duplicate definitions are proliferation by another name.

## Non-proliferation, stated plainly

- We do not fork the vendor's semantics.
- We do not publish a competing standard.
- We do not encourage anyone to leave the source platform.
- We do claim the customer's right to hold a readable, customer-owned copy of the customer's
  own data, and to build dimensions on top of it that no vendor is offering.

Full cooperation upstream. Full sovereignty downstream. Neither side needs to lose.

*Pour le bien-être du peuple.*

© 2026 EVEglyphDesign. All rights reserved. Controlled copy.
