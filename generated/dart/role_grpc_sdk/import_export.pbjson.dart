// This is a generated file - do not edit.
//
// Generated from import_export.proto.

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

@$core.Deprecated('Use importExportWorkspaceRequestDescriptor instead')
const ImportExportWorkspaceRequest$json = {
  '1': 'ImportExportWorkspaceRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
  ],
};

/// Descriptor for `ImportExportWorkspaceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List importExportWorkspaceRequestDescriptor =
    $convert.base64Decode(
        'ChxJbXBvcnRFeHBvcnRXb3Jrc3BhY2VSZXF1ZXN0EiEKDHdvcmtzcGFjZV9pZBgBIAEoA1ILd2'
        '9ya3NwYWNlSWQ=');

@$core.Deprecated('Use importExportJobByIdRequestDescriptor instead')
const ImportExportJobByIdRequest$json = {
  '1': 'ImportExportJobByIdRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'job_id', '3': 2, '4': 1, '5': 3, '10': 'jobId'},
  ],
};

/// Descriptor for `ImportExportJobByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List importExportJobByIdRequestDescriptor =
    $convert.base64Decode(
        'ChpJbXBvcnRFeHBvcnRKb2JCeUlkUmVxdWVzdBIhCgx3b3Jrc3BhY2VfaWQYASABKANSC3dvcm'
        'tzcGFjZUlkEhUKBmpvYl9pZBgCIAEoA1IFam9iSWQ=');

@$core.Deprecated('Use createExportJobRequestDescriptor instead')
const CreateExportJobRequest$json = {
  '1': 'CreateExportJobRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'payload_json', '3': 2, '4': 1, '5': 9, '10': 'payloadJson'},
  ],
};

/// Descriptor for `CreateExportJobRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createExportJobRequestDescriptor =
    $convert.base64Decode(
        'ChZDcmVhdGVFeHBvcnRKb2JSZXF1ZXN0EiEKDHdvcmtzcGFjZV9pZBgBIAEoA1ILd29ya3NwYW'
        'NlSWQSIQoMcGF5bG9hZF9qc29uGAIgASgJUgtwYXlsb2FkSnNvbg==');

@$core.Deprecated('Use createImportJobRequestDescriptor instead')
const CreateImportJobRequest$json = {
  '1': 'CreateImportJobRequest',
  '2': [
    {'1': 'workspace_id', '3': 1, '4': 1, '5': 3, '10': 'workspaceId'},
    {'1': 'payload_json', '3': 2, '4': 1, '5': 9, '10': 'payloadJson'},
  ],
};

/// Descriptor for `CreateImportJobRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createImportJobRequestDescriptor =
    $convert.base64Decode(
        'ChZDcmVhdGVJbXBvcnRKb2JSZXF1ZXN0EiEKDHdvcmtzcGFjZV9pZBgBIAEoA1ILd29ya3NwYW'
        'NlSWQSIQoMcGF5bG9hZF9qc29uGAIgASgJUgtwYXlsb2FkSnNvbg==');

@$core.Deprecated('Use importExportJobResponseDescriptor instead')
const ImportExportJobResponse$json = {
  '1': 'ImportExportJobResponse',
  '2': [
    {'1': 'job_json', '3': 1, '4': 1, '5': 9, '10': 'jobJson'},
  ],
};

/// Descriptor for `ImportExportJobResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List importExportJobResponseDescriptor =
    $convert.base64Decode(
        'ChdJbXBvcnRFeHBvcnRKb2JSZXNwb25zZRIZCghqb2JfanNvbhgBIAEoCVIHam9iSnNvbg==');

@$core.Deprecated('Use importExportJobsResponseDescriptor instead')
const ImportExportJobsResponse$json = {
  '1': 'ImportExportJobsResponse',
  '2': [
    {'1': 'jobs_json', '3': 1, '4': 3, '5': 9, '10': 'jobsJson'},
  ],
};

/// Descriptor for `ImportExportJobsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List importExportJobsResponseDescriptor =
    $convert.base64Decode(
        'ChhJbXBvcnRFeHBvcnRKb2JzUmVzcG9uc2USGwoJam9ic19qc29uGAEgAygJUghqb2JzSnNvbg'
        '==');
