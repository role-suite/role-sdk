import { existsSync } from "node:fs";

import {
  generatedDartOpenApiPath,
  inspectOpenApi,
  readJsonFile,
  targetOpenApiPath,
  writeJsonFile
} from "./utils.mjs";

const normalizeSchemaObject = (schema, path = []) => {
  if (!schema || typeof schema !== "object" || Array.isArray(schema)) {
    return;
  }

  const properties =
    schema.properties && typeof schema.properties === "object" && !Array.isArray(schema.properties)
      ? schema.properties
      : null;

  if (properties && Array.isArray(schema.required)) {
    const hasLegacyId = Object.prototype.hasOwnProperty.call(properties, "_id");

    if (hasLegacyId) {
      schema.required = schema.required.filter((name) => name !== "_id");
    }
  }

  const oneOf = schema.oneOf;
  const anyOf = schema.anyOf;

  if (Array.isArray(oneOf)) {
    schema.oneOf = oneOf.filter((s) => !isNullableOnly(s));
  }

  if (Array.isArray(anyOf)) {
    schema.anyOf = anyOf.filter((s) => !isNullableOnly(s));
  }

  for (const value of Object.values(schema)) {
    if (Array.isArray(value)) {
      for (const item of value) {
        normalizeSchemaObject(item, [...path, value]);
      }
    } else if (value && typeof value === "object") {
      normalizeSchemaObject(value, [...path, value]);
    }
  }
};

const isNullableOnly = (schema) => {
  if (!schema || typeof schema !== "object") {
    return false;
  }

  if (schema.nullable === true) {
    return true;
  }

  if (schema.enum && Array.isArray(schema.enum) && schema.enum.length === 1 && schema.enum[0] === null) {
    return true;
  }

  if (schema.type === "null") {
    return true;
  }

  return false;
};

if (!existsSync(targetOpenApiPath)) {
  console.warn(
    `[contracts:openapi:build-dart-openapi] No OpenAPI artifact at ${targetOpenApiPath}. ` +
      "Run pnpm contracts:openapi:sync first."
  );
  process.exit(0);
}

let openApi;
try {
  openApi = readJsonFile(targetOpenApiPath);
} catch (error) {
  console.error(`[contracts:openapi:build-dart-openapi] Failed to parse JSON: ${String(error)}`);
  process.exit(1);
}

const diagnostics = inspectOpenApi(openApi);
if (diagnostics.errors.length > 0) {
  console.error("[contracts:openapi:build-dart-openapi] OpenAPI has validation errors:");
  for (const issue of diagnostics.errors) {
    console.error(` - ${issue}`);
  }
  process.exit(1);
}

const dartOpenApi = structuredClone(openApi);
normalizeSchemaObject(dartOpenApi);

writeJsonFile(generatedDartOpenApiPath, dartOpenApi);

console.log(
  `[contracts:openapi:build-dart-openapi] Generated ${generatedDartOpenApiPath} from ${targetOpenApiPath}.`
);
