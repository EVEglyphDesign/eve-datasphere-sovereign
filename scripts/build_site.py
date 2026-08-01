#!/usr/bin/env python3
"""Build the public model surface into docs/ for GitHub Pages.

Reads schema/sap-modules/**/tables/*.yaml and renders the sovereign reference model as a
readable site: coverage overview, one page per module, one page per table. EVEglyphDesign
canon — cream and orange, Fraunces display, Inter body.

Run from the repository root:  python3 scripts/build_site.py
"""
import glob
import html
import os
import shutil
from datetime import datetime, timezone

import yaml

BASE = "schema/sap-modules"
OUT = "docs/model"
REPO = "https://github.com/EVEglyphDesign/eve-datasphere-sovereign"
STAMP = datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M UTC")

MODULE_TITLES = {
    "fi": "FI — Financial Accounting",
    "co": "CO — Controlling",
    "mm": "MM — Materials Management",
    "sd": "SD — Sales & Distribution",
    "pp": "PP — Production Planning",
    "pm": "PM — Plant Maintenance",
    "qm": "QM — Quality Management",
    "hr": "HR — Human Resources",
    "ps": "PS — Project System",
    "bw": "BW — Business Warehouse",
    "cross": "CROSS — Cross-Application Foundation",
}

CSS = """
:root{--cream:#fdfaf4;--cream2:#f7f2e7;--ink:#1a1a1a;--line:#e7e1d3;--mute:#6b665c;--accent:#e87722}
*{box-sizing:border-box}
body{margin:0;background:var(--cream);color:var(--ink);
  font-family:Inter,-apple-system,BlinkMacSystemFont,'Segoe UI',sans-serif;
  font-size:16px;line-height:1.65;-webkit-font-smoothing:antialiased}
.wrap{max-width:1080px;margin:0 auto;padding:0 24px}
header.top{border-bottom:1px solid var(--line);background:var(--cream2)}
header.top .wrap{padding-top:28px;padding-bottom:28px}
.eyebrow{font-size:12px;letter-spacing:.14em;text-transform:uppercase;color:var(--accent);
  font-weight:600;margin:0 0 10px}
h1{font-family:Fraunces,Georgia,serif;font-weight:600;font-size:clamp(28px,4vw,44px);
  line-height:1.15;margin:0 0 12px;letter-spacing:-.01em}
h2{font-family:Fraunces,Georgia,serif;font-weight:600;font-size:26px;line-height:1.25;
  margin:44px 0 14px;letter-spacing:-.01em}
h3{font-family:Fraunces,Georgia,serif;font-weight:600;font-size:19px;margin:32px 0 10px}
p.lede{font-size:18px;color:var(--mute);margin:0;max-width:70ch}
a{color:var(--accent);text-decoration:none;border-bottom:1px solid rgba(232,119,34,.32)}
a:hover{border-bottom-color:var(--accent)}
main{padding:8px 0 72px}
.crumb{font-size:13px;color:var(--mute);margin:22px 0 0}
.crumb a{border:none}
.grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(248px,1fr));gap:16px;margin:22px 0}
.card{background:#fff;border:1px solid var(--line);border-radius:10px;padding:18px 18px 16px;
  display:flex;flex-direction:column}
.card h3{margin:0 0 6px;font-size:17px}
.card h3 a{border:none}
.card .meta{font-size:13px;color:var(--mute)}
.bar{height:5px;background:var(--line);border-radius:3px;margin-top:auto;overflow:hidden}
.card .meta{margin-bottom:12px}
.bar span{display:block;height:100%;background:var(--accent)}
table{border-collapse:collapse;width:100%;margin:18px 0;font-size:14px;background:#fff;
  border:1px solid var(--line);border-radius:10px;overflow:hidden}
th{background:var(--cream2);text-align:left;font-weight:600;font-size:12px;
  letter-spacing:.06em;text-transform:uppercase;color:var(--mute)}
th,td{padding:9px 12px;border-bottom:1px solid var(--line);vertical-align:top}
tr:last-child td{border-bottom:none}
td.k{white-space:nowrap}
code,.mono{font-family:ui-monospace,SFMono-Regular,Menlo,monospace;font-size:13px}
.tag{display:inline-block;font-size:11px;font-weight:600;letter-spacing:.06em;
  text-transform:uppercase;padding:2px 7px;border-radius:4px;background:var(--accent);
  color:#fff;vertical-align:middle}
.tag.mutedtag{background:var(--line);color:var(--mute)}
.stats{display:flex;flex-wrap:wrap;gap:26px;margin:22px 0 0;padding:18px 0;
  border-top:1px solid var(--line);border-bottom:1px solid var(--line)}
.stat .n{font-family:Fraunces,Georgia,serif;font-size:30px;font-weight:600;display:block;
  line-height:1.1}
.stat .l{font-size:12px;letter-spacing:.08em;text-transform:uppercase;color:var(--mute)}
.desc{max-width:78ch;color:var(--mute)}
footer{border-top:1px solid var(--line);background:var(--cream2);padding:26px 0;
  font-size:13px;color:var(--mute)}
footer .wrap p{margin:0 0 6px}
.sig{font-family:Fraunces,Georgia,serif;font-style:italic}
"""


