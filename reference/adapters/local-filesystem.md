# Local Filesystem Adapter

A simple Agent OS deployment can use directories and Markdown files.

Common mappings:

- inbox: directory of message files
- memory: curated Markdown files
- logs: append-only text or JSONL files
- reports: dated Markdown summaries
- templates: copied and token-substituted into workspaces

This adapter is intentionally minimal and does not prescribe a specific vault tool.
