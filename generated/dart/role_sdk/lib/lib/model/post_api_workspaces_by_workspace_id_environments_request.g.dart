// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_environments_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdEnvironmentsRequest
    _$PostApiWorkspacesByWorkspaceIdEnvironmentsRequestFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdEnvironmentsRequest',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['name'],
            );
            final val = PostApiWorkspacesByWorkspaceIdEnvironmentsRequest(
              name: $checkedConvert('name', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic> _$PostApiWorkspacesByWorkspaceIdEnvironmentsRequestToJson(
        PostApiWorkspacesByWorkspaceIdEnvironmentsRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