def shell(title, body, depth):
    up = "../" * depth
    return f"""<!DOCTYPE html>
<html lang="en"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>{html.escape(title)} · EVE Datasphere Sovereign</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,600&family=Inter:wght@400;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="{up}style.css">
</head><body>
{body}
<footer><div class="wrap">
<p>EVEglyphDesign · <a href="{REPO}">eve-datasphere-sovereign on GitHub</a> · generated {STAMP}</p>
<p>Mirror, never cannibalise. Read-only from the source; the customer's system of record stays the system of record.</p>
<p class="sig">Pour le bien-être du peuple. © 2026 Dany Thériault / EVE Glyph Design.</p>
</div></footer></body></html>"""


def head(eyebrow, title, lede, depth, crumb=""):
    c = f'<p class="crumb">{crumb}</p>' if crumb else ""
    return (f'<header class="top"><div class="wrap">{c}'
            f'<p class="eyebrow">{html.escape(eyebrow)}</p><h1>{html.escape(title)}</h1>'
            f'<p class="lede">{lede}</p></div></header>')


def load_all():
    data = {}
    for path in sorted(glob.glob(f"{BASE}/*/tables/*.yaml")):
        module = path.split("/")[2]
        try:
            doc = yaml.safe_load(open(path))
        except Exception:
            continue
        if isinstance(doc, dict) and doc.get("table"):
            data.setdefault(module, []).append((doc, path))
    for module in data:
        data[module].sort(key=lambda x: x[0]["table"])
    return data


def table_page(doc, module, path):
    name = doc["table"]
    fields = doc.get("fields") or []
    fks = doc.get("foreign_keys") or []
    keys = [f for f in fields if f.get("key")]
    src = doc.get("source", "")
    src_link = (f'<a href="{html.escape(src)}">{html.escape(src.split("//")[-1].split("/")[0])}</a>'
                if src else "not recorded")
    rows = []
    for f in fields:
        ct = f.get("check_table")
        ct = f'<code>{html.escape(str(ct))}</code>' if ct and str(ct) != "None" else '<span style="color:#b9b3a5">—</span>'
        length = f.get("length", "")
        dec = f.get("decimals", 0)
        typ = f'{html.escape(str(f.get("datatype","")))} {length}' + (f",{dec}" if dec else "")
        rows.append(
            f'<tr><td class="k"><code>{html.escape(str(f.get("name","")))}</code>'
            + (' <span class="tag">key</span>' if f.get("key") else "")
            + f'</td><td>{html.escape(str(f.get("description","")))}</td>'
            f'<td class="k"><code>{html.escape(str(f.get("data_element","") or ""))}</code></td>'
            f'<td class="k mono">{typ}</td><td class="k">{ct}</td></tr>')
    fk_html = ""
    if fks:
        fk_rows = "".join(
            f'<tr><td class="k"><code>{html.escape(str(k.get("field","")))}</code></td>'
            f'<td class="k"><code>{html.escape(str(k.get("check_table","")))}</code></td>'
            f'<td class="k"><code>{html.escape(str(k.get("check_field","") or ""))}</code></td></tr>'
            for k in fks)
        fk_html = ("<h2>Foreign keys</h2><table><tr><th>Field</th><th>Check table</th>"
                   f"<th>Check field</th></tr>{fk_rows}</table>")
    body = head(
        MODULE_TITLES.get(module, module.upper()), name,
        f"{len(fields)} fields · {len(keys)} key · {len(fks)} foreign keys · sourced from {src_link}",
        3, crumb=f'<a href="../../index.html">Model</a> / <a href="index.html">{module.upper()}</a> / {name}')
    body += ('<main><div class="wrap">'
             f'<p class="desc">{html.escape(str(doc.get("description","")))}</p>'
             '<h2>Fields</h2><table><tr><th>Field</th><th>Description</th><th>Data element</th>'
             f'<th>Type</th><th>Check table</th></tr>{"".join(rows)}</table>{fk_html}'
             f'<p style="margin-top:28px"><a href="{REPO}/blob/main/{path}">'
             f'View <code>{name}.yaml</code> in the repository</a></p></div></main>')
    return shell(name, body, 2)


