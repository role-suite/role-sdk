# Role SDK Quickstart

A TypeScript SDK for Role APIs with dual-backend support (Node REST + Serverpod RPC).

## Installation

```bash
npm install role-sdk
```

## Basic Usage

### Node.js

```typescript
import { createRoleSdk } from "role-sdk";

const sdk = createRoleSdk({
  backend: "node",
  baseUrl: "https://api.yourapp.com"
});

// Login
const session = await sdk.auth.login({
  email: "user@example.com",
  password: "secret"
});

console.log(session.user);
```

### Browser

```typescript
import { createRoleSdk } from "role-sdk";

const sdk = createRoleSdk({
  backend: "serverpod",
  baseUrl: "https://api.yourapp.com",
  auth: {
    accessToken: "your-access-token"
  }
});

const workspaces = await sdk.workspaces.list();
```

## Authentication

### Login with email/password

```typescript
const session = await sdk.auth.login({
  email: "user@example.com",
  password: "secret"
});

// Tokens are auto-stored
await sdk.auth.logout();
```

### Using existing tokens

```typescript
const sdk = createRoleSdk({
  backend: "node",
  baseUrl: "https://api.yourapp.com",
  auth: {
    accessToken: "existing-token",
    refreshToken: "refresh-token",
    autoRefresh: true
  }
});
```

## Workspaces

```typescript
// List workspaces
const workspaces = await sdk.workspaces.list();

// Create workspace
const ws = await sdk.workspaces.create({
  name: "My Team"
});

// Add member
await sdk.workspaces.addMember({
  workspaceId: ws.id,
  email: "teammate@example.com",
  role: "editor"
});
```

## Collections

```typescript
// Create collection
const collection = await sdk.collections.create({
  workspaceId: ws.id,
  name: "API Collection"
});

// Add endpoint
const endpoint = await sdk.collections.createEndpoint({
  workspaceId: ws.id,
  collectionId: collection.id,
  name: "Get Users",
  method: "GET",
  url: "/users"
});
```

## Environments

```typescript
// Create environment
const env = await sdk.environments.create({
  workspaceId: ws.id,
  name: "Production"
});

// Add variable
await sdk.environments.createVariable({
  workspaceId: ws.id,
  environmentId: env.id,
  key: "API_KEY",
  value: "secret-value",
  isSecret: true
});
```

## Runs

```typescript
// Run adhoc request
const run = await sdk.runs.create({
  workspaceId: ws.id,
  source: {
    kind: "adhoc",
    request: {
      method: "GET",
      url: "https://api.example.com/data"
    }
  }
});

// Run from collection
const run2 = await sdk.runs.create({
  workspaceId: ws.id,
  source: {
    kind: "collection",
    collectionId: collection.id,
    endpointId: endpoint.id
  },
  environmentId: env.id
});
```

## Using Scoped Client

```typescript
const wsClient = sdk.inWorkspace(ws.id);

// All operations automatically include workspaceId
const envs = await wsClient.environments.list();
const runs = await wsClient.runs.create({
  source: { kind: "adhoc", request: { method: "GET", url: "/test" } }
});
```

## Hooks (Logging/Diagnostics)

```typescript
const sdk = createRoleSdk({
  backend: "node",
  baseUrl: "https://api.yourapp.com",
  hooks: {
    onRequest: (ctx) => {
      console.log(`Request: ${ctx.method} ${ctx.module}`);
    },
    onResponse: (ctx) => {
      console.log(`Response: ${ctx.status} in ${ctx.durationMs}ms (retries: ${ctx.retryCount})`);
    },
    onError: (ctx) => {
      console.error(`Error: ${ctx.error.code} (attempt ${ctx.retryCount})`);
    }
  }
});
```

## Error Handling

```typescript
import { createRoleSdk, RoleAuthError, RoleApiError } from "role-sdk";

try {
  await sdk.workspaces.list();
} catch (error) {
  if (error instanceof RoleAuthError) {
    // Handle auth errors (401, token expired)
    console.log("Please login");
  } else if (error instanceof RoleApiError) {
    // Handle API errors (4xx, 5xx)
    console.log(`Error: ${error.code} - ${error.status}`);
  } else {
    throw error;
  }
}
```

## API Reference

### `createRoleSdk(config)`

| Option | Type | Default | Description |
|--------|------|---------|-------------|
| `backend` | `"node"` or `"serverpod"` | required | Backend provider |
| `baseUrl` | `string` | required | API base URL |
| `timeoutMs` | `number` | 30000 | Request timeout |
| `retry` | `RetryConfig` | see below | Retry options |
| `auth` | `AuthConfig` | see below | Auth options |
| `hooks` | `HooksConfig` | optional | Request hooks |

### RetryConfig

```typescript
{
  enabled: true,        // Enable retries
  maxAttempts: 3,   // Max attempts
  baseDelayMs: 200,  // Base delay
  maxDelayMs: 2000,  // Max delay
  jitter: true       // Add randomness
}
```

### AuthConfig

```typescript
{
  mode: "token",        // or "none"
  accessToken: "...",
  refreshToken: "...",
  autoRefresh: true,  // Auto-refresh on 401
  tokenStore: {...}   // Custom store
}
```