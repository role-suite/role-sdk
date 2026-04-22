import type { Id } from "../../config.js";

/**
 * @experimental This type may change before 1.0.0.
 */
export type RegisterInput = {
  email: string;
  password: string;
  name?: string;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type LoginInput = {
  email: string;
  password: string;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type RefreshInput = {
  refreshToken?: string;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type LogoutInput = {
  allSessions?: boolean;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type CurrentUserMembership = {
  workspaceId: Id;
  role?: string;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type CurrentUserResult = {
  id: Id;
  email?: string;
  name?: string;
  createdAt?: string;
  memberships?: CurrentUserMembership[];
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type AuthSessionResult = {
  accessToken: string;
  refreshToken?: string;
  user?: CurrentUserResult;
  workspace?: {
    id: Id;
    name?: string;
  };
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type LogoutResult = {
  revoked: boolean;
};
