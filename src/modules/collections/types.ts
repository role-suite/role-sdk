import type { Id } from "../../config.js";

export type CollectionSummary = {
  id: Id;
  workspaceId: Id;
  name?: string;
  description?: string;
  createdAt?: string;
  updatedAt?: string;
};

export type CreateCollectionInput = {
  workspaceId: Id;
  name: string;
  description?: string;
};

export type UpdateCollectionInput = {
  workspaceId: Id;
  collectionId: Id;
  name?: string;
  description?: string;
};

export type CollectionFolder = {
  id: Id;
  workspaceId: Id;
  collectionId: Id;
  name?: string;
  parentFolderId?: Id;
  position?: number;
  createdAt?: string;
  updatedAt?: string;
};

export type CreateCollectionFolderInput = {
  workspaceId: Id;
  collectionId: Id;
  name: string;
  parentFolderId?: Id;
  position?: number;
};

export type UpdateCollectionFolderInput = {
  workspaceId: Id;
  collectionId: Id;
  folderId: Id;
  name?: string;
  parentFolderId?: Id;
  position?: number;
};

export type CollectionEndpoint = {
  id: Id;
  workspaceId: Id;
  collectionId: Id;
  folderId?: Id;
  name?: string;
  method?: string;
  url?: string;
  body?: unknown;
  auth?: Record<string, unknown>;
  createdAt?: string;
  updatedAt?: string;
};

export type CreateCollectionEndpointInput = {
  workspaceId: Id;
  collectionId: Id;
  folderId?: Id;
  name: string;
  method: string;
  url: string;
  body?: unknown;
  auth?: Record<string, unknown>;
};

export type UpdateCollectionEndpointInput = {
  workspaceId: Id;
  collectionId: Id;
  endpointId: Id;
  folderId?: Id;
  name?: string;
  method?: string;
  url?: string;
  body?: unknown;
  auth?: Record<string, unknown>;
};

export type EndpointExample = {
  id: Id;
  workspaceId: Id;
  collectionId: Id;
  endpointId: Id;
  name?: string;
  request?: unknown;
  response?: unknown;
  createdAt?: string;
  updatedAt?: string;
};

export type CreateEndpointExampleInput = {
  workspaceId: Id;
  collectionId: Id;
  endpointId: Id;
  name: string;
  request?: unknown;
  response?: unknown;
};

export type UpdateEndpointExampleInput = {
  workspaceId: Id;
  collectionId: Id;
  endpointId: Id;
  exampleId: Id;
  name?: string;
  request?: unknown;
  response?: unknown;
};
