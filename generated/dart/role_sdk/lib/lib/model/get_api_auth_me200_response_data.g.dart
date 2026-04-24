// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_auth_me200_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiAuthMe200ResponseData _$GetApiAuthMe200ResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'GetApiAuthMe200ResponseData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['memberships', 'user', 'workspace'],
        );
        final val = GetApiAuthMe200ResponseData(
          memberships: $checkedConvert(
              'memberships',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      GetApiAuthMe200ResponseDataMembershipsInner.fromJson(
                          e as Map<String, dynamic>))
                  .toList()),
          user: $checkedConvert(
              'user',
              (v) => PostApiAuthLogin200ResponseDataUser.fromJson(
                  v as Map<String, dynamic>)),
          workspace: $checkedConvert(
              'workspace',
              (v) => PostApiAuthLogin200ResponseDataWorkspace.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$GetApiAuthMe200ResponseDataToJson(
        GetApiAuthMe200ResponseData instance) =>
    <String, dynamic>{
      'memberships': instance.memberships.map((e) => e.toJson()).toList(),
      'user': instance.user.toJson(),
      'workspace': instance.workspace.toJson(),
    };
