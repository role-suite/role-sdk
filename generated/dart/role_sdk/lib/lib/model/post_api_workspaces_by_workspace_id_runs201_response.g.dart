// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdRuns201Response
    _$PostApiWorkspacesByWorkspaceIdRuns201ResponseFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdRuns201Response',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['data', 'success'],
            );
            final val = PostApiWorkspacesByWorkspaceIdRuns201Response(
              data: $checkedConvert(
                  'data',
                  (v) => PostApiWorkspacesByWorkspaceIdRuns201ResponseData
                      .fromJson(v as Map<String, dynamic>)),
              success: $checkedConvert('success', (v) => v as bool),
            );
            return val;
          },
        );

Map<String, dynamic> _$PostApiWorkspacesByWorkspaceIdRuns201ResponseToJson(
        PostApiWorkspacesByWorkspaceIdRuns201Response instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'success': instance.success,
    };
