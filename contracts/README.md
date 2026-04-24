# SDK Contract Artifacts

This directory stores backend contract artifacts consumed by `role-sdk`.

## Source of truth

- Backend contracts are owned by `role-node`.
- `role-sdk` consumes generated artifacts and does not define endpoint truth.

## Role-node OpenAPI flow

Expected upstream artifact:

- `../role-node/contracts/generated/openapi.json`

Sync + validate inside this repository:

```bash
pnpm contracts:openapi:sync
pnpm contracts:openapi:check
pnpm contracts:openapi:build-spec
```

Generated local artifacts:

- `contracts/role-node/openapi.json` (synced source artifact)
- `contracts/generated/role-node-sdk-spec.json` (SDK-generation metadata)
- `contracts/generated/role-node-openapi-dart.json` (Dart-compatible OpenAPI normalization)

## Generate Dart SDK (OpenAPI)

```bash
pnpm contracts:openapi:generate:dart
```

This command automatically builds a Dart-compatible OpenAPI variant before generation.

Optional env overrides:

- `OPENAPI_GENERATOR_IMAGE` (default: `openapitools/openapi-generator-cli:v7.7.0`)
- `DART_SDK_OUTPUT_DIR` (default: `generated/dart/role_sdk`)

## Environment override

If `role-node` is in a different location, set:

```bash
ROLE_NODE_OPENAPI_PATH=/abs/path/to/openapi.json pnpm contracts:openapi:sync
```
