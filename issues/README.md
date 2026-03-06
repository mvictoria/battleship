# Issues (local copy)

This folder holds a **local copy** of GitHub issues for the repo. Use it to work from issue text offline; close issues by merging PRs on GitHub (e.g. “Fixes #123” in the PR).

## Setup

1. Install [GitHub CLI](https://cli.github.com/) and log in:
   ```bash
   gh auth login -h github.com
   ```
2. From the repo root, run:
   ```bash
   ./scripts/pull-issues.sh [state]
   ```
   `state` is `open` (default), `closed`, or `all`.

Issue bodies are written as `issues/<number>.md`. The contents of this folder (except this README and `.gitignore`) are ignored by git.
