#!/usr/bin/env bash
set -euo pipefail

./tools/publication-scan.sh

# Product taxonomy guard. SVG accessibility attributes use role="img" and are intentionally excluded.
if git grep -nE '\bdoctrine\b|\bprotocols?\b|\broles?\b|role-template|role-charter|instances?' -- '*.md' '*.yml' '*.yaml' ':!assets/**' ; then
  echo "Stale terminology found. Use core/workflows/agents/examples instead." >&2
  exit 1
fi

# Avoid opaque binaries except explicitly allowed brand concept PNGs.
unexpected=$(git ls-files -z | xargs -0 file | grep -vE 'text|SVG|empty|directory|PNG image data' || true)
if [ -n "$unexpected" ]; then
  echo "$unexpected"
  echo "Unexpected binary tracked file found." >&2
  exit 1
fi

# If PNGs exist, they must be confined to brand concepts.
if git ls-files '*.png' | grep -v '^assets/brand/concepts/'; then
  echo "PNG files are only allowed under assets/brand/concepts/." >&2
  exit 1
fi
