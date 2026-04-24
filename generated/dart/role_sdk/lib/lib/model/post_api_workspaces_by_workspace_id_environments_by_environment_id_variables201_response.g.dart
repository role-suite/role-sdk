// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_environments_by_environment_id_variables201_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response
    _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['data', 'success'],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response(
              data: $checkedConvert(
                  'data',
                  (v) =>
                      GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner
                          .fromJson(v as Map<String, dynamic>)),
              success: $checkedConvert('success', (v) => v as bool),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseToJson(
            PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response
                instance) =>
        <String, dynamic>{
          'data': instance.data.toJson(),
          'success': instance.success,
        };
