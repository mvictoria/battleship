#!/usr/bin/env bash
# Pull all GitHub issues into the issues/ folder as markdown.
# Requires: gh CLI, authenticated (gh auth login).
# Usage: ./scripts/pull-issues.sh [state]
#   state: open (default), closed, or all

set -e
REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ISSUES_DIR="$REPO_ROOT/issues"
STATE="${1:-open}"

mkdir -p "$ISSUES_DIR"
cd "$REPO_ROOT"

if [ ! -x "$(command -v gh)" ]; then
  echo "Error: GitHub CLI (gh) is not installed. Install it and run: gh auth login"
  exit 1
fi

echo "Fetching $STATE issues..."
for num in $(gh issue list --state "$STATE" --json number --limit 500 -q '.[].number'); do
  out="$ISSUES_DIR/${num}.md"
  echo "  #$num -> $out"
  gh issue view "$num" > "$out" 2>/dev/null || true
done

echo "Done. Issues are in $ISSUES_DIR (contents ignored by git)."
