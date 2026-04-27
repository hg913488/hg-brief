# CLAUDE.md — HG Brief

## Project Overview

Himank Goel's personal daily morning brief — architecture news, sports, business intel, design updates. Claude regenerates `index.html` daily, then pushes to deploy.

**Live URL:** https://hg-brief.vercel.app
**GitHub:** https://github.com/hg913488/hg-brief — this is a standalone repo with its own `.git`, separate from the parent `himank-portfolio` workspace. Vercel auto-deploys on every push to `main`.

## Stack

- Pure static HTML — no build step, no framework
- GoelStudio brand (Syne + Space Grotesk, brass gold accent)
- Vercel auto-deploy on `git push`

## Daily Workflow

Trigger phrases: `brief me`, `morning brief`, `what's happening`, `run my brief`

1. Run 3 web searches (sports/architecture, business/AEC, newsletters)
2. Generate HTML → `index.html` (you are already in the project root)
3. Push — always from inside `/Users/himankgoel/Documents/CLAUDE/hg-brief/`, never from the parent workspace:
```bash
git add index.html && git commit -m "brief: Apr 27" && git push
```
**NEVER push from `/Users/himankgoel/Documents/CLAUDE` — that points to the `himank-portfolio` repo.**

Read brief preferences from memory before generating:
`~/.claude/projects/-Users-himankgoel-Documents-CLAUDE/memory/user_hg_brief.md`

## Brief Structure

| Section | Covers |
|---|---|
| **Your World** | Leafs, Blue Jays, architecture firms, personal interests |
| **Business Intel** | Toronto/Vancouver zoning, AI tools, ArchiCAD, AEC trends |
| **Newsletter Recap** | Dezeen, ArchDaily, Architect Magazine, The Verge, Wired |

Collapsible sections. Bold headline → expand for summary + source link.

## Design System

- **Fonts:** Syne (headlines) + Space Grotesk (body)
- **Background:** `#F7F5F2`
- **Accent:** `#C9A96E`
- **Text:** `#111111`
- **Logo:** `logo.png` (HG monogram)

## Output Rules

- Single `index.html`, all styles inline or in `<style>` block
- Mobile-first responsive
- Collapsible via `<details>`/`<summary>` or JS toggle
- Always include today's date in the header

## Hard Rules

- Never delete files without explicit approval
- Do not restructure the HTML layout without instruction
- Always push from inside `/Users/himankgoel/Documents/CLAUDE/hg-brief/` — never from the parent directory
- This repo is `github.com/hg913488/hg-brief` only — never push to `himank-portfolio`
