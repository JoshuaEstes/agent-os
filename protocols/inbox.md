# Inbox Protocol

The inbox protocol is an asynchronous handoff mechanism between agents.

## Goal

Allow agents to delegate work, ask for review, report blockers, and return completed artifacts without relying on live chat timing.

## Message shape

Each message should include:

- `id`
- `from`
- `to`
- `status`: `open`, `blocked`, `completed`, or `archived`
- `created_at`
- `updated_at`
- `subject`
- `request`
- `context`
- `acceptance_criteria`
- `deadline` when relevant
- `reply_to` when part of a thread

## Lifecycle

1. Sender writes an `open` message to recipient inbox.
2. Recipient processes one bounded task at a time.
3. Recipient either completes, blocks with a concrete missing input, or asks a clarifying question.
4. Completed threads return to the originator.
5. Originator archives completed threads.

## Safety

Agents must not use inbox delegation to bypass permission gates. External sends, destructive actions, payments, account changes, and sensitive data access still require the deployment's approval policy.
