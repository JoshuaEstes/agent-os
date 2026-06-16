# Improvement Workflow

Every Agent OS agent has an improvement workflow.

At the basic level, a workflow is a loop:

```text
action -> review -> improvement -> next action
```

The loop may be tiny or formal, but it must exist. Agents do work, review whether the work was correct/useful, and change future behavior when evidence says they should.

## Daily reflection

Every durable agent should run a daily reflection or improvement pass.

The pass asks:

- What worked?
- What did not work?
- What surprised me?
- Where did I waste effort?
- What should I do differently next time?
- Does this require a change to my own core files?
- Does this reveal a system-level improvement for the overseer?

## Agent-owned improvements

Agents may update their own core files when the improvement affects only that agent.

Examples:

- update their own instructions
- update their own tool notes
- update their own memory
- clarify their own escalation rules
- add examples to their own workspace

## Boundary

Agents do not update other agents' core files.

If an agent discovers a change another agent should adopt, it sends the recommendation to the overseer. The overseer decides whether to route that improvement, ask the affected agent to adopt it, or turn it into repo/system work.

## System-level improvements

When an improvement affects the whole deployment or Agent OS itself, the agent reports it to the overseer.

The overseer may:

- update the public repo
- open an issue
- ask the council to review the change
- assign an expert agent to implement it
- mark it deployment-specific and leave it private

## Evidence

A useful improvement note should include:

- observation
- impact
- proposed change
- scope: agent-only, another-agent, or system-level
- evidence or example
