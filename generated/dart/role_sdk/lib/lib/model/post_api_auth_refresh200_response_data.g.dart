// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_refresh200_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiAuthRefresh200ResponseData _$PostApiAuthRefresh200ResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostApiAuthRefresh200ResponseData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['memberships', 'tokens', 'user', 'workspace'],
        );
        final val = PostApiAuthRefresh200ResponseData(
          memberships: $checkedConvert(
              'memberships',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      GetApiAuthMe200ResponseDataMembershipsInner.fromJson(
                          e as Map<String, dynamic>))
                  .toList()),
          tokens: $checkedConvert(
              'tokens',
              (v) => PostApiAuthLogin200ResponseDataTokens.fromJson(
                  v as Map<String, dynamic>)),
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

Map<String, dynamic> _$PostApiAuthRefresh200ResponseDataToJson(
        PostApiAuthRefresh200ResponseData instance) =>
    <String, dynamic>{
      'memberships': instance.memberships.map((e) => e.toJson()).toList(),
      'tokens': instance.tokens.toJson(),
      'user': instance.user.toJson(),
      'workspace': instance.workspace.toJson(),
    };
