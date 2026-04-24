// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_members200_response_data_items_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner
    _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['email', 'name', 'role', 'userId'],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner(
              email: $checkedConvert('email', (v) => v as String),
              name: $checkedConvert('name', (v) => v as String),
              role: $checkedConvert(
                  'role',
                  (v) => $enumDecode(
                      _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnumEnumMap,
                      v)),
              userId: $checkedConvert('userId', (v) => (v as num).toInt()),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerToJson(
            GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner
                instance) =>
        <String, dynamic>{
          'email': instance.email,
          'name': instance.name,
          'role':
              _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnumEnumMap[
                  instance.role]!,
          'userId': instance.userId,
        };

const _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnumEnumMap =
    {
  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum.owner:
      'owner',
  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum.admin:
      'admin',
  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum.member:
      'member',
  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum
      .unknownDefaultOpenApi: 'unknown_default_open_api',
};
