# Obsidian Setup Reference

## Vault Location

Point Obsidian at the OpenClaw workspace root so the same files are both machine-readable and human-browseable.

Example:

- macOS default OpenClaw workspace: `~/.openclaw/workspace`
- This session's workspace: `/Users/kansayvue/.openclaw/workspace`

Use Obsidian **Open folder as vault** and choose the workspace root.

## Recommended Core Plugins

Enable these built-in plugins when helpful:

- Backlinks
- Graph view
- Daily notes
- Templates
- Canvas
- Outgoing links

These make the workspace easier to browse as a graph and easier to maintain as a note system.

## Recommended Community Plugins

Install only what you will actually use.

### Dataview
Use for simple dashboards and recent-memory views.

Examples:

```dataview
LIST FROM "memory" SORT file.name DESC LIMIT 7
```

```dataview
TABLE file.mtime AS "Updated"
FROM "projects"
SORT file.mtime DESC
LIMIT 20
```

### Templater
Use for repeatable note creation, especially daily memory notes.

Example daily note template:

```markdown
# <% tp.date.now("YYYY-MM-DD") %>

## Session log

## Decisions

## Follow-ups

## Things worth remembering
```

### Optional plugins

- Calendar, for easier daily-note browsing
- Tasks, if the user wants action-oriented memory notes
- Metadata Menu, if the user wants more structured frontmatter

## Obsidian Settings Suggestions

Use settings that keep the graph readable and the file structure predictable:

- Daily notes folder: `memory/`
- Default location for new notes: same folder as current file, or an inbox folder if you maintain one
- Show backlinks in document
- Turn on attachment subfolder if you expect many screenshots or exports

## Graph Conventions

Prefer wiki-links when referencing key files or concepts:

- `[[MEMORY]]`
- `[[USER]]`
- `[[HEARTBEAT]]`
- `[[projects/my-project/overview]]`

Use tags sparingly. Good examples:

- `#memory`
- `#project`
- `#decision`
- `#directive`

Too many tags make the graph noisy.

## Suggested Top-Level Dashboards

These files are often useful in the workspace:

- `second-brain/README.md` as an index
- `projects/index.md` as a project map
- `directives/index.md` as a workflow map

Keep them short and link outward instead of duplicating content.
