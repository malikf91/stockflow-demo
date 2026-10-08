#!/bin/sh
# Commit and push any mockup changes; GitHub Actions then redeploys the site.
cd "$(dirname "$0")" || exit 1
git add -A
git diff --cached --quiet && { echo "No changes to publish."; exit 0; }
git commit -q -m "Update mockups $(date '+%Y-%m-%d %H:%M')" && git push -q origin main && echo "Published. Site updates in about a minute."
