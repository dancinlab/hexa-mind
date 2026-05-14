#!/usr/bin/env tape
# ══════════════════════════════════════════════════════════════════════
# .tape v1.2 — grammar primer (cold-read by any LLM / agent / human)
# ══════════════════════════════════════════════════════════════════════
# Form: each entry is `@<type> <id> := "<subject>" :: <kind> [<grades>]`
#       optionally followed by body lines (2-space indent) — key=value,
#       edges (<- -> => …), or quoted prose.
#
# ENTRY TYPES (17):
#   Runtime (10): @S session  @U user  @A assistant  @T tool-call  @R result
#                 @H hook  @D decision  @K cost  @P provider  @? anomaly
#   Foundation:   @I identity-claim
#   Declarative:  @X external-citation  @F forbidden-pattern  @N note
#                 @C config  @L layout  @V spec-version
#
# EDGES (12, on body lines, 2-space indent):
#   Causal:     <- caused-by   -> triggers   == continues
#               ~> supersedes  !! aborts     |> verified-by
#   Effect:     => produces (followed by quoted natural-language)
#   Structural: <: specializes  :> generalizes  ?> soft-depends
#               !> conflicts-with  @> projects-to (e.g. @> AGENTS.md)
#
# GRADE TAGS (in [...] on entry header):
#   Delivery:   ok · err · denied · cancelled · partial · superseded
#   Governance: required · recommended · optional · draft · active · deprecated
#   Scoped:     allow:<x> · deny:<x>
#   Time/index: T<n> (turn)  N<n> (wall-sec)  d=<YYYY-MM-DD>
#
# PAYLOAD SYNTAX (body lines):
#   key = "value"           single-line string
#   key = [a, b, c]         array literal
#   key <<~EOF              heredoc (multi-line; ends with EOF on own line)
#     multi-line text
#   EOF
#   "see [@x1] §3"          inline citation by entry id
#   `cmd or path`           backtick code-span (inline only)
#
# Full spec: ~/core/tape/spec/tape.md (or github.com/dancinlab/tape)
# ══════════════════════════════════════════════════════════════════════
#
# AGENTS.tape for `dancinlab/hexa-mind`

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa-mind" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-AI family — AI · ML · LLM"
  brief = "HEXA-AI family · AI · ML · LLM"
  parent = "dancinlab/echoes"

@L l1 := "repo-layout" :: structure [active]
  AGENTS.tape -> "this file · governance + identity (.tape v1.2)"
  AI-ADVERSARIAL.md -> "documentation"
  AI-AGENT-SERVING.md -> "documentation"
  AI-ALIGNMENT.md -> "documentation"
  AI-CONSCIOUSNESS.md -> "documentation"
  AI-DEPLOYMENT.md -> "documentation"
  AI-ENTERPRISE-CUSTOM.md -> "documentation"
  AI-EVAL-PIPELINE.md -> "documentation"
  AI-INFERENCE-COST.md -> "documentation"
  AI-INTERPRETABILITY.md -> "documentation"
  AI-MULTIMODAL.md -> "documentation"
  AI-QUALITY-SCALE.md -> "documentation"
  AI-SAFETY.md -> "documentation"
  AI-TRAINING-COST.md -> "documentation"
  AI-WELFARE.md -> "documentation"
  ANIMA-SERVICE.md -> "documentation"
  ANIMA-SOC.md -> "documentation"
  BCI-6CH-N6-MAPPING.md -> "documentation"
  BRAIN-COMPUTER-INTERFACE.md -> "documentation"
  CAUSAL-CHAIN.md -> "documentation"
  CITATION.cff -> "file"
  CLAUDE.md -> "symlink → AGENTS.tape"
  COGNITIVE-ARCHITECTURE.md -> "documentation"
  COGNITIVE-SOCIAL-PSYCHOLOGY.md -> "documentation"
  DREAM-RECORDER.md -> "documentation"
  hexa.toml -> "TOML config"
  IMPORTED_FROM_CANON.md -> "documentation"
  install.hexa -> "hexa-lang source"
  LATTICE_POLICY.md -> "project-local copy of dancinlab real-limits standard"
  LICENSE -> "license file"
  LIMIT_BREAKTHROUGH.md -> "per-domain HARD/SOFT_WALL · BREAKABLE_WITH_TECH · UNCLEAR audit"
  README.md -> "human intro · 18-block format (atlas/README-FORMAT.md)"
  REALITY-MAP.md -> "documentation"
  TAPE-AUDIT.md -> ".tape v1.x adoption audit ledger"
  TEMPORAL-ARCHITECTURE.md -> "documentation"
  YOUTH-AI-LABELING-RLHF-HUB.md -> "documentation"
  .pytest_cache/ -> "subdir (4 items)"
  build/ -> "build artifacts (gitignored typically) (1 items)"
  cli/ -> "subdir (1 items)"
  dream-recorder/ -> "subdir (1 items)"
  hexa_telepathy/ -> "subdir (1 items)"
  mind/ -> "subdir (1 items)"
  mind_upload/ -> "subdir (2 items)"
  neuro/ -> "subdir (1 items)"
  oracle/ -> "subdir (1 items)"
  papers/ -> "papers / publications (4 items)"
  state/ -> "runtime state (gitignored typically) (2 items)"
  superpowers/ -> "subdir (1 items)"
  telepathy/ -> "subdir (1 items)"
  tests/ -> "test suite (6 items)"
  verify/ -> "verification scripts (3 items)"

