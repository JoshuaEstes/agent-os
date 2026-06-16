# Roadmap

This roadmap tracks launch-blocking work until GitHub Issues automation has permission to create/manage issues.

## Launch blockers

### 1. Prevent vault/repo drift

**Goal:** Make the repo the canonical publishable source of truth for reusable Agent OS core, templates, workflows, adapters, and install patterns.

**Acceptance criteria:**

- Drift policy is documented.
- Private vault changes that are reusable have a required promotion path: repo update, issue, or explicit deployment-specific note.
- A recurring audit/check is defined.
- Repo docs explain Issues vs Discussions usage.

### 2. Build installable agent workspace templates

**Goal:** Make every agent installable with core workspace files, not just a charter document.

**Acceptance criteria:**

- Overseer template includes `AGENTS.md`, `IDENTITY.md`, `USER.md`, `TOOLS.md`, `MEMORY.md`, optional `SOUL.md`.
- Specialist template includes `AGENTS.md`, `ROLE.md`, `CONTEXT.md`, `TOOLS.md`, `MEMORY.md`.
- Scout, Product, Engineer, Librarian, Finance, Growth, and Reviewer have concrete agent packs or generated examples.
- Templates use placeholders only.

### 3. Implement council-to-expert operating workflow

**Goal:** Document and template the overseer workflow where the overseer uses a council for decisions and hands scoped work to expert agents.

**Acceptance criteria:**

- Council workflow exists with advisor response and synthesis formats.
- Expert handoff workflow exists with handoff packet schema.
- Overseer docs say when to use council vs expert vs direct execution.
- Example end-to-end workflow is added.

### 4. Add installer and management workflow

**Goal:** Make Agent OS easy to install and manage from the repo.

**Acceptance criteria:**

- Bootstrap docs define install steps.
- A simple installer or copier script can create an overseer/specialist workspace from templates.
- Role installation supports placeholder substitution.
- Management docs explain update/commit/push flow from a vault-backed checkout.

### 5. Create architecture diagrams and logo assets

**Goal:** Add human-readable visuals for Agent OS before public promotion.

**Acceptance criteria:**

- Logo candidates are generated and reviewed.
- SVG logo or wordmark is committed after selection.
- At least two explanatory SVG diagrams exist: overseer/specialist model and council-to-expert workflow.
- README links to visuals without clutter.

### 6. HN/public launch readiness

**Goal:** Prepare Agent OS for broader public sharing.

**Acceptance criteria:**

- README explains value proposition in under 60 seconds.
- Getting started path works.
- Support policy is clear.
- Core docs have no private/internal context.
- At least one example deployment exists.
- Open launch blockers are closed or explicitly deferred.

## GitHub management note

The repo should ultimately use GitHub Issues for these items and GitHub Discussions for support/design conversations. If automation cannot create issues, create them manually from this roadmap or update repository token permissions.
