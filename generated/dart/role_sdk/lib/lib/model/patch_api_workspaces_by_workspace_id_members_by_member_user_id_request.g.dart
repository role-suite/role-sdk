// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_api_workspaces_by_workspace_id_members_by_member_user_id_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest
    _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['role'],
            );
            final val =
                PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest(
              role: $checkedConvert(
                  'role',
                  (v) => $enumDecode(
                      _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnumEnumMap,
                      v)),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestToJson(
            PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest
                instance) =>
        <String, dynamic>{
          'role':
              _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnumEnumMap[
                  instance.role]!,
        };

const _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnumEnumMap =
    {
  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum.admin:
      'admin',
  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum.member:
      'member',
  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum
      .unknownDefaultOpenApi: 'unknown_default_open_api',
};
