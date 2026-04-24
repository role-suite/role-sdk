// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_invitations201_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdInvitations201ResponseData
    _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdInvitations201ResponseData',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const [
                'email',
                'expiresAt',
                'id',
                'role',
                'token',
                'workspaceId'
              ],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdInvitations201ResponseData(
              email: $checkedConvert('email', (v) => v as String),
              expiresAt: $checkedConvert('expiresAt', (v) => v as String),
              id: $checkedConvert('id', (v) => (v as num).toInt()),
              role: $checkedConvert(
                  'role',
                  (v) => $enumDecode(
                      _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnumEnumMap,
                      v)),
              token: $checkedConvert('token', (v) => v as String),
              workspaceId:
                  $checkedConvert('workspaceId', (v) => (v as num).toInt()),
            );
            return val;
          },
        );

Map<String,
    dynamic> _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataToJson(
        PostApiWorkspacesByWorkspaceIdInvitations201ResponseData instance) =>
    <String, dynamic>{
      'email': instance.email,
      'expiresAt': instance.expiresAt,
      'id': instance.id,
      'role':
          _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnumEnumMap[
              instance.role]!,
      'token': instance.token,
      'workspaceId': instance.workspaceId,
    };

const _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnumEnumMap =
    {
  PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum.admin:
      'admin',
  PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum.member:
      'member',
  PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum
      .unknownDefaultOpenApi: 'unknown_default_open_api',
};
