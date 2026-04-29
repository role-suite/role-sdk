// This is a generated file - do not edit.
//
// Generated from collections.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use collectionItemDescriptor instead')
const CollectionItem$json = {
  '1': 'CollectionItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'legacy_id', '3': 2, '4': 1, '5': 3, '10': 'legacyId'},
    {'1': 'workspace_id', '3': 3, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    {
      '1': 'created_by_user_id',
      '3': 6,
      '4': 1,
      '5': 3,
      '10': 'createdByUserId'
    },
    {'1': 'created_at', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `CollectionItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionItemDescriptor = $convert.base64Decode(
    'Cg5Db2xsZWN0aW9uSXRlbRIOCgJpZBgBIAEoA1ICaWQSGwoJbGVnYWN5X2lkGAIgASgDUghsZW'
    'dhY3lJZBIhCgx3b3Jrc3BhY2VfaWQYAyABKANSC3dvcmtzcGFjZUlkEhIKBG5hbWUYBCABKAlS'
    'BG5hbWUSIAoLZGVzY3JpcHRpb24YBSABKAlSC2Rlc2NyaXB0aW9uEisKEmNyZWF0ZWRfYnlfdX'
    'Nlcl9pZBgGIAEoA1IPY3JlYXRlZEJ5VXNlcklkEh0KCmNyZWF0ZWRfYXQYByABKAlSCWNyZWF0'
    'ZWRBdBIdCgp1cGRhdGVkX2F0GAggASgJUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use collectionEndpointItemDescriptor instead')
const CollectionEndpointItem$json = {
  '1': 'CollectionEndpointItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 3, '10': 'collectionId'},
    {'1': 'folder_id', '3': 3, '4': 1, '5': 3, '10': 'folderId'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'method', '3': 5, '4': 1, '5': 9, '10': 'method'},
    {'1': 'url', '3': 6, '4': 1, '5': 9, '10': 'url'},
    {'1': 'headers_json', '3': 7, '4': 1, '5': 9, '10': 'headersJson'},
    {'1': 'query_params_json', '3': 8, '4': 1, '5': 9, '10': 'queryParamsJson'},
    {'1': 'body_json', '3': 9, '4': 1, '5': 9, '10': 'bodyJson'},
    {'1': 'auth_json', '3': 10, '4': 1, '5': 9, '10': 'authJson'},
    {'1': 'position', '3': 11, '4': 1, '5': 5, '10': 'position'},
    {
      '1': 'created_by_user_id',
      '3': 12,
      '4': 1,
      '5': 3,
      '10': 'createdByUserId'
    },
    {'1': 'created_at', '3': 13, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 14, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `CollectionEndpointItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionEndpointItemDescriptor = $convert.base64Decode(
    'ChZDb2xsZWN0aW9uRW5kcG9pbnRJdGVtEg4KAmlkGAEgASgDUgJpZBIjCg1jb2xsZWN0aW9uX2'
    'lkGAIgASgDUgxjb2xsZWN0aW9uSWQSGwoJZm9sZGVyX2lkGAMgASgDUghmb2xkZXJJZBISCgRu'
    'YW1lGAQgASgJUgRuYW1lEhYKBm1ldGhvZBgFIAEoCVIGbWV0aG9kEhAKA3VybBgGIAEoCVIDdX'
    'JsEiEKDGhlYWRlcnNfanNvbhgHIAEoCVILaGVhZGVyc0pzb24SKgoRcXVlcnlfcGFyYW1zX2pz'
    'b24YCCABKAlSD3F1ZXJ5UGFyYW1zSnNvbhIbCglib2R5X2pzb24YCSABKAlSCGJvZHlKc29uEh'
    'sKCWF1dGhfanNvbhgKIAEoCVIIYXV0aEpzb24SGgoIcG9zaXRpb24YCyABKAVSCHBvc2l0aW9u'
    'EisKEmNyZWF0ZWRfYnlfdXNlcl9pZBgMIAEoA1IPY3JlYXRlZEJ5VXNlcklkEh0KCmNyZWF0ZW'
    'RfYXQYDSABKAlSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GA4gASgJUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use collectionFolderItemDescriptor instead')
const CollectionFolderItem$json = {
  '1': 'CollectionFolderItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 3, '10': 'collectionId'},
    {'1': 'parent_folder_id', '3': 3, '4': 1, '5': 3, '10': 'parentFolderId'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'position', '3': 5, '4': 1, '5': 5, '10': 'position'},
    {
      '1': 'created_by_user_id',
      '3': 6,
      '4': 1,
      '5': 3,
      '10': 'createdByUserId'
    },
    {'1': 'created_at', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `CollectionFolderItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionFolderItemDescriptor = $convert.base64Decode(
    'ChRDb2xsZWN0aW9uRm9sZGVySXRlbRIOCgJpZBgBIAEoA1ICaWQSIwoNY29sbGVjdGlvbl9pZB'
    'gCIAEoA1IMY29sbGVjdGlvbklkEigKEHBhcmVudF9mb2xkZXJfaWQYAyABKANSDnBhcmVudEZv'
    'bGRlcklkEhIKBG5hbWUYBCABKAlSBG5hbWUSGgoIcG9zaXRpb24YBSABKAVSCHBvc2l0aW9uEi'
    'sKEmNyZWF0ZWRfYnlfdXNlcl9pZBgGIAEoA1IPY3JlYXRlZEJ5VXNlcklkEh0KCmNyZWF0ZWRf'
    'YXQYByABKAlSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GAggASgJUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use collectionExampleItemDescriptor instead')
const CollectionExampleItem$json = {
  '1': 'CollectionExampleItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'endpoint_id', '3': 2, '4': 1, '5': 3, '10': 'endpointId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'status_code', '3': 4, '4': 1, '5': 5, '10': 'statusCode'},
    {'1': 'headers_json', '3': 5, '4': 1, '5': 9, '10': 'headersJson'},
    {'1': 'body', '3': 6, '4': 1, '5': 9, '10': 'body'},
    {'1': 'position', '3': 7, '4': 1, '5': 5, '10': 'position'},
    {
      '1': 'created_by_user_id',
      '3': 8,
      '4': 1,
      '5': 3,
      '10': 'createdByUserId'
    },
    {'1': 'created_at', '3': 9, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 10, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `CollectionExampleItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionExampleItemDescriptor = $convert.base64Decode(
    'ChVDb2xsZWN0aW9uRXhhbXBsZUl0ZW0SDgoCaWQYASABKANSAmlkEh8KC2VuZHBvaW50X2lkGA'
    'IgASgDUgplbmRwb2ludElkEhIKBG5hbWUYAyABKAlSBG5hbWUSHwoLc3RhdHVzX2NvZGUYBCAB'
    'KAVSCnN0YXR1c0NvZGUSIQoMaGVhZGVyc19qc29uGAUgASgJUgtoZWFkZXJzSnNvbhISCgRib2'
    'R5GAYgASgJUgRib2R5EhoKCHBvc2l0aW9uGAcgASgFUghwb3NpdGlvbhIrChJjcmVhdGVkX2J5'
    'X3VzZXJfaWQYCCABKANSD2NyZWF0ZWRCeVVzZXJJZBIdCgpjcmVhdGVkX2F0GAkgASgJUgljcm'
    'VhdGVkQXQSHQoKdXBkYXRlZF9hdBgKIAEoCVIJdXBkYXRlZEF0');

@$core.Deprecated('Use collectionsListRequestDescriptor instead')
const CollectionsListRequest$json = {
  '1': 'CollectionsListRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
  ],
};

/// Descriptor for `CollectionsListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionsListRequestDescriptor =
    $convert.base64Decode(
        'ChZDb2xsZWN0aW9uc0xpc3RSZXF1ZXN0EiEKDHdvcmtzcGFjZV9pZBgBIAEoA1ILd29ya3NwYW'
        'NlSWQ=');

@$core.Deprecated('Use collectionByIdRequestDescriptor instead')
const CollectionByIdRequest$json = {
  '1': 'CollectionByIdRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 3, '10': 'collectionId'},
  ],
};

/// Descriptor for `CollectionByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionByIdRequestDescriptor = $convert.base64Decode(
    'ChVDb2xsZWN0aW9uQnlJZFJlcXVlc3QSIQoMd29ya3NwYWNlX2lkGAEgASgDUgt3b3Jrc3BhY2'
    'VJZBIjCg1jb2xsZWN0aW9uX2lkGAIgASgDUgxjb2xsZWN0aW9uSWQ=');

@$core.Deprecated('Use collectionCreateRequestDescriptor instead')
const CollectionCreateRequest$json = {
  '1': 'CollectionCreateRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `CollectionCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionCreateRequestDescriptor = $convert.base64Decode(
    'ChdDb2xsZWN0aW9uQ3JlYXRlUmVxdWVzdBIhCgx3b3Jrc3BhY2VfaWQYASABKANSC3dvcmtzcG'
    'FjZUlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0'
    'aW9u');

@$core.Deprecated('Use collectionUpdateRequestDescriptor instead')
const CollectionUpdateRequest$json = {
  '1': 'CollectionUpdateRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 3, '10': 'collectionId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `CollectionUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionUpdateRequestDescriptor = $convert.base64Decode(
    'ChdDb2xsZWN0aW9uVXBkYXRlUmVxdWVzdBIhCgx3b3Jrc3BhY2VfaWQYASABKANSC3dvcmtzcG'
    'FjZUlkEiMKDWNvbGxlY3Rpb25faWQYAiABKANSDGNvbGxlY3Rpb25JZBISCgRuYW1lGAMgASgJ'
    'UgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAQgASgJUgtkZXNjcmlwdGlvbg==');

@$core.Deprecated('Use collectionDeleteRequestDescriptor instead')
const CollectionDeleteRequest$json = {
  '1': 'CollectionDeleteRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 3, '10': 'collectionId'},
  ],
};

/// Descriptor for `CollectionDeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionDeleteRequestDescriptor =
    $convert.base64Decode(
        'ChdDb2xsZWN0aW9uRGVsZXRlUmVxdWVzdBIhCgx3b3Jrc3BhY2VfaWQYASABKANSC3dvcmtzcG'
        'FjZUlkEiMKDWNvbGxlY3Rpb25faWQYAiABKANSDGNvbGxlY3Rpb25JZA==');

@$core.Deprecated('Use collectionEndpointByIdRequestDescriptor instead')
const CollectionEndpointByIdRequest$json = {
  '1': 'CollectionEndpointByIdRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 3, '10': 'collectionId'},
    {'1': 'endpoint_id', '3': 3, '4': 1, '5': 3, '10': 'endpointId'},
  ],
};

/// Descriptor for `CollectionEndpointByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionEndpointByIdRequestDescriptor =
    $convert.base64Decode(
        'Ch1Db2xsZWN0aW9uRW5kcG9pbnRCeUlkUmVxdWVzdBIhCgx3b3Jrc3BhY2VfaWQYASABKANSC3'
        'dvcmtzcGFjZUlkEiMKDWNvbGxlY3Rpb25faWQYAiABKANSDGNvbGxlY3Rpb25JZBIfCgtlbmRw'
        'b2ludF9pZBgDIAEoA1IKZW5kcG9pbnRJZA==');

@$core.Deprecated('Use collectionEndpointCreateRequestDescriptor instead')
const CollectionEndpointCreateRequest$json = {
  '1': 'CollectionEndpointCreateRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 3, '10': 'collectionId'},
    {'1': 'folder_id', '3': 3, '4': 1, '5': 3, '10': 'folderId'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'method', '3': 5, '4': 1, '5': 9, '10': 'method'},
    {'1': 'url', '3': 6, '4': 1, '5': 9, '10': 'url'},
    {'1': 'headers_json', '3': 7, '4': 1, '5': 9, '10': 'headersJson'},
    {'1': 'query_params_json', '3': 8, '4': 1, '5': 9, '10': 'queryParamsJson'},
    {'1': 'body_json', '3': 9, '4': 1, '5': 9, '10': 'bodyJson'},
    {'1': 'auth_json', '3': 10, '4': 1, '5': 9, '10': 'authJson'},
    {'1': 'position', '3': 11, '4': 1, '5': 5, '10': 'position'},
  ],
};

/// Descriptor for `CollectionEndpointCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionEndpointCreateRequestDescriptor = $convert.base64Decode(
    'Ch9Db2xsZWN0aW9uRW5kcG9pbnRDcmVhdGVSZXF1ZXN0EiEKDHdvcmtzcGFjZV9pZBgBIAEoA1'
    'ILd29ya3NwYWNlSWQSIwoNY29sbGVjdGlvbl9pZBgCIAEoA1IMY29sbGVjdGlvbklkEhsKCWZv'
    'bGRlcl9pZBgDIAEoA1IIZm9sZGVySWQSEgoEbmFtZRgEIAEoCVIEbmFtZRIWCgZtZXRob2QYBS'
    'ABKAlSBm1ldGhvZBIQCgN1cmwYBiABKAlSA3VybBIhCgxoZWFkZXJzX2pzb24YByABKAlSC2hl'
    'YWRlcnNKc29uEioKEXF1ZXJ5X3BhcmFtc19qc29uGAggASgJUg9xdWVyeVBhcmFtc0pzb24SGw'
    'oJYm9keV9qc29uGAkgASgJUghib2R5SnNvbhIbCglhdXRoX2pzb24YCiABKAlSCGF1dGhKc29u'
    'EhoKCHBvc2l0aW9uGAsgASgFUghwb3NpdGlvbg==');

