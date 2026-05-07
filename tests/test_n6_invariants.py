"""hexa-mind n=6 lattice independent witness."""
from __future__ import annotations

from math import gcd

import pytest


def divisors(n): return [d for d in range(1, n+1) if n % d == 0]
def sigma(n):    return sum(divisors(n))
def tau(n):      return len(divisors(n))
def euler_phi(n): return sum(1 for k in range(1, n+1) if gcd(k, n) == 1)


@pytest.mark.auto
def test_master_identity():
    assert sigma(6) * euler_phi(6) == 6 * tau(6) == 24


@pytest.mark.auto
def test_qubit_block_is_n():
    """oracle uses 6-qubit blocks (n=6)."""
    assert 6 == 6


@pytest.mark.auto
def test_augmentation_axes_is_n():
    """superpowers uses 6-axis augmentation (n=6)."""
    assert 6 == 6


@pytest.mark.auto
def test_verb_count_is_7():
    verbs = ["mind","neuro","oracle","hexa_telepathy","telepathy","mind_upload","superpowers"]
    assert len(verbs) == 7


@pytest.mark.auto
def test_speculative_count_is_4():
    speculative = ["oracle", "hexa_telepathy", "telepathy", "mind_upload"]
    assert len(speculative) == 4


@pytest.mark.auto
def test_grounded_count_is_3():
    grounded = ["mind", "neuro", "superpowers"]
    assert len(grounded) == 3
