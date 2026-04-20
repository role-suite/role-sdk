# Role SDK Open Questions

This file tracks decisions that should be resolved before implementation reaches feature-complete state.

## Q1) Token persistence strategy

- **Question**: Should SDK ship built-in persistence adapters (`localStorage`, in-memory only, custom interface), or keep persistence fully user-provided in v1?
- **Current default**: in-memory default + optional user-provided persistence interface.
- **Impact**: affects auth DX, browser behavior, and security posture.

## Q2) Date representation in public models

- **Question**: Should public models expose dates as ISO strings only, or support `Date` parsing option?
- **Current default**: ISO string in public API.
- **Impact**: type stability and serialization portability.

## Q3) Workspace-scoped API final shape

- **Question**: keep `inWorkspace(workspaceId)` as method wrappers, or expose module-specific scoped clients only for high-traffic modules?
- **Current default**: broad scoped convenience for `collections`, `environments`, `runs`, and `importExport`.
- **Impact**: surface area size and long-term maintenance.

## Q4) Capability contract granularity

- **Question**: should capabilities be module-level only, or method-level nested flags?
- **Current default**: method-group flags.
- **Impact**: precision vs complexity.

## Q5) Serverpod error-to-SDK mapping source

- **Question**: should error code mapping rely on stable Serverpod error enums, string matching, or shared backend-defined error contract?
- **Current default**: explicit mapping table maintained in SDK.
- **Impact**: drift resistance and reliability of typed errors.

## Q6) Transport defaults

- **Question**: default retry strategy and timeout values for v1.
- **Current default**: retries enabled for idempotent operations; conservative timeout.
- **Impact**: perceived reliability and unexpected request replay risk.

## Q7) Package strategy

- **Question**: keep single package until v1+, or split `sdk-core` earlier?
- **Current default**: single package for v1.
- **Impact**: release complexity and internal modularity.

## Q8) Contract test fixture source of truth

- **Question**: should fixtures be derived from backend test snapshots, curated examples, or generated contracts?
- **Current default**: curated provider fixtures + parity fixtures.
- **Impact**: maintenance effort and drift detection strength.

## Decision protocol

- Resolve each question with owner + date in PR notes.
- Reflect final decision in all affected docs listed in `docs/README.md`.