@$core.Deprecated('Use collectionEndpointUpdateRequestDescriptor instead')
const CollectionEndpointUpdateRequest$json = {
  '1': 'CollectionEndpointUpdateRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 3, '10': 'collectionId'},
    {'1': 'endpoint_id', '3': 3, '4': 1, '5': 3, '10': 'endpointId'},
    {'1': 'folder_id', '3': 4, '4': 1, '5': 3, '10': 'folderId'},
    {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    {'1': 'method', '3': 6, '4': 1, '5': 9, '10': 'method'},
    {'1': 'url', '3': 7, '4': 1, '5': 9, '10': 'url'},
    {'1': 'headers_json', '3': 8, '4': 1, '5': 9, '10': 'headersJson'},
    {'1': 'query_params_json', '3': 9, '4': 1, '5': 9, '10': 'queryParamsJson'},
    {'1': 'body_json', '3': 10, '4': 1, '5': 9, '10': 'bodyJson'},
    {'1': 'auth_json', '3': 11, '4': 1, '5': 9, '10': 'authJson'},
    {'1': 'position', '3': 12, '4': 1, '5': 5, '10': 'position'},
  ],
};

/// Descriptor for `CollectionEndpointUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionEndpointUpdateRequestDescriptor = $convert.base64Decode(
    'Ch9Db2xsZWN0aW9uRW5kcG9pbnRVcGRhdGVSZXF1ZXN0EiEKDHdvcmtzcGFjZV9pZBgBIAEoA1'
    'ILd29ya3NwYWNlSWQSIwoNY29sbGVjdGlvbl9pZBgCIAEoA1IMY29sbGVjdGlvbklkEh8KC2Vu'
    'ZHBvaW50X2lkGAMgASgDUgplbmRwb2ludElkEhsKCWZvbGRlcl9pZBgEIAEoA1IIZm9sZGVySW'
    'QSEgoEbmFtZRgFIAEoCVIEbmFtZRIWCgZtZXRob2QYBiABKAlSBm1ldGhvZBIQCgN1cmwYByAB'
    'KAlSA3VybBIhCgxoZWFkZXJzX2pzb24YCCABKAlSC2hlYWRlcnNKc29uEioKEXF1ZXJ5X3Bhcm'
    'Ftc19qc29uGAkgASgJUg9xdWVyeVBhcmFtc0pzb24SGwoJYm9keV9qc29uGAogASgJUghib2R5'
    'SnNvbhIbCglhdXRoX2pzb24YCyABKAlSCGF1dGhKc29uEhoKCHBvc2l0aW9uGAwgASgFUghwb3'
    'NpdGlvbg==');

