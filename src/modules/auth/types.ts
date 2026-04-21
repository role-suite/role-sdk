import type { Id } from "../../config.js";

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
