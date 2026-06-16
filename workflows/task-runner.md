# Task Runner Loop

The task runner loop lets agents execute ready work autonomously within guardrails.

## Contract

On each run:

1. Read the ready queue.
2. Select one task using the deployment's priority policy.
3. Verify the task is safe and ready.
4. Execute to done or block honestly.
5. Record evidence.
6. Report only when useful or required.
7. Stop after one task.

## Guardrails

- Do not execute tasks that are not ready.
- Do not chain indefinitely.
- Do not hide blockers.
- Do not perform external/destructive/sensitive actions without permission.
- Prefer small verification over claims.
