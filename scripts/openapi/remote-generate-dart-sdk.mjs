import { spawnSync } from "node:child_process";
import { loadDotEnv } from "./load-env.mjs";

loadDotEnv();

const parseFlagArgs = (raw) => {
  if (!raw || typeof raw !== "string") {
    return [];
  }

  return raw
    .split(/\s+/)
    .map((item) => item.trim())
    .filter((item) => item.length > 0);
};

const shellQuote = (value) => `'${String(value).replace(/'/g, "'\\''")}'`;

const remoteTarget = process.env.REMOTE_SSH_TARGET;
const remoteRepoPath = process.env.REMOTE_ROLE_SDK_PATH;
const remoteOutputDir =
  process.env.REMOTE_DART_REST_SDK_OUTPUT_DIR ??
  process.env.REMOTE_DART_SDK_OUTPUT_DIR ??
  "generated/dart/role_rest_sdk";
const remoteSshOpts = parseFlagArgs(process.env.REMOTE_SSH_OPTS);

if (!remoteTarget || !remoteRepoPath) {
  console.error(
    "[contracts:openapi:remote:generate:dart] Missing required env vars: " +
      "REMOTE_SSH_TARGET and REMOTE_ROLE_SDK_PATH."
  );
  process.exit(1);
}

const envAssignments = [`DART_REST_SDK_OUTPUT_DIR=${shellQuote(remoteOutputDir)}`];

if (process.env.OPENAPI_GENERATOR_IMAGE) {
  envAssignments.push(`OPENAPI_GENERATOR_IMAGE=${shellQuote(process.env.OPENAPI_GENERATOR_IMAGE)}`);
}

if (process.env.ROLE_NODE_OPENAPI_PATH) {
  envAssignments.push(`ROLE_NODE_OPENAPI_PATH=${shellQuote(process.env.ROLE_NODE_OPENAPI_PATH)}`);
}

if (process.env.OPENAPI_DOCKER_VOLUME_OPTIONS) {
  envAssignments.push(
    `OPENAPI_DOCKER_VOLUME_OPTIONS=${shellQuote(process.env.OPENAPI_DOCKER_VOLUME_OPTIONS)}`
  );
}

const remoteCommand = [
  "set -euo pipefail",
  `cd ${shellQuote(remoteRepoPath)}`,
  `${envAssignments.join(" ")} pnpm contracts:openapi:generate:dart`
].join("; ");

console.log(
  `[contracts:openapi:remote:generate:dart] Running remote generation on ${remoteTarget}:${remoteRepoPath}`
);

const result = spawnSync("ssh", [...remoteSshOpts, remoteTarget, remoteCommand], {
  stdio: "inherit"
});

if (result.error) {
  console.error(
    `[contracts:openapi:remote:generate:dart] Failed to execute ssh: ${result.error.message}`
  );
  process.exit(1);
}

if (result.status !== 0) {
  process.exit(result.status ?? 1);
}

console.log("[contracts:openapi:remote:generate:dart] Done.");
