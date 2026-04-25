#!/bin/zsh
set -euo pipefail

cd /Users/kansayvue/.openclaw/workspace

site_root="capitoltrades-site"
legacy_root="deploy/capitoltrades"

mkdir -p "$site_root/assets" "$legacy_root"

cp reports/capitoltrades/report.html "$site_root/report.html"
cp reports/capitoltrades/report.html "$legacy_root/index.html"
cp reports/capitoltrades/top5_activity.svg "$site_root/assets/top5_activity.svg"
cp reports/capitoltrades/top5_volume_score.svg "$site_root/assets/top5_volume_score.svg"
cp reports/capitoltrades/top5_activity.svg "$site_root/top5_activity.svg"
cp reports/capitoltrades/top5_volume_score.svg "$site_root/top5_volume_score.svg"
cp reports/capitoltrades/top5_activity.svg "$legacy_root/top5_activity.svg"
cp reports/capitoltrades/top5_volume_score.svg "$legacy_root/top5_volume_score.svg"

echo "Cloudflare Pages site refreshed at $site_root"
echo "Legacy deploy folder refreshed at $legacy_root"

git add reports/capitoltrades/report.html reports/capitoltrades/*.svg "$site_root" "$legacy_root"

if git diff --cached --quiet; then
  echo "No report changes to commit"
  exit 0
fi

git commit -m "Update Capitol Trades daily report"
git push origin main

echo "Cloudflare Pages changes pushed to GitHub"
