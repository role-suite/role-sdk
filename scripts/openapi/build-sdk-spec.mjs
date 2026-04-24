import { existsSync } from "node:fs";

import {
  generatedSdkSpecPath,
  inspectOpenApi,
  readJsonFile,
  targetOpenApiPath,
  writeJsonFile
} from "./utils.mjs";

const HTTP_METHODS = ["get", "post", "patch", "put", "delete", "head", "options"];

const normalizeTag = (operation) => {
  if (Array.isArray(operation.tags) && operation.tags.length > 0) {
    const first = operation.tags[0];
    if (typeof first === "string" && first.length > 0) {
      return first;
    }
  }

  return "ungrouped";
};

if (!existsSync(targetOpenApiPath)) {
  console.warn(
    `[contracts:openapi:build-spec] No OpenAPI artifact at ${targetOpenApiPath}. ` +
      "Run pnpm contracts:openapi:sync first."
  );
  process.exit(0);
}

let openApi;
try {
  openApi = readJsonFile(targetOpenApiPath);
} catch (error) {
  console.error(`[contracts:openapi:build-spec] Failed to parse JSON: ${String(error)}`);
  process.exit(1);
}

const diagnostics = inspectOpenApi(openApi);
if (diagnostics.errors.length > 0) {
  console.error("[contracts:openapi:build-spec] Cannot build SDK spec; OpenAPI has errors:");
  for (const issue of diagnostics.errors) {
    console.error(` - ${issue}`);
  }
  process.exit(1);
}

const operations = [];
for (const [routePath, pathItem] of Object.entries(openApi.paths ?? {})) {
  if (!pathItem || typeof pathItem !== "object" || Array.isArray(pathItem)) {
    continue;
  }

  for (const method of HTTP_METHODS) {
    const operation = pathItem[method];
    if (!operation || typeof operation !== "object" || Array.isArray(operation)) {
      continue;
    }

    const responses =
      operation.responses && typeof operation.responses === "object" ? operation.responses : {};
    const successStatuses = Object.keys(responses)
      .filter((status) => /^2\d\d$/.test(status))
      .map((status) => Number(status))
      .sort((left, right) => left - right);
    const errorStatuses = Object.keys(responses)
      .filter((status) => /^([45]\d\d)$/.test(status))
      .map((status) => Number(status))
      .sort((left, right) => left - right);

    operations.push({
      operationId: typeof operation.operationId === "string" ? operation.operationId : null,
      tag: normalizeTag(operation),
      method: method.toUpperCase(),
      path: routePath,
      hasRequestBody: operation.requestBody !== undefined,
      successStatuses,
      errorStatuses,
      requiresAuth:
        Array.isArray(operation.security) && operation.security.length > 0
          ? true
          : Array.isArray(openApi.security) && openApi.security.length > 0
            ? true
            : false
    });
  }
}

operations.sort((left, right) => {
  if (left.path !== right.path) {
    return left.path.localeCompare(right.path);
  }
  return left.method.localeCompare(right.method);
});

const modules = {};
for (const operation of operations) {
  const key = operation.tag;
  if (!modules[key]) {
    modules[key] = [];
  }

  modules[key].push(operation.operationId ?? `${operation.method} ${operation.path}`);
}

const sdkSpec = {
  version: 1,
  generatedAt: new Date().toISOString(),
  source: {
    openapi: typeof openApi.openapi === "string" ? openApi.openapi : null,
    title: typeof openApi.info?.title === "string" ? openApi.info.title : null,
    apiVersion: typeof openApi.info?.version === "string" ? openApi.info.version : null
  },
  operationCount: operations.length,
  operations,
  modules
};

writeJsonFile(generatedSdkSpecPath, sdkSpec);

console.log(
  `[contracts:openapi:build-spec] Generated ${generatedSdkSpecPath} with ${operations.length} operations.`
);
