# Role SDK Architecture

## 1) Goals and design principles

The TypeScript SDK should provide a stable, typed, and ergonomic interface for the Role platform APIs, with v1 centered on `role-node` and a staged path for additional backend providers.

Primary goals:

- Strong TypeScript types for requests and responses.
- Minimal setup for common use cases, deep control for advanced use cases.
- Runtime portability (Node.js, browser, serverless/edge where Fetch is available).
- Built-in auth/token lifecycle helpers.
- Retries and normalized error model.
- Clear versioning and compatibility policy.

Design principles:

- Keep transport, auth, and modules decoupled.
- Keep endpoint clients thin and generated-or-mapped from contracts.
- Surface one consistent error type across all modules.
- Avoid hidden magic; all automatic behavior must be configurable.

Non-goals for v1:

- No code generation dependency required at runtime.
- No plugin marketplace or dynamic runtime module loading.
- No backend-specific public clients as primary interface.

## 2) What we learned from role-suite

Based on the current `role-suite` landscape (`role-node`, `role-serverpod`, and `role-client`):

- Domain modules are stable and shared: `auth`, `workspaces`, `collections`, `environments`, `runs`, `import-export`.
- `role-node` uses a REST HTTP envelope: success responses are `{ success: true, data }`, error responses are `{ success: false, message }`.
- `role-serverpod` exposes typed RPC modules/methods with a different transport contract.
- Auth uses access + refresh token flow.
- Runs and request execution are a strategic feature (policy, limits, redaction), so SDK abstractions should support both simple and advanced run calls.
- Workspace-scoped routes dominate API design, so SDK needs first-class workspace ergonomics.

These patterns are the baseline for SDK module boundaries and a staged multi-provider architecture.

## 3) Provider support tiers for v1

The SDK public API is designed to support multiple providers, but release messaging and support commitments are tiered:

- `role-node` (`node-rest`) is the primary and officially supported backend for v1.
- `role-serverpod` (`serverpod-rpc`) is experimental until parity and integration coverage are complete and a stable declaration is published.
- Documentation and examples should prioritize the `role-node` path and label `role-serverpod` features as experimental where relevant.

## 4) Multi-provider architecture (node + serverpod)

The SDK is designed as one public API with two backend providers:

- `node-rest` provider for `role-node` REST endpoints.
- `serverpod-rpc` provider for `role-serverpod` RPC modules.

Consumers should not need backend-specific code for common workflows on stable surfaces. Experimental provider behavior may temporarily require capability checks and fallback handling.

### 4.1 Public configuration

```ts
const sdk = createRoleSdk({
  backend: "node", // or "serverpod"
  baseUrl: "https://api.example.com"
});
```

Locked v1 defaults:

- `timeoutMs` default is `30000`.
- Retry defaults to `maxAttempts: 3` with exponential backoff and jitter.
- Retries apply only to safe/idempotent operations unless explicitly enabled per call/policy.
- Token storage is in-memory by default with optional user-provided `TokenStore`.
- Built-in persistent token adapters are out of scope for core v1.

### 4.2 Provider adapter boundary

All module clients call a backend adapter contract. Adapters are responsible for transport details and payload translation.

```ts
interface BackendProvider {
  auth: AuthProvider;
  workspaces: WorkspacesProvider;
  collections: CollectionsProvider;
  environments: EnvironmentsProvider;
  runs: RunsProvider;
  importExport: ImportExportProvider;
  capabilities(): BackendCapabilities;
}
```

### 4.3 Normalization rules

- REST envelope and RPC results are normalized into the same SDK result models.
- Provider-specific payload fields are mapped into stable SDK types.
- Backend-specific errors are normalized into shared SDK error classes.

### 4.4 Capability model

The SDK exposes feature availability at runtime:

- `sdk.capabilities()` returns support flags per module/method group.
- Consumers can gate optional UX/features safely.
- Missing capabilities return explicit, typed SDK errors (not ambiguous failures).

