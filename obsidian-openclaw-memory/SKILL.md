---
name: obsidian-openclaw-memory
description: Build or improve an Obsidian-based memory graph for an OpenClaw workspace. Use when setting up a vault over the OpenClaw workspace, designing memory file structure, organizing MEMORY.md and daily logs, adding second-brain or project notes, defining heartbeat-based memory maintenance, or explaining how Obsidian graph links, Dataview, and optional semantic search fit into an OpenClaw memory workflow.
---

# Obsidian OpenClaw Memory

Treat the OpenClaw workspace as both an operating directory and an Obsidian vault.

Use this skill to:

- explain the memory model clearly
- shape the workspace into a useful graph
- create or improve file structure for durable memory
- add practical Obsidian setup guidance
- encourage small, maintainable memory habits instead of giant dumps

## Start Here

Read these references as needed:

- `references/file-structure.md` for the annotated workspace layout
- `references/obsidian-setup.md` for vault, plugin, graph, and dashboard setup
- `references/openclaw-memory-workflow.md` for how daily notes, curated memory, project notes, and heartbeats should work together

## Core Model

OpenClaw continuity comes from files and retrieval, not hidden persistent chat memory.

Anchor the system around these layers:

1. `memory/YYYY-MM-DD.md` for raw daily capture
2. `MEMORY.md` for curated long-term memory
3. `projects/`, `second-brain/`, and `directives/` for structured notes that deserve their own files

Prefer dedicated notes plus links over stuffing everything into one memory file.

## Recommended Workspace Structure

At minimum, preserve or create:

- `MEMORY.md`
- `memory/`
- `HEARTBEAT.md`
- `projects/`
- `directives/`
- `second-brain/`

Use `references/file-structure.md` as the canonical example.

When creating new folders or notes, keep names plain and durable. Favor stable paths so links survive.

## Obsidian Guidance

Point Obsidian at the workspace root. Then:

- enable Graph view and Backlinks
- set daily notes to `memory/`
- add Dataview for lightweight dashboards
- add Templater if repeatable note templates help

Use wiki-links for important files and concepts so Graph view becomes genuinely useful.

Examples:

- `[[MEMORY]]`
- `[[HEARTBEAT]]`
- `[[projects/openclaw-bot/overview]]`

Do not overload the graph with excessive tags or duplicate notes.

## Memory Authoring Guidance

When helping the user build memory:

- write raw, time-bound notes to today's daily file
- promote only durable facts into `MEMORY.md`
- move larger topics into dedicated project or concept notes
- link related files together instead of copying the same text everywhere

Good durable memory:

- stable preferences
- important ongoing projects
- lasting decisions
- lessons learned

Bad durable memory:

- ephemeral chatter
- full conversation dumps
- long project logs that belong in project notes

## Heartbeat Guidance

Use `HEARTBEAT.md` for compact proactive maintenance prompts.

Good examples:

- review recent daily notes
- promote durable items into `MEMORY.md`
- prune outdated long-term memory
- refresh project indexes

Keep heartbeat instructions short because they may be read often.

## Semantic Search

If the user wants richer retrieval, explain optional semantic search as a complement to the file graph, not a replacement for good note structure.

Use semantic search to find relevant notes. Use curated files and links to keep the system understandable.

If the environment includes tools or services such as QMD, show how they can index the workspace, but keep the workflow tool-agnostic when exact local tooling is uncertain.

## Deliverables

When the user asks you to build this out, prefer concrete outputs over abstract advice. That can include:

- creating missing folders or starter notes
- improving `MEMORY.md` organization
- adding an Obsidian-friendly index note
- adding templates or example dashboard notes
- tightening `HEARTBEAT.md` to support memory maintenance

## Architecture Diagram

Use `assets/architecture.png` when a visual explanation helps.
