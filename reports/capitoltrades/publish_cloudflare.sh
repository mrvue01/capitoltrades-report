#!/bin/zsh
set -euo pipefail

cd /Users/kansayvue/.openclaw/workspace
mkdir -p deploy/capitoltrades
cp reports/capitoltrades/report.html deploy/capitoltrades/index.html
cp reports/capitoltrades/*.svg deploy/capitoltrades/

echo "Cloudflare Pages deploy folder refreshed at deploy/capitoltrades"
