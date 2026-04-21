export const computeBackoffDelay = (params: {
  attempt: number;
  baseDelayMs: number;
  maxDelayMs: number;
  jitter: boolean;
}): number => {
  const exponential = Math.min(params.maxDelayMs, params.baseDelayMs * 2 ** (params.attempt - 1));

  if (!params.jitter) {
    return exponential;
  }

  const half = Math.floor(exponential / 2);
  return half + Math.floor(Math.random() * Math.max(1, exponential - half));
};

export const wait = (delayMs: number, signal?: AbortSignal): Promise<void> => {
  return new Promise((resolve, reject) => {
    const timer = setTimeout(() => {
      cleanup();
      resolve();
    }, delayMs);

    const onAbort = () => {
      cleanup();
      reject(new DOMException("Retry wait aborted", "AbortError"));
    };

    const cleanup = () => {
      clearTimeout(timer);
      signal?.removeEventListener("abort", onAbort);
    };

    signal?.addEventListener("abort", onAbort, { once: true });
  });
};
