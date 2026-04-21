import type { TokenPair, TokenStore } from "../../config.js";
import { RoleAuthError } from "../errors/sdk-error.js";

type RefreshFn = (refreshToken: string) => Promise<TokenPair>;

export class AuthManager {
  private readonly tokenStore: TokenStore;
  private refreshPromise: Promise<TokenPair> | null;

  constructor(tokenStore: TokenStore) {
    this.tokenStore = tokenStore;
    this.refreshPromise = null;
  }

  async getTokens(): Promise<TokenPair | null> {
    return this.tokenStore.get();
  }

  async setTokens(tokens: TokenPair | null): Promise<void> {
    try {
      await this.tokenStore.set(tokens);
    } catch (error) {
      throw new RoleAuthError("ROLE_TOKEN_STORE_ERROR", "Failed to persist auth tokens.", {
        cause: error
      });
    }
  }

  async clearTokens(): Promise<void> {
    try {
      await this.tokenStore.clear();
    } catch (error) {
      throw new RoleAuthError("ROLE_TOKEN_STORE_ERROR", "Failed to clear auth tokens.", {
        cause: error
      });
    }
  }

  async getAccessToken(): Promise<string | undefined> {
    const tokens = await this.getTokens();
    return tokens?.accessToken;
  }

  async getRefreshToken(): Promise<string | undefined> {
    const tokens = await this.getTokens();
    return tokens?.refreshToken;
  }

  async refreshWithSingleFlight(refreshFn: RefreshFn): Promise<TokenPair> {
    if (this.refreshPromise) {
      return this.refreshPromise;
    }

    this.refreshPromise = this.doRefresh(refreshFn);

    try {
      return await this.refreshPromise;
    } finally {
      this.refreshPromise = null;
    }
  }

  private async doRefresh(refreshFn: RefreshFn): Promise<TokenPair> {
    const refreshToken = await this.getRefreshToken();

    if (!refreshToken) {
      throw new RoleAuthError("ROLE_AUTH_REFRESH_MISSING_TOKEN", "Refresh token is missing.");
    }

    try {
      const nextTokens = await refreshFn(refreshToken);
      await this.setTokens(nextTokens);
      return nextTokens;
    } catch (error) {
      throw new RoleAuthError("ROLE_AUTH_REFRESH_FAILED", "Token refresh failed.", {
        cause: error
      });
    }
  }
}
