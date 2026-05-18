#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "ai_adversarial" :: identity-claim [d=2026-05-14 active]
  kind = "AI 적대적 강건성 연구 (Anthropic Fellows 2026)"
  brief = "AI 시스템은 현실 세계에서 공격에 직면한다. 탈옥(jailbreak), 프롬프트 주입(prompt injection),"
  parent = "dancinlab/hexa-mind"
  sibling-md = "AI-ADVERSARIAL.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in AI-ADVERSARIAL.md.
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
