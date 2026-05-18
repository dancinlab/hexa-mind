#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "ai_safety" :: identity-claim [d=2026-05-14 active]
  kind = "AI Safety 171-pattern Integrated Design [v3-singularity]"
  brief = "Without opening up the model's interior, safety cannot be guaranteed -- interpretability is an essential tool for AI safety and a new microscope for scientific discovery."
  parent = "dancinlab/hexa-mind"
  sibling-md = "AI-SAFETY.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in AI-SAFETY.md.
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
