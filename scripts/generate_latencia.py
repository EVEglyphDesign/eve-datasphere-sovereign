#!/usr/bin/env python3
"""
Latencia — synthetic latency instrument for the Sovereign Capital Twin.

Generates a deterministic CONTRACTUS register from invented parties and
commitment classes, then writes the four artifacts the demo page consumes:

    data/contractus.json      — the ledger, one row per commitment
    data/distribution.json    — median/p95/p99 of measured latency, by class
    data/evidence.json        — evidence completeness fractions
    data/eligibility.json     — notional split across eligibility_class values
    data/manifest.json        — run metadata, seed, hashes, timestamps

No network. No client data. No RWA assertion. Reproducible from the seed.
"""
from __future__ import annotations

import hashlib
import json
import math
import os
import random
import statistics
from dataclasses import dataclass, asdict
from datetime import datetime, timedelta, timezone
from pathlib import Path

SEED = 20260813
random.seed(SEED)

OUT = Path(__file__).resolve().parent.parent / "docs" / "instrument" / "store"
OUT.mkdir(parents=True, exist_ok=True)

# --- Invented parties (Vendor Sphere pattern: no real counterparties) --------

OBLIGORS = [
    ("EGD-OBL-001", "Ateliers Fictifs du Fleuve"),
    ("EGD-OBL-002", "Cooperativa Ejemplo del Norte"),
    ("EGD-OBL-003", "Northline Made-Up Freight"),
]
CREDITORS = [
    ("EGD-CRD-001", "Banque Imaginaire de Rive-Sud"),
    ("EGD-CRD-002", "Placeholder Trust & Discount"),
    ("EGD-CRD-003", "Caisse Modèle de Sainte-Trinité"),
]

# --- Commitment classes and their latency shapes -----------------------------
# Latency shape is lognormal(mu, sigma) in HOURS. These are illustrative shapes
# for a synthetic instrument. They are not benchmarks and must not be quoted
# as if they were.

CLASSES = {
    # (mu, sigma_ln, share_of_notional, notional_mean, evidence_hit_rate,
    #  eligibility_mix, pending_rate)
    "CONTRACTUAL": (2.4, 1.1, 0.42, 84_000,  0.94,
                    {"BASEL_FINANCIAL": 0.05, "BASEL_PHYSICAL_FIRB": 0.00,
                     "INELIGIBLE": 0.30, "NOT_ASSESSED": 0.65}, 0.06),
    "LOGISTIC":    (3.1, 1.3, 0.28, 42_000,  0.71,
                    {"BASEL_FINANCIAL": 0.00, "BASEL_PHYSICAL_FIRB": 0.02,
                     "INELIGIBLE": 0.55, "NOT_ASSESSED": 0.43}, 0.11),
    "ESG":         (4.6, 1.4, 0.09,  7_500,  0.48,
                    {"BASEL_FINANCIAL": 0.00, "BASEL_PHYSICAL_FIRB": 0.00,
                     "INELIGIBLE": 0.20, "NOT_ASSESSED": 0.80}, 0.19),
    "STANDING":    (5.9, 1.2, 0.05,  1_800,  0.33,
                    {"BASEL_FINANCIAL": 0.00, "BASEL_PHYSICAL_FIRB": 0.00,
                     "INELIGIBLE": 0.10, "NOT_ASSESSED": 0.90}, 0.24),
    "MEMBERSHIP":  (5.2, 1.0, 0.04,  1_100,  0.61,
                    {"BASEL_FINANCIAL": 0.00, "BASEL_PHYSICAL_FIRB": 0.00,
                     "INELIGIBLE": 0.05, "NOT_ASSESSED": 0.95}, 0.14),
    "INTERACTION": (3.8, 1.5, 0.12,  6_400,  0.57,
                    {"BASEL_FINANCIAL": 0.00, "BASEL_PHYSICAL_FIRB": 0.01,
                     "INELIGIBLE": 0.40, "NOT_ASSESSED": 0.59}, 0.09),
}
CLASS_WEIGHTS = [(k, v[2]) for k, v in CLASSES.items()]

N_ROWS = 2000
CUTOFF = datetime(2026, 8, 13, 12, 0, 0, tzinfo=timezone.utc)
WINDOW_DAYS = 120


def weighted_pick(pairs):
    xs, ws = zip(*pairs)
    return random.choices(xs, weights=ws, k=1)[0]


