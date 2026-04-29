// This is a generated file - do not edit.
//
// Generated from auth.proto.

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

@$core.Deprecated('Use authUserDescriptor instead')
const AuthUser$json = {
  '1': 'AuthUser',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `AuthUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserDescriptor = $convert.base64Decode(
    'CghBdXRoVXNlchIOCgJpZBgBIAEoA1ICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVlbWFpbB'
    'gDIAEoCVIFZW1haWw=');

@$core.Deprecated('Use authWorkspaceDescriptor instead')
const AuthWorkspace$json = {
  '1': 'AuthWorkspace',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'legacy_id', '3': 2, '4': 1, '5': 3, '10': 'legacyId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'slug', '3': 4, '4': 1, '5': 9, '10': 'slug'},
    {'1': 'type', '3': 5, '4': 1, '5': 9, '10': 'type'},
    {'1': 'role', '3': 6, '4': 1, '5': 9, '10': 'role'},
  ],
};

/// Descriptor for `AuthWorkspace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authWorkspaceDescriptor = $convert.base64Decode(
    'Cg1BdXRoV29ya3NwYWNlEg4KAmlkGAEgASgDUgJpZBIbCglsZWdhY3lfaWQYAiABKANSCGxlZ2'
    'FjeUlkEhIKBG5hbWUYAyABKAlSBG5hbWUSEgoEc2x1ZxgEIAEoCVIEc2x1ZxISCgR0eXBlGAUg'
    'ASgJUgR0eXBlEhIKBHJvbGUYBiABKAlSBHJvbGU=');

@$core.Deprecated('Use authMembershipDescriptor instead')
const AuthMembership$json = {
  '1': 'AuthMembership',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'legacy_id', '3': 2, '4': 1, '5': 3, '10': 'legacyId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'slug', '3': 4, '4': 1, '5': 9, '10': 'slug'},
    {'1': 'type', '3': 5, '4': 1, '5': 9, '10': 'type'},
    {'1': 'role', '3': 6, '4': 1, '5': 9, '10': 'role'},
  ],
};

/// Descriptor for `AuthMembership`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authMembershipDescriptor = $convert.base64Decode(
    'Cg5BdXRoTWVtYmVyc2hpcBIhCgx3b3Jrc3BhY2VfaWQYASABKANSC3dvcmtzcGFjZUlkEhsKCW'
    'xlZ2FjeV9pZBgCIAEoA1IIbGVnYWN5SWQSEgoEbmFtZRgDIAEoCVIEbmFtZRISCgRzbHVnGAQg'
    'ASgJUgRzbHVnEhIKBHR5cGUYBSABKAlSBHR5cGUSEgoEcm9sZRgGIAEoCVIEcm9sZQ==');

@$core.Deprecated('Use authTokensDescriptor instead')
const AuthTokens$json = {
  '1': 'AuthTokens',
  '2': [
    {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    {
      '1': 'access_token_ttl_seconds',
      '3': 3,
      '4': 1,
      '5': 5,
      '10': 'accessTokenTtlSeconds'
    },
    {
      '1': 'refresh_token_ttl_seconds',
      '3': 4,
      '4': 1,
      '5': 5,
      '10': 'refreshTokenTtlSeconds'
    },
  ],
};

/// Descriptor for `AuthTokens`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authTokensDescriptor = $convert.base64Decode(
    'CgpBdXRoVG9rZW5zEiEKDGFjY2Vzc190b2tlbhgBIAEoCVILYWNjZXNzVG9rZW4SIwoNcmVmcm'
    'VzaF90b2tlbhgCIAEoCVIMcmVmcmVzaFRva2VuEjcKGGFjY2Vzc190b2tlbl90dGxfc2Vjb25k'
    'cxgDIAEoBVIVYWNjZXNzVG9rZW5UdGxTZWNvbmRzEjkKGXJlZnJlc2hfdG9rZW5fdHRsX3NlY2'
    '9uZHMYBCABKAVSFnJlZnJlc2hUb2tlblR0bFNlY29uZHM=');

@$core.Deprecated('Use authPayloadDescriptor instead')
const AuthPayload$json = {
  '1': 'AuthPayload',
  '2': [
    {
      '1': 'user',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.role.v1.AuthUser',
      '10': 'user'
    },
    {
      '1': 'workspace',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.role.v1.AuthWorkspace',
      '10': 'workspace'
    },
    {
      '1': 'memberships',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.role.v1.AuthMembership',
      '10': 'memberships'
    },
    {
      '1': 'tokens',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.role.v1.AuthTokens',
      '10': 'tokens'
    },
  ],
};

