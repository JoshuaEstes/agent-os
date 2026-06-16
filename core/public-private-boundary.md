# Public / Private Boundary

Agent OS separates reusable operating core from private deployment state.

## Public layer

Public Agent OS material may include:

- generic operating principles
- workflows and workflow contracts
- agent charters
- adapter shapes
- sanitized examples
- templates
- checklists

Public material should be useful after replacing all implementation-specific names with placeholders.

## Private layer

Private deployment material includes:

- human identity and personal context
- company/client/customer context
- private agent memory
- live operational logs
- credentials and secret-store references
- host paths and machine names
- account IDs, channels, phone numbers, emails, and API keys
- unpublished business strategy

Private material belongs in the deployment vault, runtime config, or secret manager — not in the public repo.

## Extraction rule

Do not mirror a private vault into Agent OS.

Instead:

1. Identify the reusable contract.
2. Remove deployment-specific assumptions.
3. Move runtime/provider details into an adapter.
4. Replace real values with tokens.
5. Run a publication scan before pushing.

## Heuristic

If a document stops being useful after removing real names, real paths, and real accounts, it is not generic Agent OS core.
