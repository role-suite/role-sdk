import { existsSync } from "node:fs";

import { inspectOpenApi, parseArgs, readJsonFile, targetOpenApiPath } from "./utils.mjs";

const { required, strict } = parseArgs(process.argv.slice(2));

if (!existsSync(targetOpenApiPath)) {
  const message = [
    `No OpenAPI artifact found at ${targetOpenApiPath}.`,
    "Run pnpm contracts:openapi:sync after role-node exports openapi.json."
  ].join(" ");

  if (required) {
    console.error(`[contracts:openapi:check] ${message}`);
    process.exit(1);
  }

  console.warn(`[contracts:openapi:check] ${message}`);
  process.exit(0);
}

let openApi;
try {
  openApi = readJsonFile(targetOpenApiPath);
} catch (error) {
  console.error(`[contracts:openapi:check] Failed to parse JSON: ${String(error)}`);
  process.exit(1);
}

const diagnostics = inspectOpenApi(openApi);

if (diagnostics.errors.length > 0) {
  console.error("[contracts:openapi:check] Validation errors:");
  for (const issue of diagnostics.errors) {
    console.error(` - ${issue}`);
  }
  process.exit(1);
}

if (diagnostics.warnings.length > 0) {
  const logger = strict ? console.error : console.warn;
  logger("[contracts:openapi:check] Validation warnings:");
  for (const issue of diagnostics.warnings) {
    logger(` - ${issue}`);
  }
  if (strict) {
    process.exit(1);
  }
}

const pathCount = Object.keys(openApi.paths ?? {}).length;
console.log(
  `[contracts:openapi:check] OpenAPI artifact is valid (${openApi.openapi}, ${pathCount} paths).`
);
