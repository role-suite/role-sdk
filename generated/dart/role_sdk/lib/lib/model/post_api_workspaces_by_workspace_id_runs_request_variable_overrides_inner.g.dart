// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_variable_overrides_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner
    _$PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['key', 'value'],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner(
              key: $checkedConvert('key', (v) => v as String),
              value: $checkedConvert('value', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerToJson(
            PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner
                instance) =>
        <String, dynamic>{
          'key': instance.key,
          'value': instance.value,
        };
