# Role SDK Contract Matrix (Node + Serverpod)

This document defines method-level parity targets for a single SDK API that supports both `role-node` and `role-serverpod`.

## Status legend

- `parity-target`: planned to behave identically in SDK for both providers.
- `capability-gated`: exposed in SDK but must be checked through `sdk.capabilities()`.
- `provider-specific`: backend-specific behavior, available only through explicit provider extensions.

## Backend provider mapping

- SDK provider `node` -> `role-node` REST routes.
- SDK provider `serverpod` -> `role-serverpod` RPC modules.

## Auth module

| SDK method | role-node | role-serverpod | status |
| --- | --- | --- | --- |
| `auth.register` | `POST /api/auth/register` | `auth.register` | parity-target |
| `auth.login` | `POST /api/auth/login` | `auth.login` | parity-target |
| `auth.refresh` | `POST /api/auth/refresh` | `auth.refresh` | parity-target |
| `auth.logout` | `POST /api/auth/logout` | `auth.logout` | parity-target |
| `auth.me` | `GET /api/auth/me` | `auth.me` | parity-target |

## Workspaces module

| SDK method group | role-node | role-serverpod | status |
| --- | --- | --- | --- |
| list/get/create workspace | REST workspace routes | `workspaces` module | parity-target |
| members CRUD | REST member routes | `workspaces` member methods | parity-target |
| invitations + join | REST invitation/join routes | `workspaces` invitation/join methods | parity-target |
| leave + convert-to-team | REST leave/convert routes | `workspaces` leave/convert methods | parity-target |
| updates feed | REST updates route | `workspaces` updates methods | capability-gated |

## Collections module

| SDK method group | role-node | role-serverpod | status |
| --- | --- | --- | --- |
| collections CRUD | REST collections routes | `collections` methods | parity-target |
| folders CRUD | REST folders routes | `collections` folder methods | parity-target |
| endpoints CRUD | REST endpoint routes | `collections` endpoint methods | parity-target |
| endpoint examples CRUD | REST examples routes | `collections` examples methods | parity-target |

## Environments module

| SDK method group | role-node | role-serverpod | status |
| --- | --- | --- | --- |
| environments CRUD | REST environments routes | `environments` methods | parity-target |
| variables CRUD | REST variables routes | `environments` variable methods | parity-target |

## Runs module

| SDK method group | role-node | role-serverpod | status |
| --- | --- | --- | --- |
| create run | `POST /api/workspaces/:id/runs` | `runs.create` | parity-target |
| get run | `GET /api/workspaces/:id/runs/:runId` | `runs.get` | parity-target |
| cancel run | `POST /api/workspaces/:id/runs/:runId/cancel` | `runs.cancel` | capability-gated |

## Import-export module

| SDK method group | role-node | role-serverpod | status |
| --- | --- | --- | --- |
| list/get jobs | REST import-export job routes | `importExport` methods | parity-target |
| create export job | REST export route | `importExport.createExport` | parity-target |
| create import job | REST import route | `importExport.createImport` | parity-target |

## Capability flags (planned)

The SDK capability shape is planned to include at least:

```ts
type BackendCapabilities = {
  auth: {
    refresh: boolean;
  };
  workspaces: {
    updates: boolean;
  };
  runs: {
    cancel: boolean;
  };
  importExport: {
    jobs: boolean;
  };
};
```

## Compatibility matrix policy

Every SDK release should publish tested versions for both backends:

- `SDK vX.Y.Z` -> `role-node >= A.B.C`
- `SDK vX.Y.Z` -> `role-serverpod >= D.E.F`

## Change control

Any SDK method addition/change requires updating this file with:

- backend mapping entries
- parity status
- capability impact
- migration note if behavior changes

## Coverage checklist

Before implementation sign-off, ensure each SDK method is represented in all of the following:

- `docs/API_SURFACE_SPEC.md` (public signature)
- `docs/PROVIDER_MAPPING_SPEC.md` (provider mapping)
- this matrix (parity/capability status)
- provider parity tests (`docs/TESTING_STRATEGY.md`)
