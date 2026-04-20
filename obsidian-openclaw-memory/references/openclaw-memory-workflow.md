# OpenClaw Memory Workflow Reference

## Core Principle

OpenClaw does not retain memory automatically between sessions. It regains continuity by reading files from the workspace and by using explicit memory retrieval tools.

That means memory quality depends on:

1. What gets written down
2. Where it gets written
3. How consistently it gets curated

## Recommended Memory Layers

### 1. Daily capture
Use `memory/YYYY-MM-DD.md` for raw notes.

Put these here:

- session summaries
- decisions made today
- blockers
- promised follow-ups
- facts the assistant should not lose immediately

This layer should be quick and cheap to update.

### 2. Long-term curated memory
Use `MEMORY.md` for durable, distilled context.

Put these here:

- stable preferences
- recurring projects
- important personal context that is safe to persist
- lessons learned
- important decisions that still matter weeks later

Do not dump raw logs into `MEMORY.md`.

### 3. Structured knowledge base
Use folders like `second-brain/`, `projects/`, and `directives/` for knowledge that deserves its own note.

Examples:

- `projects/home-lab/overview.md`
- `projects/openclaw-bot/roadmap.md`
- `directives/publish-skill.md`
- `second-brain/concepts/memory-architecture.md`

## Good Capture Pattern

When something matters:

- write the raw fact to today's note
- if it is durable, also summarize it into `MEMORY.md`
- if it is large or project-specific, create a dedicated note and link to it

## Heartbeat Maintenance Pattern

Use `HEARTBEAT.md` for periodic cleanup and distillation, not for huge instructions.

Good heartbeat tasks:

- review the last 2 to 3 daily notes
- promote lasting decisions into `MEMORY.md`
- prune stale memory entries
- refresh project indexes

Bad heartbeat tasks:

- giant policy manuals
- large checklists that never change
- data that belongs in a dedicated note

## Recommended Linking Pattern

Link memory files together so Obsidian graph edges are meaningful.

Examples:

- Daily note links to `[[MEMORY]]` when promoting a durable fact
- Project notes link to related directives and concept docs
- `MEMORY.md` links to canonical project notes instead of duplicating long details

## Retrieval Pattern

When answering questions about prior decisions or preferences, the agent should:

1. search memory first
2. read only the relevant files or excerpts
3. answer with enough context to be useful

This keeps context usage small and reduces hallucinated recall.

## Privacy Pattern

Treat `MEMORY.md` as more sensitive than general notes.

In shared or group contexts:

- avoid exposing private personal context by default
- prefer project notes or neutral shared notes when possible
- keep especially sensitive details out of broad shared files
