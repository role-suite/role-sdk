import { defineConfig } from "vitest/config";
import { existsSync, readdirSync, statSync, readFileSync } from "fs";
import { join } from "path";

function loadContractFixtures(provider: "role-node" | "role-serverpod"): Record<string, unknown>[] {
  const contractsDir = join(process.cwd(), "contracts", provider);

  if (!existsSync(contractsDir)) {
    return [];
  }

  function loadDir(dir: string): Record<string, unknown>[] {
    const results: Record<string, unknown>[] = [];

    for (const entry of readdirSync(dir)) {
      const fullPath = join(dir, entry);
      const stat = statSync(fullPath);

      if (stat.isDirectory()) {
        results.push(...loadDir(fullPath));
      } else if (entry.endsWith(".json")) {
        const content = readFileSync(fullPath, "utf-8");
        results.push(JSON.parse(content));
      }
    }

    return results;
  }

  return loadDir(contractsDir);
}

export default defineConfig({
  test: {
    environment: "node",
    include: ["tests/contract/**/*.test.ts"],
    setupFiles: []
  }
});

export { loadContractFixtures };