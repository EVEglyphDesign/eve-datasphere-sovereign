# The Sovereign Capital Twin
~ EgD-SCT-001 v1.0 · An additive superset of Ferran Frances-Gil's SAP Capital Twin, Contractual Gravity, Financial Airbnb and Evidence Economy · EVEglyphDesign · 2026-08-13

## The answer

Yes. The mirror is not only possible, it is the natural completion of his model — because every one of his four concepts requires a custodian of evidence, and he silently assigns that role to the vendor. The additive sovereign model changes the custodian and keeps the mathematics.

Run it as a strict superset in four moves: **accept** the commitment-gravity insight unchanged, **re-base** custody of the evidence to the obligor, **add** the evidence classes his ledger cannot represent, and **refuse** three specific claims that would make the sovereign version legally and intellectually indefensible.

> His Capital Twin asks what capital action should execute next. The Sovereign Capital Twin asks the same question and adds a second: who holds the proof that the answer was right, after the vendor relationship ends.

## What is being mirrored

Four coinages, one author, all self-published on the [SAP Banking blog](http://sapbank.blogspot.com/), LinkedIn Pulse and [Medium](https://medium.com/@ferran.frances). None is SAP-official; SAP's own term is "financial digital twin".

| Concept | His claim, in one line |
|---|---|
| **Contractual Gravity** | Legally binding commitments accumulate "contractual mass" that consumes liquidity and regulatory capital before ledger recognition — a financial reading of Dave McCrory's 2010 Data Gravity |
| **Capital Twin** | A layer above the Digital and Financial twin that does not report but executes: inventory becomes financeable collateral, a verified PO becomes a programmable credit instrument |
| **Evidence Economy** | Credit terms priced off continuously verified operational evidence rather than historical balance sheets; more evidence, less capital consumed |
| **Financial Airbnb** | Corporates stop hoarding balance-sheet pools and lend surplus capital directly to supply-chain partners over the network, disintermediating the bank |

The architecture he wires them to is real and correctly named: Ariba → BN4L → S/4HANA with ACDOCA as the journal, FSDM as semantic layer, IFRA and the Results Data Layer as the risk tier. That is the same spine [EVE Datasphere Sovereign](https://github.com/EVEglyphDesign/eve-datasphere-sovereign) already treats as the organizational axis. The mirror is therefore cheap: the substrate exists.

## Where his model is custodial and ours is additive

This is the whole difference, and it is not a detail of deployment. It decides who can still answer the question in five years.

| Axis | His Capital Twin | Sovereign Capital Twin |
|---|---|---|
| Custody of evidence | Vendor network — Ariba, BN4L, GTT hold the proof | Obligor holds the proof; computation runs inside the client boundary |
| Residual after engagement | A subscription and a dependency | A running stack the client owns outright, with no retained access path |
| Evidence classes | Tradeable and contractual only | Plus ESG effect, non-tradeable earned standing, membership, service interaction |
| Falsifiability | Assertions are unlogged and unbounded | Every capital assertion carries a source hash, a qualification state, and a defect route |
| Reversibility | One-way enrichment inside the vendor model | Latin canon, compatibility views, versions carrying an inverse, mirror non-proliferation |
| Posture | Substitutive — the network becomes the balance sheet | Additive — no seat substitution, mirror rights where the vendor does not serve, return rights into the vendor system of record |

## The superset construction

Five layers. Layers L2 to L4 are his, unmodified. L0 and L1 are what make the thing sovereign, and sit underneath his stack rather than beside it — which is why the result is additive rather than competitive.

- **L0 — Custody and provenance.** Evidence lands in the obligor's repository first: full text, timestamped, extractable on demand, hashed. No capital computation may consume an artifact that has not been hashed at L0. This is the FTTE standard applied to commitments instead of chat logs.
- **L1 — The commitment register.** An append-only table of commitment objects sitting beside ACDOCA, never inside it. Legal formation time and posting time are both recorded, so risk latency becomes a measured duration rather than a rhetorical figure.
- **L2 — Financial mirror.** ACDOCA and the extended journals. Unchanged from the held reference model.
- **L3 — Capital computation.** His layer: exposure, LGD, liquidity, hedge linkage, RAROC. Runs as a consumer of L1, and is fully replaceable — a bank's own engine, IFRA, or a spreadsheet may occupy this slot.
- **L4 — Action and return.** Approved actions execute through the regulated rail and are written back into the vendor system of record. The human gate before actuation is the Vendor Sphere pattern, not a new invention.

### Why this ordering is the superset property

His model is a function over vendor-held state. Ours is the same function over obligor-held state, plus the state his model cannot express. Anything computable in his architecture is computable in ours; the reverse is false, because he has no place to put a commitment that has no invoice — a grant condition, a stewardship obligation, a volunteer hour, a covenant to a parish.

## The commitment object

Concrete enough to build. Proposed as `CONTRACTUS`, aligned to the mirror non-proliferation rule: source vocabulary wins, the structure is defined once, extensions attach at the edges.

    CONTRACTUS
      contractus_id        stable, never reused
      obligor / creditor   party under the duty, party holding the claim
      t_bind               ISO-8601 UTC, moment of legal formation
      t_post               ISO-8601 UTC, moment of ledger recognition (nullable)
      latency_measured     t_post - t_bind, in seconds. Null while pending
      notional / currency  face amount as contracted
      evidence_class       CONTRACTUAL | LOGISTIC | ESG | STANDING | MEMBERSHIP | INTERACTION
      evidence_ptr[]       {uri, sha256, retrieved_at, custody}
      qualification        ASSERTED | VERIFIED | PENDING  (never silently promoted)
      eligibility_class    BASEL_FINANCIAL | BASEL_PHYSICAL_FIRB | INELIGIBLE | NOT_ASSESSED
      lien_position        first charge, junior, none, unknown
      superseded_by        append-only correction pointer

The extended journals already defined in the held reference model carry what his ledger cannot: **ACDOCX** for ESG effects, **MRTDOC** for non-tradeable earned standing, **MEMBR** for community membership, **ACDOCI** for service interactions. None of them modifies ACDOCA. That is the same discipline as keeping `CONTRACTUS` outside the universal journal.

## Measured latency replaces the formula

His published formula is the weakest artifact in his corpus: `Capital_Optimized = (Commitment × Velocity) − (HedgingCosts ∩ RiskPremiums)`. A set intersection over two cost quantities is a category error, the units do not resolve, and nothing in it is estimable. Do not mirror it.

Mirror this instead — three quantities that are actually measurable from L1 the day it is populated:

- **Risk latency distribution.** Median and 95th percentile of `t_post − t_bind` by commitment class and counterparty. This is the honest core of Contractual Gravity, and it is a duration, not a metaphor.
- **Evidence completeness.** Share of commitment notional whose evidence pointers are hashed, retrievable from obligor custody, and in `VERIFIED` state. Reported as a fraction, never rounded up to a claim.
- **Eligibility-qualified collateral.** Notional split across the four `eligibility_class` values. The number that may be shown to a lender is only the qualified subset.

## The eligibility wall

This is where the sovereign version must be more honest than the source, or it will be dismantled by the first credit officer who reads it.

Under the Basel standardized approach, recognized collateral is essentially financial — cash on deposit, gold, rated debt securities — and inventory is **not eligible** ([BIS Basel Framework](https://www.bis.org/baselframework/BaselFramework.pdf)). Physical collateral enters only under the foundation IRB approach, and only where the bank can demonstrate liquid disposal markets and well-established public market prices, holds a **first lien** with priority over all other lenders, and accepts a supervisory LGD floor of 25% with a 40% haircut ([BIS CRE36](https://www.bis.org/basel_framework/chapter/CRE/36.htm), [BIS CRE32](https://www.bis.org/basel_framework/chapter/CRE/32.htm)). Some jurisdictions exclude plant, machinery and current assets outright ([RBI Basel III](https://www.rbi.org.in/commonman/Upload/English/Notification/PDFs/114BI010714FL.pdf)).

Therefore, three refusals, binding on every surface built from this model:

- **Never claim RWA relief as a product benefit.** Claim measured latency reduction, evidence completeness, and negotiating position on loan-to-value and margin. Those are real, defensible, and ours to deliver.
- **Never assert eligibility we have not classified.** `NOT_ASSESSED` is a permitted and honest value. An unqualified inventory number presented as collateral is a canon breach of the same class as publishing an assumed count as fact.
- **Never quantify a Basel effect without the rule reference.** His corpus asserts that Basel IV penalties shrink "exponentially, not linearly" with no citation, no risk weight and no arithmetic. That sentence cannot appear in an EgD artifact.

## Two readings of "sovereign"

The question carries both, and they are different builds. Keep them separate or the model will be sold into the wrong room.

| Reading | What it means | Maturity |
|---|---|---|
| **Data-sovereign enterprise** | The obligor is a company; sovereignty is custody. Direct mirror of his model with L0/L1 inserted, delivered as a client-DMZ assessment leaving an owned residual | Buildable now on the held reference model and the sidecar pattern |
| **Public and civic sovereign** | The obligor is a municipality, county, parish, Crown body or First Nation. Commitment gravity applied to procurement awards, grant conditions, capital-plan encumbrances, mutual-aid obligations | Design stage; the held civic-data catalogue is the natural first surface |

For the civic reading, note that public-sector commitment accounting already exists as encumbrance accounting under public-sector standards. The additive value is therefore **not** the idea that commitments bind capital early — governments have known that for a century — it is provenance, extractability by the citizen or member, and measured latency between award and recognition.

## The Financial Airbnb refusal, and what replaces it

Refuse it as designed. Systematic corporate-to-corporate lending brushes against licensing, deposit-taking and money-transmission regimes he never addresses; lending surplus to your own supplier concentrates exposure on the counterparty whose failure already halts your line; and the analogy inverts, because Airbnb monetizes non-fungible location-specific capacity while capital is fungible. Most decisively, it already exists as a regulated product inside SAP: [SAP Taulia](https://taulia.com/platform/payables/supply-chain-finance/) funds suppliers before invoice issuance and its inventory service takes ownership of goods in transit ([Taulia Inventory](https://taulia.com/platform/inventory/)).

The sovereign analogue of a "Financial Airbnb" is not a peer-to-peer corporate lending network. It is a **caisse** — a mutual, member-owned, regulated credit structure with a governing organization standing behind it. That form is lawful, centuries old in Québec, and already the shape of the held mutual-aid pilot. Same objective, legitimate rail:

- The governing organization holds authority, not the platform.
- Members contribute and draw; earned standing recorded in `MRTDOC` is non-tradeable and never becomes a security.
- Where regulated funding is required, the caisse routes to a licensed institution rather than impersonating one.
- The commitment register supplies the evidence; it does not supply the credit.

## Accept, re-base, add, refuse

| His concept | Accept | Add | Refuse |
|---|---|---|---|
| **Contractual Gravity** | The insight that capital is consumed at legal formation, not at posting; "risk latency" as vocabulary | Non-commercial commitment classes; measured latency distributions | The pseudo-formula and its intersection operator |
| **Capital Twin** | The Digital → Financial → Capital layering; the SAP component mapping | L0 custody and L1 register beneath it; a replaceable L3 slot | That a single WACC becomes obsolete — a per-transaction cost of capital is RAROC, not a new physics |
| **Evidence Economy** | The animating principle: unmeasured risk is expensive risk | Extraction rights for the obligor, so evidence is not merely readable by the lender | Unreferenced Basel quantification and the "exponential" claim |
| **Financial Airbnb** | The diagnosis that opaque aggregation destroys traceability | The caisse form under a governing organization; regulated rails for funding | Unlicensed corporate-to-corporate lending as an architecture |

## Build path

Three rungs, each one landing an artifact in the repository and on a public surface. Nothing here requires new research; every input is held.

- **Rung 1 — Register.** Add `CONTRACTUS` and the four `eligibility_class` values to the held reference model as public schema, with Latin canon and compatibility views. Deliverable: schema plus field map, committed.
- **Rung 2 — Latency instrument.** Populate `t_bind` and `t_post` from synthetic data on the Vendor Sphere pattern and publish the latency distribution as an executable proof with invented parties. Deliverable: a public demo that computes measured latency and refuses to state eligibility it has not classified.
- **Rung 3 — Civic pilot.** One public obligor, one commitment class — a procurement award or a grant condition — read from the held civic catalogue, with citizen-side extractability as the demonstrated feature rather than lender-side visibility.

Failure modes to log, not to discover twice: an unclassified eligibility number reaching a client surface is class **C**; a capital assertion published without its evidence hash is class **D**; re-deriving a commitment already held in the register is class **R**.

## Sources

- Ferran Frances-Gil, [From SAP Autonomous Enterprise to Autonomous Capital](http://sapbank.blogspot.com/2026/08/from-sap-autonomous-enterprise-to.html), SAP Banking, 2026-08-05
- Ferran Frances-Gil, [Contractual Gravity and the Capital Twin](http://sapbank.blogspot.com/2026/07/contractual-gravity-and-capital-twin.html), SAP Banking, 2026-07-23
- Ferran Frances-Gil, [Contractual Gravity, Basel Transformation, and the Rise of the SAP Capital Twin](https://www.linkedin.com/pulse/contractual-gravity-basel-transformation-rise-sap-capital-frances-o1wge), LinkedIn, 2026-06-12
- Bank for International Settlements, [The Basel Framework](https://www.bis.org/baselframework/BaselFramework.pdf) and [CRE36 — IRB minimum requirements](https://www.bis.org/basel_framework/chapter/CRE/36.htm)
- Reserve Bank of India, [Basel III Capital Regulations](https://www.rbi.org.in/commonman/Upload/English/Notification/PDFs/114BI010714FL.pdf)
- SAP Taulia, [Supply Chain Finance](https://taulia.com/platform/payables/supply-chain-finance/) and [Inventory](https://taulia.com/platform/inventory/)
- EVEglyphDesign, [EVE Datasphere Sovereign](https://github.com/EVEglyphDesign/eve-datasphere-sovereign) · [Executive Boot Contract](https://eveglyphdesign.github.io/eve-glyph-boot-contract/)
