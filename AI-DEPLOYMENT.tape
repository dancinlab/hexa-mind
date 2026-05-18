#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "ai_deployment" :: identity-claim [d=2026-05-14 active]
  kind = "AI 배포 안전성 (AI Deployment Safety)"
  brief = "\"실험실에서 안전\"과 \"프로덕션에서 안전\" 사이의 간극에서 실제 피해가 발생한다."
  parent = "dancinlab/hexa-mind"
  sibling-md = "AI-DEPLOYMENT.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in AI-DEPLOYMENT.md.
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
