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

All SDK errors include these properties:

- `code` — Typed error code (see table below)
- `message` — Human-readable description
- `status` — HTTP status code (if available)
- `requestId` — Backend request ID for debugging
- `details` — Safe diagnostic data
- `retryable` — Whether the operation can be retried

```ts
import { ErrorCodes, RoleApiError, RoleAuthError, RoleNetworkError, RoleValidationError } from "role-sdk";

try {
  await sdk.auth.login({ email, password });
} catch (error) {
  if (error instanceof RoleAuthError) {
    console.log(error.code);      // e.g. "ROLE_AUTH_INVALID_CREDENTIALS"
    console.log(error.message);
    console.log(error.retryable); // false for invalid credentials
  } else if (error instanceof RoleNetworkError) {
    console.log(error.code);      // e.g. "ROLE_NETWORK_TIMEOUT"
    console.log(error.retryable); // true - safe to retry
  } else if (error instanceof RoleApiError) {
    console.log(error.code);      // e.g. "ROLE_API_ERROR"
    console.log(error.status);   // HTTP status
    console.log(error.requestId);  // for support
  } else if (error instanceof RoleValidationError) {
    console.log(error.code);      // "ROLE_VALIDATION_ERROR"
    console.log(error.details);   // field-level errors
  }
}
```

### Error codes

| Code | Class | Retryable | Description |
|------|-------|-----------|-------------|
| `ROLE_API_ERROR` | RoleApiError | ❌ | Backend returned an error |
| `ROLE_AUTH_INVALID_CREDENTIALS` | RoleAuthError | ❌ | Wrong email or password |
| `ROLE_AUTH_TOKEN_EXPIRED` | RoleAuthError | ✅ | Access token expired (auto-refresh attempted) |
| `ROLE_AUTH_TOKEN_INVALID` | RoleAuthError | ❌ | Malformed or revoked token |
| `ROLE_AUTH_REFRESH_FAILED` | RoleAuthError | ❌ | Token refresh failed |
| `ROLE_VALIDATION_ERROR` | RoleValidationError | ❌ | Invalid input parameters |
| `ROLE_NETWORK_ERROR` | RoleNetworkError | ❌ | General network failure |
| `ROLE_NETWORK_TIMEOUT` | RoleNetworkError | ✅ | Request timed out |
| `ROLE_NETWORK_CONNECTION_REFUSED` | RoleNetworkError | ✅ | Connection refused |
| `ROLE_NETWORK_DNS_ERROR` | RoleNetworkError | ✅ | DNS resolution failed |
| `ROLE_UNKNOWN_ERROR` | RoleUnknownError | ❌ | Unexpected failure |

### Using ErrorCodes

Import the constants to avoid typos:

```ts
import { ErrorCodes, RoleAuthError } from "role-sdk";

if (error.code === ErrorCodes.AUTH_TOKEN_EXPIRED) {
  // Handle token expiry
}
```

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