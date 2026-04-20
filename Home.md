# OpenClaw Memory Home

Welcome to the workspace vault.

## Start here

- [[MEMORY]]
- [[projects/index]]
- [[second-brain/README]]
- [[directives/index]]
- [[HEARTBEAT]]
- [[memory/2026-04-19]]

## What this vault is

This vault is both:

- the live OpenClaw workspace
- the Obsidian knowledge graph for long-term memory and project context

## Recommended views

### Dashboard

Open these first:

- [[MEMORY]] for curated durable context
- [[memory/2026-04-19]] for today's raw notes
- [[projects/index]] for project-level notes

### Graph anchors

These notes should become the main hubs in Graph View:

- [[Home]]
- [[MEMORY]]
- [[projects/index]]
- [[second-brain/README]]
- [[directives/index]]

## Recent memory

```dataview
LIST FROM "memory" SORT file.name DESC LIMIT 7
```

## Recent projects

```dataview
TABLE file.mtime AS Updated
FROM "projects"
SORT file.mtime DESC
LIMIT 10
```
