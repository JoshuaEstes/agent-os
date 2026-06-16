# Loop Anatomy

A loop is recurring agent behavior with a purpose, cadence, and feedback mechanism.

## Loop spec

Each loop should define:

- purpose
- trigger or cadence
- inputs
- outputs
- success criteria
- failure signals
- quiet/no-op behavior
- escalation rules
- evidence/logging
- owner

## Good loops

Good loops are boring and bounded. They do one thing, leave evidence, and stay quiet when nothing useful happened.

## Bad loops

Bad loops:

- create noise to prove they ran
- mutate external systems without approval
- mix unrelated responsibilities
- run forever
- hide failed reads as empty results
- escalate generic uncertainty instead of concrete blockers
