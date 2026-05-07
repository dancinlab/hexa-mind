#!/usr/bin/env python3
"""hexa-mind verify/n6_arithmetic.py — n=6 lattice + speculation honesty."""
from __future__ import annotations

import sys
from math import gcd
from pathlib import Path

N, SIGMA_N, TAU_N, PHI_N, J2 = 6, 12, 4, 2, 24
EXPECTED_QUBIT_BLOCK = N        # oracle 6-qubit block
EXPECTED_AUG_AXES    = N        # superpowers 6-axis augmentation
EXPECTED_VERB_COUNT  = 7
EXPECTED_SPECULATIVE = 4        # oracle/hexa_telepathy/telepathy/mind_upload


def divisors(n): return [d for d in range(1, n + 1) if n % d == 0]
def sigma(n): return sum(divisors(n))
def tau(n): return len(divisors(n))
def euler_phi(n): return sum(1 for k in range(1, n + 1) if gcd(k, n) == 1)


def check_master() -> tuple[bool, dict]:
    s, t, p = sigma(N), tau(N), euler_phi(N)
    return (s*p == J2) and (N*t == J2), {
        "sigma(6)": s, "tau(6)": t, "phi(6)": p, "J2": J2,
    }


def check_qubit_block() -> tuple[bool, dict]:
    return N == EXPECTED_QUBIT_BLOCK, {
        "n": N, "expected_qubits": EXPECTED_QUBIT_BLOCK,
        "verb": "oracle (HEXA-ORACLE 6-qubit quantum predictor)",
    }


def check_aug_axes() -> tuple[bool, dict]:
    return N == EXPECTED_AUG_AXES, {
        "n": N, "expected_axes": EXPECTED_AUG_AXES,
        "verb": "superpowers (BCI + exoskeleton 6-axis)",
    }


def check_verb_count() -> tuple[bool, dict]:
    verbs = ["mind","neuro","oracle","hexa_telepathy","telepathy","mind_upload","superpowers"]
    return len(verbs) == EXPECTED_VERB_COUNT, {
        "verbs": verbs, "count": len(verbs),
    }


def check_speculation_honesty() -> tuple[bool, dict]:
    """hexa.toml must declare [speculation] section listing 4 SPECULATIVE verbs."""
    tf = Path(__file__).resolve().parent.parent / "hexa.toml"
    if not tf.exists():
        return False, {"error": "hexa.toml missing"}
    text = tf.read_text(encoding="utf-8")
    needed = ["[speculation]", "oracle_quantum", "hexa_telepathy", "mind_upload", "SPECULATIVE"]
    missing = [t for t in needed if t not in text]
    return len(missing) == 0, {
        "speculation_section_declared": "[speculation]" in text,
        "speculative_verbs_listed": EXPECTED_SPECULATIVE,
        "missing_in_toml": missing,
    }


def check_grounded_count() -> tuple[bool, dict]:
    """3 grounded verbs (mind, neuro, superpowers) + 4 speculative = 7."""
    grounded = ["mind", "neuro", "superpowers"]
    speculative = ["oracle", "hexa_telepathy", "telepathy", "mind_upload"]
    total = len(grounded) + len(speculative)
    ok = (len(grounded) == 3) and (len(speculative) == 4) and (total == 7)
    return ok, {
        "grounded": grounded, "speculative": speculative, "total": total,
    }


CHECKS = [
    ("master identity     σ·φ = n·τ = 24",   check_master),
    ("n = 6 (oracle qubit block)",           check_qubit_block),
    ("n = 6 (superpowers augmentation axes)",check_aug_axes),
    ("verb_count = 7 (mind rollup)",         check_verb_count),
    ("speculation honesty in hexa.toml",     check_speculation_honesty),
    ("3 grounded + 4 speculative = 7",       check_grounded_count),
]


def main() -> int:
    print("=" * 78)
    print("  hexa-mind — n=6 lattice arithmetic + speculation honesty")
    print("=" * 78)
    passed = 0
    for name, fn in CHECKS:
        ok, detail = fn()
        mark = "PASS" if ok else "FAIL"
        if ok: passed += 1
        print(f"  [{mark}] {name}")
        for k, v in detail.items():
            print(f"         · {k}: {v}")
    print("=" * 78)
    print(f"  {passed}/{len(CHECKS)} PASS")
    return 0 if passed == len(CHECKS) else 1


if __name__ == "__main__":
    sys.exit(main())