@$core.Deprecated('Use collectionFolderByIdRequestDescriptor instead')
const CollectionFolderByIdRequest$json = {
  '1': 'CollectionFolderByIdRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 3, '10': 'collectionId'},
    {'1': 'folder_id', '3': 3, '4': 1, '5': 3, '10': 'folderId'},
  ],
};

/// Descriptor for `CollectionFolderByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionFolderByIdRequestDescriptor =
    $convert.base64Decode(
        'ChtDb2xsZWN0aW9uRm9sZGVyQnlJZFJlcXVlc3QSIQoMd29ya3NwYWNlX2lkGAEgASgDUgt3b3'
        'Jrc3BhY2VJZBIjCg1jb2xsZWN0aW9uX2lkGAIgASgDUgxjb2xsZWN0aW9uSWQSGwoJZm9sZGVy'
        'X2lkGAMgASgDUghmb2xkZXJJZA==');

@$core.Deprecated('Use collectionFolderCreateRequestDescriptor instead')
const CollectionFolderCreateRequest$json = {
  '1': 'CollectionFolderCreateRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 3, '10': 'collectionId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'parent_folder_id', '3': 4, '4': 1, '5': 3, '10': 'parentFolderId'},
    {'1': 'position', '3': 5, '4': 1, '5': 5, '10': 'position'},
  ],
};

