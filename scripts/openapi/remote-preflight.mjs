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
const remoteSshOpts = parseFlagArgs(process.env.REMOTE_SSH_OPTS);
const dockerVolumeOptions = process.env.OPENAPI_DOCKER_VOLUME_OPTIONS ?? "";
const dockerMountPath = `${remoteRepoPath}:/local${dockerVolumeOptions}`;

if (!remoteTarget || !remoteRepoPath) {
  console.error(
    "[contracts:openapi:remote:preflight] Missing required env vars: " +
      "REMOTE_SSH_TARGET and REMOTE_ROLE_SDK_PATH."
  );
  process.exit(1);
}

const checks = [
  "set -euo pipefail",
  "command -v git >/dev/null",
  "command -v node >/dev/null",
  "command -v pnpm >/dev/null",
  "command -v docker >/dev/null",
  `test -d ${shellQuote(remoteRepoPath)}`,
  `cd ${shellQuote(remoteRepoPath)}`,
  "git rev-parse --is-inside-work-tree >/dev/null",
  'echo "[preflight] Remote host: $(hostname)"',
  'echo "[preflight] Repo path: $(pwd)"',
  'echo "[preflight] Branch: $(git rev-parse --abbrev-ref HEAD)"',
  'echo "[preflight] Commit: $(git rev-parse --short HEAD)"',
  'echo "[preflight] Node: $(node --version)"',
  'echo "[preflight] pnpm: $(pnpm --version)"',
  'echo "[preflight] Docker: $(docker --version)"',
  `docker run --rm -v ${shellQuote(dockerMountPath)} alpine:3.22 sh -lc 'test -r /local/package.json'`,
  'echo "[preflight] Docker bind mount: OK"'
];

const remoteCommand = checks.join("; ");

console.log(`[contracts:openapi:remote:preflight] Checking ${remoteTarget}:${remoteRepoPath}`);

const result = spawnSync("ssh", [...remoteSshOpts, remoteTarget, remoteCommand], {
  stdio: "inherit"
});

if (result.error) {
  console.error(
    `[contracts:openapi:remote:preflight] Failed to execute ssh: ${result.error.message}`
  );
  process.exit(1);
}

if (result.status !== 0) {
  process.exit(result.status ?? 1);
}

console.log("[contracts:openapi:remote:preflight] OK.");
