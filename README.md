<p align="center"><img src="docs/logo.svg" width="140" alt="hexa-mind"></p>

<h1 align="center">🤖 hexa-mind</h1>

<p align="center"><strong>HEXA-AI Family</strong> — AI · ML · LLM · mental substrate · 7-verb closed-form catalog</p>

<p align="center">
  <a href="LICENSE"><img alt="License" src="https://img.shields.io/badge/license-MIT-blue"></a>
  <img alt="Sibling" src="https://img.shields.io/badge/sibling-hexa--chip%20·%20hexa--earth%20·%20hexa--energy-blueviolet">
  <img alt="Spec" src="https://img.shields.io/badge/spec-v1.0-success">
  <img alt="Verbs" src="https://img.shields.io/badge/verbs-7%20mental-informational">
  <img alt="Speculative" src="https://img.shields.io/badge/speculative-4%2F7-yellow">
  <img alt="Verify" src="https://img.shields.io/badge/verifiers-2%2F2%20PASS-brightgreen">
</p>

<p align="center">AI · ML · LLM · BCI · neuro · oracle · telepathy · mind-upload · n=6 lattice · σ·φ=n·τ=24</p>

---

# hexa-mind — n=6 mental substrate (7-verb library)

> 7-verb mental substrate organized as a closed-form spec catalog:
> **mind + neuro + oracle + hexa_telepathy + telepathy + mind_upload + superpowers**.
> Each verb derives every parameter from σ(6)=12, τ(6)=4, φ(6)=2 number
> theory. **4 of 7 verbs are SPECULATIVE** (preregistered, not validated).
> Sister-rollup of [hexa-codex](https://github.com/dancinlab/hexa-codex)
> 17-verb cognitive substrate, extracted from `canon@dbd2420d`
> on 2026-05-07.

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.20102612.svg)](https://doi.org/10.5281/zenodo.20102612)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-1.0.0-informational.svg)](hexa.toml)
[![Verbs: 7](https://img.shields.io/badge/verbs-7_(mental)-blue.svg)](#verbs)
[![Speculative: 4/7](https://img.shields.io/badge/speculative-4%2F7-yellow.svg)](#speculation-honesty)
[![n=6 lattice](https://img.shields.io/badge/n=6-σ·φ_=_n·τ_=_24-blue.svg)](#n6-master-identity)
[![Closure: 100%](https://img.shields.io/badge/closure-100%25_(2%2F2)-brightgreen.svg)](#verify)
[![Verifiers: 2/2](https://img.shields.io/badge/verifiers-2%2F2_PASS-brightgreen.svg)](#verify)
[![pytest: 19/19](https://img.shields.io/badge/pytest-19%2F19_PASS-brightgreen.svg)](#verify)
[![Real-limits](https://img.shields.io/badge/limits-real_(LATTICE__POLICY)-informational.svg)](LATTICE_POLICY.md)

---

## Why hexa-mind?

`hexa-mind` is the 🧠 rollup of canon's mental-substrate verbs
— the part of the cognitive architecture concerned with mental
operations, BCI augmentation, quantum prediction, and consciousness
upload. Where [hexa-codex](https://github.com/dancinlab/hexa-codex)
curates AI knowledge and [hexa-senses](https://github.com/dancinlab/hexa-senses)
curates AI senses, hexa-mind curates AI **mental ops**.

**Speculation honesty:** 4 of 7 verbs (oracle, hexa_telepathy, telepathy,
mind_upload) preregister claims that depend on unsolved physics or
unproven engineering. This is *intentional* — they are falsifiable
hypotheses, not validated implementations. See [speculation honesty](#speculation-honesty).

---

## Speculation honesty

Per `hexa.toml [speculation]`:

- **`oracle`** — 6-qubit quantum predictor; quantum supremacy at this
  scale not yet demonstrated for the predicted task class.
- **`hexa_telepathy`** — quantum-entangled brain-to-brain; requires
  unproven entanglement at neural scale.
- **`telepathy`** — bilateral BCI telepathy; requires write-side BCI
  beyond current state-of-the-art.
- **`mind_upload`** — consciousness upload; the uploading problem itself
  is unsolved (substrate independence claim is preregistered, not
  validated).

The 3 grounded verbs (`mind`, `neuro`, `superpowers`) describe systems
that are at least *engineerable* with current technology, even if not
yet built.

---

## n=6 master identity

```
σ(6) · φ(6) = n · τ(6) = J₂ = 24
   12   ·   2  =  6  ·   4  = 24
```

| Symbol | Value | Mental projection                                  |
|--------|-------|----------------------------------------------------|
| n      | 6     | qubit-block size (oracle) · augmentation axes (superpowers) |
| σ(6)   | 12    | mental-state dimensions                            |
| τ(6)   | 4     | upload-stage quartet (scan/encode/store/replay)    |
| φ(6)   | 2     | pre-/post-augmentation verdict bit                 |
| J₂     | 24    | upload-channel multiplexing factor                 |

`verify/n6_arithmetic.py` checks 6 cross-projections + speculation
honesty at runtime.

---

## Install

```bash
# 1. Install hexa-lang (gives you `hexa` + `hx` package manager)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/dancinlab/hexa-lang/main/install.sh)"

# 2. Install hexa-mind
hx install hexa-mind
```

## Run

```bash
hexa-mind mind             # mental architecture core
hexa-mind neuro            # neural interface substrate
hexa-mind oracle           # 6-qubit quantum predictor (SPECULATIVE)
hexa-mind hexa_telepathy   # quantum-entangled brain-to-brain (SPECULATIVE)
hexa-mind telepathy        # bilateral BCI telepathy (SPECULATIVE)
hexa-mind mind_upload      # consciousness upload (SPECULATIVE)
hexa-mind superpowers      # BCI + exoskeleton augmentation
hexa-mind list             # verb table + caveats
hexa-mind selftest         # 7-verb spec presence sweep
hexa-mind verify [check]   # Python verifier dispatcher
hexa-mind inventory        # spec presence + canonical-header audit
hexa-mind version          # print version
hexa-mind help             # full --help (subcommands + env vars)
```

### Build / test

```bash
make -C build verify     # 2/2 verifiers
make -C build test       # pytest -m auto
make -C build ci         # verify + test
make -C build everything # ci + selftest (.hexa)
```

---

## Verify

`hexa-mind` is **100% closed** (spec-catalog closure) by **2 Python
verifiers + 19 pytest cases**. Closure here means the spec catalog +
n=6 lattice arithmetic + speculation-honesty manifest all check out —
**not** that the 4 SPECULATIVE verbs have been validated. See
[Speculation honesty](#speculation-honesty) and
[`LIMIT_BREAKTHROUGH.md`](LIMIT_BREAKTHROUGH.md).

```bash
# one-shot: 2/2 verifiers
python3 verify/cli.py all

# JSON output
python3 verify/cli.py all --json

# pytest suite (19/19 auto)
python3 -m pytest tests/ -m auto -v

# via Makefile
make -C build ci
```

| Verifier              | Sub-checks | Status | What it proves                                        |
|-----------------------|-----------:|--------|-------------------------------------------------------|
| `n6_arithmetic.py`    |        6/6 | PASS   | σ(6)·φ(6) = n·τ(6) = J₂ = 24; speculation manifest    |
| `spec_inventory.py`   |        7/7 | PASS   | 7 verb specs present (3 grounded + 4 speculative)     |
| **Total**             |   **2/2**  | **PASS** | **100% closure** (spec-catalog)                     |
| `pytest -m auto`      |      19/19 | PASS   | Mirror tests for both verifiers + invariants          |

### Real-limits honesty (per `LATTICE_POLICY.md §1.2`)

Closure verifies the **catalog**, not the **claims**. The 4 SPECULATIVE
verbs (oracle, hexa_telepathy, telepathy, mind_upload) carry
**UNPROVEN** markers and are audited against *real* cognitive /
physical / engineering ceilings in [`LIMIT_BREAKTHROUGH.md`](LIMIT_BREAKTHROUGH.md):

- **Cognitive psychology** — Miller 7±2, Yerkes-Dodson, Hick's law,
  power law of practice (reaction-time / accuracy benchmarks).
- **BCI engineering** — Utah array (96-ch), Neuralink N1 (1024-ch),
  current state-of-the-art write/read bandwidth.
- **External standards** — APA, DSM-5, NIH metrics define their own
  measurement scales; this repo does **not** fit them to the n=6 lattice
  and offers **no clinical / diagnostic advice**.

Mental and psychological claims for novel theories in this repo are
**STRICTLY UNPROVEN preregistrations** — the lattice is an *organising
vocabulary*, never a *truth predicate*.

---

## Cross-link

- 📚 [dancinlab/hexa-codex](https://github.com/dancinlab/hexa-codex) — 17-verb AI knowledge substrate.
- 👁️ [dancinlab/hexa-senses](https://github.com/dancinlab/hexa-senses) — 5-verb sensory substrate (sister-rollup).
- 🧬 [dancinlab/hexa-brain](https://github.com/dancinlab/hexa-brain) — BCI hardware sister-repo.
- 👻 [dancinlab/anima](https://github.com/dancinlab/anima) — consciousness/soul cousin.

Upstream concept SSOT: `canon/domains/cognitive/{hexa-mind,hexa-neuro,hexa-oracle,hexa-telepathy,mind-upload,superpowers,telepathy}/`.

---

## Status

**SPEC_CATALOG_CLOSED at v1.0.0 — 100% closure** (2/2 verifiers + 19/19
pytest). 4/7 verbs remain preregistered **SPECULATIVE / UNPROVEN**.

What works at v1.0:

- 7 verb specs land on disk under their named directories.
- `hexa-mind list` prints the 7-verb table + speculation tags.
- `hexa-mind <verb>` prints spec path + first 20 lines (with SPECULATIVE flag where applicable).
- `hexa-mind selftest` confirms 7/7 spec presence.
- `hexa-mind verify all` runs Python verifiers (n6 / inventory + speculation honesty) — **2/2 PASS**.
- `pytest -m auto` — **19/19 PASS**.

What is **out of scope** at v1.0:

- Working `.hexa` modules for any verb (no quantum predictor / BCI / upload pipeline).
- Validating any SPECULATIVE claim (preregister only — UNPROVEN markers preserved).
- Bridging to hexa-brain hardware (cross-link only).
- Clinical / diagnostic advice (APA, DSM-5, NIH define their own scales).

---

## Repo layout

```
hexa-mind/
├── mind/                 # mental ops verb (grounded)
├── neuro/                # neuroscience verb (grounded)
├── oracle/               # 6-qubit quantum predictor (SPECULATIVE)
├── hexa_telepathy/       # quantum-entangled BCI (SPECULATIVE)
├── telepathy/            # bilateral BCI telepathy (SPECULATIVE)
├── mind_upload/          # consciousness upload (SPECULATIVE)
├── superpowers/          # engineered augmentation verb (grounded)
├── dream-recorder/       # hippocampal-replay recorder subsystem
├── cli/                  # CLI surface
├── build/                # build artefacts
├── AI-*.md               # 14+ AI spec sheets (alignment · safety · interpretability · etc.)
├── ANIMA-*.md            # ANIMA-SoC / ANIMA-service spec
├── COGNITIVE-*.md        # cognitive architecture / social-psychology specs
├── BRAIN-COMPUTER-INTERFACE.md
├── BCI-6CH-N6-MAPPING.md
├── AGENTS.tape           # .tape v1.2 identity + project tree
├── hexa.toml             # project manifest (incl. [speculation])
└── LICENSE               # MIT
```

---

## License

MIT. See [LICENSE](LICENSE).
