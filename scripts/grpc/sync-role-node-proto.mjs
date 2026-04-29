import { existsSync } from "node:fs";

import { copyProtoDir, listProtoFiles, resolveSourceProtoDir, targetProtoDir } from "./utils.mjs";

const required = process.argv.slice(2).includes("--required");
const sourceDir = resolveSourceProtoDir();

if (!existsSync(sourceDir)) {
  const message = [
    `Proto source not found at ${sourceDir}.`,
    "Ensure role-node exists at ../role-node or set ROLE_NODE_PROTO_DIR."
  ].join(" ");

  if (required) {
    console.error(`[contracts:grpc:sync] ${message}`);
    process.exit(1);
  }

  console.warn(`[contracts:grpc:sync] ${message}`);
  process.exit(0);
}

const copied = copyProtoDir(sourceDir, targetProtoDir);

if (!copied) {
  console.error(`[contracts:grpc:sync] Unable to copy proto directory from ${sourceDir}`);
  process.exit(1);
}

const protoFiles = listProtoFiles(targetProtoDir);

if (protoFiles.length === 0) {
  console.error(`[contracts:grpc:sync] No .proto files found after sync in ${targetProtoDir}.`);
  process.exit(1);
}

console.log(`[contracts:grpc:sync] Synced ${sourceDir} -> ${targetProtoDir}`);
console.log(
  `[contracts:grpc:sync] Proto files: ${protoFiles.map((filePath) => filePath.split("/").pop()).join(", ")}`
);
