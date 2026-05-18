#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "ai_agent_serving" :: identity-claim [d=2026-05-14 active]
  kind = "에이전트 서빙 연구 프로그램 (Anthropic Fellows 2026) [v3-특이점]"
  brief = "AI 에이전트는 단순 질의응답을 넘어 다단계 작업을 자율 수행한다. Claude Code, MCP, Computer Use 등 도구 사용 에이전트는 기존 추론 서빙과 근본적으로 다른 인프라를 요구한다. 세션이 수분~수시간 지속되고, 컨텍스트 창이 누적되며, 외부 도구 호출이 레이턴시를 지배한다."
  parent = "dancinlab/hexa-mind"
  sibling-md = "AI-AGENT-SERVING.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in AI-AGENT-SERVING.md.
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
