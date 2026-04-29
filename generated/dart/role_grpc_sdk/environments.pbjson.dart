// This is a generated file - do not edit.
//
// Generated from environments.proto.

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

@$core.Deprecated('Use environmentItemDescriptor instead')
const EnvironmentItem$json = {
  '1': 'EnvironmentItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'workspace_id', '3': 2, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'created_by_user_id',
      '3': 4,
      '4': 1,
      '5': 3,
      '10': 'createdByUserId'
    },
    {'1': 'created_at', '3': 5, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 6, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `EnvironmentItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentItemDescriptor = $convert.base64Decode(
    'Cg9FbnZpcm9ubWVudEl0ZW0SDgoCaWQYASABKANSAmlkEiEKDHdvcmtzcGFjZV9pZBgCIAEoA1'
    'ILd29ya3NwYWNlSWQSEgoEbmFtZRgDIAEoCVIEbmFtZRIrChJjcmVhdGVkX2J5X3VzZXJfaWQY'
    'BCABKANSD2NyZWF0ZWRCeVVzZXJJZBIdCgpjcmVhdGVkX2F0GAUgASgJUgljcmVhdGVkQXQSHQ'
    'oKdXBkYXRlZF9hdBgGIAEoCVIJdXBkYXRlZEF0');

@$core.Deprecated('Use environmentVariableItemDescriptor instead')
const EnvironmentVariableItem$json = {
  '1': 'EnvironmentVariableItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'environment_id', '3': 2, '4': 1, '5': 3, '10': 'environmentId'},
    {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 4, '4': 1, '5': 9, '10': 'value'},
    {'1': 'enabled', '3': 5, '4': 1, '5': 8, '10': 'enabled'},
    {'1': 'is_secret', '3': 6, '4': 1, '5': 8, '10': 'isSecret'},
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

/// Descriptor for `EnvironmentVariableItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentVariableItemDescriptor = $convert.base64Decode(
    'ChdFbnZpcm9ubWVudFZhcmlhYmxlSXRlbRIOCgJpZBgBIAEoA1ICaWQSJQoOZW52aXJvbm1lbn'
    'RfaWQYAiABKANSDWVudmlyb25tZW50SWQSEAoDa2V5GAMgASgJUgNrZXkSFAoFdmFsdWUYBCAB'
    'KAlSBXZhbHVlEhgKB2VuYWJsZWQYBSABKAhSB2VuYWJsZWQSGwoJaXNfc2VjcmV0GAYgASgIUg'
    'hpc1NlY3JldBIaCghwb3NpdGlvbhgHIAEoBVIIcG9zaXRpb24SKwoSY3JlYXRlZF9ieV91c2Vy'
    'X2lkGAggASgDUg9jcmVhdGVkQnlVc2VySWQSHQoKY3JlYXRlZF9hdBgJIAEoCVIJY3JlYXRlZE'
    'F0Eh0KCnVwZGF0ZWRfYXQYCiABKAlSCXVwZGF0ZWRBdA==');

@$core.Deprecated('Use environmentListRequestDescriptor instead')
const EnvironmentListRequest$json = {
  '1': 'EnvironmentListRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
  ],
};

/// Descriptor for `EnvironmentListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentListRequestDescriptor =
    $convert.base64Decode(
        'ChZFbnZpcm9ubWVudExpc3RSZXF1ZXN0EiEKDHdvcmtzcGFjZV9pZBgBIAEoA1ILd29ya3NwYW'
        'NlSWQ=');

@$core.Deprecated('Use environmentByIdRequestDescriptor instead')
const EnvironmentByIdRequest$json = {
  '1': 'EnvironmentByIdRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'environment_id', '3': 2, '4': 1, '5': 3, '10': 'environmentId'},
  ],
};

/// Descriptor for `EnvironmentByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentByIdRequestDescriptor =
    $convert.base64Decode(
        'ChZFbnZpcm9ubWVudEJ5SWRSZXF1ZXN0EiEKDHdvcmtzcGFjZV9pZBgBIAEoA1ILd29ya3NwYW'
        'NlSWQSJQoOZW52aXJvbm1lbnRfaWQYAiABKANSDWVudmlyb25tZW50SWQ=');

@$core.Deprecated('Use environmentVariableByIdRequestDescriptor instead')
const EnvironmentVariableByIdRequest$json = {
  '1': 'EnvironmentVariableByIdRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'environment_id', '3': 2, '4': 1, '5': 3, '10': 'environmentId'},
    {'1': 'variable_id', '3': 3, '4': 1, '5': 3, '10': 'variableId'},
  ],
};

