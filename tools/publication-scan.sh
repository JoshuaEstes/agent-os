#!/usr/bin/env bash
set -euo pipefail

# Public-release blocker scan for common leak shapes.
# Deployment-specific names belong in a private denylist file, not in this repo.
patterns='(/Users/|/home/|/srv/[^ /]+/private|[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}|(github_pat|ghp|gho|ghu|ghs)_[A-Za-z0-9_]+|sk-[A-Za-z0-9_-]{20,}|AKIA[0-9A-Z]{16}|Generated with|Co-Authored-By|Co-authored-by|AI-generated)'

if grep -RInE "$patterns" --exclude-dir=.git --exclude=publication-scan.sh .; then
  echo "Publication scan found potential public-release blockers." >&2
  exit 1
fi

# Optional local/private denylist. This file must never be committed.
if [ -f .publication-denylist ]; then
  while IFS= read -r pattern; do
    [ -z "$pattern" ] && continue
    case "$pattern" in \#*) continue ;; esac
    if grep -RInE "$pattern" --exclude-dir=.git --exclude=publication-scan.sh --exclude=.publication-denylist .; then
      echo "Private denylist matched: $pattern" >&2
      exit 1
    fi
  done < .publication-denylist
fi
