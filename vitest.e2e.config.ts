import { defineConfig } from "vitest/config";

export default defineConfig({
  test: {
    environment: "node",
    include: ["tests/e2e/**/*.test.ts"],
    setupFiles: [],
    testTimeout: 30000,
    hook: {
      beforeEach: (ctx) => {
        // Skip E2E tests if no URL is configured
        const baseUrl = process.env.E2E_ROLE_NODE_URL || process.env.ROLE_API_URL;
        if (!baseUrl || baseUrl === "http://localhost:3000") {
          ctx.skip();
        }
      }
    }
  }
});
