# Capitol Trades publish

## Purpose

Publish the daily Capitol Trades report to the Cloudflare Pages site and keep the legacy deploy copy in sync.

## Trigger or use case

- After regenerating `reports/capitoltrades/report.html`
- After refreshing `top5_activity.svg` or `top5_volume_score.svg`
- When verifying the daily 5am CT automation

## Steps

1. Regenerate the report and SVG assets under `reports/capitoltrades/`
2. Run `reports/capitoltrades/publish_cloudflare.sh`
3. Confirm it updates `capitoltrades-site`
4. Confirm it also refreshes `deploy/capitoltrades` as a legacy copy
5. Verify the script commits and pushes to `main`
6. Check the live site at <https://capitoltrades-report.pages.dev>

## Edge cases

- If automation prompts for exec approval, the run is probably using a live Discord-bound session instead of an isolated cron session
- `capitoltrades-site` is the canonical Cloudflare Pages root, not `deploy/capitoltrades`
- If no files changed, the script exits without a commit
- Publish success does not guarantee downstream Discord delivery, which may need separate handling or verification
- Immediate Cloudflare Pages checks can briefly show the prior day while edge propagation catches up

## Outputs

- Updated `capitoltrades-site`
- Updated `deploy/capitoltrades`
- Git commit on `main`
- Refreshed live site
- Successful unattended 5am CT scheduled runs when executed from an isolated cron session

## Related links

- [[projects/capitoltrades/overview]]
- [[directives/index]]
- [[MEMORY]]
