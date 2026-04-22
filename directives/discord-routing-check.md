# Discord routing check

## Purpose

Quickly diagnose Discord delivery failures or odd routing behavior in this workspace.

## Trigger or use case

- Discord messages stop reaching the assistant
- Replies appear in the wrong place or collide with another agent
- A removed agent still seems to affect Discord routing
- Discord looks broken and it is tempting to assume a token or permission issue first

## Steps

1. Check current agent bindings and model overrides before debugging tokens or channel permissions
2. Confirm the intended Discord-facing agent is using a valid model mapping
3. If a stale or removed agent was previously bound to Discord, verify it is actually gone from local agent state
4. Re-test from Discord after correcting bindings or model overrides
5. Only move on to token or permission debugging if routing and model config look clean

## Edge cases

- An invalid model alias can look like a Discord outage even when the transport is fine
- A removed agent can leave behind confusing expectations about which agent owns a channel
- Live Discord-bound sessions are not the right place for unattended shell-heavy automation

## Outputs

- Confirmed routing owner for the Discord channel
- Corrected model override or agent binding when needed
- Clearer separation between Discord chat routing and automation execution

## Related links

- [[MEMORY]]
- [[directives/index]]
- [[projects/capitoltrades/overview]]
