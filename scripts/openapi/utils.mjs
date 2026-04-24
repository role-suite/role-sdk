import { mkdirSync, readFileSync, writeFileSync } from "node:fs";
import path from "node:path";

export const workspaceRoot = process.cwd();

export const defaultSourceOpenApiPath = path.resolve(
  workspaceRoot,
  "..",
  "role-node",
  "contracts",
  "generated",
  "openapi.json"
);

export const targetOpenApiPath = path.resolve(
  workspaceRoot,
  "contracts",
  "role-node",
  "openapi.json"
);

export const generatedSdkSpecPath = path.resolve(
  workspaceRoot,
  "contracts",
  "generated",
  "role-node-sdk-spec.json"
);

export const generatedDartOpenApiPath = path.resolve(
  workspaceRoot,
  "contracts",
  "generated",
  "role-node-openapi-dart.json"
);

export const resolveSourceOpenApiPath = () => {
  const override = process.env.ROLE_NODE_OPENAPI_PATH;
  return override ? path.resolve(override) : defaultSourceOpenApiPath;
};

export const readJsonFile = (filePath) => {
  const raw = readFileSync(filePath, "utf8");
  return JSON.parse(raw);
};

export const writeJsonFile = (filePath, value) => {
  mkdirSync(path.dirname(filePath), { recursive: true });
  writeFileSync(filePath, `${JSON.stringify(value, null, 2)}\n`, "utf8");
};

export const parseArgs = (argv) => {
  const argSet = new Set(argv);
  return {
    required: argSet.has("--required"),
    strict: argSet.has("--strict")
  };
};

export const inspectOpenApi = (doc) => {
  const errors = [];
  const warnings = [];

  if (!doc || typeof doc !== "object" || Array.isArray(doc)) {
    errors.push("OpenAPI document must be a JSON object.");
    return { errors, warnings };
  }

  if (typeof doc.openapi !== "string") {
    errors.push("Missing required 'openapi' string.");
  } else if (!doc.openapi.startsWith("3.")) {
    warnings.push(`Expected OpenAPI 3.x, received '${doc.openapi}'.`);
  }

  if (!doc.info || typeof doc.info !== "object") {
    errors.push("Missing required 'info' object.");
  } else {
    if (typeof doc.info.title !== "string" || doc.info.title.length === 0) {
      errors.push("Missing required 'info.title' string.");
    }
    if (typeof doc.info.version !== "string" || doc.info.version.length === 0) {
      errors.push("Missing required 'info.version' string.");
    }
  }

  if (!doc.paths || typeof doc.paths !== "object" || Array.isArray(doc.paths)) {
    errors.push("Missing required 'paths' object.");
    return { errors, warnings };
  }

  const operationIds = new Map();
  const operationIdMissing = [];
  let operationCount = 0;

  for (const [routePath, pathItem] of Object.entries(doc.paths)) {
    if (routePath.includes(":")) {
      errors.push(`Path '${routePath}' uses Express-style params; use '{param}' instead.`);
    }

    if (!pathItem || typeof pathItem !== "object" || Array.isArray(pathItem)) {
      warnings.push(`Path '${routePath}' is not an object.`);
      continue;
    }

    for (const method of ["get", "post", "patch", "put", "delete", "head", "options"]) {
      const operation = pathItem[method];
      if (!operation || typeof operation !== "object" || Array.isArray(operation)) {
        continue;
      }

      operationCount += 1;
      const operationId = operation.operationId;
      if (typeof operationId !== "string" || operationId.length === 0) {
        operationIdMissing.push(`${method.toUpperCase()} ${routePath}`);
        continue;
      }

      const key = operationId.trim();
      if (key.length === 0) {
        operationIdMissing.push(`${method.toUpperCase()} ${routePath}`);
        continue;
      }

      const seen = operationIds.get(key);
      if (seen) {
        errors.push(
          `Duplicate operationId '${key}' for ${seen} and ${method.toUpperCase()} ${routePath}.`
        );
      } else {
        operationIds.set(key, `${method.toUpperCase()} ${routePath}`);
      }
    }
  }

  if (operationCount === 0) {
    warnings.push("No HTTP operations found under 'paths'.");
  }

  if (operationIdMissing.length > 0) {
    warnings.push(
      `${operationIdMissing.length} operations are missing operationId: ${operationIdMissing.join(", ")}.`
    );
  }

  return { errors, warnings };
};
