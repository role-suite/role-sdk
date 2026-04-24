// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_invitations201_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdInvitations201Response
    _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdInvitations201Response',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['data', 'success'],
            );
            final val = PostApiWorkspacesByWorkspaceIdInvitations201Response(
              data: $checkedConvert(
                  'data',
                  (v) =>
                      PostApiWorkspacesByWorkspaceIdInvitations201ResponseData
                          .fromJson(v as Map<String, dynamic>)),
              success: $checkedConvert('success', (v) => v as bool),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseToJson(
            PostApiWorkspacesByWorkspaceIdInvitations201Response instance) =>
        <String, dynamic>{
          'data': instance.data.toJson(),
          'success': instance.success,
        };
