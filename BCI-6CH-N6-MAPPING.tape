#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "bci_6ch_n6_mapping" :: identity-claim [d=2026-05-14 active]
  kind = "BCI 6-Channel n=6 Mapping Specification — HEXA-BCI x OpenBCI Cyton+Daisy 16ch"
  brief = "- Document version: 2026-04-14"
  parent = "dancinlab/hexa-mind"
  sibling-md = "BCI-6CH-N6-MAPPING.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in BCI-6CH-N6-MAPPING.md.
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