/// Descriptor for `EnvironmentVariableByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentVariableByIdRequestDescriptor =
    $convert.base64Decode(
        'Ch5FbnZpcm9ubWVudFZhcmlhYmxlQnlJZFJlcXVlc3QSIQoMd29ya3NwYWNlX2lkGAEgASgDUg'
        't3b3Jrc3BhY2VJZBIlCg5lbnZpcm9ubWVudF9pZBgCIAEoA1INZW52aXJvbm1lbnRJZBIfCgt2'
        'YXJpYWJsZV9pZBgDIAEoA1IKdmFyaWFibGVJZA==');

@$core.Deprecated('Use environmentCreateRequestDescriptor instead')
const EnvironmentCreateRequest$json = {
  '1': 'EnvironmentCreateRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `EnvironmentCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentCreateRequestDescriptor =
    $convert.base64Decode(
        'ChhFbnZpcm9ubWVudENyZWF0ZVJlcXVlc3QSIQoMd29ya3NwYWNlX2lkGAEgASgDUgt3b3Jrc3'
        'BhY2VJZBISCgRuYW1lGAIgASgJUgRuYW1l');

@$core.Deprecated('Use environmentUpdateRequestDescriptor instead')
const EnvironmentUpdateRequest$json = {
  '1': 'EnvironmentUpdateRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'environment_id', '3': 2, '4': 1, '5': 3, '10': 'environmentId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
  ],
  '8': [
    {'1': '_name'},
  ],
};

/// Descriptor for `EnvironmentUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentUpdateRequestDescriptor = $convert.base64Decode(
    'ChhFbnZpcm9ubWVudFVwZGF0ZVJlcXVlc3QSIQoMd29ya3NwYWNlX2lkGAEgASgDUgt3b3Jrc3'
    'BhY2VJZBIlCg5lbnZpcm9ubWVudF9pZBgCIAEoA1INZW52aXJvbm1lbnRJZBIXCgRuYW1lGAMg'
    'ASgJSABSBG5hbWWIAQFCBwoFX25hbWU=');

@$core.Deprecated('Use environmentVariableCreateRequestDescriptor instead')
const EnvironmentVariableCreateRequest$json = {
  '1': 'EnvironmentVariableCreateRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'environment_id', '3': 2, '4': 1, '5': 3, '10': 'environmentId'},
    {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 4, '4': 1, '5': 9, '10': 'value'},
    {'1': 'enabled', '3': 5, '4': 1, '5': 8, '10': 'enabled'},
    {'1': 'is_secret', '3': 6, '4': 1, '5': 8, '10': 'isSecret'},
    {'1': 'position', '3': 7, '4': 1, '5': 5, '10': 'position'},
  ],
};

/// Descriptor for `EnvironmentVariableCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentVariableCreateRequestDescriptor = $convert.base64Decode(
    'CiBFbnZpcm9ubWVudFZhcmlhYmxlQ3JlYXRlUmVxdWVzdBIhCgx3b3Jrc3BhY2VfaWQYASABKA'
    'NSC3dvcmtzcGFjZUlkEiUKDmVudmlyb25tZW50X2lkGAIgASgDUg1lbnZpcm9ubWVudElkEhAK'
    'A2tleRgDIAEoCVIDa2V5EhQKBXZhbHVlGAQgASgJUgV2YWx1ZRIYCgdlbmFibGVkGAUgASgIUg'
    'dlbmFibGVkEhsKCWlzX3NlY3JldBgGIAEoCFIIaXNTZWNyZXQSGgoIcG9zaXRpb24YByABKAVS'
    'CHBvc2l0aW9u');

@$core.Deprecated('Use environmentVariableUpdateRequestDescriptor instead')
const EnvironmentVariableUpdateRequest$json = {
  '1': 'EnvironmentVariableUpdateRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'environment_id', '3': 2, '4': 1, '5': 3, '10': 'environmentId'},
    {'1': 'variable_id', '3': 3, '4': 1, '5': 3, '10': 'variableId'},
    {'1': 'key', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'key', '17': true},
    {'1': 'value', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'value', '17': true},
    {
      '1': 'enabled',
      '3': 6,
      '4': 1,
      '5': 8,
      '9': 2,
      '10': 'enabled',
      '17': true
    },
    {
      '1': 'is_secret',
      '3': 7,
      '4': 1,
      '5': 8,
      '9': 3,
      '10': 'isSecret',
      '17': true
    },
    {
      '1': 'position',
      '3': 8,
      '4': 1,
      '5': 5,
      '9': 4,
      '10': 'position',
      '17': true
    },
  ],
  '8': [
    {'1': '_key'},
    {'1': '_value'},
    {'1': '_enabled'},
    {'1': '_is_secret'},
    {'1': '_position'},
  ],
};

