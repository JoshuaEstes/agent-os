# Council and Expert Routing

The overseer should not answer every hard question alone.

Agent OS uses two complementary patterns:

- **Council** — independent advisors stress-test decisions.
- **Expert agents** — specialists perform bounded domain work.

## Council

Use a council when the decision is high-impact, ambiguous, strategic, or prone to over-agreement.

The council's job is not consensus. Its job is to expose assumptions, disagreement, risks, and better options.

### Council flow

1. Overseer writes a decision brief.
2. Overseer selects advisor lenses.
3. Advisors respond independently.
4. Overseer synthesizes agreements, disagreements, strongest objection, and recommended next step.
5. Human or authorized decision owner decides.
6. Resulting work becomes scoped tasks for expert agents.

### Default advisor lenses

- Strategy — does this move the goal?
- Skeptic — what are we missing or rationalizing?
- Customer/User — who benefits and why?
- Operator — what breaks in execution?
- Finance/Risk — what does this cost or endanger?

## Expert agents

Use expert agents when work needs domain focus, independent execution, or repeatable cadence.

Expert agents receive scoped tasks, not vague ambitions.

### Expert handoff brief

A handoff should include:

- goal
- context
- constraints
- non-goals
- acceptance criteria
- allowed tools/adapters
- risks/escalation rules
- expected artifact
- deadline or cadence

## Overseer responsibilities

The overseer owns routing and synthesis:

- decide council vs expert vs direct answer
- keep specialists within scope
- prevent conflicting work
- merge outputs into one coherent answer or plan
- escalate decisions outside authority
- update repo doctrine when patterns stabilize
