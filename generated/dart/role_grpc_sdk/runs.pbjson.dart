// This is a generated file - do not edit.
//
// Generated from runs.proto.

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

@$core.Deprecated('Use runByIdRequestDescriptor instead')
const RunByIdRequest$json = {
  '1': 'RunByIdRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'run_id', '3': 2, '4': 1, '5': 3, '10': 'runId'},
  ],
};

/// Descriptor for `RunByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runByIdRequestDescriptor = $convert.base64Decode(
    'Cg5SdW5CeUlkUmVxdWVzdBIhCgx3b3Jrc3BhY2VfaWQYASABKANSC3dvcmtzcGFjZUlkEhUKBn'
    'J1bl9pZBgCIAEoA1IFcnVuSWQ=');

@$core.Deprecated('Use createRunRequestDescriptor instead')
const CreateRunRequest$json = {
  '1': 'CreateRunRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'payload_json', '3': 2, '4': 1, '5': 9, '10': 'payloadJson'},
  ],
};

/// Descriptor for `CreateRunRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRunRequestDescriptor = $convert.base64Decode(
    'ChBDcmVhdGVSdW5SZXF1ZXN0EiEKDHdvcmtzcGFjZV9pZBgBIAEoA1ILd29ya3NwYWNlSWQSIQ'
    'oMcGF5bG9hZF9qc29uGAIgASgJUgtwYXlsb2FkSnNvbg==');

@$core.Deprecated('Use runResponseDescriptor instead')
const RunResponse$json = {
  '1': 'RunResponse',
  '2': [
    {'1': 'run_json', '3': 1, '4': 1, '5': 9, '10': 'runJson'},
  ],
};

/// Descriptor for `RunResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runResponseDescriptor = $convert
    .base64Decode('CgtSdW5SZXNwb25zZRIZCghydW5fanNvbhgBIAEoCVIHcnVuSnNvbg==');