/// Descriptor for `CollectionFolderCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionFolderCreateRequestDescriptor = $convert.base64Decode(
    'Ch1Db2xsZWN0aW9uRm9sZGVyQ3JlYXRlUmVxdWVzdBIhCgx3b3Jrc3BhY2VfaWQYASABKANSC3'
    'dvcmtzcGFjZUlkEiMKDWNvbGxlY3Rpb25faWQYAiABKANSDGNvbGxlY3Rpb25JZBISCgRuYW1l'
    'GAMgASgJUgRuYW1lEigKEHBhcmVudF9mb2xkZXJfaWQYBCABKANSDnBhcmVudEZvbGRlcklkEh'
    'oKCHBvc2l0aW9uGAUgASgFUghwb3NpdGlvbg==');

@$core.Deprecated('Use collectionFolderUpdateRequestDescriptor instead')
const CollectionFolderUpdateRequest$json = {
  '1': 'CollectionFolderUpdateRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 3, '10': 'collectionId'},
    {'1': 'folder_id', '3': 3, '4': 1, '5': 3, '10': 'folderId'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'parent_folder_id', '3': 5, '4': 1, '5': 3, '10': 'parentFolderId'},
    {'1': 'position', '3': 6, '4': 1, '5': 5, '10': 'position'},
  ],
};

