#!/usr/bin/env bash
set -euo pipefail

# Publication blocker scan for common leak shapes.
# Keep deployment-specific names in a private local denylist, not in this public repo.
patterns='(/Users/|/home/|/srv/[^ /]+/private|[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}|(github_pat|ghp|gho|ghu|ghs)_[A-Za-z0-9_]+|sk-[A-Za-z0-9_-]{20,}|AKIA[0-9A-Z]{16}|Generated with|Co-Authored-By|Co-authored-by|AI-generated)'

if grep -RInE "$patterns" --exclude-dir=.git --exclude=publication-scan.sh .; then
  echo "Publication scan found potential public-release blockers." >&2
  exit 1
fi
