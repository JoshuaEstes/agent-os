# Expert Handoff Protocol

Expert handoff turns scoped work into a specialist task.

## Handoff packet

```yaml
id: <task-id>
from: <overseer>
to: <expert-role>
status: open
goal: <what outcome is needed>
context: <minimum necessary context>
constraints:
  - <constraint>
non_goals:
  - <explicitly out of scope>
acceptance_criteria:
  - <checkable criterion>
allowed_tools:
  - <tool or adapter>
escalate_if:
  - <condition>
expected_artifact: <brief|patch|issue|review|report>
deadline: <optional>
```

## Rules

- Experts should not accept vague tasks.
- Experts should not expand scope silently.
- Experts should return evidence, not just conclusions.
- Overseers synthesize expert outputs before presenting a final recommendation.
