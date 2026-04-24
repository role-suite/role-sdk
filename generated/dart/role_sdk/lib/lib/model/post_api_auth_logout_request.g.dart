// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_logout_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiAuthLogoutRequest _$PostApiAuthLogoutRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostApiAuthLogoutRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['refreshToken'],
        );
        final val = PostApiAuthLogoutRequest(
          refreshToken: $checkedConvert('refreshToken', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$PostApiAuthLogoutRequestToJson(
        PostApiAuthLogoutRequest instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
    };
