#!/bin/bash
echo "🚀 Quick deploying blog..."
hugo --cleanDestinationDir --minify && cd public && git add . && git commit -m "Update blog: $(date '+%Y-%m-%d %H:%M')" && git push origin main && echo "✅ Deployed to https://msg4naresh.github.io/"