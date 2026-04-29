import { mkdirSync } from "node:fs";
import path from "node:path";
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

const parseBoolean = (value, defaultValue) => {
  if (value == null) {
    return defaultValue;
  }

  const normalized = String(value).trim().toLowerCase();

  if (["1", "true", "yes", "on"].includes(normalized)) {
    return true;
  }

  if (["0", "false", "no", "off"].includes(normalized)) {
    return false;
  }

  return defaultValue;
};

const joinRemotePath = (...segments) => {
  const cleaned = segments
    .filter((segment) => segment != null)
    .map((segment, index) => {
      const value = String(segment);
      if (index === 0) {
        return value.replace(/\/+$/g, "");
      }

      return value.replace(/^\/+|\/+$/g, "");
    })
    .filter((segment) => segment.length > 0);

  return cleaned.join("/");
};

const remoteTarget = process.env.REMOTE_SSH_TARGET;
const remoteRepoPath = process.env.REMOTE_ROLE_SDK_PATH;
const remoteOutputDir =
  process.env.REMOTE_DART_REST_SDK_OUTPUT_DIR ??
  process.env.REMOTE_DART_SDK_OUTPUT_DIR ??
  "generated/dart/role_rest_sdk";
const localOutputDir =
  process.env.LOCAL_DART_REST_SDK_OUTPUT_DIR ??
  process.env.LOCAL_DART_SDK_OUTPUT_DIR ??
  "generated/dart/role_rest_sdk";
const keepConfig = parseBoolean(process.env.REMOTE_SYNC_KEEP_CONFIG, true);
const remoteRsyncOpts = parseFlagArgs(process.env.REMOTE_RSYNC_OPTS);

if (!remoteTarget || !remoteRepoPath) {
  console.error(
    "[contracts:openapi:remote:pull:dart] Missing required env vars: " +
      "REMOTE_SSH_TARGET and REMOTE_ROLE_SDK_PATH."
  );
  process.exit(1);
}

const workspaceRoot = process.cwd();
const resolvedLocalOutputDir = path.resolve(workspaceRoot, localOutputDir);
mkdirSync(resolvedLocalOutputDir, { recursive: true });

const remoteSourceDir = joinRemotePath(remoteRepoPath, remoteOutputDir);

const rsyncArgs = ["-avz", ...remoteRsyncOpts];

if (keepConfig) {
  rsyncArgs.push(
    "--exclude=pubspec.yaml",
    "--exclude=analysis_options.yaml",
    "--exclude=.gitignore",
    "--exclude=.openapi-generator-ignore"
  );
}

rsyncArgs.push(`${remoteTarget}:${remoteSourceDir}/`, `${resolvedLocalOutputDir}/`);

console.log(
  `[contracts:openapi:remote:pull:dart] Syncing ${remoteTarget}:${remoteSourceDir} -> ${resolvedLocalOutputDir}`
);

const result = spawnSync("rsync", rsyncArgs, {
  stdio: "inherit"
});

if (result.error) {
  console.error(
    `[contracts:openapi:remote:pull:dart] Failed to execute rsync: ${result.error.message}`
  );
  process.exit(1);
}

if (result.status !== 0) {
  process.exit(result.status ?? 1);
}

console.log("[contracts:openapi:remote:pull:dart] Done.");
