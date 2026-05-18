#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "ai_alignment" :: identity-claim [d=2026-05-14 active]
  kind = "AI 정렬 연구 (AI Safety Alignment)"
  brief = "AI 정렬은 우리 시대의 핵심 과제다. AI 시스템이 인간의 의도를 충실히 반영하도록 보장하는 것이 본질이다. 해결하면 AI는 인류 최고의 도구가 된다. 실패하면 실존적 위험이 된다."
  parent = "dancinlab/hexa-mind"
  sibling-md = "AI-ALIGNMENT.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in AI-ALIGNMENT.md.
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
