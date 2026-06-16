# Architecture

Agent OS has four layers.

## 1. Core

Core defines durable operating principles: boundaries, routing, memory, escalation, and verification.

Core should be runtime-neutral.

## 2. Workflows

Workflows define repeatable workflows such as inbox handoff, task lifecycle, publication, incident response, and review.

A workflow should say:

- when it applies
- required inputs
- allowed transitions
- outputs
- safety gates
- verification

## 3. Agents

Agents define installable worker charters. An agent template is reusable; a deployment context makes it concrete.

Example: `engineer` is an agent template. `engineer for an example app using GitHub and PostgreSQL` is a deployment-specific context pack.

## 4. Adapters

Adapters map generic core to concrete tools and providers.

Examples:

- runtime adapter
- task tracker adapter
- chat adapter
- repository adapter
- calendar/email/file-storage adapter

Adapters may name providers. Core should not require them.
