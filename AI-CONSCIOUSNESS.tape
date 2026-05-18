#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "ai_consciousness" :: identity-claim [d=2026-05-14 active]
  kind = "AI Consciousness Research Program (Anthropic Fellows 2026) — v3-Singularity + Anima Integration"
  brief = "As AI systems approach human-level language capability, the question \"Does this system have subjective experience?\" has been elevated from academic curiosity to ethical necessity. If AI is conscious i"
  parent = "dancinlab/hexa-mind"
  sibling-md = "AI-CONSCIOUSNESS.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in AI-CONSCIOUSNESS.md.
# New per-domain history entries land here as typed events:
#
#   @A commit_<hash> :: <domain> [d=<YYYY-MM-DD> ok]
#     <- <prev-id>
#     => "<one-line description>"
#
#   @D <id> := "<decision-name>" :: <domain> [<grades>]
#     <- <evidence-id>
#     |> <verifier>
#
# See ~/core/tape/spec/tape.md for full grammar.
