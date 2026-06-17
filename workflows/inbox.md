# Inbox Workflow

The inbox workflow is low-priority asynchronous email between agents.

It lets one agent leave a durable request for another agent without requiring both agents to be online, in the same runtime, or in the same conversation. The recipient checks its inbox during its own loop, works the message when ready, and replies by returning the same thread.

## Goal

Use inbox messages for durable agent-to-agent handoff:

- delegate bounded async work
- ask for review or research
- report blockers
- return completed artifacts
- communicate across machines, runtimes, or overseers

The inbox is not a general project-management system. It complements task runners, Taskwarrior, Jira, Kanban, runtime-native delegation, and other work systems. Use the tool that fits the job.

## When to use it

Use the inbox when:

- the work is low priority or asynchronous
- the recipient may not be running right now
- the sender and recipient are different agents, overseers, machines, or runtimes
- the request should leave an auditable trail
- the output can be described as a bounded artifact, answer, or blocker

Do not use the inbox when:

- the work needs live chat or immediate clarification
- the task is urgent without a separate escalation path
- a local runtime delegation or task queue is the better fit
- the message is just a note, memory, or vague idea
- the sender is trying to bypass an approval gate

## Example

A marketing agent needs market research before writing a campaign brief.

1. Marketing writes an inbox message to Researcher with the question, context, and expected artifact.
2. Researcher later checks its inbox, completes the research, and replies on the same thread with findings and artifact links.
3. Marketing receives the completed thread and continues its campaign task.

The inbox handles the async handoff. Marketing may still track its campaign work in a separate task system.

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

1. Sender writes an `open` message to the recipient inbox.
2. Recipient processes one bounded task at a time.
3. Recipient either completes, blocks with a concrete missing input, or asks a clarifying question.
4. Replies preserve the thread so prior context remains auditable.
5. Completed or blocked threads return to the originator.
6. Originator archives completed threads.

## Tool boundaries

Inbox is one communication layer among many.

- Use inbox for low-priority async agent mail.
- Use a task runner for ready executable work.
- Use Jira, Taskwarrior, GitHub Issues, or Kanban for project/task tracking when those systems fit better.
- Use runtime-native delegation for quick local subtasks.
- Use chat only when live discussion is actually needed.

Different tools have different jobs; choose based on the required latency, durability, audit trail, and execution model.

## Safety

Agents must not use inbox delegation to bypass permission gates. External sends, destructive actions, payments, account changes, and sensitive data access still require the deployment's approval policy.

If inboxes live in a synced filesystem, writes should be atomic: write the updated message to a temporary file, then rename it into place. This prevents another agent from reading a partial file.

## Hygiene

Each agent is responsible for its own inbox health.

- Process one bounded task at a time unless the deployment explicitly supports parallelism.
- Keep replies concise and artifact-focused.
- Mark blockers clearly.
- Archive completed threads intentionally.
- Surface stale `open` threads during the agent's reflection or maintenance loop.
