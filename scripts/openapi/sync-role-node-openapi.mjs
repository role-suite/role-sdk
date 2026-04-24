import { existsSync } from "node:fs";

import {
  inspectOpenApi,
  parseArgs,
  readJsonFile,
  resolveSourceOpenApiPath,
  targetOpenApiPath,
  writeJsonFile
} from "./utils.mjs";

const { required } = parseArgs(process.argv.slice(2));
const sourcePath = resolveSourceOpenApiPath();

if (!existsSync(sourcePath)) {
  const message = [
    `OpenAPI source not found at ${sourcePath}.`,
    "Generate it in role-node first (pnpm contracts:openapi:generate) or set ROLE_NODE_OPENAPI_PATH."
  ].join(" ");

  if (required) {
    console.error(`[contracts:openapi:sync] ${message}`);
    process.exit(1);
  }

  console.warn(`[contracts:openapi:sync] ${message}`);
  process.exit(0);
}

let openApi;
try {
  openApi = readJsonFile(sourcePath);
} catch (error) {
  console.error(`[contracts:openapi:sync] Failed to parse source JSON: ${String(error)}`);
  process.exit(1);
}

const diagnostics = inspectOpenApi(openApi);
if (diagnostics.errors.length > 0) {
  console.error("[contracts:openapi:sync] Source OpenAPI is invalid:");
  for (const issue of diagnostics.errors) {
    console.error(` - ${issue}`);
  }
  process.exit(1);
}

writeJsonFile(targetOpenApiPath, openApi);

console.log(`[contracts:openapi:sync] Synced ${sourcePath} -> ${targetOpenApiPath}`);

if (diagnostics.warnings.length > 0) {
  console.warn("[contracts:openapi:sync] Warnings:");
  for (const issue of diagnostics.warnings) {
    console.warn(` - ${issue}`);
  }
}
