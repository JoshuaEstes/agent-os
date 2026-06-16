# Maintainer Setup

Agent OS is intended to be managed through GitHub Issues, Discussions, and pull requests.

## Required maintainer capabilities

A maintainer automation account or token should be able to:

- clone and push branches
- open pull requests
- create and edit issues
- create and edit labels
- read and reply to discussions
- edit repository metadata when needed

If any of these are missing, write access is only partially configured.

## Local checkout

Use one canonical checkout for day-to-day repo work. If this repo is mirrored into a private knowledge base or vault, decide which checkout is canonical and document it.

Recommended rule:

- public repo checkout = source of truth for publishable Agent OS content
- private notes = drafts, deployment context, and sensitive operational state
- reusable improvements must be promoted into the repo or tracked as an issue

## Council support

A council-capable maintainer setup needs a way to run multiple independent advisor passes and synthesize them before assigning expert work.

Minimum viable setup:

1. overseer can create independent council tasks
2. each council task has a clear lens
3. overseer waits for council replies
4. overseer synthesizes disagreements and recommendation
5. overseer sends scoped work to expert agents
6. final output links back to evidence

Council agents may be durable agents, ad hoc subagents, or human reviewers. Independence matters more than runtime shape.
