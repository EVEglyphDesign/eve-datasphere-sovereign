# DOCTRINE — Symmetric Alignment: One Identity Across Every Twin

**Document ID:** `EgD-DOC-SYMALIGN-01`
**Status:** DRAFT v0 — awaiting Apex ratification.
**Founder of design:** Dany Thériault.
**Umbrella:** EVE Glyph Design canon.
**Boot contract:** [`EgD-BOOT-001`](https://github.com/EVEglyphDesign/eve-glyph-boot-contract).

Pour le bien-être du peuple.

---

## 0. The one-line thesis

**A business fact carries one identity across every twin in the canon. Every twin
declares its SAP analogue at field level. No crosswalk may point at an undefined table.
A non-SAP system of record is a first-class feeder, never a lesser case.**

That is the whole design. Every twin repository in this canon — SAP-sourced or
not — serves this line.

---

## 1. What this doctrine is not

- **Not** a demand that every source system run SAP, or pretend to. Most of the operating
  world does not run SAP, and this doctrine exists partly because that fact must be
  designed for, not apologized for.
- **Not** a data-dictionary exercise for its own sake. Field-level SAP analogues are
  harvested only to the extent they let a value move from a source twin to the sovereign
  spine without a human re-deciding what it means each time.
- **Not** a claim that every analogue is certain. Confidence is marked
  DOCUMENTED / INFERRED / UNVERIFIED per field, and an INFERRED analogue is worth
  publishing — a missing analogue is not.
- **Not** a one-time reconciliation. This doctrine binds every future twin added to the
  canon, not only the ones that exist today.

---

## 2. The rule of one identity

The same customer, the same vehicle, the same repair, the same journal line must resolve
to the same identity whether it is read from a live SAP instance, a customer's
disaster-recovery mirror, or a non-SAP system of record such as a dealer management
system. Two twins disagreeing about what a fact *is* — not what its value happens to be,
but what it *is*, ontologically — is a defect in this canon, not a tolerable difference of
implementation.

Concretely: if the [CDK Drive twin](https://github.com/EVEglyphDesign/eve-hawkins-cdk-twin)
calls something a `repair-order` and this repository's CO module calls its analogue
`AUFK`, both names must resolve, deterministically, to the same object number space once a
fact from one lands on the other. `AUFK-AUFNR` and a CDK repair-order number are not
"similar" — under this doctrine they are declared **the same identity**, carried across
the boundary without renegotiation each time a new record crosses it.

---

## 3. Every twin declares its SAP analogue at field level

A twin repository does not satisfy this doctrine by asserting, at the entity level, "this
roughly corresponds to SAP's customer master." It satisfies this doctrine when **every
field** in that entity states its SAP analogue (or states plainly that none exists),
carries a confidence mark, and — critically — the SAP table it points at is itself
field-level defined somewhere in this canon.

This is not a stylistic preference. A field-level analogue that points at a table with no
field-level definition is a promise with nothing behind it. It reads as alignment and
functions as a placeholder. See §4.

**Precedent already set:** [EgD-CDK-FIELDS-v2](https://github.com/EVEglyphDesign/eve-hawkins-cdk-twin)
(`docs/model/fields.json`) does this today for all 443 fields across 21 CDK entities —
every field carries a `sap_field` value in `TABLE-FIELD` form and a DOCUMENTED / INFERRED /
UNVERIFIED confidence mark. This doctrine generalizes that discipline to the rest of the
canon and to the sovereign side of the crosswalk.

---

## 4. No crosswalk may point at an undefined table

This is the rule this doctrine exists to name, because it was violated and caught before
ratification rather than after. `AUFK` was inventoried in
[`schema/sap-modules/co/TABLES.yaml`](../schema/sap-modules/co/TABLES.yaml) — named,
counted, presented as part of the module — with no field-level YAML behind it. Meanwhile
`AUFK-AUFNR` is the exact field the CDK repair-order twin keys its entire cost-object
crosswalk on. The crosswalk pointed at a name, not a table. That is a defect under this
doctrine even though nothing was factually wrong — an inventory entry with no definition
behind it is indistinguishable, to a downstream consumer, from a table that was never
considered at all.

**The rule, stated plainly:** an entry in a module's `TABLES.yaml` inventory is a promise.
A field-level YAML in that module's `tables/` directory is the promise kept. A crosswalk —
in this repository, in a twin repository, in any document that claims one system's field
maps to another's — may only reference a table on the *kept* side of that line. Where it
cannot yet, it must say so, not omit the caveat.

This session's [reconciliation note](../schema/sap-modules/RECONCILIATION-NOTE.md) is the
first application of this rule: it closed the `AUFK`/`COSS`/`COSP`/`CSKB`/`CSKT` gap and
recorded, by module, every other inventoried-but-undefined table rather than letting the
gap stand silently. Future work in this canon should produce the same kind of note before
declaring a crosswalk complete.

---

## 5. A non-SAP system of record is a first-class feeder

Nothing in this canon's origin — a sovereign mirror of a customer's SAP DR instance —
implies that a customer must run SAP to participate. Most do not. [Hawkins](https://github.com/EVEglyphDesign/eve-hawkins-cdk-twin)'s
Peterbilt Atlantic rooftops run CDK Drive and nothing else; there is no SAP instance to
mirror, no DR copy to seed from. Under this doctrine that is not a degraded case requiring
apology or a thinner standard — it is the more common case in the wider market this
sovereign spine is meant to serve, and it earns exactly the same rigor as a SAP-sourced
feed:

- Field-level mapping to the nearest SAP analogue, marked DOCUMENTED / INFERRED /
  UNVERIFIED honestly rather than optimistically.
- An explicit projection describing which columns are sourced, which are derived, and
  which are genuinely null because the source system has no equivalent concept — a null is
  not a gap to be embarrassed about; a fabricated value to hide the null is the actual
  defect.
- The same downstream extensions (ESG score, interaction record) attach to a non-SAP
  feeder's lines exactly as they attach to an SAP-sourced line.

See [`schema/feeders/README.md`](../schema/feeders/README.md), [`schema/feeders/cdk-dms/mapping.md`](../schema/feeders/cdk-dms/mapping.md),
and [`schema/feeders/cdk-dms/acdoca-projection.md`](../schema/feeders/cdk-dms/acdoca-projection.md)
for the first worked application of this rule — the CDK Drive → ACDOCA feeder lane for the
Hawkins / Peterbilt Atlantic dealer group.

---

## 6. Relationship to the wider canon

| Canon element | Role in this doctrine |
|---|---|
| [`eve-hawkins-cdk-twin`](https://github.com/EVEglyphDesign/eve-hawkins-cdk-twin) | First worked application: a non-SAP DMS twin declaring 443 fields' SAP analogues under EgD-CDK-FIELDS-v2, and the first feeder this doctrine's rules were tested against. |
| [`DOCTRINE-ESG-ACDOCA-EXTENSION`](DOCTRINE-ESG-ACDOCA-EXTENSION.md) | Defines the ESG and interaction-record extensions that must attach identically whether an ACDOCA line originated from SAP or from a feeder governed by this doctrine. |
| [`schema/sap-modules/RECONCILIATION-NOTE.md`](../schema/sap-modules/RECONCILIATION-NOTE.md) | The living record of which crosswalks currently point at undefined tables — this doctrine's §4 rule made auditable. |
| [`schema/feeders/`](../schema/feeders/) | The directory this doctrine's §5 rule licenses: non-SAP systems of record treated as first-class, not exceptional. |
| [`enterprise-grade-criteria`](https://github.com/EVEglyphDesign/enterprise-grade-criteria) | Audit rubric a platform must pass to claim enterprise grade; a canon with undefined crosswalks does not pass it. |

---

## 7. Status and next actions

**Status:** DRAFT v0. Not ratified. Not for external quotation.

**Immediate next actions (Apex-gated):**

1. Ratify or edit this doctrine.
2. Ratify the confidence-mark discipline (DOCUMENTED / INFERRED / UNVERIFIED) as binding
   across all twin repositories, not only this one.
3. Require every future `TABLES.yaml` inventory addition to ship with its field-level
   YAML in the same commit, or be marked explicitly as a known gap in a reconciliation
   note — never silently inventoried and left undefined.
4. Approve the CDK Drive feeder lane as the canon's first-ratified non-SAP feeder
   pattern, to be reused for the next dealer or customer twin that has no SAP instance.

No implementation moves ahead of ratification.

---

© 2026 Dany Thériault / EVE Glyph Design. Controlled copy.
*Pour le bien-être du peuple.*
