# Latencia — the Synthetic Latency Instrument

`EgD-SCT-INS-001 v1.0` · a browser-executable proof of the
[Sovereign Capital Twin](../DOCTRINE-SOVEREIGN-CAPITAL-TWIN.md) L1 commitment
register, on the [Vendor Sphere pattern](https://github.com/EVEglyphDesign/eve-vendor-sphere).

Public demo: <https://eveglyphdesign.github.io/eve-datasphere-sovereign/instrument/>

## What it does

The instrument fabricates a deterministic `CONTRACTUS` register — 2,000 rows
across six invented parties and six commitment classes — and computes exactly
the three quantities the doctrine says are measurable from L1 the day it is
populated:

1. **Risk latency distribution** — median and 95th percentile of
   `t_post − t_bind`, by class and by counterparty. A duration, not a metaphor.
2. **Evidence completeness** — share of notional whose evidence pointers are
   hashed, retrievable from obligor custody, and in `VERIFIED` state. Reported
   as a fraction, never rounded up.
3. **Eligibility-qualified collateral** — notional split across the four
   `eligibility_class` values. The number that may be shown to a lender is only
   the qualified subset.

## What it refuses

Visible as chrome on the demo page:

- No RWA relief claim is made or implied.
- `NOT_ASSESSED` is reported as itself — never rolled into an eligible number.
- No Basel effect is quantified without a rule reference.

## What it does not do

- It does not read any client system.
- It does not name a real counterparty.
- It does not represent a benchmark. The class-level latency shapes are
  illustrative, drawn from lognormal distributions to exercise the register.

## Reproducibility

```
python3 scripts/generate_latencia.py
```

Deterministic from `seed=20260813`. Writes five JSON files under
`docs/instrument/store/` and SHA-256 stamps them in `manifest.json`.

## Files

| File | What it holds |
|---|---|
| `docs/instrument/index.html` | The demo page — vanilla JS, canon palette |
| `docs/instrument/store/contractus.json` | The ledger, one row per commitment |
| `docs/instrument/store/distribution.json` | Latency quantiles by class and by creditor |
| `docs/instrument/store/evidence.json` | Evidence completeness fractions |
| `docs/instrument/store/eligibility.json` | Notional split across eligibility classes |
| `docs/instrument/store/manifest.json` | Seed, timestamps, refusals, artifact hashes |
| `scripts/generate_latencia.py` | The generator |

## What comes next

Rung 3 of the build path in the doctrine — one public obligor, one commitment
class, read from the held civic catalogue, with citizen-side extractability as
the demonstrated feature rather than lender-side visibility.

---

© 2026 EVEglyphDesign. Controlled copy. *Pour le bien-être du peuple.*
