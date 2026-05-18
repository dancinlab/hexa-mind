#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "dream_recorder" :: identity-claim [d=2026-05-14 active]
  kind = "궁극의 꿈 기록/재생기 (HEXA-DREAM)"
  brief = "시각피질 BOLD J₂=24채널 + 신경 디코더 + HEXA-HOLO 재생으로 꿈을 영상화"
  parent = "dancinlab/hexa-mind"
  sibling-md = "DREAM-RECORDER.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in DREAM-RECORDER.md.
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
