# Battleship

A customizable battleship game built with React and TypeScript. The app currently provides a minimal frontend; full game logic (boards, ships, turns, replay, optional AI) is planned and described in [architecture.md](architecture.md).

## Requirements

- **Node.js 24** – Use `nvm use` in the repo root (or your version manager) to match the version in [.nvmrc](.nvmrc).

## Quick start

```bash
git clone https://github.com/mvictoria/battleship.git
cd battleship
nvm use          # or fnm use / volta pin
npm install
npm run dev
```

Open [http://localhost:5173](http://localhost:5173) in your browser.

## Scripts

| Command | Description |
|--------|-------------|
| `npm run dev` | Start dev server (Vite) |
| `npm run build` | Type-check and build for production |
| `npm run preview` | Preview production build locally |
| `npm run lint` | Run ESLint |
| `npm run test` | Run tests in watch mode |
| `npm run test:coverage` | Run tests once with coverage report |

## Project structure

- **`src/`** – React app and colocated tests (e.g. `App.tsx`, `App.test.tsx`); shared test setup in `src/test/`.
- **`docs/`** – Design decisions and other documentation.
- **`architecture.md`** – Target game design (modules, classes, behavior); may be implemented in TypeScript or a separate backend (see [docs/design-decisions.md](docs/design-decisions.md)).

## Documentation

- [CONTRIBUTING.md](CONTRIBUTING.md) – How to contribute, branch, open PRs, and run lint/tests locally.
- [architecture.md](architecture.md) – Game architecture and module design.
- [docs/design-decisions.md](docs/design-decisions.md) – Technology and structure choices (e.g. React, TypeScript).

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) before opening a PR. All changes go through pull requests; tests and lint must pass (see CI in CONTRIBUTING).
