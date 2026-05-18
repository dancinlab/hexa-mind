#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "youth_ai_labeling_rlhf_hub" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-YOUTH-AI-LABELING-RLHF-HUB mk1 — physical-limit-anchored premium-tier annotation + RLHF hub for South Africa"
  brief = "YOUTH-AI-LABELING-RLHF-HUB per-domain ledger · sibling of YOUTH-AI-LABELING-RLHF-HUB.md"
  parent = "dancinlab/hexa-mind"
  sibling-md = "YOUTH-AI-LABELING-RLHF-HUB.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in YOUTH-AI-LABELING-RLHF-HUB.md.
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
