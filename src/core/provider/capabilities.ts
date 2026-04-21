export type BackendCapabilities = {
  auth: {
    refresh: boolean;
  };
  workspaces: {
    updates: boolean;
  };
  runs: {
    cancel: boolean;
  };
  importExport: {
    jobs: boolean;
  };
};

export const defaultCapabilities = (backend: "node" | "serverpod"): BackendCapabilities => {
  const supportsRunCancel = backend === "node";
  return {
    auth: { refresh: true },
    workspaces: { updates: true },
    runs: { cancel: supportsRunCancel },
    importExport: { jobs: true }
  };
};
