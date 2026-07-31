# Feeders — non-SAP systems of record into the sovereign spine

Every other directory under `schema/` describes a table that exists inside SAP: the
Universal Journal, the CO cost objects, the master-data tables SAP itself ships. This
directory is different. It describes systems that are **not SAP at all**, and states
plainly how a business fact born in one of them still lands on the ACDOCA-shaped spine
with the same identity it would have carried had it come from a real SAP instance.

## The honest statement this lane exists to make

**Peterbilt Atlantic runs no SAP.** [Hawkins](https://github.com/EVEglyphDesign/eve-hawkins-cdk-twin)
operates nine dealership rooftops on [CDK Drive](https://www.cdkglobal.com/), a dealer
management system (DMS) with its own object model, its own numbering, and zero SAP
footprint anywhere in the stack. There is no DR (disaster-recovery) database to mirror,
no SAP client to point a replication job at, no `RFC` connection to open. The seeding
path the rest of this repository assumes — take a customer's DR copy of SAP and mirror it
into the DMZ — **does not apply here**, and this README says so instead of quietly
implying otherwise.

What replaces DR seeding for a dealer on CDK is an **authenticated extract from the DMS
itself**: CDK's own APIs and, where the API does not reach, file or screen export,
captured under the [EgD-CDK-FIELDS-v2 contract](https://eveglyphdesign.github.io/eve-hawkins-cdk-twin/model/)
maintained in the [`eve-hawkins-cdk-twin`](https://github.com/EVEglyphDesign/eve-hawkins-cdk-twin)
repository. That contract is authoritative upstream of everything in this directory — see
[`docs/model/fields.json`](https://github.com/EVEglyphDesign/eve-hawkins-cdk-twin/blob/main/docs/model/fields.json)
for the live field list (21 entities, 443 fields as generated, each field carrying an
explicit `sap_field` analogue where one is DOCUMENTED, INFERRED, or honestly absent).

## Why a non-SAP feeder is first-class, not a lesser case

A dealer running CDK is not a degraded version of a dealer running SAP. It is the more
common case in this industry — most independent truck and auto dealer groups have never
run SAP and never will. If this spine only knew how to receive data shaped like SAP's own
extract, it would be a tool for the minority of customers who already run SAP, which
defeats the point of a sovereign, vendor-independent record. So a feeder lane earns the
same rigor as a SAP-sourced one: field-level mapping, an explicit ACDOCA projection, and
the same DOCUMENTED / INFERRED / UNVERIFIED confidence marking used everywhere else in
this repository — never a shortcut because "it's not really SAP anyway."

## What's in this directory

- [`cdk-dms/mapping.md`](cdk-dms/mapping.md) — the CDK object → SAP table → ACDOCA line
  crosswalk across the three layers (master data, cost objects, ledger).
- [`cdk-dms/acdoca-projection.md`](cdk-dms/acdoca-projection.md) — how one CDK financial
  event (a closed repair order) becomes one or more ACDOCA-shaped lines: which columns are
  sourced directly, which are derived, which are null because a DMS has no equivalent, and
  where the ESG score and interaction-record extensions attach.

## API reach — stated once here, not re-litigated per document

Per the [EgD-CDK-FIELDS-v2 contract](https://github.com/EVEglyphDesign/eve-hawkins-cdk-twin),
CDK's own API surface does not reach every entity this spine needs. Six of the 21
modeled entities have **no API reach at all** and arrive only by file or screen export:
`cost-centre-department`, `vendor-master`, `gl-account-master`, `accounting-schedule`,
`warranty-claim`, `purchase-receipt-document`. The mapping and projection documents below
mark every field sourced from one of these six as file/export-sourced rather than
API-sourced — that distinction matters for anyone building an ingestion job against this
spine, because it determines whether a value can be pulled on a schedule or has to be
re-keyed from a report.

---
© 2026 Dany Thériault / EVE Glyph Design. Pour le bien-être du peuple.
