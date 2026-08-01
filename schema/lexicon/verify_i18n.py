#!/usr/bin/env python3
import json
import yaml

with open('/home/user/workspace/eds/schema/lexicon/latin-lexicon.yaml') as f:
    lex = yaml.safe_load(f)
en_keys = set(c['en'] for c in lex['concepts'])

with open('/home/user/workspace/eds/schema/lexicon/i18n.json', encoding='utf-8') as f:
    data = json.load(f)

ui_keys = {
    "Field", "Legacy name", "Concept", "Description", "Data element", "Type",
    "Check table", "Key", "Foreign keys", "Fields", "Tables", "Module",
    "Modules", "Filter fields…", "Filter tables…", "Language", "Canonical name",
    "Hover a canonical name to see the legacy SAP field name", "no match", "Search",
}

lang_codes = [l['code'] for l in data['languages']]
print("Language codes:", lang_codes)
assert len(lang_codes) == 10, f"Expected 10 languages, got {len(lang_codes)}"

any_missing = False

print("\n--- labels ---")
for code in lang_codes:
    keys = set(data['labels'][code].keys())
    missing = en_keys - keys
    extra = keys - en_keys
    empty = [k for k, v in data['labels'][code].items() if not str(v).strip()]
    print(f"{code}: {len(keys)} keys, missing={len(missing)}, extra={len(extra)}, empty={len(empty)}")
    if missing:
        any_missing = True
        print("  MISSING:", missing)
    if extra:
        any_missing = True
        print("  EXTRA:", extra)
    if empty:
        any_missing = True
        print("  EMPTY VALUES:", empty)

print("\n--- ui ---")
for code in lang_codes:
    keys = set(data['ui'][code].keys())
    missing = ui_keys - keys
    extra = keys - ui_keys
    empty = [k for k, v in data['ui'][code].items() if not str(v).strip()]
    print(f"{code}: {len(keys)} keys, missing={len(missing)}, extra={len(extra)}, empty={len(empty)}")
    if missing:
        any_missing = True
        print("  MISSING:", missing)
    if extra:
        any_missing = True
        print("  EXTRA:", extra)
    if empty:
        any_missing = True
        print("  EMPTY VALUES:", empty)

print("\n=== RESULT ===")
if any_missing:
    print("FAILED: gaps found")
else:
    print("PASSED: all language maps match exactly, no gaps, no empty strings")

print("\nKey count per language:")
for code in lang_codes:
    print(f"  {code}: labels={len(data['labels'][code])}, ui={len(data['ui'][code])}")
