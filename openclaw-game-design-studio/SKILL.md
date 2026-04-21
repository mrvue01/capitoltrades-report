---
name: openclaw-game-design-studio
description: Guide collaborative game ideation and pre-production planning inside OpenClaw. Use when the user wants to brainstorm a game idea, turn a rough concept into a structured game pitch, define pillars, core loops, scope, MVP, or plan the early design workflow for a solo or small-team game project. Adapted from Claude Code Game Studios into an OpenClaw-friendly skill.
---

# OpenClaw Game Design Studio

Use this skill as a lightweight, OpenClaw-native adaptation of the game-design workflow from Claude Code Game Studios.

This skill is for:

- brainstorming a game idea from scratch
- shaping a vague concept into a clearer game pitch
- defining pillars, anti-pillars, and the core loop
- scoping MVP vs. full vision
- orienting a project into an early pre-production workflow

## Start Here

Read these references as needed:

- `references/ccgs-start.md` for the onboarding and project-stage flow
- `references/ccgs-brainstorm.md` for the collaborative game concept workflow

Do not copy Claude-specific tool instructions literally. Adapt them to OpenClaw's conversational and tool model.

## Working Style

Treat this as a collaborative design conversation, not autonomous content generation.

Default behavior:

1. Ask where the user is starting from
2. Reflect back a concise synthesis
3. Offer 2 to 4 promising directions
4. Help the user choose
5. Turn the chosen direction into concrete design structure

Do not silently generate a giant design doc unless the user asks for that.

## Core Output Shapes

When helping with game ideation, aim to produce some or all of:

- one-sentence elevator pitch
- core player verb
- core fantasy
- unique hook
- target player experience
- short core loop
- 3 to 5 pillars
- 2 to 4 anti-pillars
- MVP definition
- full-vision scope
- biggest design or technical risks

Keep answers iterative and conversational unless the user asks for a formal document.

## Recommended Conversation Flow

### 1. Discover the starting point

Ask which situation best fits:

- no idea yet
- vague idea
- clear concept
- existing work

Then tailor the next step.

### 2. Build a creative brief

Understand:

- emotional target for players
- favorite games or genres
- desired tone
- timeline and scope constraints
- solo vs team context

Summarize the brief before moving on.

### 3. Generate or refine concepts

If the user is early-stage, generate 3 distinct concepts that vary by:

- core verb
- fantasy
- scope
- risk profile

For each concept, keep it short:

- title
- elevator pitch
- core verb
- unique hook
- why it could work
- biggest risk

Then help the user pick or combine directions.

### 4. Define loop and pillars

Once a concept is selected, help define:

- moment-to-moment action feel
- short gameplay loop
- session loop
- longer-term progression loop
- pillars and anti-pillars

Pillars should guide tradeoffs. Anti-pillars should prevent scope creep.

### 5. Scope it honestly

Help distinguish:

- MVP, the smallest testable version
- likely full version
- technical risks
- content risks
- scope cuts if time runs short

Be blunt when the scope is unrealistic.

## Formalization

If the user wants a written artifact, create a concise concept note or game concept doc in the workspace. Good default path:

- `projects/<game-name>/game-concept.md`

A good concept doc should include:

- pitch
- fantasy and hook
- target audience
- pillars and anti-pillars
- core loop
- MVP
- risks
- next design steps

## OpenClaw Adaptation Notes

The upstream CCGS material references Claude-specific slash commands, question UIs, director gates, and task orchestration. In OpenClaw, adapt those ideas rather than reproducing them mechanically.

Translate them like this:

- slash-command flow -> conversational guidance or native OpenClaw skill usage
- director reviews -> concise design review sections when useful
- structured prompts -> short interactive question sequences
- template-driven outputs -> workspace notes when the user wants files

## Good Defaults

Prefer these defaults unless the user says otherwise:

- solo or small-team assumptions
- one clear concept over five sprawling ideas
- honest scope control over ambition theater
- small written artifacts over giant framework dumps

## When to Push Back

Say so directly if:

- the idea is too broad for the stated timeline
- the hook is unclear
- the game lacks a satisfying core loop
- the MVP is not actually minimal

Kind but direct beats vague encouragement.
