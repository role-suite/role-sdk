import type { Id } from "../../config.js";

export const asRecord = (value: unknown): Record<string, unknown> | null => {
  if (!value || typeof value !== "object") {
    return null;
  }

  return value as Record<string, unknown>;
};

export const pickId = (record: Record<string, unknown>, keys: string[]): Id | undefined => {
  for (const key of keys) {
    const candidate = record[key];
    if (typeof candidate === "string" || typeof candidate === "number") {
      return candidate;
    }
  }

  return undefined;
};

export const pickString = (
  record: Record<string, unknown>,
  keys: string[]
): string | undefined => {
  for (const key of keys) {
    const candidate = record[key];
    if (typeof candidate === "string") {
      return candidate;
    }
  }

  return undefined;
};

export const toIsoString = (value: unknown): string | undefined => {
  if (typeof value === "string") {
    const parsed = new Date(value);
    return Number.isNaN(parsed.valueOf()) ? value : parsed.toISOString();
  }

  if (typeof value === "number" || value instanceof Date) {
    const parsed = new Date(value);
    return Number.isNaN(parsed.valueOf()) ? undefined : parsed.toISOString();
  }

  return undefined;
};
