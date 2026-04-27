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
- `OPENAPI_DOCKER_VOLUME_OPTIONS` (default: empty; set `:z` on SELinux hosts)

## Remote Docker execution + pull generated files

Run generation on a remote machine and sync artifacts back into this repo:

```bash
# Bootstrap env file once (scripts auto-load `.env`)
cp .env.example .env

# Required
export REMOTE_SSH_TARGET=user@remote-host
export REMOTE_ROLE_SDK_PATH=/abs/path/to/role-sdk

# Optional
export REMOTE_DART_SDK_OUTPUT_DIR=generated/dart/role_sdk
export LOCAL_DART_SDK_OUTPUT_DIR=generated/dart/role_sdk
export REMOTE_SYNC_KEEP_CONFIG=true
export OPENAPI_DOCKER_VOLUME_OPTIONS=:z
export REMOTE_SSH_OPTS="-p 22"
export REMOTE_RSYNC_OPTS="--progress"

# 1) Run docker/openapi generation remotely
pnpm contracts:openapi:remote:preflight
pnpm contracts:openapi:remote:generate:dart

# 2) Pull generated files into local repo
pnpm contracts:openapi:remote:pull:dart

# Or do both in one command
pnpm contracts:openapi:remote:generate-and-pull:dart
```

Defaults and behavior:

- `REMOTE_DART_SDK_OUTPUT_DIR` defaults to `generated/dart/role_sdk` on remote.
- `LOCAL_DART_SDK_OUTPUT_DIR` defaults to `generated/dart/role_sdk` locally.
- `contracts:openapi:remote:preflight` verifies remote path + required tools (`git`, `node`, `pnpm`, `docker`).
- `contracts:openapi:remote:preflight` also validates Docker can read the bind mount path.
- `REMOTE_SYNC_KEEP_CONFIG=true` preserves local config files by excluding:
  - `pubspec.yaml`
  - `analysis_options.yaml`
  - `.gitignore`
  - `.openapi-generator-ignore`

## Environment override

If `role-node` is in a different location, set:

```bash
ROLE_NODE_OPENAPI_PATH=/abs/path/to/openapi.json pnpm contracts:openapi:sync
```
