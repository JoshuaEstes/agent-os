# Tokenization

Agent OS uses tokens to keep generic core portable and private values out of public files.

## Token format

Use placeholder tokens for deployment-specific values:

```text
{{VAULT_ROOT}}
{{AGENT_ID}}
{{AGENT_HOME}}
{{INBOX_DIR}}
{{REPORTS_DIR}}
{{RUNTIME}}
{{CHANNEL}}
{{OWNER}}
```

Tokens are resolved by the installer, runtime profile, or private deployment docs.

## Rules

- Public docs define what a token means, not its real value.
- Secret tokens should point to secret-manager references, not raw secret values.
- Machine-specific paths belong in private config.
- Examples may use fake paths like `/srv/example-vault`, but should not use real hostnames or user directories.
