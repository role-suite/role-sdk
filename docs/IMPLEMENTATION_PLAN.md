# Role SDK Implementation Plan

This plan is explicitly for dual backend support:

- `role-node` via REST provider.
- `role-serverpod` via RPC provider.

The SDK public API remains backend-agnostic.

## Phase 0 - Foundation and guardrails

Deliverables:

- Initialize TypeScript package with strict compiler options.
- Configure linting, formatting, tests, and CI checks.
- Define package exports and semantic release baseline.
- Define backend provider contracts and capability schema.

Acceptance criteria:

- `pnpm typecheck`, `pnpm test`, and `pnpm build` pass in CI.
- Published package includes clean type declarations.
- Provider contract and capability docs are reviewed and frozen for MVP.

## Phase 1 - Core SDK runtime

Deliverables:

- `createRoleSdk(config)` entrypoint.
- Backend selection in config (`backend: "node" | "serverpod"`).
- HTTP transport abstraction with pluggable `fetch`.
- Locked transport defaults (`timeoutMs: 30000`, idempotent-only retries by default).
- Request/response envelope parsing.
- Error normalization.
- Retry policy with exponential backoff.
- Auth token manager with optional refresh flow.
- User-provided token store interface with in-memory default.
- `sdk.capabilities()` runtime feature introspection.

Acceptance criteria:

- Core unit tests cover retry/auth/error branches.
- Config supports Node and browser usage.
- Common error and capability behavior is identical across providers.
- Date/time values are exposed as ISO strings in public models.

## Phase 2 - Provider adapters (MVP)

Deliverables:

- `node-rest` provider implementation for core auth/workspace flows.
- `serverpod-rpc` provider implementation for core auth/workspace flows.
- Mapper layer for both providers into unified SDK models.

Acceptance criteria:

- Same SDK method contracts work with both backend modes.
- Parity tests pass for implemented methods in both providers.

## Phase 3 - Domain module clients (MVP)

Deliverables:

- `auth` module (`register`, `login`, `refresh`, `logout`, `me`).
- `workspaces` module (list, get, create, members/invitations, join, leave, convert, updates).
- `collections` module (collections/folders/endpoints/examples CRUD).
- All above methods mapped for both providers.

Acceptance criteria:

- Each method typed with request/response models.
- Integration tests verify route mapping and payload serialization.
- Provider-specific transport differences are hidden from public API.

## Phase 4 - Advanced modules

Deliverables:

- `environments` module (environments + variables CRUD).
- `runs` module (create/get/cancel).
- `import-export` module (list/get/create jobs).
- Workspace-scoped helper via `sdk.inWorkspace(workspaceId)`.
- Method parity coverage for both providers where backend capability exists.

Acceptance criteria:

- End-to-end typed examples for all modules.
- Run payload shapes support both adhoc and collection source unions.
- Capability flags document and enforce non-parity behavior.

## Phase 5 - Developer experience and hardening

Deliverables:

- Middleware hooks (`onRequest`, `onResponse`, `onError`).
- Better diagnostics (`requestId`, retry count, timing metadata).
- Documentation site-ready markdown (quickstart + API reference + migration notes).
- Compatibility matrix between SDK and both backend versions.

Acceptance criteria:

- Examples cover browser and Node usage.
- Public docs include auth best practices and error handling recipes.
- Contract matrix is published and maintained.

## Suggested backlog after v1

- Optional OpenAPI contract ingestion and generated types pipeline.
- Optional plugin package for persistence adapters (localStorage, secure store wrappers).
- Optional batching and caching helpers for high-frequency queries.
- Optional strongly typed event stream client if workspace updates gain streaming endpoints.
- Optional serverpod generated stubs ingestion to automate RPC mapper generation.

## Risks and mitigation

- API contract drift: add contract tests against role-node examples and snapshots.
- API contract drift (dual backend): add parity test suite against node and serverpod fixtures.
- Token refresh race conditions: implement single-flight refresh mutex early.
- Runtime differences (Node vs browser): centralize transport and avoid Node-only globals.
- Over-coupled public types: keep mapper layer between backend payload and SDK surface.

## Contract governance

- Method-level parity is tracked in `docs/CONTRACT_MATRIX.md`.
- Any new SDK method requires:
  - provider mapping status (`node`, `serverpod`)
  - capability flag decision
  - compatibility impact notes

## Phase dependencies

- Phase 2 depends on Phase 1 transport/error contracts being stable.
- Phase 3 depends on Phase 2 adapter interfaces and mapper utilities.
- Phase 4 depends on parity decisions in `docs/CONTRACT_MATRIX.md`.
- Phase 5 depends on test automation from `docs/TESTING_STRATEGY.md`.

## Exit criteria for planning-complete state

Planning is considered complete when:

- All method signatures in `docs/API_SURFACE_SPEC.md` have mapping entries.
- `docs/CONTRACT_MATRIX.md` includes parity/capability status for each method group.
- Decisions in `docs/OPEN_QUESTIONS.md` are reflected in API, mapping, compatibility, and test docs.
- Compatibility and test policies are linked in release checklist docs.
