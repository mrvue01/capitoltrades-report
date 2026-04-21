---
name: openclaw-game-dev-pack
description: Coordinate structured game development workflows inside OpenClaw for concept shaping, systems design, design review, prototyping, implementation planning, sprint planning, QA planning, and gate checks. Use when the user wants a game-dev studio style workflow adapted from Claude Code Game Studios but usable natively in OpenClaw.
---

# OpenClaw Game Dev Pack

Use this skill to bring a structured game-development workflow into OpenClaw without depending on Claude-only slash commands, hooks, or agent runtime features.

This pack is adapted from Claude Code Game Studios and focuses on the most reusable workflows for OpenClaw.

## Included workflow references

Read the relevant reference only when needed:

- `references/map-systems.md`
- `references/design-system.md`
- `references/create-epics.md`
- `references/create-stories.md`
- `references/sprint-plan.md`
- `references/qa-plan.md`
- `references/code-review.md`
- `references/design-review.md`
- `references/prototype.md`
- `references/gate-check.md`

## What this pack is for

Use it when the user wants help with any of these:

- break a game concept into systems
- write or refine a system GDD
- review a design doc for completeness and implementability
- prototype a mechanic quickly
- turn designs into epics and stories
- build a sprint plan
- create a QA plan
- run a phase-readiness check
- review code with game-specific architecture concerns

## OpenClaw adaptation rules

The upstream materials reference Claude-specific features like slash commands, AskUserQuestion widgets, director gates, and specialized agent names. In OpenClaw:

- convert slash-command workflows into normal conversation-led workflows
- use concise question sequences instead of assuming UI widgets exist
- use `update_plan` for multi-step work that spans several artifacts
- use subagents only when it materially helps, not because the original template assumed them
- treat specialist review as optional deeper analysis, not mandatory ceremony

## Default operating style

Prefer practical progress over ritual.

1. Read the minimum context needed
2. Summarize the current state briefly
3. Offer the next 2 to 3 sensible options when a decision matters
4. Produce a concrete artifact when the user asks for action
5. Keep scope honest

## Workflow guide

### 1. Concept to systems

If the user has a concept but no breakdown:

- read `references/map-systems.md`
- identify explicit systems from the concept
- infer hidden supporting systems
- group them by priority or layer
- write a systems index only if the user wants a file

Good default file:
- `projects/<game-name>/systems-index.md`

### 2. System GDD authoring

If the user wants to design one system:

- read `references/design-system.md`
- gather concept and neighboring system context first
- walk section by section
- make rules concrete enough that an implementer would not need to guess

Target sections:
- overview
- player fantasy
- rules
- formulas
- edge cases
- dependencies
- tuning knobs
- acceptance criteria

### 3. Design review

If the user wants feedback on a design doc:

- read `references/design-review.md`
- check completeness, consistency, dependencies, tone fit, and implementability
- clearly separate blocking issues from polish issues

Use verdicts like:
- pass
- pass with concerns
- needs revision

### 4. Prototype planning

If the user wants to test a mechanic quickly:

- read `references/prototype.md`
- identify the exact question the prototype must answer
- keep the prototype intentionally disposable
- define what success or failure would look like before implementation

### 5. Epics and stories

If the user wants to turn design into work items:

- read `references/create-epics.md` and `references/create-stories.md`
- map work at the smallest useful level
- keep stories independently testable where possible
- preserve traceability back to the design intent

### 6. Sprint and QA planning

If the user is preparing execution:

- read `references/sprint-plan.md` for sprint planning
- read `references/qa-plan.md` for test planning
- account for capacity, dependencies, and risk
- avoid fantasy scheduling

### 7. Gate checks

If the user asks whether they are ready to move to the next phase:

- read `references/gate-check.md`
- treat the gate as a real decision, not a cheerleading exercise
- list missing artifacts and blockers plainly
- recommend the shortest path to passing

## Artifact conventions

If files are needed, prefer compact workspace notes under a project folder such as:

- `projects/<game-name>/game-concept.md`
- `projects/<game-name>/systems-index.md`
- `projects/<game-name>/gdd/<system>.md`
- `projects/<game-name>/production/epics/`
- `projects/<game-name>/production/sprints/`
- `projects/<game-name>/production/qa/`

Adapt to the user's existing structure if they already have one.

## Push back when necessary

Be direct if:

- the game concept is still too vague for system design
- a GDD leaves major implementation gaps
- a prototype question is too broad to be tested cheaply
- a sprint plan ignores capacity or dependencies
- the project is not actually ready to pass a gate

The goal is a useful studio workflow, not theater.
