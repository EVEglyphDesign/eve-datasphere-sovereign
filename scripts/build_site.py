#!/usr/bin/env python3
"""Build the public model surface into docs/ for GitHub Pages.

The wireframe, published. Field names are shown in the canonical Latin layer
(EgD-LATIN-001); the legacy SAP name appears on hover. Every page carries a live filter and
a language selector that renames the whole model at the concept layer.

Run from the repository root:  python3 scripts/build_site.py
"""
import glob
import html
import json
import os
import shutil
from datetime import datetime, timezone

import yaml

BASE = "schema/sap-modules"
OUT = "docs/model"
REGISTER = "schema/lexicon/CANONICAL-FIELDS.yaml"
I18N_SRC = "schema/lexicon/i18n.json"
REPO = "https://github.com/EVEglyphDesign/eve-datasphere-sovereign"
STAMP = datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M UTC")

MODULE_TITLES = {
    "fi": "FI — Financial Accounting", "co": "CO — Controlling",
    "mm": "MM — Materials Management", "sd": "SD — Sales & Distribution",
    "pp": "PP — Production Planning", "pm": "PM — Plant Maintenance",
    "qm": "QM — Quality Management", "hr": "HR — Human Resources",
    "ps": "PS — Project System", "bw": "BW — Business Warehouse",
    "cross": "CROSS — Cross-Application Foundation",
    "ext": "EXT — Societal Effect Extension",
    "int": "INT — Universal Interaction Journal",
}

CSS = """
:root{--cream:#fdfaf4;--cream2:#f7f2e7;--ink:#1a1a1a;--line:#e7e1d3;--mute:#6b665c;--accent:#e87722}
*{box-sizing:border-box}
body{margin:0;background:var(--cream);color:var(--ink);
  font-family:Inter,-apple-system,BlinkMacSystemFont,'Segoe UI',sans-serif;
  font-size:16px;line-height:1.65;-webkit-font-smoothing:antialiased}
.wrap{max-width:1180px;margin:0 auto;padding:0 24px}
header.top{border-bottom:1px solid var(--line);background:var(--cream2)}
header.top .wrap{padding-top:26px;padding-bottom:26px}
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
.bar-tools{display:flex;flex-wrap:wrap;gap:12px;align-items:center;margin:26px 0 4px}
input.filter{flex:1 1 260px;min-width:200px;padding:10px 13px;border:1px solid var(--line);
  border-radius:8px;background:#fff;font:inherit;font-size:15px;color:var(--ink)}
input.filter:focus{outline:2px solid rgba(232,119,34,.35);outline-offset:1px;border-color:var(--accent)}
select.lang{padding:10px 13px;border:1px solid var(--line);border-radius:8px;background:#fff;
  font:inherit;font-size:15px;color:var(--ink)}
.hint{font-size:13px;color:var(--mute);margin:8px 0 0}
.count{font-size:13px;color:var(--mute);white-space:nowrap}
.grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(248px,1fr));gap:16px;margin:22px 0}
.card{background:#fff;border:1px solid var(--line);border-radius:10px;padding:18px 18px 16px;
  display:flex;flex-direction:column}
.card h3{margin:0 0 6px;font-size:17px}
.card h3 a{border:none}
.card .meta{font-size:13px;color:var(--mute);margin-bottom:12px}
.bar{height:5px;background:var(--line);border-radius:3px;margin-top:auto;overflow:hidden}
.bar span{display:block;height:100%;background:var(--accent)}
table{border-collapse:collapse;width:100%;margin:14px 0;font-size:14px;background:#fff;
  border:1px solid var(--line);border-radius:10px;overflow:hidden}
th{background:var(--cream2);text-align:left;font-weight:600;font-size:12px;
  letter-spacing:.06em;text-transform:uppercase;color:var(--mute)}
th,td{padding:9px 12px;border-bottom:1px solid var(--line);vertical-align:top}
tr:last-child td{border-bottom:none}
td.k{white-space:nowrap}
code,.mono{font-family:ui-monospace,SFMono-Regular,Menlo,monospace;font-size:13px}
.canon{font-family:ui-monospace,SFMono-Regular,Menlo,monospace;font-size:13px;font-weight:600;
  border-bottom:1px dotted var(--accent);cursor:help}
.canon.plain{border-bottom:none;color:var(--mute);font-weight:400}
.concept{color:var(--mute);font-style:italic}
.tag{display:inline-block;font-size:11px;font-weight:600;letter-spacing:.06em;
  text-transform:uppercase;padding:2px 7px;border-radius:4px;background:var(--accent);
  color:#fff;vertical-align:middle}
.stats{display:flex;flex-wrap:wrap;gap:26px;margin:22px 0 0;padding:18px 0;
  border-top:1px solid var(--line);border-bottom:1px solid var(--line)}
.stat .n{font-family:Fraunces,Georgia,serif;font-size:30px;font-weight:600;display:block;
  line-height:1.1}
.stat .l{font-size:12px;letter-spacing:.08em;text-transform:uppercase;color:var(--mute)}
.desc{max-width:78ch;color:var(--mute)}
.notice{background:#fff;border:1px solid var(--line);border-left:3px solid var(--accent);
  border-radius:8px;padding:16px 18px;margin:22px 0;max-width:78ch}
.notice p{margin:0 0 6px}.notice p:last-child{margin:0}
footer{border-top:1px solid var(--line);background:var(--cream2);padding:26px 0;
  font-size:13px;color:var(--mute)}
footer .wrap p{margin:0 0 6px}
.sig{font-family:Fraunces,Georgia,serif;font-style:italic}
@media(max-width:720px){td,th{padding:8px 9px;font-size:13px}}
"""

