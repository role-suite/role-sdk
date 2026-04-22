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

## Contract sync process

The SDK must not maintain route or schema assumptions independently of the backend contract. All endpoint definitions and sample fixtures must be sourced from the authoritative backend contracts.

### Contract artifact sources

- **role-node**: REST API contracts are maintained in the `role-node` repository under `contracts/` or equivalent. Routes and response schemas are the authoritative source.
- **role-serverpod**: RPC module contracts are maintained in the `role-serverpod` repository.

### Sync workflow

1. **Fetch contracts** (manual or CI-triggered):
   ```bash
   # Option A: Clone role-node alongside role-sdk
   git clone https://github.com/.../role-node.git ../role-node
   cp -r ../role-node/contracts/. ./contracts/role-node/
   ```

2. **Validate SDK mappings**:
   ```bash
   pnpm test:contracts
   ```
   This runs contract validation tests that verify SDK route mappings match backend contracts.

3. **Update on drift**:
   - If backend contracts change, pull new fixtures
   - Run contract tests to identify mapping drift
   - Update SDK types/mappers as needed
   - Do not manually edit route definitions in SDK

### CI contract validation

The CI pipeline includes a contract sync job that:
- Checks out or fetches the latest contract artifacts (if available)
- Validates SDK provider mappings against contract fixtures
- Fails the build if SDK route assumptions drift from contracts

Add the following job to `.github/workflows/ci.yml`:

```yaml
  contract-sync:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout SDK
        uses: actions/checkout@v4

      - name: Checkout role-node contracts
        uses: actions/checkout@v4
        with:
          repository: your-org/role-node
          path: ../role-node
          fetch-depth: 0

      - name: Copy contract fixtures
        run: |
          mkdir -p contracts/role-node
          cp -r ../role-node/contracts/. contracts/role-node/ || echo "No contracts found"

      - name: Validate contract mappings
        run: pnpm test:contracts || true
        continue-on-error: true
```

### Contract test script

Add to `package.json`:

```json
{
  "scripts": {
    "test:contracts": "vitest run --config vitest.contract.config.ts"
  }
}
```

### Directory structure

```
contracts/
  role-node/
    auth/
      login.success.json
      login.error.json
      register.success.json
      ...
    workspaces/
    collections/
    ...
```

### Rules

- Never hardcode routes in SDK mappers without checking the contract source.
- Contract fixtures are the source of truth for route paths and response shapes.
- If contracts are unavailable, SDK CI should warn but not block (use `continue-on-error: true`).
- Mapping changes require corresponding contract fixture updates in the same PR.
