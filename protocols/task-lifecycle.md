# Task Lifecycle

Agent OS tasks move through explicit gates so agents do not execute vague work.

## Lifecycle

```text
capture -> prioritize -> approve -> scope -> ready -> implement -> verify -> close
```

## Gates

### Capture

Raw ideas and issues enter without a quality bar.

### Prioritize

Decide whether the work matters and where it fits.

### Approve

A human or authorized overseer decides that the work is worth scoping.

### Scope

Define the smallest useful version, constraints, exclusions, and acceptance criteria.

### Ready

The task is ready only when an executor can act without guessing.

### Implement

Do the work in a bounded branch, document, run, or task context.

### Verify

Use the smallest meaningful evidence: test, lint, build, review, screenshot, inspection, logs, or direct command output.

### Close

Close only when acceptance criteria are met or the task is explicitly rejected/no-longer-needed.

## Bugs

Confirmed bugs may bypass approval/scope ceremony when the expected behavior is clear and the fix is low-risk. If a bug requires a product or design decision, route it through the normal lifecycle.
