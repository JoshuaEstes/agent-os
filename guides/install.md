# Install Guide

This guide describes the manual install path for Agent OS. A scriptable installer is future work; the manual path is the source of truth for now.

## 1. Choose a deployment directory

Pick a private directory for your deployment. Do not put secrets in the public Agent OS checkout.

Example:

```text
<deployment-root>/
  overseer/
  agents/
  inbox/
  reports/
```

## 2. Create an overseer workspace

Copy the overseer workspace template:

```bash
mkdir -p <deployment-root>/overseer/workspace
cp -R templates/workspaces/overseer/* <deployment-root>/overseer/workspace/
```

Replace placeholders such as:

- `{{OVERSEER_NAME}}`
- `{{DEPLOYMENT_NAME}}`
- `{{OWNER}}`
- `{{TIMEZONE}}`
- `{{PRIMARY_CHANNEL}}`

## 3. Choose initial agents

Start with the overseer and one specialist. Do not install every agent at once.

Recommended first agents:

- `council-skeptic` for decision quality
- `scout` for research
- `product` for scoping
- `engineer` for implementation if code work is a bottleneck

## 4. Create a specialist workspace

Copy the specialist template:

```bash
mkdir -p <deployment-root>/agents/<agent-name>/workspace
cp -R templates/workspaces/specialist/* <deployment-root>/agents/<agent-name>/workspace/
cp agents/<agent-name>/README.md <deployment-root>/agents/<agent-name>/workspace/ROLE.md
cp agents/<agent-name>/AGENTS.md <deployment-root>/agents/<agent-name>/workspace/AGENTS.md
```

Add deployment-specific context to `CONTEXT.md`.

## 5. Configure routing

The runtime should support this minimum flow:

```text
overseer -> council agents -> overseer synthesis -> expert agents -> overseer final output
```

Council agents may be durable agents, short-lived subagents, or human reviewers. Expert agents may also be durable or on-demand.

## 6. Verify installation

Run one small task:

1. Ask the overseer a meaningful question.
2. Have the overseer ask at least one council agent.
3. Have the overseer synthesize the reply.
4. Send one scoped task to an expert agent.
5. Confirm the expert returns an artifact with evidence.

## 7. Keep the repo updated

If your deployment improves a reusable Agent OS pattern, update the repo or open an issue. Do not let private deployment practice drift from public source-of-truth docs.