/// Descriptor for `EnvironmentVariableUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentVariableUpdateRequestDescriptor = $convert.base64Decode(
    'CiBFbnZpcm9ubWVudFZhcmlhYmxlVXBkYXRlUmVxdWVzdBIhCgx3b3Jrc3BhY2VfaWQYASABKA'
    'NSC3dvcmtzcGFjZUlkEiUKDmVudmlyb25tZW50X2lkGAIgASgDUg1lbnZpcm9ubWVudElkEh8K'
    'C3ZhcmlhYmxlX2lkGAMgASgDUgp2YXJpYWJsZUlkEhUKA2tleRgEIAEoCUgAUgNrZXmIAQESGQ'
    'oFdmFsdWUYBSABKAlIAVIFdmFsdWWIAQESHQoHZW5hYmxlZBgGIAEoCEgCUgdlbmFibGVkiAEB'
    'EiAKCWlzX3NlY3JldBgHIAEoCEgDUghpc1NlY3JldIgBARIfCghwb3NpdGlvbhgIIAEoBUgEUg'
    'hwb3NpdGlvbogBAUIGCgRfa2V5QggKBl92YWx1ZUIKCghfZW5hYmxlZEIMCgpfaXNfc2VjcmV0'
    'QgsKCV9wb3NpdGlvbg==');

@$core.Deprecated('Use environmentItemsResponseDescriptor instead')
const EnvironmentItemsResponse$json = {
  '1': 'EnvironmentItemsResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.role.v1.EnvironmentItem',
      '10': 'items'
    },
  ],
};

/// Descriptor for `EnvironmentItemsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentItemsResponseDescriptor =
    $convert.base64Decode(
        'ChhFbnZpcm9ubWVudEl0ZW1zUmVzcG9uc2USLgoFaXRlbXMYASADKAsyGC5yb2xlLnYxLkVudm'
        'lyb25tZW50SXRlbVIFaXRlbXM=');

@$core.Deprecated('Use environmentItemResponseDescriptor instead')
const EnvironmentItemResponse$json = {
  '1': 'EnvironmentItemResponse',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.role.v1.EnvironmentItem',
      '10': 'item'
    },
  ],
};

/// Descriptor for `EnvironmentItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentItemResponseDescriptor =
    $convert.base64Decode(
        'ChdFbnZpcm9ubWVudEl0ZW1SZXNwb25zZRIsCgRpdGVtGAEgASgLMhgucm9sZS52MS5FbnZpcm'
        '9ubWVudEl0ZW1SBGl0ZW0=');

@$core.Deprecated('Use environmentVariableItemsResponseDescriptor instead')
const EnvironmentVariableItemsResponse$json = {
  '1': 'EnvironmentVariableItemsResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.role.v1.EnvironmentVariableItem',
      '10': 'items'
    },
  ],
};

/// Descriptor for `EnvironmentVariableItemsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentVariableItemsResponseDescriptor =
    $convert.base64Decode(
        'CiBFbnZpcm9ubWVudFZhcmlhYmxlSXRlbXNSZXNwb25zZRI2CgVpdGVtcxgBIAMoCzIgLnJvbG'
        'UudjEuRW52aXJvbm1lbnRWYXJpYWJsZUl0ZW1SBWl0ZW1z');

@$core.Deprecated('Use environmentVariableItemResponseDescriptor instead')
const EnvironmentVariableItemResponse$json = {
  '1': 'EnvironmentVariableItemResponse',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.role.v1.EnvironmentVariableItem',
      '10': 'item'
    },
  ],
};

/// Descriptor for `EnvironmentVariableItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentVariableItemResponseDescriptor =
    $convert.base64Decode(
        'Ch9FbnZpcm9ubWVudFZhcmlhYmxlSXRlbVJlc3BvbnNlEjQKBGl0ZW0YASABKAsyIC5yb2xlLn'
        'YxLkVudmlyb25tZW50VmFyaWFibGVJdGVtUgRpdGVt');

@$core.Deprecated('Use environmentActionResponseDescriptor instead')
const EnvironmentActionResponse$json = {
  '1': 'EnvironmentActionResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `EnvironmentActionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentActionResponseDescriptor =
    $convert.base64Decode(
        'ChlFbnZpcm9ubWVudEFjdGlvblJlc3BvbnNlEhYKBnN0YXR1cxgBIAEoCVIGc3RhdHVz');
