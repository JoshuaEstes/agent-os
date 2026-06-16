# Agent OS

![Agent OS logo](assets/brand/agent-os-logo.svg)

Agent OS is an operating system for coordinating AI agents as a team.

It defines the durable parts of an agent organization:

- core: operating principles and boundaries
- workflows: loops for action, review, and improvement
- agents: installable overseer, council, and expert agents
- skills: reusable capability packages
- adapters: runtime/provider-specific implementation notes
- examples: sanitized deployment patterns

The goal is not to publish a prompt pack. The goal is to make agents safer, more useful, more reviewable, and easier to scale without creating chaos.

Every durable agent has an improvement workflow: it acts, reviews what happened, and improves its own behavior or reports system-level improvements to the overseer.

## Status

Pre-release. The repository is being audited for correctness, installability, and public launch readiness.

## Core model

Agent OS uses a front-door **overseer** agent, independent **council** agents, and scoped **expert** agents.

The overseer owns:

- user-facing continuity
- triage and routing
- synthesis across agents
- escalation and safety gates
- durable memory hygiene

Expert agents own bounded work:

- research
- product analysis
- engineering
- growth
- finance
- review
- operations

## Visual overview

- [Overseer + specialist model](assets/diagrams/overseer-specialist-model.svg)
- [Council to expert workflow](assets/diagrams/council-to-expert-workflow.svg)

## Repository map

- `core/` — principles and system model
- `workflows/` — binding workflows
- `agents/` — installable agent charters and workspace files
- `skills/` — reusable capabilities agents can invoke
- `adapters/` — provider/runtime profiles
- `examples/` — sanitized deployment sketches
- `templates/` — reusable document templates

## Public/private rule

Generic core belongs here. Private operating state does not.

Do not publish:

- personal facts
- customer or venture-specific context
- secrets or secret-store names
- real host paths
- private agent memory
- live operational logs
- account IDs, emails, tokens, credentials, or API keys

Use tokens and placeholders instead.

## Maintainers

- [Maintainer setup](docs/14-maintainer-setup.md)
- [Drift prevention](docs/15-drift-prevention.md)


## Install

- [Install guide](guides/install.md)
- [Council to expert example](examples/council-to-expert-e2e.md)
- [Council operations](docs/16-council-operations.md)
- [Workspace governance](docs/17-workspace-governance.md)
- [Agent DNA](docs/18-agent-dna.md)

