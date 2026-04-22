# Role SDK Documentation Index

This folder contains planning and architecture documentation for the SDK with a v1-first `role-node` baseline and experimental `role-serverpod` support.

## Backend support policy (v1)

- `role-node` is the primary supported backend for v1 releases.
- `role-serverpod` is documented as experimental until parity and integration coverage are complete and a stable support declaration is made.
- Provider documentation should reflect current maturity; avoid positioning both providers as equally supported before stability criteria are met.

## Recommended reading order

1. `docs/ARCHITECTURE.md`
2. `docs/API_SURFACE_SPEC.md`
3. `docs/CONTRACT_MATRIX.md`
4. `docs/PROVIDER_MAPPING_SPEC.md`
5. `docs/IMPLEMENTATION_PLAN.md`
6. `docs/TESTING_STRATEGY.md`
7. `docs/VERSION_COMPATIBILITY_POLICY.md`
8. `docs/OPEN_QUESTIONS.md` (decision log)

## Document ownership

- Architecture + API surface: SDK maintainers
- Contract matrix + provider mapping: SDK + backend maintainers jointly
- Testing strategy + compatibility policy: SDK maintainers

## Definition of documentation-ready

A planning change is documentation-ready only when all are updated together:

- API shape (`docs/API_SURFACE_SPEC.md`)
- backend parity status (`docs/CONTRACT_MATRIX.md`)
- mapping details (`docs/PROVIDER_MAPPING_SPEC.md`)
- compatibility and release impact (`docs/VERSION_COMPATIBILITY_POLICY.md`)
- test impact (`docs/TESTING_STRATEGY.md`)
