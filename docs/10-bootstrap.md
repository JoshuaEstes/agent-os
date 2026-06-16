# Bootstrap

This is a generic bootstrap outline for a new Agent OS deployment.

## 1. Create private deployment space

Create a private workspace for the overseer and a private place for runtime config.

Do not put credentials in the public Agent OS checkout.

## 2. Create overseer files

Use templates for:

- identity
- operating principles
- user/context profile
- tool notes
- durable memory

## 3. Select adapters

Choose runtime, storage, messaging, task tracker, and repository adapters.

## 4. Install one loop

Start with one safe loop, such as reflection or read-only task review.

## 5. Add specialists by bottleneck

Do not create agents because a category sounds useful. Create them when repeated work, independent review, or domain ownership creates a real bottleneck.

## 6. Verify

Confirm:

- memory loads correctly
- inbox handoff works
- task lifecycle is clear
- logs/evidence are written
- permission gates block risky actions