def sample_latency_hours(mu: float, sigma_ln: float) -> float:
    # lognormal: exp(N(mu, sigma_ln)) directly in hours
    return math.exp(random.gauss(mu, sigma_ln))


def sample_notional(mean: float) -> float:
    # Gamma-ish shape: mean around `mean`, heavy right tail via lognormal
    return round(random.lognormvariate(math.log(mean) - 0.5, 1.0), 2)


def sample_eligibility(mix: dict[str, float]) -> str:
    xs = list(mix.keys())
    ws = list(mix.values())
    return random.choices(xs, weights=ws, k=1)[0]


def sha256_short(s: str) -> str:
    return hashlib.sha256(s.encode("utf-8")).hexdigest()[:16]


@dataclass
class Contractus:
    contractus_id: str
    obligor_id: str
    obligor_name: str
    creditor_id: str
    creditor_name: str
    evidence_class: str
    t_bind: str
    t_post: str | None
    latency_hours: float | None
    notional: float
    currency: str
    qualification: str          # ASSERTED | VERIFIED | PENDING
    eligibility_class: str
    lien_position: str
    evidence_ptr: list[dict]
    superseded_by: str | None


def make_row(i: int) -> Contractus:
    klass = weighted_pick(CLASS_WEIGHTS)
    mu, sigma, _share, notional_mean, hit_rate, elig_mix, pending_rate = CLASSES[klass]

    ob_id, ob_name = random.choice(OBLIGORS)
    cr_id, cr_name = random.choice(CREDITORS)

    t_bind = CUTOFF - timedelta(days=random.uniform(0, WINDOW_DAYS))
    is_pending = random.random() < pending_rate
    if is_pending:
        t_post = None
        latency = None
        qualification = "PENDING"
    else:
        lat_h = sample_latency_hours(mu, sigma)
        t_post = t_bind + timedelta(hours=lat_h)
        latency = round(lat_h, 3)
        # VERIFIED requires evidence hit; else ASSERTED
        qualification = "VERIFIED" if random.random() < hit_rate else "ASSERTED"

    notional = sample_notional(notional_mean)
    eligibility = sample_eligibility(elig_mix)

    # evidence pointers — synthetic, hash of the row seed
    n_ev = random.choice([1, 1, 1, 2, 2, 3])
    ev_ptrs = []
    for k in range(n_ev):
        payload = f"latencia:{i}:{k}:{klass}:{ob_id}:{cr_id}:{notional}"
        digest = hashlib.sha256(payload.encode()).hexdigest()
        ev_ptrs.append({
            "uri": f"egd://obligor/{ob_id}/evidence/{digest[:12]}",
            "sha256": digest,
            "retrieved_at": (t_bind + timedelta(hours=random.uniform(0, 6))).isoformat(),
            "custody": "OBLIGOR",
        })

    return Contractus(
        contractus_id=f"CTR-{SEED}-{i:05d}",
        obligor_id=ob_id, obligor_name=ob_name,
        creditor_id=cr_id, creditor_name=cr_name,
        evidence_class=klass,
        t_bind=t_bind.isoformat(),
        t_post=t_post.isoformat() if t_post else None,
        latency_hours=latency,
        notional=notional,
        currency="CAD",
        qualification=qualification,
        eligibility_class=eligibility,
        lien_position=random.choice(
            ["none", "none", "none", "junior", "first", "unknown"]),
        evidence_ptr=ev_ptrs,
        superseded_by=None,
    )


def quantiles(xs: list[float]) -> dict[str, float]:
    if not xs:
        return {"n": 0, "median": None, "p95": None, "p99": None, "max": None}
    xs = sorted(xs)
    def q(p):
        if len(xs) == 1:
            return xs[0]
        i = p * (len(xs) - 1)
        lo = int(math.floor(i)); hi = int(math.ceil(i))
        return xs[lo] + (xs[hi] - xs[lo]) * (i - lo)
    return {
        "n": len(xs),
        "median": round(q(0.50), 3),
        "p95": round(q(0.95), 3),
        "p99": round(q(0.99), 3),
        "max": round(xs[-1], 3),
    }


