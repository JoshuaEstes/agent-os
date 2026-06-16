#!/usr/bin/env bash
set -euo pipefail

./tools/publication-scan.sh

# Product taxonomy guard. SVG accessibility attributes use role="img" and are intentionally excluded.
if git grep -nE '\bdoctrine\b|\bprotocols?\b|\broles?\b|role-template|role-charter|instances?' -- '*.md' '*.yml' '*.yaml' ':!assets/**' ; then
  echo "Stale terminology found. Use core/workflows/agents/examples instead." >&2
  exit 1
fi

# Avoid opaque binaries in the repo unless deliberately allowed.
if git ls-files -z | xargs -0 file | grep -vE 'text|SVG|empty|directory' ; then
  echo "Unexpected binary tracked file found." >&2
  exit 1
fi
