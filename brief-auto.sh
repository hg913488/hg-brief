#!/bin/bash
# HG Daily Brief — automated runner
# Invoked by com.hg.brief LaunchAgent at 9 AM

# Load shell env so 'claude' binary is on PATH
source ~/.zshrc 2>/dev/null || true
source ~/.zprofile 2>/dev/null || true

# Activate security hook (restricts Claude to hg-brief/ only)
export BRIEF_AUTO=1

# Work from project root so CLAUDE.md + memory are loaded
cd /Users/himankgoel/Documents/CLAUDE

# Run the brief (non-interactive: searches web → writes HTML → git push)
~/.npm-global/bin/claude "brief me"

# Fire macOS notification
osascript -e 'display notification "Your brief is live → https://hg-brief.vercel.app" with title "Good Morning, HG! 🌅" sound name "default"'
