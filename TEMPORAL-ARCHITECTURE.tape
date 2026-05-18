#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "temporal_architecture" :: identity-claim [d=2026-05-14 active]
  kind = "궁극의 시간 아키텍처 (Ultimate Temporal Architecture) -- Consolidated Goal"
  brief = "인류의 시간 체계가 n=6 완전수 산술의 산물임을 증명."
  parent = "dancinlab/hexa-mind"
  sibling-md = "TEMPORAL-ARCHITECTURE.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in TEMPORAL-ARCHITECTURE.md.
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
