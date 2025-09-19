# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Hugo static site blog repository using the PaperMod theme. The main blog content is located in the `NareshBlog/` directory, which contains a complete Hugo site structure.

## Repository Structure

- `NareshBlog/` - Main Hugo site directory
  - `content/posts/` - Blog post markdown files
  - `themes/PaperMod/` - Git submodule for the PaperMod theme
  - `public/` - Git submodule pointing to GitHub Pages repository (msg4naresh.github.io)
  - `hugo.toml` - Main Hugo configuration file
  - `static/`, `layouts/`, `data/`, `assets/` - Standard Hugo directories

## Key Configuration

- **Site URL**: https://msg4naresh.github.io/
- **Theme**: PaperMod (included as git submodule)
- **Language**: English (en-us)
- **Title**: Naresh Blog

## Common Development Commands

All Hugo commands should be run from the `NareshBlog/` directory:

```bash
cd NareshBlog/
```

### Development Server
```bash
hugo server
# or with drafts
hugo server -D
```

### Build Site
```bash
hugo
# or for production with minification
hugo --minify
```

### Create New Post
```bash
hugo new posts/post-name.md
```

### Clean Build
```bash
hugo --cleanDestinationDir
```

## Git Submodules

The repository uses git submodules for:
1. **PaperMod Theme** (`themes/PaperMod/`)
2. **GitHub Pages Deployment** (`public/` directory)

When cloning or updating:
```bash
git submodule update --init --recursive
```

## Content Management

- Blog posts are written in Markdown format in `content/posts/`
- Front matter format uses TOML with fields like `title`, `date`, `draft`
- The PaperMod theme supports features like cover images, tags, categories, and social sharing

## Deployment

The site is deployed to GitHub Pages via the `public/` directory which is a git submodule pointing to the `msg4naresh.github.io` repository. After building with `hugo`, the generated files in `public/` should be committed and pushed to deploy updates.

## Theme Customization

The PaperMod theme documentation is available at: https://github.com/adityatelange/hugo-PaperMod/wiki

Theme configuration is handled through the `hugo.toml` file and any custom layouts can be added to the `layouts/` directory to override theme defaults.