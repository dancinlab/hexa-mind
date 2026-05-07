#!/usr/bin/env python3
"""hexa-mind verify/spec_inventory.py — 7-verb spec presence audit."""
from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


VERB_TABLE = [
    ("mind",           "mind/hexa-mind.md",                       False),
    ("neuro",          "neuro/hexa-neuro.md",                     False),
    ("oracle",         "oracle/hexa-oracle.md",                   True),
    ("hexa_telepathy", "hexa_telepathy/hexa-telepathy.md",        True),
    ("telepathy",      "telepathy/telepathy.md",                  True),
    ("mind_upload",    "mind_upload/mind-upload.md",              True),
    ("superpowers",    "superpowers/superpowers.md",              False),
]
TOTAL_EXPECTED = 7


def evaluate() -> dict:
    rows = []
    for verb, relpath, speculative in VERB_TABLE:
        path = ROOT / relpath
        present = path.exists()
        if present:
            text = path.read_text(encoding="utf-8")
            lines = text.count("\n")
            has_h1 = bool(re.search(r"(?m)^#\s+\S", text))
            has_canonical = "@canonical" in text[:1024]
        else:
            lines = 0; has_h1 = False; has_canonical = False
        rows.append({
            "verb": verb, "path": relpath, "speculative": speculative,
            "present": present, "lines": lines,
            "has_h1_header": has_h1, "has_canonical_header": has_canonical,
        })
    speculative_count = sum(1 for r in rows if r["speculative"])
    grounded_count = sum(1 for r in rows if not r["speculative"])
    checks = {
        "all_7_present":              all(r["present"] for r in rows),
        "every_present_has_h1":       all(r["has_h1_header"] for r in rows if r["present"]),
        "every_present_has_canonical":all(r["has_canonical_header"] for r in rows if r["present"]),
        "speculative_count_is_4":     speculative_count == 4,
        "grounded_count_is_3":        grounded_count == 3,
    }
    return {
        "rows": rows,
        "total_present": sum(1 for r in rows if r["present"]),
        "total_expected": TOTAL_EXPECTED,
        "speculative_count": speculative_count,
        "grounded_count": grounded_count,
        "checks": checks,
        "all_ok": all(checks.values()),
    }


def _print_human(r: dict) -> int:
    print("=" * 80)
    print(f"  hexa-mind — 7-verb spec inventory  (mental rollup; ⚠️ = speculative)")
    print("=" * 80)
    print(f"  {'verb':<16} {'lines':>6}  {'H1':>3}  {'@canon':>7}  {'spec':>5}  path")
    print(f"  {'-'*16} {'-'*6}  {'-'*3}  {'-'*7}  {'-'*5}  {'-'*40}")
    for row in r["rows"]:
        h1 = "✓" if row["has_h1_header"] else "·"
        canon = "✓" if row["has_canonical_header"] else "·"
        spec_mark = "⚠️ " if row["speculative"] else "   "
        if not row["present"]:
            print(f"  {row['verb']:<16} {'MISS':>6}  {'·':>3}  {'·':>7}  {spec_mark:>5}  {row['path']}")
        else:
            print(f"  {row['verb']:<16} {row['lines']:>6}  {h1:>3}  {canon:>7}  {spec_mark:>5}  {row['path']}")
    print()
    print(f"  speculative: {r['speculative_count']}/4")
    print(f"  grounded:    {r['grounded_count']}/3")
    for k, ok in r["checks"].items():
        mark = "PASS" if ok else "FAIL"
        print(f"  [{mark}] {k}")
    print("=" * 80)
    if r["all_ok"]:
        print(f"  7/7 verb specs present.")
        return 0
    return 1


def main(argv) -> int:
    p = argparse.ArgumentParser(description="hexa-mind 7-verb spec inventory")
    p.add_argument("--json", action="store_true")
    args = p.parse_args(argv[1:])
    r = evaluate()
    if args.json:
        print(json.dumps(r, indent=2, ensure_ascii=False))
        return 0 if r["all_ok"] else 1
    return _print_human(r)


if __name__ == "__main__":
    sys.exit(main(sys.argv))
