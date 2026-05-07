# 🧠 hexa-mind — n=6 mental substrate (7-verb library)

> 7-verb mental substrate organized as a closed-form spec catalog:
> **mind + neuro + oracle + hexa_telepathy + telepathy + mind_upload + superpowers**.
> Each verb derives every parameter from σ(6)=12, τ(6)=4, φ(6)=2 number
> theory. **4 of 7 verbs are SPECULATIVE** (preregistered, not validated).
> Sister-rollup of [hexa-codex](https://github.com/need-singularity/hexa-codex)
> 17-verb cognitive substrate, extracted from `n6-architecture@dbd2420d`
> on 2026-05-07.

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-1.0.0-informational.svg)](hexa.toml)
[![Verbs: 7](https://img.shields.io/badge/verbs-7_(mental)-blue.svg)](#verbs)
[![Speculative: 4/7](https://img.shields.io/badge/speculative-4%2F7-yellow.svg)](#speculation-honesty)
[![n=6 lattice](https://img.shields.io/badge/n=6-σ·φ_=_n·τ_=_24-blue.svg)](#n6-master-identity)

---

## Why hexa-mind?

`hexa-mind` is the 🧠 rollup of n6-architecture's mental-substrate verbs
— the part of the cognitive architecture concerned with mental
operations, BCI augmentation, quantum prediction, and consciousness
upload. Where [hexa-codex](https://github.com/need-singularity/hexa-codex)
curates AI knowledge and [hexa-senses](https://github.com/need-singularity/hexa-senses)
curates AI senses, hexa-mind curates AI **mental ops**.

**Speculation honesty:** 4 of 7 verbs (oracle, hexa_telepathy, telepathy,
mind_upload) preregister claims that depend on unsolved physics or
unproven engineering. This is *intentional* — they are falsifiable
hypotheses, not validated implementations. See [speculation honesty](#speculation-honesty).

---

## Verbs

| Verb              | Spec                                                | Concern                                             | Status         |
|-------------------|-----------------------------------------------------|-----------------------------------------------------|----------------|
| `mind`            | [mind/hexa-mind.md](mind/hexa-mind.md)              | mental architecture core                             | grounded       |
| `neuro`           | [neuro/hexa-neuro.md](neuro/hexa-neuro.md)          | neural interface substrate                           | grounded       |
| `oracle`          | [oracle/hexa-oracle.md](oracle/hexa-oracle.md)      | 6-qubit quantum predictor                            | ⚠️ SPECULATIVE |
| `hexa_telepathy`  | [hexa_telepathy/hexa-telepathy.md](hexa_telepathy/hexa-telepathy.md) | quantum-entangled brain-to-brain channels       | ⚠️ SPECULATIVE |
| `telepathy`       | [telepathy/telepathy.md](telepathy/telepathy.md)    | bilateral BCI telepathy                              | ⚠️ SPECULATIVE |
| `mind_upload`     | [mind_upload/mind-upload.md](mind_upload/mind-upload.md) | 1.44M-channel scan + 4096yr preservation         | ⚠️ SPECULATIVE |
| `superpowers`     | [superpowers/superpowers.md](superpowers/superpowers.md) | 6-axis BCI + exoskeleton augmentation             | grounded (engineering) |

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

### Via `hx` (works today)

```bash
# `hx` does not auto-detect hexa.toml's `entry` field yet.
hx install hexa-mind --entry cli/hexa-mind.hexa
hexa-mind --version           # → 1.0.0
hexa-mind selftest            # → 7/7 verb specs PASS
hexa-mind verify all          # → 2/2 verifiers PASS
```

### CLI subcommands

```bash
hexa-mind mind            # read mind verb spec
hexa-mind neuro           # neural interface
hexa-mind oracle          # SPECULATIVE — quantum predictor
hexa-mind hexa_telepathy  # SPECULATIVE — quantum brain channels
hexa-mind telepathy       # SPECULATIVE — bilateral BCI
hexa-mind mind_upload     # SPECULATIVE — consciousness upload
hexa-mind superpowers     # 6-axis BCI augmentation
hexa-mind list            # 7-verb table + speculation tag
hexa-mind selftest        # 7/7 spec presence sweep
hexa-mind verify [check]  # Python verifier dispatcher
hexa-mind inventory       # spec presence + canonical-header audit
```

### Build / test

```bash
make -C build verify     # 2/2 verifiers
make -C build test       # pytest -m auto
make -C build ci         # verify + test
make -C build everything # ci + selftest (.hexa)
```

---

## Cross-link

- 📚 [need-singularity/hexa-codex](https://github.com/need-singularity/hexa-codex) — 17-verb AI knowledge substrate.
- 👁️ [need-singularity/hexa-senses](https://github.com/need-singularity/hexa-senses) — 5-verb sensory substrate (sister-rollup).
- 🧬 [need-singularity/hexa-brain](https://github.com/need-singularity/hexa-brain) — BCI hardware sister-repo.
- 👻 [need-singularity/anima](https://github.com/need-singularity/anima) — consciousness/soul cousin.

Upstream concept SSOT: `n6-architecture/domains/cognitive/{hexa-mind,hexa-neuro,hexa-oracle,hexa-telepathy,mind-upload,superpowers,telepathy}/`.

---

## Status

**SPEC_CATALOG_ONLY at v1.0.0** (4/7 verbs SPECULATIVE).

What works at v1.0:

- 7 verb specs land on disk under their named directories.
- `hexa-mind list` prints the 7-verb table + speculation tags.
- `hexa-mind <verb>` prints spec path + first 20 lines (with SPECULATIVE flag where applicable).
- `hexa-mind selftest` confirms 7/7 spec presence.
- `hexa-mind verify all` runs Python verifiers (n6 / inventory + speculation honesty).

What is **out of scope** at v1.0:

- Working `.hexa` modules for any verb (no quantum predictor / BCI / upload pipeline).
- Validating any SPECULATIVE claim (preregister only).
- Bridging to hexa-brain hardware (cross-link only).

---

## License

MIT. See [LICENSE](LICENSE).
