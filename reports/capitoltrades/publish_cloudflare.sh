#!/bin/zsh
set -euo pipefail

cd /Users/kansayvue/.openclaw/workspace

mkdir -p deploy/capitoltrades
cp reports/capitoltrades/report.html deploy/capitoltrades/index.html
cp reports/capitoltrades/*.svg deploy/capitoltrades/

echo "Cloudflare Pages deploy folder refreshed at deploy/capitoltrades"

git add reports/capitoltrades/report.html reports/capitoltrades/*.svg deploy/capitoltrades

if git diff --cached --quiet; then
  echo "No report changes to commit"
  exit 0
fi

git commit -m "Update Capitol Trades daily report"
git push origin main

echo "Cloudflare Pages changes pushed to GitHub"
