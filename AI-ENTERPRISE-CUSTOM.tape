#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "ai_enterprise_custom" :: identity-claim [d=2026-05-14 active]
  kind = "엔터프라이즈 커스텀 연구 프로그램 (Anthropic Fellows 2026) [v2 돌파]"
  brief = "Anthropic 매출의 핵심은 대형 기업 고객(엔터프라이즈)이다. 30만+ 기업이 Claude를 쓰지만, 각 기업의 도메인 지식·보안 요건·워크플로우는 천차만별이다. 범용 모델 하나로는 고객 유지가 안 된다. LoRA/QLoRA 파인튜닝, 프롬프트 최적화, RAG 파이프라인, 데이터 격리를 고객별로 효율적으로 제공하는 것이 LLM 비즈니스의 승패를 가른다"
  parent = "dancinlab/hexa-mind"
  sibling-md = "AI-ENTERPRISE-CUSTOM.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in AI-ENTERPRISE-CUSTOM.md.
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
