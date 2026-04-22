# role-sdk

Official TypeScript SDK for integrating with Role APIs. Provides typed clients, auth helpers, retries, and normalized error handling.

## What is this?

A type-safe JavaScript/TypeScript client for Role's REST API. Use it to:

- Authenticate users with access + refresh tokens
- Manage workspaces, collections, environments
- Execute runs and track results

```ts
import { createRoleSdk } from "role-sdk";

const sdk = createRoleSdk({
  baseUrl: "https://api.role.com",
  auth: { mode: "token" }
});

const user = await sdk.auth.login({ email: "you@example.com", password: "..." });
console.log(user.token); // Access token
```

## Installation

```bash
npm install role-sdk
# or
pnpm add role-sdk
# or
yarn add role-sdk
```

Requires Node.js 18+.

## Quick start

### Initialize the SDK

```ts
import { createRoleSdk } from "role-sdk";

const sdk = createRoleSdk({
  baseUrl: process.env.ROLE_API_URL || "https://api.role.com",
  auth: {
    mode: "token",
    storage: "memory" // or provide a custom TokenStore
  },
  timeoutMs: 30000
});
```

### Auth example

```ts
// Login
const session = await sdk.auth.login({
  email: "user@example.com",
  password: "secretpassword"
});

console.log(session.accessToken);
console.log(session.refreshToken);

// Get current user
const me = await sdk.auth.me();
console.log(me.id, me.email);

// Refresh token
const refreshed = await sdk.auth.refresh({
  refreshToken: session.refreshToken
});
```

### Workspace example

```ts
// List workspaces
const workspaces = await sdk.workspaces.list();
console.log(workspaces.items);

// Create a workspace
const ws = await sdk.workspaces.create({
  name: "My Workspace",
  description: "Created via SDK"
});

// Work inside a workspace
const wsClient = sdk.inWorkspace(ws.id);

// Collections in that workspace
const collections = await wsClient.collections.list();
const col = await wsClient.collections.create({
  name: "Production APIs",
  description: "Production environment collections"
});

// Environments
const env = await wsClient.environments.create({
  name: "Production",
  variables: {
    API_KEY: "sk-xxx",
    BASE_URL: "https://api.example.com"
  }
});

// Create and execute a run
const run = await wsClient.runs.create({
  collectionId: col.id,
  environmentId: env.id,
  name: "Test Suite"
});

console.log(run.id, run.status);
```

## Error handling

All SDK errors extend `RoleSdkError` with typed codes:

```ts
import { RoleApiError, RoleAuthError, RoleValidationError } from "role-sdk";

try {
  await sdk.auth.login({ email, password });
} catch (error) {
  if (error instanceof RoleAuthError) {
    console.log(error.code);   // ROLE_AUTH_INVALID_CREDENTIALS
    console.log(error.message);
  } else if (error instanceof RoleApiError) {
    console.log(error.code);   // ROLE_API_ERROR
    console.log(error.status); // HTTP status if available
  } else if (error instanceof RoleValidationError) {
    console.log(error.code);   // ROLE_VALIDATION_ERROR
    console.log(error.details);
  }
}
```

Error codes:

- `ROLE_API_ERROR` — Backend returned an error
- `ROLE_AUTH_INVALID_CREDENTIALS` — Wrong email/password
- `ROLE_AUTH_TOKEN_EXPIRED` — Access token expired
- `ROLE_VALIDATION_ERROR` — Invalid input
- `ROLE_NETWORK_ERROR` — Connection issue
- `ROLE_UNKNOWN_ERROR` — Unexpected failure

## Compatibility matrix

| SDK Version | role-node Min | role-serverpod |
|-----------|-----------|------------|
| 0.1.x     | >= 1.0.0  | experimental |

See `docs/VERSION_COMPATIBILITY_POLICY.md` for full matrix.

## Support status (v1)

- `role-node` is the primary and officially supported backend for v1.
- `role-serverpod` is experimental until declared stable.

## Documentation

- Architecture: `docs/ARCHITECTURE.md`
- API surface: `docs/API_SURFACE_SPEC.md`
- Provider mapping: `docs/PROVIDER_MAPPING_SPEC.md`
- Contract matrix: `docs/CONTRACT_MATRIX.md`
- Version policy: `docs/VERSION_COMPATIBILITY_POLICY.md`

## License

MIT — see `LICENSE` file.