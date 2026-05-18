#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "ai_multimodal" :: identity-claim [d=2026-05-14 active]
  kind = "멀티모달 AI 안전성 연구 (Anthropic Fellows 2026)"
  brief = "AI가 텍스트+이미지+오디오를 동시 처리하면서 공격 표면이 기하급수적으로 확대된다."
  parent = "dancinlab/hexa-mind"
  sibling-md = "AI-MULTIMODAL.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in AI-MULTIMODAL.md.
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