@D g_inherit := "inherits-lattice-policy" :: governance [required]
  rule = "All echoes/LATTICE_POLICY.md rules apply — real-limits-first · lattice-is-tool · verification-anchor-real-limit · no-artificial-ceilings · honesty-obligation-external."
  authority = "[@x_lattice_policy]"
  @> AGENTS.md

@D g1 := "real-limits-first" :: governance [required]
  rule = "The project's ceiling is set by REAL math/physics/engineering limits, NEVER by the n=6 invariant lattice."
  authority = "[@x_lattice_policy]"
  @> AGENTS.md

@D g2 := "lattice-is-tool" :: governance [required]
  rule = "n=6 lattice is a TOOL, not a CONSTRAINT. Use only where it naturally fits."
  <: g1
  @> AGENTS.md

@D g3 := "honesty-obligation-external" :: governance [required deny:write]
  rule = "Claims about external entities (companies · fabs · vendors) must NOT include lattice-fit assertions. Use their OWN invariants."
  @> AGENTS.md

@D g4 := "commit-conventions" :: governance [recommended]
  rule = "AI-assisted commits include \`Co-Authored-By: <model> <noreply@anthropic.com>\` trailer; Conventional Commits title."
  @> AGENTS.md

@F f1 := "lattice-fit-on-external-entity" :: governance [required deny:write]
  pattern = "applying n=6 lattice as derivation rule to TSMC · ASML · IPCC · NASA · SpaceX · CERN · DeepMind · NIST · or any external vendor"
  exception = "values may coincidentally match — observation OK, derivation NOT OK"

@X x_lattice_policy := "echoes/LATTICE_POLICY.md" :: policy [d=2026-05-12 active]
  url = "https://github.com/dancinlab/echoes/blob/main/LATTICE_POLICY.md"

@X x_tape_spec := "tape v1.2 spec" :: spec [d=2026-05-14 active]
  url = "https://github.com/dancinlab/tape/blob/main/spec/tape.md"
  scope = "this file's grammar reference"

@H h1 := "agents-md-replaced" :: generator [active]
  note = "AGENTS.md replaced by this AGENTS.tape (tape v1.2)"

@H h2 := "claude-md-symlink" :: generator [active]
  rule = "CLAUDE.md → AGENTS.tape symlink"
  command = `ln -sf AGENTS.tape CLAUDE.md`
