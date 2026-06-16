# OpenClaw Adapter

This adapter describes how Agent OS concepts can map to an OpenClaw runtime.

## Mapping

- overseer: durable main agent session
- specialist: named agent, isolated subagent, or scheduled agent turn
- inbox: filesystem inbox, session messages, or runtime queue
- loop: heartbeat, cron job, systemd timer, or scheduled agent turn
- memory: workspace files plus runtime memory search
- tools: runtime-provided tool allowlists

## Rule

The generic protocols should not depend on OpenClaw. OpenClaw-specific commands, config paths, and operational notes belong in this adapter or private deployment docs.
