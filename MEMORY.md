# MEMORY.md

Curated long-term memory for this OpenClaw workspace.

## How to use this file

- Keep this high signal and durable
- Put raw session notes in `memory/YYYY-MM-DD.md`
- Link out to dedicated notes for larger topics
- Review and prune periodically via `[[HEARTBEAT]]`

## Current durable context

- The assistant name is Jarvis
- This workspace is being shaped into an Obsidian-friendly OpenClaw memory graph
- The OpenClaw workspace root is the Obsidian vault
- Long-term durable context belongs in [[MEMORY]]
- Daily raw capture belongs in `memory/YYYY-MM-DD.md`
- Larger topics should live in dedicated notes under `projects/`, `second-brain/`, and `directives/`
- The packaged skill lives at `dist/obsidian-openclaw-memory.skill`
- The skill source lives at `obsidian-openclaw-memory/`
- If Discord routing breaks, check agent bindings and model overrides before assuming token or permission issues
- Unattended automations that need shell exec should run in isolated cron sessions, not live Discord-bound sessions, to avoid approval prompts
- The Capitol Trades Cloudflare Pages site serves `capitoltrades-site`; `deploy/capitoltrades` is only a legacy sync copy

## Canonical links

- [[Home]]
- [[HEARTBEAT]]
- [[USER]]
- [[IDENTITY]]
- [[projects/index]]
- [[projects/capitoltrades/overview]]
- [[second-brain/README]]
- [[directives/index]]
