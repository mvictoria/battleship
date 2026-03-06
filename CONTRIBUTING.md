# Contributing to Battleship

Thanks for contributing. Please follow these guidelines so that contributions (including those from Cursor agents) stay consistent and reviewable.

## Requirements

- **Node.js 24** – The project requires Node.js 24 (see `package.json` `engines` and `.nvmrc`). Use `nvm use` (or your version manager) in the repo root to switch to the correct version.

## Tooling and layout

- **Tests:** Vitest with `@vitest/coverage-v8`. Run tests: `npm run test` (watch) or `npm run test:coverage` (single run with coverage).
- **Lint:** ESLint (TypeScript/React) via `eslint.config.js`. Run: `npm run lint`.
- **Build:** `npm run build` (TypeScript + Vite).
- **Layout:** App code under `src/`; tests are colocated (e.g. `src/App.test.tsx`) and shared setup in `src/test/`.

## Workflow

### Branching

- **Do not work on `main`.** All feature work must happen on a branch created from `main`:
  ```bash
  git checkout main
  git pull
  git checkout -b feature/short-description
  ```
- Open a **Pull Request** for every change; nothing should be merged by pushing directly to `main`.

### Pull request content

Every PR must include:

| Section | Required content |
|--------|-------------------|
| **Description** | What was done and why |
| **Feature/issue** | Link or reference to the feature or issue |
| **How it was solved** | Approach and implementation details |
| **Other methods considered** | Alternatives considered and why they were not chosen |

## CI

GitHub Actions runs on every push and pull request to `main`. The workflow runs **lint**, **test** (with coverage), and **build** in that order (fail-fast). If you push again on the same branch before the run finishes, the previous run is cancelled.

**Run the same checks locally:**

```bash
npm run lint
npm run test:coverage
npm run build
```

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
