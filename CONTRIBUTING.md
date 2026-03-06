# Contributing to Battleship

Thanks for contributing. Please follow these guidelines so that contributions (including those from Cursor agents) stay consistent and reviewable.

## Workflow

### Branching

- **Do not work on `main`.** All feature work must happen on a branch created from `main`:
  ```bash
  git checkout main
  git pull
  git checkout -b feature/short-description
  ```
- Open a **Pull Request** for every change; nothing should be merged by pushing directly to `main`.

### Working from issues locally

You can pull GitHub issues into the `issues/` folder and work from them locally; close issues by merging PRs (e.g. “Fixes #123” in the PR). From the repo root, run `./scripts/pull-issues.sh [open|closed|all]` (requires [GitHub CLI](https://cli.github.com/) and `gh auth login`). See `issues/README.md` for details.

### Pull request content

Every PR must include:

| Section | Required content |
|--------|-------------------|
| **Description** | What was done and why |
| **Feature/issue** | Link or reference to the feature or issue |
| **How it was solved** | Approach and implementation details |
| **Other methods considered** | Alternatives considered and why they were not chosen |

## Quality gates

Before a PR is ready for merge:

1. **Tests** – All tests must pass.
2. **Coverage** – Test coverage must be 100%.
3. **Linting** – All lint checks must pass (run the project’s linter before submitting).
4. **Documentation** – If behavior, APIs, or options change, update the relevant docs (README, architecture, docstrings, etc.).

## Tests

- Do not remove existing tests for the features you’re changing.
- If a test is wrong or no longer appropriate, **do not delete it**. Open an issue describing why the test should be modified or removed, and reference that issue in your PR. Test changes should be agreed via that process.

## For Cursor agents

Agent instructions for this repo are in **`.cursorrules`**. Agents must follow those rules, including: never working on `main`, always opening a PR with the required sections, keeping tests passing and coverage at 100%, passing lint, updating docs when functionality changes, and never removing tests without an issue requesting the change.
