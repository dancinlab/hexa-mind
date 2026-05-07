"""hexa-mind 7-verb spec presence tests."""
from __future__ import annotations

from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parents[1]


VERB_FILES = [
    ("mind",           "mind/hexa-mind.md",                False),
    ("neuro",          "neuro/hexa-neuro.md",              False),
    ("oracle",         "oracle/hexa-oracle.md",            True),
    ("hexa_telepathy", "hexa_telepathy/hexa-telepathy.md", True),
    ("telepathy",      "telepathy/telepathy.md",           True),
    ("mind_upload",    "mind_upload/mind-upload.md",       True),
    ("superpowers",    "superpowers/superpowers.md",       False),
]


@pytest.mark.auto
@pytest.mark.parametrize("verb,relpath,_speculative", VERB_FILES,
                         ids=[v for v, _, _ in VERB_FILES])
def test_each_spec_present_with_canonical(verb, relpath, _speculative):
    path = ROOT / relpath
    assert path.exists(), f"missing: {relpath}"
    head = path.read_text(encoding="utf-8")[:1024]
    assert "@canonical" in head
    assert "n6-architecture@" in head


@pytest.mark.auto
def test_total_count_is_7():
    assert len(VERB_FILES) == 7


@pytest.mark.auto
def test_speculative_count_is_4():
    speculative = [v for v, _, s in VERB_FILES if s]
    assert speculative == ["oracle", "hexa_telepathy", "telepathy", "mind_upload"]


@pytest.mark.auto
def test_speculation_section_in_hexa_toml():
    p = ROOT / "hexa.toml"
    text = p.read_text(encoding="utf-8")
    assert "[speculation]" in text
    assert "SPECULATIVE" in text
    for spec_verb in ["oracle_quantum", "hexa_telepathy", "mind_upload"]:
        assert spec_verb in text
