import { describe, expect, it } from "vitest";

import {
  mapNodeEnvironmentList,
  mapNodeEnvironmentSummary,
  mapNodeEnvironmentVariable,
  mapNodeEnvironmentVariables
} from "../../../src/core/mappers/node/index.js";
import {
  mapServerpodEnvironmentSummary,
  mapServerpodEnvironmentVariable
} from "../../../src/core/mappers/serverpod/index.js";

describe("phase4 environment mappers", () => {
  it("maps environment summary from node provider", () => {
    const result = mapNodeEnvironmentSummary({
      id: "env-1",
      workspace_id: "ws-1",
      name: "Development",
      description: "Dev environment",
      created_at: "2026-04-21T12:00:00.000Z"
    });

    expect(result).toEqual({
      id: "env-1",
      workspaceId: "ws-1",
      name: "Development",
      description: "Dev environment",
      createdAt: "2026-04-21T12:00:00.000Z"
    });
  });

  it("maps environment summary from serverpod provider", () => {
    const result = mapServerpodEnvironmentSummary({
      environmentId: "env-1",
      workspaceId: "ws-1",
      name: "Production",
      description: "Prod environment",
      createdAt: "2026-04-21T13:00:00.000Z"
    });

    expect(result).toEqual({
      id: "env-1",
      workspaceId: "ws-1",
      name: "Production",
      description: "Prod environment",
      createdAt: "2026-04-21T13:00:00.000Z"
    });
  });

  it("maps environment list from node provider", () => {
    const result = mapNodeEnvironmentList({
      items: [
        { id: "env-1", workspace_id: "ws-1", name: "Dev" },
        { id: "env-2", workspace_id: "ws-1", name: "Prod" }
      ]
    });

    expect(result).toHaveLength(2);
    expect(result[0]!.name).toBe("Dev");
    expect(result[1]!.name).toBe("Prod");
  });

  it("maps environment variable from node provider", () => {
    const result = mapNodeEnvironmentVariable({
      id: "var-1",
      workspace_id: "ws-1",
      environment_id: "env-1",
      key: "API_URL",
      value: "https://api.example.com",
      enabled: true,
      isSecret: false,
      position: 0,
      created_at: "2026-04-21T12:00:00.000Z"
    });

    expect(result).toEqual({
      id: "var-1",
      workspaceId: "ws-1",
      environmentId: "env-1",
      key: "API_URL",
      value: "https://api.example.com",
      enabled: true,
      isSecret: false,
      position: 0,
      createdAt: "2026-04-21T12:00:00.000Z"
    });
  });

  it("maps environment variable from serverpod provider", () => {
    const result = mapServerpodEnvironmentVariable({
      variableId: "var-1",
      workspaceId: "ws-1",
      environmentId: "env-1",
      key: "SECRET_KEY",
      value: "secret-value",
      enabled: true,
      isSecret: true,
      position: 1,
      createdAt: "2026-04-21T14:00:00.000Z"
    });

    expect(result).toEqual({
      id: "var-1",
      workspaceId: "ws-1",
      environmentId: "env-1",
      key: "SECRET_KEY",
      value: "secret-value",
      enabled: true,
      isSecret: true,
      position: 1,
      createdAt: "2026-04-21T14:00:00.000Z"
    });
  });

  it("maps environment variables list from node provider", () => {
    const result = mapNodeEnvironmentVariables({
      variables: [
        { id: "var-1", workspace_id: "ws-1", environment_id: "env-1", key: "KEY_1", value: "val1" },
        { id: "var-2", workspace_id: "ws-1", environment_id: "env-1", key: "KEY_2", value: "val2" }
      ]
    });

    expect(result).toHaveLength(2);
    expect(result[0]!.key).toBe("KEY_1");
    expect(result[1]!.key).toBe("KEY_2");
  });

  it("normalizes environment dates to ISO strings", () => {
    const node = mapNodeEnvironmentSummary({
      id: "env-1",
      workspace_id: "ws-1",
      name: "Test",
      created_at: "2026-04-21T12:00:00.000Z"
    });

    const serverpod = mapServerpodEnvironmentSummary({
      environmentId: "env-1",
      workspaceId: "ws-1",
      name: "Test",
      createdAt: 1776774600000
    });

    expect(typeof node.createdAt).toBe("string");
    expect(typeof serverpod.createdAt).toBe("string");
  });

  it("handles missing optional fields gracefully", () => {
    const result = mapNodeEnvironmentSummary({
      id: "env-1",
      workspace_id: "ws-1"
    });

    expect(result.id).toBe("env-1");
    expect(result.workspaceId).toBe("ws-1");
    expect(result.name).toBeUndefined();
    expect(result.description).toBeUndefined();
  });
});
