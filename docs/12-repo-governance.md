# Repository Governance

This repository is the publishable source of truth for Agent OS.

The private working vault may contain drafts, operational logs, private deployment notes, and experiments. Those are allowed to diverge temporarily. But any reusable Agent OS core, workflow, agent template, adapter, or install pattern that we intend others to use must be promoted into this repo.

## No-drift rule

If a private deployment changes a reusable Agent OS pattern, one of these must happen in the same work cycle:

1. update this repo, or
2. open an issue describing the needed repo update, or
3. explicitly mark the private change as deployment-specific and not reusable.

Silent drift is a bug.

## Repo management surfaces

Use GitHub Issues for concrete repo work:

- missing docs
- broken instructions
- new templates
- adapter work
- installer tasks
- diagrams/assets
- release blockers

Use GitHub Discussions for open-ended support and design:

- questions
- adoption help
- proposals that are not yet scoped
- community examples
- design tradeoffs

## Definition of ready

A repo issue is ready when it has:

- clear goal
- affected files or area
- acceptance criteria
- privacy/safety notes if relevant
- verification step

## Definition of done

A repo issue is done when:

- the repo contains the change
- publication scan passes
- docs/examples/templates are internally consistent
- the issue or discussion is linked when useful

## Release posture

Do not promote Agent OS publicly on Hacker News, Reddit, launch channels, or broad social channels until launch-blocker issues are closed and a maintainer has done a fresh publication review.
