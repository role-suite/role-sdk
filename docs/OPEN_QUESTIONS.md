# Role SDK Decision Log

This file tracks architecture and API decisions that were previously open questions.

## Q1) Token persistence strategy

- **Decision**: Use in-memory token storage by default and support an optional user-provided `TokenStore` interface.
- **v1 non-goal**: No built-in persistent adapters (for example `localStorage`) in the core package.
- **Impact**: secure-by-default behavior, runtime portability, and extensibility for app-specific persistence.

## Q2) Date representation in public models

- **Decision**: Public SDK models expose date/time values as ISO strings only in v1.
- **Rule**: SDK does not return `Date` instances in public types.
- **Impact**: stable serialization across Node/browser/edge and reduced type ambiguity.

## Q3) Workspace-scoped API final shape

- **Decision**: Keep `inWorkspace(workspaceId)` in v1 for high-traffic modules (`collections`, `environments`, `runs`, `importExport`).
- **Rule**: Scoped clients remove repeated `workspaceId` but keep behavior and return types aligned with root clients.
- **Impact**: improved ergonomics without excessive API surface growth.

## Q4) Capability contract granularity

- **Decision**: Use nested method-group or method-level capability flags (not module-level only).
- **Rule**: Non-parity operations must have explicit capability flags and deterministic disabled behavior.
- **Impact**: precise feature gating and predictable runtime checks.

## Q5) Serverpod error-to-SDK mapping source

- **Decision**: Maintain an explicit SDK mapping table keyed by stable backend error identifiers.
- **Rule**: String matching is fallback-only; unknown mappings resolve to `RoleUnknownError` with metadata.
- **Impact**: deterministic typed errors with better drift resistance.

## Q6) Transport defaults

- **Decision**: Default timeout is `30000` ms; retries enabled only for safe/idempotent operations.
- **Rule**: Default retry policy is `maxAttempts: 3` with exponential backoff and jitter.
- **Impact**: balanced reliability while minimizing accidental replay risk.

## Q7) Package strategy

- **Decision**: Keep a single package through v1.
- **Rule**: Maintain clean internal boundaries so `sdk-core` extraction remains possible post-v1.
- **Impact**: lower release complexity during early delivery.

## Q8) Contract test fixture source of truth

- **Decision**: Use curated SDK fixtures as canonical test inputs, periodically refreshed from backend snapshots/contracts.
- **Rule**: Mapping and parity changes must update related fixtures in the same PR.
- **Impact**: stable CI behavior with explicit drift management.

## Decision protocol

- Record owner and decision date in PR notes for each related change.
- Reflect each decision in affected docs listed in `docs/README.md`.
