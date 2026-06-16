# Agents

Agents are installable units in Agent OS.

Each agent folder should contain the files needed to understand or install that agent:

- `README.md` — public charter
- `AGENTS.md` — runtime-facing instructions
- `CONTEXT.md` — placeholder for deployment-specific context
- optional templates, examples, or workflow notes

## Agent types

- **Overseer agent** — front door, routing, synthesis, memory, and escalation.
- **Council agents** — independent advisors that stress-test decisions.
- **Expert agents** — specialists that execute scoped work.

## Default flow

```text
overseer -> council agents -> overseer synthesis -> expert agents -> overseer final output
```
