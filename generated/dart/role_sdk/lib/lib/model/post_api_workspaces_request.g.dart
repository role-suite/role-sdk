// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesRequest _$PostApiWorkspacesRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostApiWorkspacesRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = PostApiWorkspacesRequest(
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$PostApiWorkspacesRequestToJson(
        PostApiWorkspacesRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
