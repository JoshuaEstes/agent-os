# Architecture

Agent OS has four layers.

## 1. Doctrine

Doctrine defines durable operating principles: boundaries, routing, memory, escalation, and verification.

Doctrine should be runtime-neutral.

## 2. Protocols

Protocols define repeatable workflows such as inbox handoff, task lifecycle, publication, incident response, and review.

A protocol should say:

- when it applies
- required inputs
- allowed transitions
- outputs
- safety gates
- verification

## 3. Roles

Roles define specialist charters. A role is reusable; a deployment context makes it concrete.

Example: `Engineer` is a role. `Engineer for ExampleApp using GitHub and PostgreSQL` is a deployment-specific context pack.

## 4. Adapters

Adapters map generic doctrine to concrete tools and providers.

Examples:

- runtime adapter
- task tracker adapter
- chat adapter
- repository adapter
- calendar/email/file-storage adapter

Adapters may name providers. Doctrine should not require them.
