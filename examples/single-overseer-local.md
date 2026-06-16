# Example: Single Overseer Local Deployment

This is a sanitized example of a small Agent OS deployment.

```text
/srv/example-vault/
  agent-os/                  # public core checkout or vendor copy
  overseer/
    workspace/
      AGENTS.md
      SOUL.md
      USER.md
      MEMORY.md
      memory/
    inbox/
    agents/
      scout/
        workspace/
        inbox/
      product/
        workspace/
        inbox/
```

The overseer handles the human conversation. Scout and Product are specialist agents with narrower memory and permissions.

All real paths, channel IDs, credentials, and account names live in private config.
