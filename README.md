# HG Brief

Personal daily brief for Himank Goel — architecture, sports, business intel, and design news. Built with GoelStudio branding.

**Live URL:** https://hg-brief.vercel.app
**GitHub:** https://github.com/hg913488/hg-brief

---

## Daily Workflow

1. Open Claude Code in `/Users/himankgoel/Documents/CLAUDE`
2. Say **"brief me"** — Claude runs 3 web searches and generates the HTML
3. Push to deploy:

```bash
cd /Users/himankgoel/Documents/CLAUDE/hg-brief
git add . && git commit -m "brief: Mar 18" && git push
```

Vercel auto-deploys in ~30 seconds. Same URL every day.

---

## How the Brief Works

Claude searches three categories and outputs structured HTML:

| Section | What it covers |
|---|---|
| **Your World** | Leafs, Blue Jays, top architecture firms, personal interests |
| **Business Intel** | Toronto/Vancouver zoning, AI tools, ArchiCAD, AEC trends |
| **Newsletter Recap** | Dezeen, ArchDaily, Architect Magazine, The Verge, Wired, and others |

Each section is collapsible. Each item shows a bold headline — tap/click to expand the summary and source link.

---

## Trigger Phrases

Any of these kick off a new brief:

- `brief me`
- `morning brief`
- `what's happening`
- `run my brief`

---

## Commands

| Say this | What happens |
|---|---|
| `brief me` | Runs all 3 searches, generates today's brief |
| `dig into [topic]` | Goes deeper on any item from the current brief |
| `update my brief setup` | Claude walks you through updating sources, keywords, or interests |
| `add [source/topic/team]` | Adds something new to the brief config |
| `skip [topic/source] going forward` | Removes something from the brief |

---

## Updating Preferences

Brief preferences (sources, keywords, interests) are stored in Claude's memory at:

```
~/.claude/projects/-Users-himankgoel-Documents-CLAUDE/memory/user_hg_brief.md
```

To update: say **"update my brief setup"** in Claude and it will walk you through changes section by section, then save them.

---

## File Structure

```
hg-brief/
├── index.html       ← The brief (regenerated daily by Claude)
├── logo.png         ← HG monogram (GoelStudio brand asset)
├── vercel.json      ← Vercel static deploy config
├── .gitignore
└── README.md        ← This file
```

---

## Design System

Follows GoelStudio brand standards:

- **Fonts:** Syne (display/headlines) + Space Grotesk (body)
- **Background:** Warm off-white `#F7F5F2`
- **Accent:** Brass gold `#C9A96E`
- **Text:** Near-black `#111111`
- **Logo:** HG monogram (circle, gold + white)

---

## Future Upgrades (Optional)

- **Auto-push via GitHub token** — Claude pushes directly, no terminal step needed
- **Custom domain** — `brief.goelstudio.com` via Vercel dashboard → Domains
- **Auto-refresh** — Serverless function so the page always shows today's news on load
