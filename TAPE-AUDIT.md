# TAPE-AUDIT — hexa-mind

7-verb mental substrate (`mind + neuro + oracle + hexa_telepathy + telepathy + mind_upload + superpowers`). Sister-rollup of `hexa-codex` extracted from `canon@dbd2420d`. n=6 closed-form spec catalog; 4 of 7 verbs flagged SPECULATIVE.

## A. Audit-class ledgers (cargo / migration candidates)

- **`state/markers/`** — 3 marker files (`hexa-mind_*`, two `_FAILED`). Trivial. Standard `state/markers.tape` migration.
- **`state/hexa_mind_cli.log`** — single CLI log file. Light.
- No `*.jsonl` ledgers, no `*audit*/` dirs. The repo is doc-heavy + verifier-light; not currently generating ongoing audit cargo.

## B. Identity surface

Light. The substrate identity (n=6 lattice constants, σ/τ/φ closed-form) is encoded in `LATTICE_POLICY.md` + `hexa.toml`, not in a manifest. Could become `hexa-mind/identity.tape` as a per-version substrate snapshot.

## C. Domain.md files

**Heavy domain.md inventory** — strict `UPPERCASE.md` per-subject convention with many AI-* and ANIMA-* subjects: `AI-{ADVERSARIAL,AGENT-SERVING,ALIGNMENT,CONSCIOUSNESS,DEPLOYMENT,ENTERPRISE-CUSTOM,EVAL-PIPELINE,INFERENCE-COST,INTERPRETABILITY,MULTIMODAL,QUALITY-SCALE,SAFETY,TRAINING-COST,WELFARE}.md`, `ANIMA-{SERVICE,SOC}.md`, `BCI-6CH-N6-MAPPING.md`, `BRAIN-COMPUTER-INTERFACE.md`, `CAUSAL-CHAIN.md`, `COGNITIVE-{ARCHITECTURE,SOCIAL-PSYCHOLOGY}.md`, `DREAM-RECORDER.md`, `REALITY-MAP.md`, `TEMPORAL-ARCHITECTURE.md`, `LATTICE_POLICY.md`, `LIMIT_BREAKTHROUGH.md`. No `A+B.md` meta-domains. **This is the most natural per-domain `.tape` carrier in the family** — one sibling tape per UPPERCASE doc, capturing the doc's accumulated `@K` knowledge atoms + `@R` references.

## D. Per-run / per-event history surfaces

Minimal. 7 verb subtrees (`mind/`, `neuro/`, `oracle/`, `hexa_telepathy/`, `telepathy/`, `mind_upload/`, `superpowers/`) + `verify/` + `tests/`. Per-verify run events fit `verify.tape`; the `pytest-19/19` badge implies a stable per-test trace.

## E. Promotion candidates

- **n6 atoms** — the n=6 master identity `σ(6)·φ(6) = n·τ(6) = 24` and every derived verb-parameter. Each `AI-*.md` / `ANIMA-*.md` carries quantitative claims worth atomizing. Largest atlas inflow target in the cognition family.
- **hxc wire** — N/A at this layer.
- **n12 cells** — verify pass/fail × verb × version cube.

**Verdict: MEDIUM** (2-4 tape surfaces — markers, CLI log, per-domain.md sibling tapes, verify trace; identity gap).
