#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "ai_inference_cost" :: identity-claim [d=2026-05-14 active]
  kind = "추론/서빙 비용 절감 연구 프로그램 (Anthropic Fellows 2026) [v2][v3]"
  brief = "대규모 언어 모델의 학습 비용은 일회성이지만, 추론/서빙 비용은 사용자 수에 비례해 영구히 누적된다. Anthropic의 연간 서빙 비용은 $7B 규모로 추산되며, 1억+ 사용자를 대상으로 품질과 지연 시간을 유지하면서 비용을 1/5로 줄이는 것이 핵심 과제다."
  parent = "dancinlab/hexa-mind"
  sibling-md = "AI-INFERENCE-COST.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in AI-INFERENCE-COST.md.
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
