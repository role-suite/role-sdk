// This is a generated file - do not edit.
//
// Generated from workspaces.proto.

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

@$core.Deprecated('Use workspaceSummaryDescriptor instead')
const WorkspaceSummary$json = {
  '1': 'WorkspaceSummary',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'legacy_id', '3': 2, '4': 1, '5': 3, '10': 'legacyId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'slug', '3': 4, '4': 1, '5': 9, '10': 'slug'},
    {'1': 'type', '3': 5, '4': 1, '5': 9, '10': 'type'},
    {'1': 'role', '3': 6, '4': 1, '5': 9, '10': 'role'},
  ],
};

/// Descriptor for `WorkspaceSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List workspaceSummaryDescriptor = $convert.base64Decode(
    'ChBXb3Jrc3BhY2VTdW1tYXJ5Eg4KAmlkGAEgASgDUgJpZBIbCglsZWdhY3lfaWQYAiABKANSCG'
    'xlZ2FjeUlkEhIKBG5hbWUYAyABKAlSBG5hbWUSEgoEc2x1ZxgEIAEoCVIEc2x1ZxISCgR0eXBl'
    'GAUgASgJUgR0eXBlEhIKBHJvbGUYBiABKAlSBHJvbGU=');

@$core.Deprecated('Use workspaceMemberDescriptor instead')
const WorkspaceMember$json = {
  '1': 'WorkspaceMember',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {'1': 'role', '3': 4, '4': 1, '5': 9, '10': 'role'},
  ],
};

/// Descriptor for `WorkspaceMember`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List workspaceMemberDescriptor = $convert.base64Decode(
    'Cg9Xb3Jrc3BhY2VNZW1iZXISFwoHdXNlcl9pZBgBIAEoA1IGdXNlcklkEhIKBG5hbWUYAiABKA'
    'lSBG5hbWUSFAoFZW1haWwYAyABKAlSBWVtYWlsEhIKBHJvbGUYBCABKAlSBHJvbGU=');

@$core.Deprecated('Use workspaceInvitationDescriptor instead')
const WorkspaceInvitation$json = {
  '1': 'WorkspaceInvitation',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'workspace_id', '3': 2, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {'1': 'role', '3': 4, '4': 1, '5': 9, '10': 'role'},
    {'1': 'token', '3': 5, '4': 1, '5': 9, '10': 'token'},
    {'1': 'expires_at', '3': 6, '4': 1, '5': 9, '10': 'expiresAt'},
  ],
};

/// Descriptor for `WorkspaceInvitation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List workspaceInvitationDescriptor = $convert.base64Decode(
    'ChNXb3Jrc3BhY2VJbnZpdGF0aW9uEg4KAmlkGAEgASgDUgJpZBIhCgx3b3Jrc3BhY2VfaWQYAi'
    'ABKANSC3dvcmtzcGFjZUlkEhQKBWVtYWlsGAMgASgJUgVlbWFpbBISCgRyb2xlGAQgASgJUgRy'
    'b2xlEhQKBXRva2VuGAUgASgJUgV0b2tlbhIdCgpleHBpcmVzX2F0GAYgASgJUglleHBpcmVzQX'
    'Q=');

@$core.Deprecated('Use workspaceUpdateDescriptor instead')
const WorkspaceUpdate$json = {
  '1': 'WorkspaceUpdate',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'workspace_id', '3': 2, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'actor_user_id', '3': 3, '4': 1, '5': 3, '10': 'actorUserId'},
    {'1': 'entity', '3': 4, '4': 1, '5': 9, '10': 'entity'},
    {'1': 'action', '3': 5, '4': 1, '5': 9, '10': 'action'},
    {'1': 'entity_id', '3': 6, '4': 1, '5': 3, '10': 'entityId'},
    {'1': 'payload_json', '3': 7, '4': 1, '5': 9, '10': 'payloadJson'},
    {'1': 'created_at', '3': 8, '4': 1, '5': 9, '10': 'createdAt'},
  ],
};