def build():
    rows = [make_row(i) for i in range(N_ROWS)]

    # distribution.json — measured latency, by class and by counterparty
    by_class: dict[str, list[float]] = {}
    by_creditor: dict[str, list[float]] = {}
    for r in rows:
        if r.latency_hours is None:
            continue
        by_class.setdefault(r.evidence_class, []).append(r.latency_hours)
        by_creditor.setdefault(r.creditor_name, []).append(r.latency_hours)

    distribution = {
        "unit": "hours",
        "by_class": {k: quantiles(v) for k, v in sorted(by_class.items())},
        "by_creditor": {k: quantiles(v) for k, v in sorted(by_creditor.items())},
        "overall": quantiles([r.latency_hours for r in rows
                              if r.latency_hours is not None]),
    }

    # evidence.json — completeness by class
    evidence = {"by_class": {}}
    for klass in CLASSES.keys():
        subset = [r for r in rows if r.evidence_class == klass]
        n = len(subset)
        n_verified = sum(1 for r in subset if r.qualification == "VERIFIED")
        n_hashed = sum(1 for r in subset for e in r.evidence_ptr if e["sha256"])
        notional_total = sum(r.notional for r in subset)
        notional_verified = sum(r.notional for r in subset
                                if r.qualification == "VERIFIED")
        evidence["by_class"][klass] = {
            "n": n,
            "verified_share": round(n_verified / n, 4) if n else 0.0,
            "hashed_pointer_share": 1.0,   # every pointer carries a sha256 in this instrument
            "notional_total": round(notional_total, 2),
            "notional_verified": round(notional_verified, 2),
            "notional_verified_share": (
                round(notional_verified / notional_total, 4) if notional_total else 0.0
            ),
        }

    # eligibility.json — notional split
    elig_totals: dict[str, float] = {
        "BASEL_FINANCIAL": 0.0, "BASEL_PHYSICAL_FIRB": 0.0,
        "INELIGIBLE": 0.0, "NOT_ASSESSED": 0.0,
    }
    for r in rows:
        elig_totals[r.eligibility_class] += r.notional
    total = sum(elig_totals.values()) or 1.0
    eligibility = {
        "notional_by_class": {k: round(v, 2) for k, v in elig_totals.items()},
        "share_by_class": {k: round(v / total, 4) for k, v in elig_totals.items()},
        "qualified_for_lender": {
            "note": "Only BASEL_FINANCIAL and BASEL_PHYSICAL_FIRB may be shown as collateral to a lender. NOT_ASSESSED is not eligible until classified.",
            "notional": round(elig_totals["BASEL_FINANCIAL"] + elig_totals["BASEL_PHYSICAL_FIRB"], 2),
            "share": round(
                (elig_totals["BASEL_FINANCIAL"] + elig_totals["BASEL_PHYSICAL_FIRB"]) / total, 4),
        },
    }

    # contractus.json — the ledger
    contractus = [asdict(r) for r in rows]

    # Write everything then hash it
    (OUT / "contractus.json").write_text(json.dumps(contractus, indent=2))
    (OUT / "distribution.json").write_text(json.dumps(distribution, indent=2))
    (OUT / "evidence.json").write_text(json.dumps(evidence, indent=2))
    (OUT / "eligibility.json").write_text(json.dumps(eligibility, indent=2))

    manifest = {
        "instrument": "latencia",
        "instrument_id": "EgD-SCT-INS-001",
        "version": "1.0",
        "generated_at": datetime.now(timezone.utc).isoformat(),
        "seed": SEED,
        "n_rows": N_ROWS,
        "classes": list(CLASSES.keys()),
        "obligors": [{"id": o[0], "name": o[1]} for o in OBLIGORS],
        "creditors": [{"id": c[0], "name": c[1]} for c in CREDITORS],
        "cutoff_utc": CUTOFF.isoformat(),
        "window_days": WINDOW_DAYS,
        "provenance": {
            "parties": "invented — no real counterparty is named",
            "input_data": "none — the instrument reads no client system",
            "reproducibility": f"deterministic from seed={SEED}",
        },
        "refusals": [
            "No RWA relief claim is made or implied.",
            "NOT_ASSESSED is reported as itself — never rolled into an eligible number.",
            "No Basel effect is quantified without a rule reference.",
        ],
        "artifact_hashes": {},
    }
    for name in ("contractus.json", "distribution.json",
                 "evidence.json", "eligibility.json"):
        data = (OUT / name).read_bytes()
        manifest["artifact_hashes"][name] = hashlib.sha256(data).hexdigest()

    (OUT / "manifest.json").write_text(json.dumps(manifest, indent=2))
    print(f"wrote {N_ROWS} rows to {OUT}")
    print("hashes:")
    for k, v in manifest["artifact_hashes"].items():
        print(f"  {k}  {v}")


if __name__ == "__main__":
    build()
