# Council Operations

Agent OS can run council workflows in three ways.

## 1. Ad hoc council agents

The overseer creates short-lived council agents for a specific decision.

Use this when:

- the council pattern is still being tested
- the decision is unusual
- durable advisor memory is not needed
- speed matters more than permanent setup

This is the minimum viable council system.

## 2. Durable council agents

Council agents can become durable agents with their own workspace, memory, cadence, and inbox.

Use this when:

- the same advisor lens is useful repeatedly
- the advisor needs durable memory
- council response quality improves with continuity
- the deployment has enough volume to justify maintenance

Do not create durable council agents just because the template exists. Promote them when repeated use proves the bottleneck.

## 3. Human council members

A council lens can be filled by a human reviewer.

Use this when:

- judgment is high-stakes
- domain expertise is not available to an agent
- the decision needs explicit human accountability

## Minimum viable council run

1. Overseer writes a decision brief.
2. Overseer sends the same brief to independent council agents.
3. Council agents reply independently.
4. Overseer synthesizes agreements, disagreements, strongest objection, and recommendation.
5. Overseer sends scoped work to expert agents.
6. Overseer produces the final answer or artifact.

## When to promote ad hoc to durable

Promote a council agent to durable only after at least one successful council run and one of these signals:

- the same lens is needed repeatedly
- council setup overhead is slowing decisions
- the advisor needs memory of prior decisions
- quality improves when the advisor has continuity

## Evidence to keep

A council run should leave enough evidence to reconstruct the decision:

- decision brief
- council replies
- overseer synthesis
- expert handoff tasks
- final decision or output
