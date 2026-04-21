# Role SDK Provider Mapping Spec

This document defines how each SDK method maps to:

- `role-node` REST endpoints
- `role-serverpod` RPC modules/methods

It also defines field transformation and error mapping rules.

## 1) Mapping rules

- SDK method contracts are backend-agnostic.
- Node provider maps to HTTP method/path/query/body.
- Serverpod provider maps to RPC module + RPC method + payload.
- Both providers return normalized SDK models.

## 2) Auth mappings

| SDK method | Node mapping | Serverpod mapping | Notes |
| --- | --- | --- | --- |
| `auth.register` | `POST /api/auth/register` | `auth.register` | Normalize user/workspace/tokens result |
| `auth.login` | `POST /api/auth/login` | `auth.login` | Same output target |
| `auth.refresh` | `POST /api/auth/refresh` | `auth.refresh` | Token rotation handling should be identical |
| `auth.logout` | `POST /api/auth/logout` | `auth.logout` | Return `{ revoked }` |
| `auth.me` | `GET /api/auth/me` | `auth.me` | Normalize profile + memberships |

## 3) Workspaces mappings

| SDK method group | Node mapping | Serverpod mapping | Notes |
| --- | --- | --- | --- |
| list/get/create | `/api/workspaces` routes | `workspaces` methods | Normalize workspace summary |
| member operations | member routes | member RPC methods | Normalize role values |
| invitation operations | invitation/join routes | invitation/join RPC methods | Normalize token/expires fields |
| leave/convert | leave/convert routes | leave/convert RPC methods | Keep deterministic success models |
| updates | `GET /api/workspaces/:id/updates` | updates RPC method | Capability-gated |

## 4) Collections mappings

| SDK method group | Node mapping | Serverpod mapping | Notes |
| --- | --- | --- | --- |
| collections CRUD | collections routes | collections RPC methods | Normalize `id`, `workspaceId`, timestamps |
| folders CRUD | folders routes | folder RPC methods | Normalize parent/position fields |
| endpoints CRUD | endpoint routes | endpoint RPC methods | Normalize HTTP method/url/body/auth |
| endpoint examples CRUD | examples routes | examples RPC methods | Normalize response example fields |

## 5) Environments mappings

| SDK method group | Node mapping | Serverpod mapping | Notes |
| --- | --- | --- | --- |
| environments CRUD | environments routes | environments RPC methods | Normalize names/ids/timestamps |
| variables CRUD | variables routes | variable RPC methods | Normalize `enabled`, `isSecret`, position |

## 6) Runs mappings

| SDK method group | Node mapping | Serverpod mapping | Notes |
| --- | --- | --- | --- |
| create run | `POST /api/workspaces/:id/runs` | `runs.create` | Normalize source/request/response/error |
| get run | `GET /api/workspaces/:id/runs/:runId` | `runs.get` | Same result projection |
| cancel run | `POST /api/workspaces/:id/runs/:runId/cancel` | `runs.cancel` | Capability-gated |

## 7) Import/export mappings

| SDK method group | Node mapping | Serverpod mapping | Notes |
| --- | --- | --- | --- |
| list/get jobs | jobs routes | `importExport` methods | Normalize status/type/summary |
| create export | export route | `importExport.createExport` | Normalize job output |
| create import | import route | `importExport.createImport` | Normalize job output |

## 8) Field-level transformation policy

## 8.1 IDs and numeric types

- Preserve backend ID as SDK `Id` (`number | string`).
- Do not coerce to number when backend can emit string IDs.

## 8.2 Date/time values

- Normalize date/time values to ISO strings for public SDK types.

## 8.3 Enums and role values

- Map backend role/status values to SDK union literals where known.
- Unknown values may pass through as string for forward compatibility.

## 8.4 Response envelopes

- Node: unwrap `{ success, data }`.
- Serverpod: normalize RPC return object directly to SDK model.

## 9) Error translation policy

Node provider:

- HTTP/network errors -> SDK errors via status/code map.
- Backend `{ success: false, message }` -> `RoleApiError`.

Serverpod provider:

- RPC errors/exceptions -> mapped SDK errors using explicit mapping keyed by stable backend identifiers.

Shared mapping examples:

- auth failure -> `RoleAuthError`
- validation failure -> `RoleValidationError`
- unavailable/network -> `RoleNetworkError`
- unknown/unclassified -> `RoleUnknownError`

Rule:

- Free-form string matching is fallback-only and must not be the primary mapping strategy.

## 10) Capability-gated behavior

- For methods marked `capability-gated`, providers must declare support in `sdk.capabilities()`.
- Unsupported method calls must fail fast with deterministic code (for example `ROLE_UNSUPPORTED_CAPABILITY`).

## 11) Mapping change control

Any change to mapping behavior requires updates in:

- `docs/CONTRACT_MATRIX.md`
- this file
- parity tests and provider fixtures

## 12) Request metadata normalization

- Providers should capture backend request correlation identifiers when available.
- Node provider should read `x-request-id` (or equivalent configured header).
- Serverpod provider should read RPC correlation metadata if exposed.
- Correlation ID should populate `requestId` in SDK error/hook contexts.

## 13) Auth header and token propagation

- `Authorization: Bearer <accessToken>` is the canonical outgoing auth mechanism.
- Provider-level transport differences must not change public auth behavior.
- Refresh token exchange should remain module-driven (`auth.refresh`) and not silently alter unrelated request payloads.
