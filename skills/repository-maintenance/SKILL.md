# Repository Maintenance Skill

## Use when

- editing public repo docs
- updating templates or workflows
- committing and pushing changes
- preventing source-of-truth drift

## Steps

1. Check repo status.
2. Make the smallest coherent change.
3. Run the repo's verification gate.
4. Inspect the diff.
5. Commit with a clear message.
6. Push only when publication and safety checks pass.
7. Record or open follow-up work when something remains incomplete.

## Review

Confirm:

- source-of-truth location is clear
- no private data leaked
- links/assets are valid
- verification command passed
- pushed branch matches local head

## Escalation

Escalate before force-pushing, rewriting public history, deleting files with unclear ownership, or changing public positioning.
