import {
  cpSync,
  existsSync,
  mkdirSync,
  readdirSync,
  readFileSync,
  rmSync,
  statSync,
  writeFileSync
} from "node:fs";
import path from "node:path";

export const workspaceRoot = process.cwd();

export const defaultSourceProtoDir = path.resolve(workspaceRoot, "..", "role-node", "proto");

export const targetProtoDir = path.resolve(workspaceRoot, "contracts", "role-node", "proto");

export const generatedDartGrpcOutputDir = path.resolve(
  workspaceRoot,
  process.env.DART_GRPC_SDK_OUTPUT_DIR ?? "generated/dart/role_grpc_sdk"
);

export const resolveSourceProtoDir = () => {
  const override = process.env.ROLE_NODE_PROTO_DIR;
  return override ? path.resolve(override) : defaultSourceProtoDir;
};

export const ensureEmptyDir = (dirPath) => {
  rmSync(dirPath, { recursive: true, force: true });
  mkdirSync(dirPath, { recursive: true });
};

export const listProtoFiles = (dirPath) => {
  const files = readdirSync(dirPath)
    .filter((entry) => entry.endsWith(".proto"))
    .sort((left, right) => left.localeCompare(right));

  return files.map((fileName) => path.join(dirPath, fileName));
};

export const copyProtoDir = (sourceDir, destinationDir) => {
  if (!existsSync(sourceDir) || !statSync(sourceDir).isDirectory()) {
    return false;
  }

  ensureEmptyDir(destinationDir);
  cpSync(sourceDir, destinationDir, { recursive: true });
  return true;
};

export const writeTextFile = (filePath, value) => {
  mkdirSync(path.dirname(filePath), { recursive: true });
  writeFileSync(filePath, value, "utf8");
};

export const readTextFile = (filePath) => {
  return readFileSync(filePath, "utf8");
};
