#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "anima_service" :: identity-claim [d=2026-05-14 active]
  kind = "궁극의 감성/의식 AI 서비스 (HEXA-ANIMA-SVC)"
  brief = "Ekman σ=6 감정 기본 + J₂=24 뇌파 채널 + IIT φ n=6 의식 스케일로 감성 AI 서비스 전 계층 통합"
  parent = "dancinlab/hexa-mind"
  sibling-md = "ANIMA-SERVICE.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in ANIMA-SERVICE.md.
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