def build():
    data = load_all()
    if os.path.isdir(OUT):
        shutil.rmtree(OUT)
    os.makedirs(OUT, exist_ok=True)
    open("docs/style.css", "w").write(CSS)

    tot_t = sum(len(v) for v in data.values())
    tot_f = sum(len(d.get("fields") or []) for v in data.values() for d, _ in v)
    tot_fk = sum(len(d.get("foreign_keys") or []) for v in data.values() for d, _ in v)

    cards = []
    for module in sorted(data, key=lambda m: -len(data[m])):
        os.makedirs(f"{OUT}/{module}", exist_ok=True)
        entries = data[module]
        fcount = sum(len(d.get("fields") or []) for d, _ in entries)
        for doc, path in entries:
            open(f"{OUT}/{module}/{doc['table']}.html", "w").write(table_page(doc, module, path))
        rows = "".join(
            f'<tr><td class="k"><a href="{d["table"]}.html"><code>{d["table"]}</code></a></td>'
            f'<td>{html.escape(str(d.get("description",""))[:190])}…</td>'
            f'<td class="k">{len(d.get("fields") or [])}</td></tr>' for d, _ in entries)
        mbody = head("Module", MODULE_TITLES.get(module, module.upper()),
                     f"{len(entries)} tables defined at field level · {fcount} fields.", 2,
                     crumb='<a href="../index.html">Model</a> / ' + module.upper())
        mbody += ('<main><div class="wrap"><table><tr><th>Table</th><th>Description</th>'
                  f'<th>Fields</th></tr>{rows}</table></div></main>')
        open(f"{OUT}/{module}/index.html", "w").write(
            shell(MODULE_TITLES.get(module, module.upper()), mbody, 2))
        pct = min(100, round(100 * len(entries) / max(tot_t, 1) * 4))
        cards.append(
            f'<div class="card"><h3><a href="model/{module}/index.html">'
            f'{html.escape(MODULE_TITLES.get(module, module.upper()))}</a></h3>'
            f'<div class="meta">{len(entries)} tables · {fcount} fields</div>'
            f'<div class="bar"><span style="width:{pct}%"></span></div></div>')

    body = head(
        "EVEglyphDesign · sovereign reference model", "EVE Datasphere Sovereign",
        "The SAP-parity structures of a customer-owned mirror, published as readable "
        "field-level definitions. ACDOCA is the spine. The customer's system of record stays "
        "the system of record — this is the copy the customer already owns, made legible.", 1)
    body += f"""<main><div class="wrap">
<div class="stats">
<div class="stat"><span class="n">{tot_t}</span><span class="l">Tables defined</span></div>
<div class="stat"><span class="n">{tot_f:,}</span><span class="l">Fields</span></div>
<div class="stat"><span class="n">{tot_fk:,}</span><span class="l">Foreign keys</span></div>
<div class="stat"><span class="n">{len(data)}</span><span class="l">Modules</span></div>
</div>
<h2>The compact</h2>
<p class="desc">Mirror, never cannibalise. In exchange for full cooperation with the platform
vendors — read-only access, no write-back, no support-term violation, no displacement of the
system of record — we reserve the right to mirror what the model needs in order to offer
new-dimensional services the source platform does not offer. A consolidation of an industry
can only be built on a model every participant already speaks, so the vocabulary here is
SAP's own: table names, field names, data elements and check tables, verbatim. Extension
happens at the edges only.</p>
<p class="desc"><a href="{REPO}/blob/main/docs/DOCTRINE-MIRROR-NON-PROLIFERATION.md">Read the
non-proliferation compact</a> · <a href="{REPO}/blob/main/docs/ROADMAP-UNIVERSAL-COVERAGE.md">coverage
register</a> · <a href="{REPO}/blob/main/docs/DOCTRINE-ESG-ACDOCA-EXTENSION.md">ESG and ACDOCA
extension doctrine</a></p>
<h2>Modules</h2>
<div class="grid">{"".join(cards)}</div>
</div></main>"""
    open("docs/index.html", "w").write(shell("EVE Datasphere Sovereign", body, 0))
    print(f"built {tot_t} table pages across {len(data)} modules · {tot_f} fields")


if __name__ == "__main__":
    build()