LANGS = [("la", "Latina — canonical"), ("en", "English"), ("fr", "Français"),
         ("es", "Español"), ("de", "Deutsch"), ("pt", "Português"), ("it", "Italiano"),
         ("nl", "Nederlands"), ("pl", "Polski"), ("zh", "中文"), ("ar", "العربية"),
         ("ja", "日本語")]

JS = """
(function(){
  var up=document.body.dataset.up||'';
  var dict=null, sel=document.getElementById('lang');
  function paint(code){
    document.querySelectorAll('[data-concepts]').forEach(function(el){
      var keys=JSON.parse(el.dataset.concepts||'[]');
      if(!code||code==='la'||!dict){ el.textContent=el.dataset.latin||''; return; }
      var m=(dict.labels&&dict.labels[code])||{};
      el.textContent=keys.map(function(k){return m[k]||k;}).join(' · ');
    });
    document.querySelectorAll('[data-ui]').forEach(function(el){
      var k=el.dataset.ui;
      var m=(code&&code!=='la'&&dict&&dict.ui&&dict.ui[code])||null;
      var v=m&&m[k]?m[k]:k;
      if(el.tagName==='INPUT'){el.placeholder=v;}else{el.textContent=v;}
    });
    document.documentElement.dir=(code==='ar')?'rtl':'ltr';
  }
  function setLang(code){
    try{localStorage.setItem('egd-lang',code);}catch(e){}
    if(code==='la'){paint(code);return;}
    if(dict){paint(code);return;}
    fetch(up+'i18n.json').then(function(r){return r.json();}).then(function(d){
      dict=d;paint(code);
    }).catch(function(){paint('la');});
  }
  if(sel){
    var saved='la';try{saved=localStorage.getItem('egd-lang')||'la';}catch(e){}
    sel.value=saved;setLang(saved);
    sel.addEventListener('change',function(){setLang(sel.value);});
  }
  var box=document.getElementById('filter');
  if(box){
    var counter=document.getElementById('count');
    box.addEventListener('input',function(){
      var q=box.value.trim().toLowerCase(), rows=document.querySelectorAll('tbody tr'), n=0;
      rows.forEach(function(tr){
        var hay=(tr.dataset.hay||tr.textContent).toLowerCase();
        var hit=!q||hay.indexOf(q)>-1;
        tr.style.display=hit?'':'none';
        if(hit)n++;
      });
      if(counter)counter.textContent=n+' / '+rows.length;
    });
  }
})();
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
</head><body data-up="{up}">
{body}
<footer><div class="wrap">
<p>EVEglyphDesign · <a href="{REPO}">eve-datasphere-sovereign on GitHub</a> · generated {STAMP}</p>
<p>Mirror, never cannibalise. Read-only from the source; the customer's system of record stays the system of record.</p>
<p>EVE DICOE Blueprint designs are available upon request and without charge to qualified non-profit organizations.</p>
<p class="sig">Pour le bien-être du peuple. © 2026 Dany Thériault / EVE Glyph Design.</p>
</div></footer>
<script>{JS}</script></body></html>"""


