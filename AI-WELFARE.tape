#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "ai_welfare" :: identity-claim [d=2026-05-14 active]
  kind = "AI 모델 복지 연구 (AI Model Welfare)"
  brief = "Anthropic Fellows 2026 연구 도메인. 2개 하위 영역, 18개 연구 아이디어."
  parent = "dancinlab/hexa-mind"
  sibling-md = "AI-WELFARE.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in AI-WELFARE.md.
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