/// Descriptor for `WorkspaceUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List workspaceUpdateDescriptor = $convert.base64Decode(
    'Cg9Xb3Jrc3BhY2VVcGRhdGUSDgoCaWQYASABKANSAmlkEiEKDHdvcmtzcGFjZV9pZBgCIAEoA1'
    'ILd29ya3NwYWNlSWQSIgoNYWN0b3JfdXNlcl9pZBgDIAEoA1ILYWN0b3JVc2VySWQSFgoGZW50'
    'aXR5GAQgASgJUgZlbnRpdHkSFgoGYWN0aW9uGAUgASgJUgZhY3Rpb24SGwoJZW50aXR5X2lkGA'
    'YgASgDUghlbnRpdHlJZBIhCgxwYXlsb2FkX2pzb24YByABKAlSC3BheWxvYWRKc29uEh0KCmNy'
    'ZWF0ZWRfYXQYCCABKAlSCWNyZWF0ZWRBdA==');

@$core.Deprecated('Use cursorDescriptor instead')
const Cursor$json = {
  '1': 'Cursor',
  '2': [
    {'1': 'next', '3': 1, '4': 1, '5': 3, '10': 'next'},
    {'1': 'has_more', '3': 2, '4': 1, '5': 8, '10': 'hasMore'},
  ],
};

/// Descriptor for `Cursor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cursorDescriptor = $convert.base64Decode(
    'CgZDdXJzb3ISEgoEbmV4dBgBIAEoA1IEbmV4dBIZCghoYXNfbW9yZRgCIAEoCFIHaGFzTW9yZQ'
    '==');

@$core.Deprecated('Use listWorkspacesRequestDescriptor instead')
const ListWorkspacesRequest$json = {
  '1': 'ListWorkspacesRequest',
};

/// Descriptor for `ListWorkspacesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listWorkspacesRequestDescriptor =
    $convert.base64Decode('ChVMaXN0V29ya3NwYWNlc1JlcXVlc3Q=');

@$core.Deprecated('Use listWorkspacesResponseDescriptor instead')
const ListWorkspacesResponse$json = {
  '1': 'ListWorkspacesResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.role.v1.WorkspaceSummary',
      '10': 'items'
    },
  ],
};

/// Descriptor for `ListWorkspacesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listWorkspacesResponseDescriptor =
    $convert.base64Decode(
        'ChZMaXN0V29ya3NwYWNlc1Jlc3BvbnNlEi8KBWl0ZW1zGAEgAygLMhkucm9sZS52MS5Xb3Jrc3'
        'BhY2VTdW1tYXJ5UgVpdGVtcw==');

@$core.Deprecated('Use workspaceIdRequestDescriptor instead')
const WorkspaceIdRequest$json = {
  '1': 'WorkspaceIdRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
  ],
};

/// Descriptor for `WorkspaceIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List workspaceIdRequestDescriptor = $convert.base64Decode(
    'ChJXb3Jrc3BhY2VJZFJlcXVlc3QSIQoMd29ya3NwYWNlX2lkGAEgASgDUgt3b3Jrc3BhY2VJZA'
    '==');

@$core.Deprecated('Use getWorkspaceResponseDescriptor instead')
const GetWorkspaceResponse$json = {
  '1': 'GetWorkspaceResponse',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.role.v1.WorkspaceSummary',
      '10': 'item'
    },
  ],
};

/// Descriptor for `GetWorkspaceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWorkspaceResponseDescriptor = $convert.base64Decode(
    'ChRHZXRXb3Jrc3BhY2VSZXNwb25zZRItCgRpdGVtGAEgASgLMhkucm9sZS52MS5Xb3Jrc3BhY2'
    'VTdW1tYXJ5UgRpdGVt');

@$core.Deprecated('Use createWorkspaceRequestDescriptor instead')
const CreateWorkspaceRequest$json = {
  '1': 'CreateWorkspaceRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreateWorkspaceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createWorkspaceRequestDescriptor =
    $convert.base64Decode(
        'ChZDcmVhdGVXb3Jrc3BhY2VSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWU=');

@$core.Deprecated('Use createWorkspaceResponseDescriptor instead')
const CreateWorkspaceResponse$json = {
  '1': 'CreateWorkspaceResponse',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.role.v1.WorkspaceSummary',
      '10': 'item'
    },
  ],
};

