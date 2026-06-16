# Drift Prevention

Drift happens when a deployment learns something reusable but the public Agent OS repo does not change.

## Rule

If a private deployment changes a reusable Agent OS agent, workflow, adapter, guide, or core concept, do one of three things immediately:

1. update the repo,
2. open an issue, or
3. mark the change as deployment-specific.

## Recurring audit

A maintainer should periodically compare private deployment notes against the repo and ask:

- Did we invent a reusable workflow?
- Did an agent charter change?
- Did an adapter assumption change?
- Did a support question reveal missing docs?
- Did a council decision create a new operating rule?

If yes, promote the lesson into the repo or track it.

## Mechanical checks

Run before push:

```bash
./tools/check-repo.sh
```

The check covers publication blockers, stale taxonomy terms, and unexpected binary files.
