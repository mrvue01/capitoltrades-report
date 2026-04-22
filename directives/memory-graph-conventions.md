# Memory graph conventions

## Purpose

Keep the workspace usable as both a live OpenClaw workspace and an Obsidian-friendly memory graph.

## Trigger or use case

- Creating new notes or folders
- Deciding whether something belongs in daily memory or long-term memory
- Organizing durable context after a work session
- Pruning or restructuring notes during heartbeat maintenance

## Steps

1. Put raw session capture in `memory/YYYY-MM-DD.md`
2. Keep `MEMORY.md` curated, durable, and high signal
3. Move larger or more specific topics into dedicated notes under `projects/`, `second-brain/`, or `directives/`
4. Prefer links between hub notes instead of duplicating the same detail in multiple places
5. Use `Home.md`, `projects/index.md`, `second-brain/README.md`, and `directives/index.md` as graph anchors
6. During heartbeat maintenance, promote durable patterns out of daily notes and prune stale links from hub notes

## Edge cases

- If a fact is specific to one workflow, keep the detail in that project or directive note and only link from `MEMORY.md`
- If a note is just a raw transcript or session dump, do not promote it directly into long-term memory
- Avoid bloating `MEMORY.md` with operational detail that belongs in project or directive notes

## Outputs

- Cleaner separation between raw notes, durable memory, project context, and reusable workflows
- Better graph navigation in Obsidian
- Less duplication across memory files

## Related links

- [[MEMORY]]
- [[Home]]
- [[projects/index]]
- [[second-brain/README]]
- [[directives/index]]