/// Descriptor for `CreateWorkspaceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createWorkspaceResponseDescriptor =
    $convert.base64Decode(
        'ChdDcmVhdGVXb3Jrc3BhY2VSZXNwb25zZRItCgRpdGVtGAEgASgLMhkucm9sZS52MS5Xb3Jrc3'
        'BhY2VTdW1tYXJ5UgRpdGVt');

@$core.Deprecated('Use listWorkspaceMembersResponseDescriptor instead')
const ListWorkspaceMembersResponse$json = {
  '1': 'ListWorkspaceMembersResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.role.v1.WorkspaceMember',
      '10': 'items'
    },
  ],
};

/// Descriptor for `ListWorkspaceMembersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listWorkspaceMembersResponseDescriptor =
    $convert.base64Decode(
        'ChxMaXN0V29ya3NwYWNlTWVtYmVyc1Jlc3BvbnNlEi4KBWl0ZW1zGAEgAygLMhgucm9sZS52MS'
        '5Xb3Jrc3BhY2VNZW1iZXJSBWl0ZW1z');

@$core.Deprecated('Use addWorkspaceMemberRequestDescriptor instead')
const AddWorkspaceMemberRequest$json = {
  '1': 'AddWorkspaceMemberRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'role', '3': 3, '4': 1, '5': 9, '10': 'role'},
  ],
};

/// Descriptor for `AddWorkspaceMemberRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addWorkspaceMemberRequestDescriptor =
    $convert.base64Decode(
        'ChlBZGRXb3Jrc3BhY2VNZW1iZXJSZXF1ZXN0EiEKDHdvcmtzcGFjZV9pZBgBIAEoA1ILd29ya3'
        'NwYWNlSWQSFAoFZW1haWwYAiABKAlSBWVtYWlsEhIKBHJvbGUYAyABKAlSBHJvbGU=');

@$core.Deprecated('Use addWorkspaceMemberResponseDescriptor instead')
const AddWorkspaceMemberResponse$json = {
  '1': 'AddWorkspaceMemberResponse',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.role.v1.WorkspaceMember',
      '10': 'item'
    },
  ],
};

/// Descriptor for `AddWorkspaceMemberResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addWorkspaceMemberResponseDescriptor =
    $convert.base64Decode(
        'ChpBZGRXb3Jrc3BhY2VNZW1iZXJSZXNwb25zZRIsCgRpdGVtGAEgASgLMhgucm9sZS52MS5Xb3'
        'Jrc3BhY2VNZW1iZXJSBGl0ZW0=');

@$core.Deprecated('Use createWorkspaceInvitationRequestDescriptor instead')
const CreateWorkspaceInvitationRequest$json = {
  '1': 'CreateWorkspaceInvitationRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'role', '3': 3, '4': 1, '5': 9, '10': 'role'},
  ],
};

/// Descriptor for `CreateWorkspaceInvitationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createWorkspaceInvitationRequestDescriptor =
    $convert.base64Decode(
        'CiBDcmVhdGVXb3Jrc3BhY2VJbnZpdGF0aW9uUmVxdWVzdBIhCgx3b3Jrc3BhY2VfaWQYASABKA'
        'NSC3dvcmtzcGFjZUlkEhQKBWVtYWlsGAIgASgJUgVlbWFpbBISCgRyb2xlGAMgASgJUgRyb2xl');

@$core.Deprecated('Use createWorkspaceInvitationResponseDescriptor instead')
const CreateWorkspaceInvitationResponse$json = {
  '1': 'CreateWorkspaceInvitationResponse',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.role.v1.WorkspaceInvitation',
      '10': 'item'
    },
  ],
};