/// Descriptor for `CollectionFolderUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionFolderUpdateRequestDescriptor = $convert.base64Decode(
    'Ch1Db2xsZWN0aW9uRm9sZGVyVXBkYXRlUmVxdWVzdBIhCgx3b3Jrc3BhY2VfaWQYASABKANSC3'
    'dvcmtzcGFjZUlkEiMKDWNvbGxlY3Rpb25faWQYAiABKANSDGNvbGxlY3Rpb25JZBIbCglmb2xk'
    'ZXJfaWQYAyABKANSCGZvbGRlcklkEhIKBG5hbWUYBCABKAlSBG5hbWUSKAoQcGFyZW50X2ZvbG'
    'Rlcl9pZBgFIAEoA1IOcGFyZW50Rm9sZGVySWQSGgoIcG9zaXRpb24YBiABKAVSCHBvc2l0aW9u');

@$core.Deprecated('Use collectionExampleByIdRequestDescriptor instead')
const CollectionExampleByIdRequest$json = {
  '1': 'CollectionExampleByIdRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 3, '10': 'collectionId'},
    {'1': 'endpoint_id', '3': 3, '4': 1, '5': 3, '10': 'endpointId'},
    {'1': 'example_id', '3': 4, '4': 1, '5': 3, '10': 'exampleId'},
  ],
};

/// Descriptor for `CollectionExampleByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionExampleByIdRequestDescriptor = $convert.base64Decode(
    'ChxDb2xsZWN0aW9uRXhhbXBsZUJ5SWRSZXF1ZXN0EiEKDHdvcmtzcGFjZV9pZBgBIAEoA1ILd2'
    '9ya3NwYWNlSWQSIwoNY29sbGVjdGlvbl9pZBgCIAEoA1IMY29sbGVjdGlvbklkEh8KC2VuZHBv'
    'aW50X2lkGAMgASgDUgplbmRwb2ludElkEh0KCmV4YW1wbGVfaWQYBCABKANSCWV4YW1wbGVJZA'
    '==');

@$core.Deprecated('Use collectionExampleCreateRequestDescriptor instead')
const CollectionExampleCreateRequest$json = {
  '1': 'CollectionExampleCreateRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 3, '10': 'collectionId'},
    {'1': 'endpoint_id', '3': 3, '4': 1, '5': 3, '10': 'endpointId'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'status_code', '3': 5, '4': 1, '5': 5, '10': 'statusCode'},
    {'1': 'headers_json', '3': 6, '4': 1, '5': 9, '10': 'headersJson'},
    {'1': 'body', '3': 7, '4': 1, '5': 9, '10': 'body'},
    {'1': 'position', '3': 8, '4': 1, '5': 5, '10': 'position'},
  ],
};

