# Capitol Trades

Daily Capitol Trades report and Cloudflare Pages publishing workflow.

## Current durable context

- Main generated report assets live under `reports/capitoltrades/`
- The Cloudflare Pages site serves from `capitoltrades-site`
- `deploy/capitoltrades` is a legacy sync copy, not the canonical live site root
- `publish_cloudflare.sh` copies the latest report and charts into both destinations, then commits and pushes to `main`
- Unattended runs should use isolated cron sessions so shell exec can proceed without live Discord-session approval prompts
- The scheduled 5am CT run successfully updated and published the report on 2026-04-23 without an approval interruption
- The scheduled 5am CT run also completed successfully on 2026-04-25, but the intended Discord delivery was not sent automatically

## Outputs

- Mobile site: <https://capitoltrades-report.pages.dev>
- Main report file: `reports/capitoltrades/report.html`
- Charts: `reports/capitoltrades/top5_activity.svg`, `reports/capitoltrades/top5_volume_score.svg`

## Related links

- [[projects/index]]
- [[MEMORY]]
- [[directives/index]]
- [[directives/capitoltrades-publish]]
