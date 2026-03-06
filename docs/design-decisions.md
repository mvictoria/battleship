# Design decisions

This document records significant technology and structure choices for the project.

## UI: React and TypeScript

**Decision:** The frontend is built with **React** and **TypeScript**.

**Rationale:**
- React is widely used, has strong tooling and ecosystem, and suits interactive UIs (e.g. boards, turns, replay).
- TypeScript provides static typing, better editor support, and clearer contracts for game state and components.

**Implications:**
- All UI code lives under a standard TypeScript/React folder structure (see [README](../README.md) and [CONTRIBUTING](../CONTRIBUTING.md)).
- New UI code must be in TypeScript (`.ts`/`.tsx`); the project enforces TS standards for structure and typing.
- Game logic may live in the frontend (TypeScript) or in a separate backend (e.g. Python per `architecture.md`); integration approach TBD.

**Date:** 2026-03-06
