import type { Id } from "../../config.js";

export type RegisterInput = {
  email: string;
  password: string;
  name?: string;
};

export type LoginInput = {
  email: string;
  password: string;
};

export type RefreshInput = {
  refreshToken?: string;
};

export type LogoutInput = {
  allSessions?: boolean;
};

export type CurrentUserMembership = {
  workspaceId: Id;
  role?: string;
};

export type CurrentUserResult = {
  id: Id;
  email?: string;
  name?: string;
  createdAt?: string;
  memberships?: CurrentUserMembership[];
};

export type AuthSessionResult = {
  accessToken: string;
  refreshToken?: string;
  user?: CurrentUserResult;
  workspace?: {
    id: Id;
    name?: string;
  };
};

export type LogoutResult = {
  revoked: boolean;
};