/// Descriptor for `AuthPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authPayloadDescriptor = $convert.base64Decode(
    'CgtBdXRoUGF5bG9hZBIlCgR1c2VyGAEgASgLMhEucm9sZS52MS5BdXRoVXNlclIEdXNlchI0Cg'
    'l3b3Jrc3BhY2UYAiABKAsyFi5yb2xlLnYxLkF1dGhXb3Jrc3BhY2VSCXdvcmtzcGFjZRI5Cgtt'
    'ZW1iZXJzaGlwcxgDIAMoCzIXLnJvbGUudjEuQXV0aE1lbWJlcnNoaXBSC21lbWJlcnNoaXBzEi'
    'sKBnRva2VucxgEIAEoCzITLnJvbGUudjEuQXV0aFRva2Vuc1IGdG9rZW5z');

@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = {
  '1': 'RegisterRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    {'1': 'account_type', '3': 4, '4': 1, '5': 9, '10': 'accountType'},
    {'1': 'team_name', '3': 5, '4': 1, '5': 9, '10': 'teamName'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode(
    'Cg9SZWdpc3RlclJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVlbWFpbBgCIAEoCVIFZW'
    '1haWwSGgoIcGFzc3dvcmQYAyABKAlSCHBhc3N3b3JkEiEKDGFjY291bnRfdHlwZRgEIAEoCVIL'
    'YWNjb3VudFR5cGUSGwoJdGVhbV9uYW1lGAUgASgJUgh0ZWFtTmFtZQ==');

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGAIgASgJUg'
    'hwYXNzd29yZA==');

@$core.Deprecated('Use refreshRequestDescriptor instead')
const RefreshRequest$json = {
  '1': 'RefreshRequest',
  '2': [
    {'1': 'refresh_token', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RefreshRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshRequestDescriptor = $convert.base64Decode(
    'Cg5SZWZyZXNoUmVxdWVzdBIjCg1yZWZyZXNoX3Rva2VuGAEgASgJUgxyZWZyZXNoVG9rZW4=');

@$core.Deprecated('Use logoutRequestDescriptor instead')
const LogoutRequest$json = {
  '1': 'LogoutRequest',
  '2': [
    {'1': 'refresh_token', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `LogoutRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logoutRequestDescriptor = $convert.base64Decode(
    'Cg1Mb2dvdXRSZXF1ZXN0EiMKDXJlZnJlc2hfdG9rZW4YASABKAlSDHJlZnJlc2hUb2tlbg==');

@$core.Deprecated('Use logoutResponseDescriptor instead')
const LogoutResponse$json = {
  '1': 'LogoutResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `LogoutResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logoutResponseDescriptor = $convert
    .base64Decode('Cg5Mb2dvdXRSZXNwb25zZRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cw==');

@$core.Deprecated('Use meRequestDescriptor instead')
const MeRequest$json = {
  '1': 'MeRequest',
};

/// Descriptor for `MeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List meRequestDescriptor =
    $convert.base64Decode('CglNZVJlcXVlc3Q=');

@$core.Deprecated('Use meResponseDescriptor instead')
const MeResponse$json = {
  '1': 'MeResponse',
  '2': [
    {
      '1': 'user',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.role.v1.AuthUser',
      '10': 'user'
    },
    {
      '1': 'workspace',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.role.v1.AuthWorkspace',
      '10': 'workspace'
    },
    {
      '1': 'memberships',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.role.v1.AuthMembership',
      '10': 'memberships'
    },
  ],
};

/// Descriptor for `MeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List meResponseDescriptor = $convert.base64Decode(
    'CgpNZVJlc3BvbnNlEiUKBHVzZXIYASABKAsyES5yb2xlLnYxLkF1dGhVc2VyUgR1c2VyEjQKCX'
    'dvcmtzcGFjZRgCIAEoCzIWLnJvbGUudjEuQXV0aFdvcmtzcGFjZVIJd29ya3NwYWNlEjkKC21l'
    'bWJlcnNoaXBzGAMgAygLMhcucm9sZS52MS5BdXRoTWVtYmVyc2hpcFILbWVtYmVyc2hpcHM=');
