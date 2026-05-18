#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "ai_quality_scale" :: identity-claim [d=2026-05-14 active]
  kind = "Quality-Preserving Compression Research Program (Anthropic Fellows 2026) [v3-singularity]"
  brief = "AI model capability scales with parameter count, but so does deployment cost. If the intelligence of a 400B model can be packed into 70B size, inference cost drops 5-6x, edge device deployment becomes"
  parent = "dancinlab/hexa-mind"
  sibling-md = "AI-QUALITY-SCALE.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in AI-QUALITY-SCALE.md.
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
