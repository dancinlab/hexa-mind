#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "ai_interpretability" :: identity-claim [d=2026-05-14 active]
  kind = "AI 해석가능성 연구 프로그램 (Anthropic Fellows 2026)"
  brief = "대규모 언어 모델은 이미 수십억 인구의 일상에 영향을 미치지만, 내부에서 무슨 일이 일어나는지 아무도 모른다."
  parent = "dancinlab/hexa-mind"
  sibling-md = "AI-INTERPRETABILITY.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in AI-INTERPRETABILITY.md.
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