/// Descriptor for `CollectionExampleCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionExampleCreateRequestDescriptor = $convert.base64Decode(
    'Ch5Db2xsZWN0aW9uRXhhbXBsZUNyZWF0ZVJlcXVlc3QSIQoMd29ya3NwYWNlX2lkGAEgASgDUg'
    't3b3Jrc3BhY2VJZBIjCg1jb2xsZWN0aW9uX2lkGAIgASgDUgxjb2xsZWN0aW9uSWQSHwoLZW5k'
    'cG9pbnRfaWQYAyABKANSCmVuZHBvaW50SWQSEgoEbmFtZRgEIAEoCVIEbmFtZRIfCgtzdGF0dX'
    'NfY29kZRgFIAEoBVIKc3RhdHVzQ29kZRIhCgxoZWFkZXJzX2pzb24YBiABKAlSC2hlYWRlcnNK'
    'c29uEhIKBGJvZHkYByABKAlSBGJvZHkSGgoIcG9zaXRpb24YCCABKAVSCHBvc2l0aW9u');

@$core.Deprecated('Use collectionExampleUpdateRequestDescriptor instead')
const CollectionExampleUpdateRequest$json = {
  '1': 'CollectionExampleUpdateRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 3, '10': 'collectionId'},
    {'1': 'endpoint_id', '3': 3, '4': 1, '5': 3, '10': 'endpointId'},
    {'1': 'example_id', '3': 4, '4': 1, '5': 3, '10': 'exampleId'},
    {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    {'1': 'status_code', '3': 6, '4': 1, '5': 5, '10': 'statusCode'},
    {'1': 'headers_json', '3': 7, '4': 1, '5': 9, '10': 'headersJson'},
    {'1': 'body', '3': 8, '4': 1, '5': 9, '10': 'body'},
    {'1': 'position', '3': 9, '4': 1, '5': 5, '10': 'position'},
  ],
};

/// Descriptor for `CollectionExampleUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionExampleUpdateRequestDescriptor = $convert.base64Decode(
    'Ch5Db2xsZWN0aW9uRXhhbXBsZVVwZGF0ZVJlcXVlc3QSIQoMd29ya3NwYWNlX2lkGAEgASgDUg'
    't3b3Jrc3BhY2VJZBIjCg1jb2xsZWN0aW9uX2lkGAIgASgDUgxjb2xsZWN0aW9uSWQSHwoLZW5k'
    'cG9pbnRfaWQYAyABKANSCmVuZHBvaW50SWQSHQoKZXhhbXBsZV9pZBgEIAEoA1IJZXhhbXBsZU'
    'lkEhIKBG5hbWUYBSABKAlSBG5hbWUSHwoLc3RhdHVzX2NvZGUYBiABKAVSCnN0YXR1c0NvZGUS'
    'IQoMaGVhZGVyc19qc29uGAcgASgJUgtoZWFkZXJzSnNvbhISCgRib2R5GAggASgJUgRib2R5Eh'
    'oKCHBvc2l0aW9uGAkgASgFUghwb3NpdGlvbg==');

@$core.Deprecated('Use collectionItemResponseDescriptor instead')
const CollectionItemResponse$json = {
  '1': 'CollectionItemResponse',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.role.v1.CollectionItem',
      '10': 'item'
    },
  ],
};

/// Descriptor for `CollectionItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionItemResponseDescriptor =
    $convert.base64Decode(
        'ChZDb2xsZWN0aW9uSXRlbVJlc3BvbnNlEisKBGl0ZW0YASABKAsyFy5yb2xlLnYxLkNvbGxlY3'
        'Rpb25JdGVtUgRpdGVt');

@$core.Deprecated('Use collectionItemsResponseDescriptor instead')
const CollectionItemsResponse$json = {
  '1': 'CollectionItemsResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.role.v1.CollectionItem',
      '10': 'items'
    },
  ],
};

/// Descriptor for `CollectionItemsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionItemsResponseDescriptor =
    $convert.base64Decode(
        'ChdDb2xsZWN0aW9uSXRlbXNSZXNwb25zZRItCgVpdGVtcxgBIAMoCzIXLnJvbGUudjEuQ29sbG'
        'VjdGlvbkl0ZW1SBWl0ZW1z');

@$core.Deprecated('Use collectionEndpointItemResponseDescriptor instead')
const CollectionEndpointItemResponse$json = {
  '1': 'CollectionEndpointItemResponse',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.role.v1.CollectionEndpointItem',
      '10': 'item'
    },
  ],
};

