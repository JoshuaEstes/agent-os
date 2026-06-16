# Agent DNA

Agent DNA is an experimental Agent OS concept.

DNA is the agent's stable design profile: what the agent is built to do, its default posture, authority boundaries, escalation instincts, collaboration style, and mutation rules.

## What DNA is

DNA describes stable traits:

- purpose
- default decision posture
- risk tolerance
- authority boundaries
- escalation instincts
- collaboration style
- self-improvement boundaries

DNA helps make agents swappable and testable. Two council agents can share the same workflow but use different DNA profiles, then be compared by output quality.

## What DNA is not

DNA is not:

- memory
- secrets
- task instructions
- heartbeat cadence
- a daily journal
- a replacement for `AGENTS.md`
- a replacement for identity or voice files
- something an agent rewrites casually

## Relationship to other files

- `AGENTS.md` — runtime instructions and operating rules
- `DNA.md` — stable design traits and default posture
- `MEMORY.md` — durable learned facts
- `HEARTBEAT.md` — recurring cadence or scheduled behavior, if used
- `CONTEXT.md` — deployment-specific context

## Mutation rule

Daily reflection may propose a DNA change, but agents should not silently rewrite DNA during normal work.

DNA changes should be deliberate, reviewed, and tied to evidence.

## Status

Experimental. Use DNA in deployments that want to test agent variants, council member swaps, or A/B comparisons. Do not require it for basic Agent OS installation yet.
