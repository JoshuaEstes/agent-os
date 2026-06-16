# Council and Expert Routing

Agent OS uses a council-first workflow for meaningful decisions.

```text
overseer -> council agents -> overseer synthesis -> expert agents -> overseer final output
```

## Overseer

The overseer owns the conversation, decision brief, routing, synthesis, and final response.

The overseer should not silently invent the plan for important work. It should ask the council, synthesize the replies, then hand scoped work to expert agents.

## Council agents

Council agents are first-class agents under `agents/`.

They advise from independent lenses:

- `council-strategy`
- `council-skeptic`
- `council-user`
- `council-operator`
- `council-risk`

Council agents do not execute. They reply to the overseer with judgment, objections, assumptions, and recommendations.

## Expert agents

Expert agents execute scoped work after the overseer synthesizes council input.

Examples:

- `engineer`
- `product`
- `scout`
- `librarian`
- `finance`
- `growth`
- `reviewer`

## Handoff rule

The overseer sends experts a clear packet:

- goal
- context
- constraints
- non-goals
- acceptance criteria
- allowed tools
- escalation rules
- expected artifact

## Final output

The overseer combines council advice and expert artifacts into one coherent answer, plan, PR, issue, or report.
