export type RequestBuildParams = {
  baseUrl: string;
  path: string;
  query?: Record<string, string | number | boolean | undefined>;
};

export const buildUrl = (params: RequestBuildParams): string => {
  const url = new URL(params.path, params.baseUrl);

  for (const [key, value] of Object.entries(params.query ?? {})) {
    if (value === undefined) {
      continue;
    }

    url.searchParams.set(key, String(value));
  }

  return url.toString();
};
