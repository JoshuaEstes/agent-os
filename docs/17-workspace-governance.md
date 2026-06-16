# Workspace Governance

Agent workspaces are durable state. They let agents learn without losing their identity every time a session restarts.

That power needs boundaries.

## File tiers

### Freely agent-mutable

Agents may update these when the change affects only their own work:

- tool notes
- local examples
- daily notes
- task notes
- personal retrieval hints
- their own memory entries

### Reflection-only

These files shape the agent and should change only during a deliberate reflection/improvement pass:

- identity files
- voice/principle files
- long-term self-observations
- recurring behavior notes

Do not rewrite these tactically during normal task execution.

### Overseer-routed

These changes must go through the overseer:

- changes affecting another agent
- changes affecting shared workflows
- changes affecting public Agent OS templates
- changes to escalation/permission boundaries
- changes that alter the deployment's operating model

Agents do not update other agents' core files.

## Daily improvement loop

Every durable agent should run a daily improvement loop:

```text
work -> review -> learn -> improve
```

The agent asks what worked, what failed, and what should change.

Possible outcomes:

- update its own mutable notes
- queue a reflection-only change for later review
- report a system-level improvement to the overseer
- do nothing because the lesson is not durable

## Agent swaps and council experiments

Council members and expert agents should be swappable.

When testing a new agent or A/B testing council members:

- keep the agent charter stable enough for comparison
- record what changed between variants
- do not silently transfer private memory unless intended
- archive useful outputs before replacing an agent
- judge agents by artifacts, evidence, and decision quality

## Future idea: agent DNA

A deployment may later define an agent DNA file: a compact shaping file that influences an agent's defaults, instincts, and operating style.

That concept is intentionally future work. Agent OS should first prove simpler workspace governance before formalizing DNA as a core file.
