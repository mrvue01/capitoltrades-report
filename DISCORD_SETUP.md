# Discord Setup

## Updated local OpenClaw config

Updated `~/.openclaw/openclaw.json` to:

- enable Discord
- use the current bot token
- allowlist guild `1495586875266695178`
- allow Discord user `370188775705280523`

## Recommended channels

Create an `OpenClaw` category with these text channels:

1. `general-chat`
2. `code-tasks`
3. `research`
4. `automations`
5. `alerts`
6. `sandbox`

## OAuth2 invite

- Minimum runtime permissions: `2147601472`
- Setup permissions (includes Manage Channels so the bot can create channels): `2147601488`

Minimum invite:

`https://discord.com/oauth2/authorize?client_id=1495583260103934012&scope=bot%20applications.commands&permissions=2147601472&guild_id=1495586875266695178&disable_guild_select=true`

Setup invite:

`https://discord.com/oauth2/authorize?client_id=1495583260103934012&scope=bot%20applications.commands&permissions=2147601488&guild_id=1495586875266695178&disable_guild_select=true`

## Current blocker

The bot account is valid, but it is not yet in guild `1495586875266695178`.
Discord API returned `Unknown Guild` / `Missing Access`, so channel creation has to wait until after authorization.
