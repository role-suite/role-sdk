# Role SDK Architecture

## 1) Goals and design principles

The TypeScript SDK should provide a stable, typed, and ergonomic interface for the Role platform APIs exposed by `role-node` and future Role backend services.

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

These patterns are the baseline for SDK module boundaries and the reason the SDK must support multiple backend providers.

## 3) Dual-backend architecture (node + serverpod)

The SDK is designed as one public API with two backend providers:

- `node-rest` provider for `role-node` REST endpoints.
- `serverpod-rpc` provider for `role-serverpod` RPC modules.

Consumers should not need backend-specific code for common workflows.

### 3.1 Public configuration

```ts
const sdk = createRoleSdk({
  backend: "node", // or "serverpod"
  baseUrl: "https://api.example.com"
});
```

### 3.2 Provider adapter boundary

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

### 3.3 Normalization rules

- REST envelope and RPC results are normalized into the same SDK result models.
- Provider-specific payload fields are mapped into stable SDK types.
- Backend-specific errors are normalized into shared SDK error classes.

### 3.4 Capability model

The SDK exposes feature availability at runtime:

- `sdk.capabilities()` returns support flags per module/method group.
- Consumers can gate optional UX/features safely.
- Missing capabilities return explicit, typed SDK errors (not ambiguous failures).

### 3.5 Provider resolution lifecycle

- Provider is selected once at `createRoleSdk(config)` time.
- A client instance should not switch provider at runtime.
- Multi-backend applications should instantiate separate SDK clients per backend.

## 4) Proposed package shape

Start as a single package for faster iteration:

```text
role-sdk/
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
      (future contract-generated types)
  tests/
    unit/
    integration/
    contract/
```

Future split (only when needed):

- `@role-suite/sdk-core`: transport/auth/retry/error primitives.
- `@role-suite/sdk`: platform clients built on core.

## 5) Public API design

### Main entry

```ts
const sdk = createRoleSdk({
  backend: "node",
  baseUrl: "https://api.example.com",
  auth: { mode: "token" },
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

## 6) Core components

### 6.1 Transport layer

Responsibilities:

- Build URLs and query params.
- Add headers and auth.
- Execute via configurable `fetch` implementation.
- Decode JSON and normalize envelope.

Transport stays unaware of business domain details and provider mapping logic.

### 6.2 Provider adapters

Responsibilities:

- `node-rest` provider: path/method/query/body mapping.
- `serverpod-rpc` provider: RPC module/method invocation mapping.
- Map provider payloads into stable SDK domain models.

### 6.3 Auth manager

Responsibilities:

- Hold access/refresh tokens (memory by default; user-provided persistence optional).
- Attach access token automatically.
- Refresh token on `401` where configured.
- De-duplicate concurrent refresh calls (single-flight refresh).

### 6.4 Retry engine

Responsibilities:

- Retry only safe/idempotent operations by default.
- Configurable for specific methods/endpoints.
- Exponential backoff with jitter.
- Respect `AbortSignal` and total timeout.

### 6.5 Error normalization

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

### 6.6 Mapping layer

Mapping layer is mandatory to isolate SDK public types from backend contract drift:

- `node -> sdk` mappers
- `serverpod -> sdk` mappers
- shared validation checks before returning public models

## 7) Typing strategy

Use a two-layer typing model:

1. Stable hand-authored public models (`src/modules/*/types.ts`).
2. Optional contract-generated internal models (`src/generated`).

Rules:

- Public types prioritize developer ergonomics and semver stability.
- Internal generated types help detect backend drift during CI.
- Mapping layer shields public API from backend naming churn.

## 8) Runtime compatibility

Targets:

- Node.js LTS (18+).
- Browsers with Fetch API.
- Bun/Deno/edge runtimes with Fetch-compatible behavior.

Build outputs:

- ESM + type declarations.
- CJS optional if ecosystem demand exists.

## 9) Quality and test plan

Test layers:

- Unit: auth manager, retry policy, error normalization, request building.
- Integration: module clients against mocked HTTP transport.
- Contract: validate SDK expectations against contract samples for both `role-node` and `role-serverpod`.

Dual-backend test requirements:

- Each public SDK method has provider parity tests (`node` and `serverpod`).
- Capability tests verify unsupported methods fail with predictable typed errors.
- Mapper tests lock transformation behavior for both provider families.

Initial CI gates:

- Typecheck
- Lint
- Unit + integration tests
- Build

## 10) Release and compatibility policy

- Semver for SDK package.
- Backward-compatible additions: minor.
- Breaking public type or behavior changes: major.
- Patch only for bugfix/security/perf improvements without API changes.

Compatibility matrix to maintain in docs:

- SDK version -> minimum tested `role-node` version.
- SDK version -> minimum tested `role-serverpod` version.

## 11) Security considerations

- Never log raw secrets/tokens by default.
- Redact known sensitive headers and query keys in debug output.
- Support `AbortController` for cancellation.
- Safe defaults for timeout and retry.

## 12) Suggested first milestone scope

M1 should ship a practical baseline:

- SDK core (`client`, transport, auth manager, retry, error model)
- provider adapter boundary (`node-rest` + `serverpod-rpc` skeleton)
- `auth` + `workspaces` + `collections` modules for both providers
- token refresh flow
- typed response models
- minimal docs and examples

Then expand in M2:

- `environments`, `runs`, `import-export` for both providers
- workspace convenience API (`inWorkspace`)
- middleware hooks and advanced retry policy

## 13) Contract matrix reference

Method-level backend parity is tracked in `docs/CONTRACT_MATRIX.md`.