/// Descriptor for `CreateWorkspaceInvitationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createWorkspaceInvitationResponseDescriptor =
    $convert.base64Decode(
        'CiFDcmVhdGVXb3Jrc3BhY2VJbnZpdGF0aW9uUmVzcG9uc2USMAoEaXRlbRgBIAEoCzIcLnJvbG'
        'UudjEuV29ya3NwYWNlSW52aXRhdGlvblIEaXRlbQ==');

@$core.Deprecated('Use updateWorkspaceMemberRoleRequestDescriptor instead')
const UpdateWorkspaceMemberRoleRequest$json = {
  '1': 'UpdateWorkspaceMemberRoleRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'member_user_id', '3': 2, '4': 1, '5': 3, '10': 'memberUserId'},
    {'1': 'role', '3': 3, '4': 1, '5': 9, '10': 'role'},
  ],
};

/// Descriptor for `UpdateWorkspaceMemberRoleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateWorkspaceMemberRoleRequestDescriptor =
    $convert.base64Decode(
        'CiBVcGRhdGVXb3Jrc3BhY2VNZW1iZXJSb2xlUmVxdWVzdBIhCgx3b3Jrc3BhY2VfaWQYASABKA'
        'NSC3dvcmtzcGFjZUlkEiQKDm1lbWJlcl91c2VyX2lkGAIgASgDUgxtZW1iZXJVc2VySWQSEgoE'
        'cm9sZRgDIAEoCVIEcm9sZQ==');

@$core.Deprecated('Use updateWorkspaceMemberRoleResponseDescriptor instead')
const UpdateWorkspaceMemberRoleResponse$json = {
  '1': 'UpdateWorkspaceMemberRoleResponse',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.role.v1.WorkspaceMember',
      '10': 'item'
    },
  ],
};

/// Descriptor for `UpdateWorkspaceMemberRoleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateWorkspaceMemberRoleResponseDescriptor =
    $convert.base64Decode(
        'CiFVcGRhdGVXb3Jrc3BhY2VNZW1iZXJSb2xlUmVzcG9uc2USLAoEaXRlbRgBIAEoCzIYLnJvbG'
        'UudjEuV29ya3NwYWNlTWVtYmVyUgRpdGVt');

@$core.Deprecated('Use removeWorkspaceMemberRequestDescriptor instead')
const RemoveWorkspaceMemberRequest$json = {
  '1': 'RemoveWorkspaceMemberRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'member_user_id', '3': 2, '4': 1, '5': 3, '10': 'memberUserId'},
  ],
};

/// Descriptor for `RemoveWorkspaceMemberRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeWorkspaceMemberRequestDescriptor =
    $convert.base64Decode(
        'ChxSZW1vdmVXb3Jrc3BhY2VNZW1iZXJSZXF1ZXN0EiEKDHdvcmtzcGFjZV9pZBgBIAEoA1ILd2'
        '9ya3NwYWNlSWQSJAoObWVtYmVyX3VzZXJfaWQYAiABKANSDG1lbWJlclVzZXJJZA==');

@$core.Deprecated('Use actionResponseDescriptor instead')
const ActionResponse$json = {
  '1': 'ActionResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `ActionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actionResponseDescriptor = $convert
    .base64Decode('Cg5BY3Rpb25SZXNwb25zZRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cw==');

@$core.Deprecated('Use joinWorkspaceRequestDescriptor instead')
const JoinWorkspaceRequest$json = {
  '1': 'JoinWorkspaceRequest',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `JoinWorkspaceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List joinWorkspaceRequestDescriptor =
    $convert.base64Decode(
        'ChRKb2luV29ya3NwYWNlUmVxdWVzdBIUCgV0b2tlbhgBIAEoCVIFdG9rZW4=');

@$core.Deprecated('Use joinWorkspaceResponseDescriptor instead')
const JoinWorkspaceResponse$json = {
  '1': 'JoinWorkspaceResponse',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.role.v1.WorkspaceSummary',
      '10': 'item'
    },
  ],
};

/// Descriptor for `JoinWorkspaceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List joinWorkspaceResponseDescriptor = $convert.base64Decode(
    'ChVKb2luV29ya3NwYWNlUmVzcG9uc2USLQoEaXRlbRgBIAEoCzIZLnJvbGUudjEuV29ya3NwYW'
    'NlU3VtbWFyeVIEaXRlbQ==');

@$core.Deprecated('Use leaveWorkspaceRequestDescriptor instead')
const LeaveWorkspaceRequest$json = {
  '1': 'LeaveWorkspaceRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
  ],
};

/// Descriptor for `LeaveWorkspaceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaveWorkspaceRequestDescriptor = $convert.base64Decode(
    'ChVMZWF2ZVdvcmtzcGFjZVJlcXVlc3QSIQoMd29ya3NwYWNlX2lkGAEgASgDUgt3b3Jrc3BhY2'
    'VJZA==');

