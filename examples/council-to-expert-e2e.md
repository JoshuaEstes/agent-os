# Example: Council to Expert End-to-End

This example shows the intended Agent OS flow using a sanitized product decision.

## Scenario

A user asks:

> Should we add a public support forum to our open source project?

## 1. Overseer writes the decision brief

```yaml
question: Should the project add a public support forum now?
why_now: Users are starting to ask setup questions.
constraints:
  - no private user data in public threads
  - maintainer time is limited
  - repo docs are still changing
owner: project maintainer
expected_output: recommendation plus follow-up tasks
```

## 2. Overseer asks council agents

The overseer sends the same brief to council agents:

- `council-strategy`
- `council-skeptic`
- `council-user`
- `council-operator`
- `council-risk`

## 3. Council replies independently

Example replies:

- Strategy: yes, if support questions are converted into docs improvements.
- Skeptic: not yet if the maintainer cannot triage consistently.
- User: yes, users need a place to ask without opening bugs.
- Operator: only with categories, templates, and a weekly triage habit.
- Risk: yes, but pin privacy rules and forbid secrets in public posts.

## 4. Overseer synthesizes

Recommendation:

> Enable Discussions, but treat it as a support intake loop, not a free-form chat room. Add support policy, categories, privacy warning, and weekly triage. Do not promote broadly until the docs can absorb repeated questions.

## 5. Overseer sends expert tasks

### Product agent

```yaml
goal: Define discussion categories and support policy.
acceptance_criteria:
  - categories map to user needs
  - policy tells users what belongs in issues vs discussions
  - privacy warning is clear
expected_artifact: support policy draft
```

### Librarian agent

```yaml
goal: Watch for repeated support questions that indicate missing docs.
acceptance_criteria:
  - recurring questions become doc issues
  - answered questions link to canonical docs
expected_artifact: weekly support/doc gaps summary
```

### Reviewer agent

```yaml
goal: Review support policy for ambiguity and safety gaps.
acceptance_criteria:
  - flags unclear escalation paths
  - flags privacy/security risks
expected_artifact: review notes
```

## 6. Overseer final output

The overseer presents the decision, council disagreements, expert artifacts, and final implementation plan to the maintainer.
