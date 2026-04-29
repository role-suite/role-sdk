# gRPC Dart SDK Workflow

This document describes how to generate a Dart gRPC SDK from `role-node` proto contracts.

## Commands

```bash
# 1) Sync proto contracts from role-node
pnpm contracts:grpc:sync

# 2) Generate Dart gRPC SDK
pnpm contracts:grpc:generate:dart
```

## Paths

- Source proto directory (default): `../role-node/proto`
- Synced proto directory: `contracts/role-node/proto`
- Generated Dart output (default): `generated/dart/role_grpc_sdk`

## Environment overrides

- `ROLE_NODE_PROTO_DIR`: absolute or relative path to proto source directory
- `DART_GRPC_SDK_OUTPUT_DIR`: output path for generated Dart SDK files
- `DART_BIN`: Dart executable path (default: `dart`)

## Toolchain requirements

- Dart SDK installed
- `protoc` installed and available in PATH
- `protoc_plugin` for Dart (the generation script auto-runs `dart pub global activate protoc_plugin`)

## Regeneration rules

- Do not hand-edit generated files.
- Re-run sync + generation whenever `role-node/proto/*.proto` changes.
- Keep REST OpenAPI SDK generation independent; both SDK flows can coexist.
