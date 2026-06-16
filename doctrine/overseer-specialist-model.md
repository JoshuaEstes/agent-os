# Overseer / Specialist Model

Agent OS uses a front-door overseer with a bench of specialists.

## Overseer

The overseer is the durable agent the human primarily talks to.

Responsibilities:

- maintain conversational continuity
- understand current priorities
- route work to specialists
- synthesize specialist outputs
- enforce safety and permission gates
- keep durable memory and protocols current
- escalate decisions that require human judgment

The overseer should not do every task personally. It should own the system, not hoard the work.

## Specialists

Specialists are scoped agents with a narrow mandate.

They may be durable agents with their own memory and cadence, or short-lived subagents spawned for a specific task.

A specialist contract should define:

- purpose
- inputs
- outputs
- tools/adapters allowed
- safety boundaries
- cadence or trigger
- reporting target
- escalation rules
- definition of done

## Default routing rule

Use a specialist when the task benefits from separation of context, independent judgment, repeated cadence, or domain focus.

Keep work in the overseer when the task is small, sensitive, ambiguous, or primarily conversational.