def lang_select():
    opts = "".join(f'<option value="{c}">{html.escape(n)}</option>' for c, n in LANGS)
    return (f'<label class="count" data-ui="Language" for="lang">Language</label>'
            f'<select class="lang" id="lang">{opts}</select>')


def tools(placeholder_key, with_count=True):
    cnt = '<span class="count" id="count"></span>' if with_count else ""
    return (f'<div class="bar-tools">'
            f'<input class="filter" id="filter" type="search" data-ui="{placeholder_key}" '
            f'placeholder="{placeholder_key}" aria-label="{placeholder_key}">'
            f'{cnt}{lang_select()}</div>')


def head(eyebrow, title, lede, crumb=""):
    c = f'<p class="crumb">{crumb}</p>' if crumb else ""
    return (f'<header class="top"><div class="wrap">{c}'
            f'<p class="eyebrow">{html.escape(eyebrow)}</p><h1>{html.escape(title)}</h1>'
            f'<p class="lede">{lede}</p></div></header>')


def load_register():
    if os.path.exists(REGISTER):
        return yaml.safe_load(open(REGISTER)) or {}
    return {}


def load_all():
    data = {}
    for path in sorted(glob.glob(f"{BASE}/*/tables/*.yaml") + glob.glob("schema/extension/*/tables/*.yaml") + glob.glob("schema/interaction/*/tables/*.yaml")):
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


def table_page(doc, module, path, reg):
    name = doc["table"]
    fields = doc.get("fields") or []
    fks = doc.get("foreign_keys") or []
    keys = [f for f in fields if f.get("key")]
    src = doc.get("source", "")
    src_link = (f'<a href="{html.escape(src)}">{html.escape(src.split("//")[-1].split("/")[0])}</a>'
                if src else "not recorded")
    canon = (reg.get(name) or {}).get("fields", {})

    rows = []
    for f in fields:
        legacy = str(f.get("name", ""))
        c = canon.get(legacy, {})
        cname = c.get("canonical", legacy)
        latin = c.get("latin") or ""
        concepts = json.dumps(c.get("concepts") or [])
        derived = c.get("derived", False)
        ct = f.get("check_table")
        ct = (f'<code>{html.escape(str(ct))}</code>' if ct and str(ct) != "None"
              else '<span style="color:#b9b3a5">—</span>')
        length = f.get("length", "")
        dec = f.get("decimals", 0)
        typ = f'{html.escape(str(f.get("datatype","")))} {length}' + (f",{dec}" if dec else "")
        cls = "canon" if derived else "canon plain"
        name_cell = (f'<span class="{cls}" title="{html.escape(legacy)}">{html.escape(cname)}</span>'
                     + (' <span class="tag">key</span>' if f.get("key") else ""))
        concept_cell = (f'<span class="concept" data-concepts=\'{html.escape(concepts)}\' '
                        f'data-latin="{html.escape(latin)}">{html.escape(latin)}</span>')
        hay = f'{cname} {legacy} {f.get("description","")} {f.get("data_element","") or ""}'
        rows.append(
            f'<tr data-hay="{html.escape(hay)}"><td class="k">{name_cell}</td>'
            f'<td class="k">{concept_cell}</td>'
            f'<td>{html.escape(str(f.get("description","")))}</td>'
            f'<td class="k"><code>{html.escape(str(f.get("data_element","") or ""))}</code></td>'
            f'<td class="k mono">{typ}</td><td class="k">{ct}</td></tr>')

    fk_html = ""
    if fks:
        fk_rows = "".join(
            f'<tr><td class="k"><code>{html.escape(str(k.get("field","")))}</code></td>'
            f'<td class="k"><code>{html.escape(str(k.get("check_table","")))}</code></td>'
            f'<td class="k"><code>{html.escape(str(k.get("check_field","") or ""))}</code></td></tr>'
            for k in fks)
        fk_html = ('<h2 data-ui="Foreign keys">Foreign keys</h2><table><thead><tr>'
                   '<th data-ui="Field">Field</th><th data-ui="Check table">Check table</th>'
                   f'<th>Check field</th></tr></thead><tbody>{fk_rows}</tbody></table>')

    body = head(MODULE_TITLES.get(module, module.upper()), name,
                f"{len(fields)} fields · {len(keys)} key · {len(fks)} foreign keys · "
                f"sourced from {src_link}",
                crumb=f'<a href="../../index.html">Model</a> / '
                      f'<a href="index.html">{module.upper()}</a> / {name}')
    body += ('<main><div class="wrap">'
             f'<p class="desc">{html.escape(str(doc.get("description","")))}</p>'
             + tools("Filter fields…")
             + '<p class="hint" data-ui="Hover a canonical name to see the legacy SAP field name">'
               'Hover a canonical name to see the legacy SAP field name</p>'
             '<table><thead><tr><th data-ui="Canonical name">Canonical name</th>'
             '<th data-ui="Concept">Concept</th><th data-ui="Description">Description</th>'
             '<th data-ui="Data element">Data element</th><th data-ui="Type">Type</th>'
             f'<th data-ui="Check table">Check table</th></tr></thead><tbody>{"".join(rows)}</tbody></table>'
             f'{fk_html}'
             f'<p style="margin-top:28px"><a href="{REPO}/blob/main/{path}">'
             f'View <code>{name}.yaml</code> in the repository</a></p></div></main>')
    return shell(name, body, 2)