### 4.5 Provider resolution lifecycle

- Provider is selected once at `createRoleSdk(config)` time.
- A client instance should not switch provider at runtime.
- Multi-backend applications should instantiate separate SDK clients per backend.

### 4.6 Contract artifact boundary

- `role-node` owns endpoint/schema source-of-truth and exports `contracts/generated/openapi.json`.
- `role-node` gRPC source-of-truth is `proto/*.proto`.
- `role-sdk` consumes that artifact into `contracts/role-node/openapi.json`.
- `role-sdk` consumes proto artifacts into `contracts/role-node/proto/`.
- SDK metadata for generation is derived into `contracts/generated/role-node-sdk-spec.json`.
- Current local pipeline commands:
  - `pnpm contracts:openapi:sync`
  - `pnpm contracts:openapi:check`
  - `pnpm contracts:openapi:build-spec`
- gRPC Dart generation commands:
  - `pnpm contracts:grpc:sync`
  - `pnpm contracts:grpc:generate:dart`
- Generated SDK layers (TypeScript and Dart) should be produced from the same OpenAPI artifact revision.

## 5) Proposed package shape

Start as a single package for faster iteration:

```text
role-sdk/
  contracts/
    role-node/
      openapi.json
    generated/
      role-node-sdk-spec.json
  scripts/
    openapi/
      sync-role-node-openapi.mjs
      check-openapi-artifact.mjs
      build-sdk-spec.mjs
  src/
    index.ts
    client.ts
    config.ts
    core/
      transport/
        http-client.ts
        fetch-adapter.ts
        request-builder.ts
      auth/
        token-store.ts
        auth-manager.ts
      retry/
        retry-policy.ts
        backoff.ts
      errors/
        sdk-error.ts
        error-normalizer.ts
      provider/
        backend-provider.ts
        capabilities.ts
      types/
        envelope.ts
        pagination.ts
      mappers/
        node/
        serverpod/
    modules/
      auth/
        client.ts
        types.ts
      workspaces/
        client.ts
        types.ts
      collections/
        client.ts
        types.ts
      environments/
        client.ts
        types.ts
      runs/
        client.ts
        types.ts
      import-export/
        client.ts
        types.ts
    generated/
      (SDK generated code output target)
  tests/
    unit/
    integration/
    contract/
```

Future split (only when needed):

- `@role-suite/sdk-core`: transport/auth/retry/error primitives.
- `@role-suite/sdk`: platform clients built on core.

## 6) Public API design

### Main entry

```ts
const sdk = createRoleSdk({
  backend: "node",
  baseUrl: "https://api.example.com",
  auth: { mode: "token" }
});
```

### Module access

```ts
sdk.auth.login(...)
sdk.workspaces.list()
sdk.collections.create(...)
sdk.runs.create(...)
```

### Workspace convenience

```ts
const ws = sdk.inWorkspace(workspaceId);
ws.collections.list();
ws.environments.list();
ws.runs.create(...);
```

### Optional middleware hooks

- `onRequest`
- `onResponse`
- `onError`

Hooks allow telemetry and debugging without forking SDK logic.

### Backend capability introspection

```ts
const caps = sdk.capabilities();
if (caps.runs.cancel) {
  await sdk.runs.cancel({ workspaceId, runId });
}
```

## 7) Core components

### 7.1 Transport layer

Responsibilities:

- Build URLs and query params.
- Add headers and auth.
- Execute via configurable `fetch` implementation.
- Decode JSON and normalize envelope.

Transport stays unaware of business domain details and provider mapping logic.

### 7.2 Provider adapters

Responsibilities:

- `node-rest` provider: path/method/query/body mapping.
- `serverpod-rpc` provider: RPC module/method invocation mapping.
- Map provider payloads into stable SDK domain models.

### 7.3 Auth manager

Responsibilities:

- Hold access/refresh tokens (memory by default; user-provided persistence optional).
- Attach access token automatically.
- Refresh token on `401` where configured.
- De-duplicate concurrent refresh calls (single-flight refresh).
- Treat persistence failures as typed auth errors with deterministic error codes.

### 7.4 Retry engine

Responsibilities:

- Retry only safe/idempotent operations by default.
- Configurable for specific methods/endpoints.
- Exponential backoff with jitter.
- Respect `AbortSignal` and total timeout.

### 7.5 Error normalization

All failures map to one SDK error hierarchy:

- `RoleApiError` (backend response error across REST/RPC)
- `RoleAuthError` (auth/refresh/token lifecycle failures)
- `RoleNetworkError` (DNS, connection, timeout)
- `RoleValidationError` (SDK input validation)
- `RoleUnknownError` (fallback)

Each error includes:

- `code`
- `message`
- `status` (if HTTP)
- `requestId` (if header provided)
- `details` (safe diagnostics)

### 7.6 Mapping layer

Mapping layer is mandatory to isolate SDK public types from backend contract drift:

- `node -> sdk` mappers
- `serverpod -> sdk` mappers
- shared validation checks before returning public models

## 8) Typing strategy

Use a two-layer typing model:

1. Stable hand-authored public models (`src/modules/*/types.ts`).
2. Optional contract-generated internal models (`src/generated`).

Rules:

- Public types prioritize developer ergonomics and semver stability.
- Internal generated types help detect backend drift during CI.
- Mapping layer shields public API from backend naming churn.
- Public date/time values are ISO strings in v1 SDK models.

## 9) Runtime compatibility

Targets:

- Node.js LTS (18+).
- Browsers with Fetch API.
- Bun/Deno/edge runtimes with Fetch-compatible behavior.

Build outputs:

- ESM + type declarations.
- CJS optional if ecosystem demand exists.

## 10) Quality and test plan

Test layers:

- Unit: auth manager, retry policy, error normalization, request building.
- Integration: module clients against mocked HTTP transport.
- Contract: validate SDK expectations against `role-node` contract samples as a required gate; run `role-serverpod` contract checks as experimental coverage until stable support is declared.

Provider test requirements:

- Each stable public SDK method must have `role-node` integration coverage.
- `role-serverpod` parity tests are tracked and expanded incrementally; gaps are documented in `docs/CONTRACT_MATRIX.md`.
- Capability tests verify unsupported methods fail with predictable typed errors.
- Mapper tests lock transformation behavior for both provider families.

Initial CI gates:

- Typecheck
- Lint
- Unit + integration tests
- Build

## 11) Release and compatibility policy

- Semver for SDK package.
- Backward-compatible additions: minor.
- Breaking public type or behavior changes: major.
- Patch only for bugfix/security/perf improvements without API changes.

Compatibility matrix to maintain in docs:

- SDK version -> minimum tested `role-node` version.
- SDK version -> `role-serverpod` compatibility state (`experimental` until stable support is declared, then minimum tested version).

## 12) Security considerations

- Never log raw secrets/tokens by default.
- Redact known sensitive headers and query keys in debug output.
- Support `AbortController` for cancellation.
- Safe defaults for timeout and retry.

## 13) Suggested first milestone scope

M1 should ship a practical baseline with official `role-node` support:

- SDK core (`client`, transport, auth manager, retry, error model)
- provider adapter boundary (`node-rest` + `serverpod-rpc` skeleton)
- `auth` + `workspaces` + `collections` modules with production-ready `role-node` paths and experimental `role-serverpod` paths
- token refresh flow
- typed response models
- minimal docs and examples

Then expand in M2:

- `environments`, `runs`, `import-export` with `role-node` as the release baseline and `role-serverpod` parity tracked progressively
- workspace convenience API (`inWorkspace`)
- middleware hooks and advanced retry policy

## 14) Contract matrix reference

Method-level backend parity is tracked in `docs/CONTRACT_MATRIX.md`.
