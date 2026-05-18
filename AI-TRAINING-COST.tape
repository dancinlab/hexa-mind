#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "ai_training_cost" :: identity-claim [d=2026-05-14 active]
  kind = "학습 비용 절감 연구 프로그램 (Anthropic Fellows 2026) [v2][v3]"
  brief = "프론티어 모델 학습 비용이 $12B를 돌파했다. 이 비용 구조가 유지되면 AI 연구는 소수 거대 기업의 독점이 된다. 비용을 1/10로 줄이면서 품질을 유지하는 것이 이 연구의 핵심이다."
  parent = "dancinlab/hexa-mind"
  sibling-md = "AI-TRAINING-COST.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in AI-TRAINING-COST.md.
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
