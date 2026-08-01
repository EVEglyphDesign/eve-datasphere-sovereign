#!/usr/bin/env python3
"""Regenerate docs/ROADMAP-UNIVERSAL-COVERAGE.md from the schema tree.

Rule 4 of the non-proliferation compact — "define once, reference everywhere" — is
enforced here: a table is resolved model-wide. If a module inventories a structure that
is already defined under another module, the inventory entry is SATISFIED BY REFERENCE,
not outstanding, and it is never duplicated on disk.

Run from the repository root:  python3 scripts/coverage.py
"""
import glob
import os
import re
from datetime import datetime, timezone

import yaml

BASE = "schema/sap-modules"
OUT = "docs/ROADMAP-UNIVERSAL-COVERAGE.md"
SHARED = os.path.join(BASE, "SHARED-TABLES.yaml")


def inventory(module_dir):
    """Table names a module's TABLES.yaml claims."""
    path = os.path.join(module_dir, "TABLES.yaml")
    names = set()
    if not os.path.exists(path):
        return names
    text = open(path).read()
    try:
        doc = yaml.safe_load(text)
    except Exception:
        doc = None

    def walk(node):
        if isinstance(node, dict):
            for key, val in node.items():
                if key in ("name", "table", "table_name") and isinstance(val, str):
                    names.add(val)
                walk(val)
        elif isinstance(node, list):
            for item in node:
                walk(item)

    walk(doc)
    if not names:
        names = set(re.findall(r"^\s*-?\s*([A-Z][A-Z0-9_/]{2,})\s*:", text, re.M))
    return names


def main():
    modules = sorted(d for d in os.listdir(BASE) if os.path.isdir(os.path.join(BASE, d)))

    defined_at = {}   # TABLE -> owning module
    claimed_by = {}   # TABLE -> [modules inventorying it]
    inv = {}
    for module in modules:
        module_dir = os.path.join(BASE, module)
        inv[module] = inventory(module_dir)
        for name in inv[module]:
            claimed_by.setdefault(name, []).append(module)
        for path in glob.glob(os.path.join(module_dir, "tables", "*.yaml")):
            defined_at[os.path.basename(path)[:-5]] = module

    rows, tot_own, tot_ref, tot_inv = [], 0, 0, 0
    for module in modules:
        own = {t for t in inv[module] if defined_at.get(t) == module}
        ref = {t for t in inv[module] if t in defined_at and defined_at[t] != module}
        missing = sorted(inv[module] - set(defined_at))
        tot_own += len(own)
        tot_ref += len(ref)
        tot_inv += len(inv[module])
        rows.append((module.upper(), len(own), len(ref), len(inv[module]), missing))

    shared = {t: sorted(m) for t, m in claimed_by.items() if len(m) > 1}
    resolved = tot_own + tot_ref
    stamp = datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M UTC")

    out = [
        "# Roadmap — universal coverage register",
        "",
        f"**Generated:** {stamp} by [`scripts/coverage.py`](../scripts/coverage.py). Do not hand-edit.",
        "",
        "Coverage counts field-level `tables/*.yaml` definitions against each module's "
        "`TABLES.yaml` inventory, resolved model-wide. **Owned** is defined under that module. "
        "**Ref** is inventoried by the module and satisfied by a definition owned elsewhere — "
        "Rule 4 of [the non-proliferation compact](DOCTRINE-MIRROR-NON-PROLIFERATION.md), "
        "define once and reference everywhere. **Outstanding** entries are promises the model "
        "has made and not yet kept; they are listed so no lane has to re-derive them.",
        "",
        "| Module | Owned | Ref | Inventoried | Resolved | Outstanding |",
        "|---|---:|---:|---:|---:|---|",
    ]
    for name, own, ref, total, missing in rows:
        pct = round(100 * (own + ref) / total) if total else 0
        listing = ", ".join(f"`{t}`" for t in missing) if missing else "—"
        out.append(f"| {name} | {own} | {ref} | {total} | {pct}% | {listing} |")
    pct_all = round(100 * resolved / tot_inv) if tot_inv else 0
    out.append(
        f"| **TOTAL** | **{tot_own}** | **{tot_ref}** | **{tot_inv}** | **{pct_all}%** | "
        f"**{tot_inv - resolved} outstanding** |"
    )

    out += [
        "",
        "## Shared structures — define once, reference everywhere",
        "",
        "Inventoried by more than one module. Each resolves to a single definition; the owning "
        "module is authoritative and the others reference it. A second copy on disk would be "
        "proliferation by another name.",
        "",
        "| Table | Owner | Also claimed by | Status |",
        "|---|---|---|---|",
    ]
    for table, mods in sorted(shared.items()):
        owner = defined_at.get(table)
        others = ", ".join(m.upper() for m in mods if m != owner)
        if owner:
            path = f"{BASE}/{owner}/tables/{table}.yaml"
            status = f"[defined](../{path})"
            owner_cell = owner.upper()
        else:
            status = "outstanding"
            owner_cell = "—"
            others = ", ".join(m.upper() for m in mods)
        out.append(f"| `{table}` | {owner_cell} | {others} | {status} |")

    out += ["", "*Pour le bien-être du peuple.*", ""]
    os.makedirs(os.path.dirname(OUT), exist_ok=True)
    open(OUT, "w").write("\n".join(out))
    print(f"{resolved}/{tot_inv} resolved ({pct_all}%) · {tot_inv - resolved} outstanding")
    for table, mods in sorted(shared.items()):
        print(f"  shared {table:9} owner={defined_at.get(table) or '—'} claimed={','.join(mods)}")


if __name__ == "__main__":
    main()
