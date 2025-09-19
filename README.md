# Naresh Blog

A personal blog built with Hugo and the PaperMod theme.

## Prerequisites

- [Hugo](https://gohugo.io/installation/) (Extended version recommended)
- Git

## Getting Started

### 1. Clone the Repository

```bash
git clone <repository-url>
cd blog
```

### 2. Initialize Git Submodules

This project uses git submodules for the theme and deployment:

```bash
git submodule update --init --recursive
```

### 3. Run the Development Server

Navigate to the blog directory and start the Hugo development server:

```bash
cd NareshBlog
hugo server
```

The site will be available at: **http://localhost:1313/**

The development server will automatically reload when you make changes to content or configuration files.

## Common Commands

All commands should be run from the `NareshBlog/` directory:

### Development
```bash
# Start development server
hugo server

# Start development server with draft posts
hugo server -D

# Start development server with future-dated posts
hugo server -F
```

### Content Management
```bash
# Create a new blog post
hugo new posts/my-new-post.md

# Create a new page
hugo new about.md
```

### Building
```bash
# Build the site for production
hugo

# Build with minification
hugo --minify

# Clean build (removes unused files)
hugo --cleanDestinationDir
```

## Project Structure

```
NareshBlog/
├── content/           # Blog content (Markdown files)
│   └── posts/        # Blog posts
├── themes/           # Hugo themes
│   └── PaperMod/     # PaperMod theme (git submodule)
├── public/           # Generated site (git submodule for GitHub Pages)
├── static/           # Static assets
├── layouts/          # Custom layout templates
├── data/             # Data files
├── assets/           # Asset files for processing
└── hugo.toml         # Hugo configuration
```

## Configuration

The main configuration is in `hugo.toml`. Key settings include:

- **baseURL**: Site URL (https://msg4naresh.github.io/)
- **title**: Site title
- **theme**: PaperMod theme

## Writing Posts

Create new posts using:

```bash
hugo new posts/post-title.md
```

Posts use TOML front matter:

```toml
---
title: "Your Post Title"
date: 2023-07-18T09:45:41+05:30
draft: false
---

Your content here...
```

## Deployment

The site is configured for deployment to GitHub Pages. The `public/` directory is a git submodule pointing to the GitHub Pages repository.

1. Build the site: `hugo`
2. Navigate to public directory: `cd public`
3. Commit and push changes: `git add . && git commit -m "Update site" && git push`

## Theme Documentation

This blog uses the PaperMod theme. For advanced customization, refer to:
- [PaperMod Wiki](https://github.com/adityatelange/hugo-PaperMod/wiki)
- [Hugo Documentation](https://gohugo.io/documentation/)

## Troubleshooting

### Submodule Issues
If you encounter issues with submodules:
```bash
git submodule update --init --recursive --force
```

### Build Issues
If the site doesn't build properly:
```bash
hugo --cleanDestinationDir
```

### Theme Issues
If the theme isn't loading:
```bash
git submodule status
git submodule update --remote themes/PaperMod
```