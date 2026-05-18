#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "ai_eval_pipeline" :: identity-claim [d=2026-05-14 active]
  kind = "AI Evaluation Pipeline Research Program (Anthropic Fellows 2026) [v2 breakthrough]"
  brief = "As AI model capabilities approach human level, an \"evaluation crisis\" has arrived in which existing benchmarks can no longer measure real capability. MMLU saturation, benchmark contamination, and gaps"
  parent = "dancinlab/hexa-mind"
  sibling-md = "AI-EVAL-PIPELINE.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in AI-EVAL-PIPELINE.md.
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
