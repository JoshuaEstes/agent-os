# Skills

Skills are reusable capability packages.

If agents are **who** does work and workflows are **how work loops**, skills are the repeatable know-how an agent can invoke to perform a capability well.

## What belongs in a skill

A skill folder may include:

- `README.md` — what the skill does and when to use it
- `SKILL.md` — operational instructions for agents
- examples
- checklists
- scripts or references if they are public-safe

## Skills vs agents

Agents can use many skills.

Example:

- `overseer` may use `council-facilitation`, `publication-safety`, and `repository-maintenance`.
- `engineer` may use `repository-maintenance`.
- `scout` may use `research-brief`.

Do not duplicate skill procedures inside every agent. Put reusable procedure here and let agents reference it.

## Skills vs workflows

A workflow is the action/review/improvement loop.

A skill is a capability used inside that loop.

Example:

- Workflow: council review
- Skill: council facilitation

## Skills vs adapters

A skill describes provider-neutral know-how.

An adapter maps that know-how to a specific tool, runtime, or service.

Example:

- Skill: repository maintenance
- Adapter: GitHub
