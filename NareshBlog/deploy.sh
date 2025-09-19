#!/bin/bash

echo "🚀 Building and deploying blog..."

# Build the site
hugo --cleanDestinationDir --minify

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Site built successfully"

    # Deploy to GitHub Pages
    cd public
    git add .

    # Ask for commit message or use default
    echo "Enter commit message (or press Enter for default):"
    read commit_msg

    if [ -z "$commit_msg" ]; then
        commit_msg="Update blog: $(date '+%Y-%m-%d %H:%M')"
    fi

    git commit -m "$commit_msg"
    git push origin main

    echo "✅ Blog deployed successfully!"
    echo "🌐 Your blog will be live at: https://msg4naresh.github.io/"

    cd ..
else
    echo "❌ Build failed. Please check for errors."
fi