/// Descriptor for `CollectionEndpointItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionEndpointItemResponseDescriptor =
    $convert.base64Decode(
        'Ch5Db2xsZWN0aW9uRW5kcG9pbnRJdGVtUmVzcG9uc2USMwoEaXRlbRgBIAEoCzIfLnJvbGUudj'
        'EuQ29sbGVjdGlvbkVuZHBvaW50SXRlbVIEaXRlbQ==');

@$core.Deprecated('Use collectionEndpointItemsResponseDescriptor instead')
const CollectionEndpointItemsResponse$json = {
  '1': 'CollectionEndpointItemsResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.role.v1.CollectionEndpointItem',
      '10': 'items'
    },
  ],
};

/// Descriptor for `CollectionEndpointItemsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionEndpointItemsResponseDescriptor =
    $convert.base64Decode(
        'Ch9Db2xsZWN0aW9uRW5kcG9pbnRJdGVtc1Jlc3BvbnNlEjUKBWl0ZW1zGAEgAygLMh8ucm9sZS'
        '52MS5Db2xsZWN0aW9uRW5kcG9pbnRJdGVtUgVpdGVtcw==');

@$core.Deprecated('Use collectionFolderItemResponseDescriptor instead')
const CollectionFolderItemResponse$json = {
  '1': 'CollectionFolderItemResponse',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.role.v1.CollectionFolderItem',
      '10': 'item'
    },
  ],
};

/// Descriptor for `CollectionFolderItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionFolderItemResponseDescriptor =
    $convert.base64Decode(
        'ChxDb2xsZWN0aW9uRm9sZGVySXRlbVJlc3BvbnNlEjEKBGl0ZW0YASABKAsyHS5yb2xlLnYxLk'
        'NvbGxlY3Rpb25Gb2xkZXJJdGVtUgRpdGVt');

@$core.Deprecated('Use collectionFolderItemsResponseDescriptor instead')
const CollectionFolderItemsResponse$json = {
  '1': 'CollectionFolderItemsResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.role.v1.CollectionFolderItem',
      '10': 'items'
    },
  ],
};

/// Descriptor for `CollectionFolderItemsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionFolderItemsResponseDescriptor =
    $convert.base64Decode(
        'Ch1Db2xsZWN0aW9uRm9sZGVySXRlbXNSZXNwb25zZRIzCgVpdGVtcxgBIAMoCzIdLnJvbGUudj'
        'EuQ29sbGVjdGlvbkZvbGRlckl0ZW1SBWl0ZW1z');

@$core.Deprecated('Use collectionExampleItemResponseDescriptor instead')
const CollectionExampleItemResponse$json = {
  '1': 'CollectionExampleItemResponse',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.role.v1.CollectionExampleItem',
      '10': 'item'
    },
  ],
};

/// Descriptor for `CollectionExampleItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionExampleItemResponseDescriptor =
    $convert.base64Decode(
        'Ch1Db2xsZWN0aW9uRXhhbXBsZUl0ZW1SZXNwb25zZRIyCgRpdGVtGAEgASgLMh4ucm9sZS52MS'
        '5Db2xsZWN0aW9uRXhhbXBsZUl0ZW1SBGl0ZW0=');

@$core.Deprecated('Use collectionExampleItemsResponseDescriptor instead')
const CollectionExampleItemsResponse$json = {
  '1': 'CollectionExampleItemsResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.role.v1.CollectionExampleItem',
      '10': 'items'
    },
  ],
};

/// Descriptor for `CollectionExampleItemsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionExampleItemsResponseDescriptor =
    $convert.base64Decode(
        'Ch5Db2xsZWN0aW9uRXhhbXBsZUl0ZW1zUmVzcG9uc2USNAoFaXRlbXMYASADKAsyHi5yb2xlLn'
        'YxLkNvbGxlY3Rpb25FeGFtcGxlSXRlbVIFaXRlbXM=');

@$core.Deprecated('Use collectionActionResponseDescriptor instead')
const CollectionActionResponse$json = {
  '1': 'CollectionActionResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `CollectionActionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionActionResponseDescriptor =
    $convert.base64Decode(
        'ChhDb2xsZWN0aW9uQWN0aW9uUmVzcG9uc2USFgoGc3RhdHVzGAEgASgJUgZzdGF0dXM=');
