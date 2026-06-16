# Agent OS

Agent OS is a docs-first operating system for working with AI agents as a coordinated team.

It defines the durable parts of an agent organization:

- doctrine: operating principles and boundaries
- protocols: repeatable work contracts
- loops: recurring behaviors and feedback systems
- roles: specialist agent charters
- adapters: runtime/provider-specific implementation notes
- examples: sanitized deployment patterns

The goal is not to publish a prompt pack. The goal is to make agents safer, more useful, more reviewable, and easier to scale without creating chaos.

## Status

Pre-release extraction. The source material came from a private working vault, but this repository is intentionally not a vault mirror. Every document here should be public-safe and generalized before release.

## Core model

Agent OS assumes a front-door **overseer** agent coordinates a bench of specialist agents.

The overseer owns:

- user-facing continuity
- triage and routing
- synthesis across agents
- escalation and safety gates
- durable memory hygiene

Specialists own bounded work:

- research
- product analysis
- engineering
- growth
- finance
- review
- operations

## Repository map

- `doctrine/` — principles and system model
- `protocols/` — binding workflows
- `loops/` — recurring operating cycles
- `roles/` — reusable role charters
- `adapters/` — provider/runtime profiles
- `examples/` — sanitized deployment sketches
- `templates/` — reusable document templates

## Public/private rule

Generic doctrine belongs here. Private operating state does not.

Do not publish:

- personal facts
- customer or venture-specific context
- secrets or secret-store names
- real host paths
- private agent memory
- live operational logs
- account IDs, emails, tokens, credentials, or API keys

Use tokens and placeholders instead.
