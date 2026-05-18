#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "cognitive_social_psychology" :: identity-claim [d=2026-05-14 active]
  kind = "궁극의 인지/사회심리 아키텍처 (HEXA-CSP)"
  brief = "작업기억 n=6±1 + Dunbar 계층 σ=12 + Ekman 기본 감정 6 — 인지/사회 심리의 n=6 수렴"
  parent = "dancinlab/hexa-mind"
  sibling-md = "COGNITIVE-SOCIAL-PSYCHOLOGY.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in COGNITIVE-SOCIAL-PSYCHOLOGY.md.
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
