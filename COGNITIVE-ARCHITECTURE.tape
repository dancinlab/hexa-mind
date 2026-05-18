#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "cognitive_architecture" :: identity-claim [d=2026-05-14 active]
  kind = "N6 Cognitive Architecture -- Unified Goal"
  brief = "**Vision**: n=6 산술로 뉴런 소재부터 인지 시스템까지 관통하는 인지 아키텍처 -- 대뇌피질 n=6 층, 격자세포 n=6 육각, 신경전달물질 n=6 종"
  parent = "dancinlab/hexa-mind"
  sibling-md = "COGNITIVE-ARCHITECTURE.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in COGNITIVE-ARCHITECTURE.md.
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
