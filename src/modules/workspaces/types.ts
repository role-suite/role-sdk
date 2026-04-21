import type { Id } from "../../config.js";

export type WorkspaceSummary = {
  id: Id;
  name?: string;
  slug?: string;
  createdAt?: string;
  updatedAt?: string;
};
