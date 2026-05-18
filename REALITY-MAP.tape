#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "reality_map" :: identity-claim [d=2026-05-14 active]
  kind = "궁극의 현실 지도 (HEXA-REALITY)"
  brief = "n=6 바텀업 인과 매핑 — 입자부터 우주론까지 σ=12 레벨 × 3943 노드 통합 그래프"
  parent = "dancinlab/hexa-mind"
  sibling-md = "REALITY-MAP.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in REALITY-MAP.md.
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