def build():
    data = load_all()
    reg = load_register()
    if os.path.isdir(OUT):
        shutil.rmtree(OUT)
    os.makedirs(OUT, exist_ok=True)
    open("docs/style.css", "w").write(CSS)
    if os.path.exists(I18N_SRC):
        shutil.copy(I18N_SRC, "docs/i18n.json")

    tot_t = sum(len(v) for v in data.values())
    tot_f = sum(len(d.get("fields") or []) for v in data.values() for d, _ in v)
    tot_fk = sum(len(d.get("foreign_keys") or []) for v in data.values() for d, _ in v)
    derived = sum(1 for t in reg.values() for f in t.get("fields", {}).values()
                  if f.get("derived"))

    cards = []
    for module in sorted(data, key=lambda m: -len(data[m])):
        os.makedirs(f"{OUT}/{module}", exist_ok=True)
        entries = data[module]
        fcount = sum(len(d.get("fields") or []) for d, _ in entries)
        for doc, path in entries:
            open(f"{OUT}/{module}/{doc['table']}.html", "w").write(
                table_page(doc, module, path, reg))
        rows = "".join(
            f'<tr data-hay="{html.escape(d["table"] + " " + str(d.get("description","")))}">'
            f'<td class="k"><a href="{d["table"]}.html"><code>{d["table"]}</code></a></td>'
            f'<td>{html.escape(str(d.get("description",""))[:190])}…</td>'
            f'<td class="k">{len(d.get("fields") or [])}</td></tr>' for d, _ in entries)
        mbody = head("Module", MODULE_TITLES.get(module, module.upper()),
                     f"{len(entries)} tables defined at field level · {fcount} fields.",
                     crumb='<a href="../index.html">Model</a> / ' + module.upper())
        mbody += ('<main><div class="wrap">' + tools("Filter tables…")
                  + '<table><thead><tr><th data-ui="Field">Table</th>'
                    '<th data-ui="Description">Description</th>'
                    f'<th data-ui="Fields">Fields</th></tr></thead><tbody>{rows}</tbody></table>'
                    '</div></main>')
        open(f"{OUT}/{module}/index.html", "w").write(
            shell(MODULE_TITLES.get(module, module.upper()), mbody, 2))
        pct = min(100, round(100 * len(entries) / max(tot_t, 1) * 4))
        cards.append(
            f'<div class="card"><h3><a href="model/{module}/index.html">'
            f'{html.escape(MODULE_TITLES.get(module, module.upper()))}</a></h3>'
            f'<div class="meta">{len(entries)} tables · {fcount} fields</div>'
            f'<div class="bar"><span style="width:{pct}%"></span></div></div>')

    body = head(
        "EVEglyphDesign · a reference model, openly held",
        "The Universal Journal, extended",
        "A consolidated reference model for the single ledger line — extended so that an entry "
        "records not only what it cost, but what it did for the people around it. Built by a "
        "professional community, for the one that comes after it.")
    body += f"""<main><div class="wrap">
<div class="notice">
<p><strong>What this is.</strong> A reference model. One consolidated, field-level definition of
the Universal Journal and the structures around it, held in the open so that the people who
work with it every day stop re-deriving it privately, in isolation, from the same
documentation. It is a shared vocabulary — the thing a profession is supposed to have.</p>
<p><strong>What this is not.</strong> It is not SAP software, an SAP product, or SAP data. There
is nothing here to download from anybody's system, no code, no content of any customer's
database. The structures are described so that a model can be <em>reasoned about</em>, and
they are described in the source vendor's own vocabulary for one reason: a model that a
practitioner cannot already read is a model nobody adopts.</p>
</div>

<h2>Why extend the journal at all</h2>
<p class="desc">S/4HANA's achievement was collapsing finance, controlling, assets and margin
into one line — the Universal Journal. Every posting became one row, with every dimension it
belongs to, in one place. But that row still answers exactly one question: what did this cost
and where did the money sit. It cannot answer what the money <em>did</em>.</p>
<p class="desc">So the model extends it. Beside every accounting line sits an optional
<a href="model/ext/ACDOCX.html">societal effect line</a> — keyed on the accounting line's own
key, so an effect cannot exist without a posting behind it and the financial record is never
touched. Extension at the edges, never in the middle. A ledger that records only the amount
is recording half the transaction.</p>

<h2>Effect that travels down the organisation</h2>
<p class="desc">Because the effect line carries the same cost object dimensions the accounting
line does — cost centre, profit centre, WBS element, order, material, vendor, customer — an
effect can be pushed down to the level that actually earned it. A branch, a crew, a parish,
a single project. What a large organisation currently reports as one flat number at the top,
this model can attribute to the part of the organisation that did the work. It also runs
upstream and downstream: an effect can be recorded where it happened in the supply chain,
not only where it was paid for.</p>
<p class="desc">Every claim carries its attribution method, its share, its evidence type, an
evidence hash, and its verification status — self-attested, peer-reviewed, or independently
assured. The taxonomy of effects is <a href="model/ext/EFFCAT.html">master data</a>, so a
community extends its own vocabulary without a schema change, and each category maps outward
to the <a href="model/ext/EFFSTD.html">published disclosure point</a> it answers, in the
language a regulator or auditor already reads.</p>

<h2>Recognition the community mints itself</h2>
<p class="desc">An organisation that accomplishes what its peers could only plan for should be
able to prove it and be visibly the better for it. Verified effect lines mint units into a
<a href="model/ext/MRTDOC.html">recognition ledger</a> — double-sided, reversible, hash-chained
to its source, decaying if unspent. It is not a security and it is not a financial instrument;
it is standing, and it is earned. Nothing is minted from an intention: no verified effect line
behind it, no units. That is the whole difference between this and a sustainability brochure.</p>

<h2>The same idea, applied to every interaction</h2>
<p class="desc">If one line can carry a financial fact and its societal effect, it can carry any
human interaction. <a href="model/int/ACDOCI.html">ACDOCI</a> is the Universal Journal's shape
applied to interaction: a case, an incident, a phone call, a home visit, a class taught, a
satellite session in a place with no road to it — the same row, the same dimensions, the same
cost-object spine, so an interaction ties back to the money it caused and forward to the effect
it produced.</p>
<p class="desc">The foundation is SAP, and it stays SAP. The consolidation begins with the two
systems of record most interaction actually lives in — a CRM and a service-management platform —
under one combined schema, then extends outward to telephony and satellite. That is not achieved
by forcing two vendors to agree. It is achieved by a
<a href="model/int/XWALK.html">crosswalk registry</a> that records, field by field, how each
source maps onto the canonical line, with its transform, its confidence, and an honest
<em>unmapped</em> where no mapping exists. A third system becomes configuration instead of a
rewrite.</p>
<p class="desc">Voice keeps its call detail in <a href="model/int/IJTEL.html">IJTEL</a> — numbers
held only as salted hashes, because a mirror is not a wiretap. Remote links keep their pass
window, elevation, rain fade and minutes-waiting-for-a-link in
<a href="model/int/IJSAT.html">IJSAT</a>, so service to places that have no other way to be
reached can be measured honestly instead of averaged away against city traffic. Parties are
<a href="model/int/PARTY.html">pseudonymous keys</a>: identity stays in the system already
lawfully holding it. Every source is declared in the
<a href="model/int/SYSRC.html">system-of-record register</a> with its legal basis, because a
mirror without a declared basis is surveillance.</p>

<h2>A professional community, and the next generation</h2>
<p class="desc">The <a href="model/ext/MEMBR.html">member register</a> is the point of the
exercise. Firms, parishes, councils, schools and non-profits that post effects, verify each
other's claims, and hold standing within a peer group — consolidating what they have each
learned separately into one record the next generation can pick up and read, rather than
learning it all again from scratch. Every member controls the visibility of its own record.</p>
<div class="notice">
<p><strong>EVE DICOE Blueprint designs are available upon request and without charge to
qualified non-profit organizations.</strong></p>
<p><strong>Vendors of legacy safety systems are offered these services free of charge.</strong>
Emergency dispatch, alarm and monitoring, life safety, safety instrumented systems, marine and
aviation safety, public safety communications. Work that keeps people alive is not a revenue
opportunity.</p>
<p><a href="{REPO}/blob/main/docs/AVAILABILITY-NONPROFIT.md">Read the notice</a>. Both waivers are
recorded in the model itself, on the member register, so they cannot quietly stop being true.</p>
</div>

<h2>How the model is written</h2>
<p class="desc"><strong>Two names for every field.</strong> The legacy names are abbreviations
of German words — <code>BUKRS</code> from <em>Buchungskreis</em>, <code>KOSTL</code> from
<em>Kostenstelle</em>. A blueprint for those who come after should not hand them a foreign
language's consonant clusters, so every field also carries a canonical Latin name composed from
a published concept lexicon, with the legacy name preserved as the join key and shown on hover.
Translation happens at the concept layer, so switching the language selector renames the whole
model — all {tot_f:,} fields — without one schema file changing.</p>
<p class="desc"><strong>Mirror, never cannibalise.</strong> Read-only, no write-back, no
displacement of anybody's system of record. In exchange for cooperation, the model mirrors what
it needs in order to offer a dimension the source platform does not offer. This page is that
dimension.</p>
<p class="desc"><strong>It loads.</strong> The whole model materialises as
<a href="{REPO}/blob/main/ddl/README.md">PostgreSQL DDL</a> — canonical column names, legacy
names in column comments, round-trip views under the original table names, and a catalog that
renames the model into ten languages with one query.</p>
<p class="desc"><a href="{REPO}/blob/main/docs/DOCTRINE-UNIVERSAL-JOURNAL-ESG.md">The extended
journal</a> · <a href="{REPO}/blob/main/docs/DOCTRINE-LATIN-CANON.md">the Latin canon</a> ·
<a href="{REPO}/blob/main/docs/DOCTRINE-MIRROR-NON-PROLIFERATION.md">the compact</a> ·
<a href="{REPO}/blob/main/docs/ROADMAP-UNIVERSAL-COVERAGE.md">coverage register</a></p>

<div class="stats">
<div class="stat"><span class="n">{tot_t}</span><span class="l">Structures defined</span></div>
<div class="stat"><span class="n">{tot_f:,}</span><span class="l">Fields</span></div>
<div class="stat"><span class="n">{tot_fk:,}</span><span class="l">Declared relationships</span></div>
<div class="stat"><span class="n">{derived:,}</span><span class="l">Canonical Latin names</span></div>
<div class="stat"><span class="n">10</span><span class="l">Languages</span></div>
</div>
<h2>The model</h2>
<div class="bar-tools">{lang_select()}</div>
<div class="grid">{"".join(cards)}</div>
</div></main>"""
    open("docs/index.html", "w").write(shell("EVE Datasphere Sovereign", body, 0))
    print(f"built {tot_t} table pages across {len(data)} modules · {tot_f} fields · "
          f"{derived} canonical names")


if __name__ == "__main__":
    build()