@$core.Deprecated('Use convertWorkspaceToTeamRequestDescriptor instead')
const ConvertWorkspaceToTeamRequest$json = {
  '1': 'ConvertWorkspaceToTeamRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `ConvertWorkspaceToTeamRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List convertWorkspaceToTeamRequestDescriptor =
    $convert.base64Decode(
        'Ch1Db252ZXJ0V29ya3NwYWNlVG9UZWFtUmVxdWVzdBIhCgx3b3Jrc3BhY2VfaWQYASABKANSC3'
        'dvcmtzcGFjZUlkEhIKBG5hbWUYAiABKAlSBG5hbWU=');

@$core.Deprecated('Use convertWorkspaceToTeamResponseDescriptor instead')
const ConvertWorkspaceToTeamResponse$json = {
  '1': 'ConvertWorkspaceToTeamResponse',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.role.v1.WorkspaceSummary',
      '10': 'item'
    },
  ],
};

/// Descriptor for `ConvertWorkspaceToTeamResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List convertWorkspaceToTeamResponseDescriptor =
    $convert.base64Decode(
        'Ch5Db252ZXJ0V29ya3NwYWNlVG9UZWFtUmVzcG9uc2USLQoEaXRlbRgBIAEoCzIZLnJvbGUudj'
        'EuV29ya3NwYWNlU3VtbWFyeVIEaXRlbQ==');

@$core.Deprecated('Use listWorkspaceUpdatesRequestDescriptor instead')
const ListWorkspaceUpdatesRequest$json = {
  '1': 'ListWorkspaceUpdatesRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'since', '3': 2, '4': 1, '5': 3, '10': 'since'},
    {'1': 'limit', '3': 3, '4': 1, '5': 5, '10': 'limit'},
  ],
};

/// Descriptor for `ListWorkspaceUpdatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listWorkspaceUpdatesRequestDescriptor =
    $convert.base64Decode(
        'ChtMaXN0V29ya3NwYWNlVXBkYXRlc1JlcXVlc3QSIQoMd29ya3NwYWNlX2lkGAEgASgDUgt3b3'
        'Jrc3BhY2VJZBIUCgVzaW5jZRgCIAEoA1IFc2luY2USFAoFbGltaXQYAyABKAVSBWxpbWl0');

@$core.Deprecated('Use listWorkspaceUpdatesResponseDescriptor instead')
const ListWorkspaceUpdatesResponse$json = {
  '1': 'ListWorkspaceUpdatesResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.role.v1.WorkspaceUpdate',
      '10': 'items'
    },
    {
      '1': 'cursor',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.role.v1.Cursor',
      '10': 'cursor'
    },
  ],
};

/// Descriptor for `ListWorkspaceUpdatesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listWorkspaceUpdatesResponseDescriptor =
    $convert.base64Decode(
        'ChxMaXN0V29ya3NwYWNlVXBkYXRlc1Jlc3BvbnNlEi4KBWl0ZW1zGAEgAygLMhgucm9sZS52MS'
        '5Xb3Jrc3BhY2VVcGRhdGVSBWl0ZW1zEicKBmN1cnNvchgCIAEoCzIPLnJvbGUudjEuQ3Vyc29y'
        'UgZjdXJzb3I=');
