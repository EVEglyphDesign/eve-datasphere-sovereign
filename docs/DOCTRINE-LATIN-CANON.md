# Doctrine — the canonical Latin naming layer (EgD-LATIN-001)

**Status:** DRAFT v0 · 2026-07-31 · awaiting Apex ratification
**Generated register:** [`schema/lexicon/CANONICAL-FIELDS.yaml`](../schema/lexicon/CANONICAL-FIELDS.yaml)
**Concept lexicon:** [`schema/lexicon/latin-lexicon.yaml`](../schema/lexicon/latin-lexicon.yaml)
**Generator:** [`scripts/latinize.py`](../scripts/latinize.py)

---

## Wireframe and blueprint

This repository is the **wireframe**. It is drawn from a live vendor's structures because
that is where the truth currently sits. The **blueprint** is what gets extracted from the
wireframe for those who come after — and a blueprint that hands the next builder somebody
else's abbreviations of somebody else's language is not a blueprint, it is a tracing.

`BUKRS` is *Buchungskreis*. `WERKS` is *Werk*. `KOSTL` is *Kostenstelle*. `LIFNR` is
*Lieferantennummer*. Every practitioner outside Germany has spent a career memorising a
foreign language's consonant clusters in order to read their own company's accounts. That is
a source-language accident of 1972, faithfully preserved for fifty years.

## The rule

Every field carries **two names**.

1. **The canonical name** — composed of up to three Latin concept abbreviations, drawn from a
   published lexicon, in the order the concepts appear in the field's own description.
   `T001-BUKRS` is `SOC`, *codex societatis*. `ACDOCA-AUGDT` is `CPN_DIE`, *compensatio dies*.
   Latin because it is nobody's home advantage and everybody's root vocabulary: the Romance
   languages inherit it, the Germanic and Slavic legal and accounting registers borrowed it,
   and the scientific world already agreed to name things this way.
2. **The legacy name** — SAP's own, unaltered. It is the **join key**. The mirror reads and
   writes it; nothing in the pipeline depends on the canonical layer. Discarding it would
   breach the non-proliferation compact, which holds that the source vocabulary wins.

On the published surface the canonical name is displayed and **the legacy name appears on
hover**. Neither is hidden from the other.

## Honesty rule

A field whose description matches no concept in the lexicon **keeps its legacy name** and is
counted as underived in the generator's own output. It is never given an invented Latin form
to make a coverage number look better. Underived fields are the lexicon's backlog, and they
are visible.

## Language

The concept lexicon is translated into the working languages of the countries this model is
deployed in. Because translation happens at the **concept** layer rather than the field
layer, a reader switches the surface to their own language and the entire model — every
table, every field, all of it — renames itself, without a single schema file changing.
Roughly two hundred and fifty concepts carry the whole vocabulary. That is the economy of
naming things once.

## What this buys the blueprint

- A practitioner in Lyon, São Paulo or Kraków reads the model in their own register.
- The model can be implemented on a database that has never heard of SAP, with names that
  explain themselves, while remaining able to round-trip to SAP on the legacy name.
- The next builder inherits a vocabulary, not a dialect.

---

*Pour le bien-être du peuple.*

© 2026 EVEglyphDesign. All rights reserved. Controlled copy.
