# OpenClaw Memory Home

Welcome to the workspace vault.

> [!info] What this is
> This vault is both the live OpenClaw workspace and the Obsidian knowledge graph for long-term memory, projects, and directives.

## Quick links

- [[MEMORY]]
- [[projects/index]]
- [[projects/capitoltrades/overview]]
- [[second-brain/README]]
- [[directives/index]]
- [[directives/capitoltrades-publish]]
- [[directives/discord-routing-check]]
- [[directives/memory-graph-conventions]]
- [[HEARTBEAT]]
- [[memory/2026-04-22-heartbeat-log]]

## Main hubs

These notes should become the main anchors in Graph View:

- [[Home]]
- [[MEMORY]]
- [[projects/index]]
- [[projects/capitoltrades/overview]]
- [[second-brain/README]]
- [[directives/index]]
- [[directives/capitoltrades-publish]]
- [[directives/discord-routing-check]]
- [[directives/memory-graph-conventions]]

## Dashboard

### Recent memory notes

```dataview
TABLE file.link AS "Note", file.mtime AS "Updated"
FROM "memory"
SORT file.name DESC
LIMIT 10
```

### Recent project notes

```dataview
TABLE file.link AS "Project note", file.folder AS "Folder", file.mtime AS "Updated"
FROM "projects"
WHERE file.name != "index"
SORT file.mtime DESC
LIMIT 12
```

### Directives and workflows

```dataview
TABLE file.link AS "Directive", file.mtime AS "Updated"
FROM "directives"
WHERE file.name != "index"
SORT file.mtime DESC
LIMIT 12
```

### Second-brain notes

```dataview
TABLE file.link AS "Note", file.folder AS "Area", file.mtime AS "Updated"
FROM "second-brain"
WHERE file.name != "README"
SORT file.mtime DESC
LIMIT 12
```

### Vault map

```dataview
LIST FROM ""
WHERE contains(file.path, "MEMORY.md")
   OR contains(file.path, "Home.md")
   OR contains(file.path, "HEARTBEAT.md")
   OR contains(file.path, "projects/index.md")
   OR contains(file.path, "projects/capitoltrades/overview.md")
   OR contains(file.path, "directives/index.md")
   OR contains(file.path, "directives/capitoltrades-publish.md")
   OR contains(file.path, "directives/discord-routing-check.md")
   OR contains(file.path, "directives/memory-graph-conventions.md")
   OR contains(file.path, "second-brain/README.md")
SORT file.name ASC
```

### Recently touched across the vault

```dataview
TABLE file.link AS "File", file.folder AS "Folder", file.mtime AS "Updated"
FROM ""
WHERE !contains(file.path, ".git/")
SORT file.mtime DESC
LIMIT 20
```

## Suggested next steps

- Open [[MEMORY]] to review curated durable context
- Open the latest note in `memory/` for recent raw capture
- Add project notes under `projects/<name>/`
- Add evergreen notes under `second-brain/concepts/`
- Add repeatable workflows under `directives/`
