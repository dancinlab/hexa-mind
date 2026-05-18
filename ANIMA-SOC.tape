#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "anima_soc" :: identity-claim [d=2026-05-14 active]
  kind = "궁극의 AI 인격 SoC 아키텍처 (HEXA-ANIMA-SOC)"
  brief = "n=6 완전수 산술로 설계한 AI 인격 System-on-Chip — 감정 엔진 + 기억 블록 + 의식 상태 머신"
  parent = "dancinlab/hexa-mind"
  sibling-md = "ANIMA-SOC.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in ANIMA-SOC.md.
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
