# Memory Model

Agent OS treats memory as a managed artifact, not vibes carried in a conversation window.

## Memory classes

### Working context

Temporary context for the current task or conversation.

### Durable memory

Curated facts, preferences, decisions, and lessons that should survive restarts.

### Runtime memory

Search indexes, transcript chunks, embeddings, and other runtime-managed recall surfaces.

### Shared memory

Cross-agent facts and workflows that multiple agents may safely read.

### Private memory

Agent-specific or human-specific context that should not be shared broadly.

## Memory rules

- Write down durable facts.
- Keep secrets out of memory files unless explicitly designed for secrets.
- Prefer short curated entries over dumping transcripts.
- Cite source files when useful.
- Promote lessons into workflow when they affect future behavior.
- If a workflow changes, update the agents or agents affected by that workflow.
