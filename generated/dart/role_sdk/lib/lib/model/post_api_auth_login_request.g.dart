// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiAuthLoginRequest _$PostApiAuthLoginRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostApiAuthLoginRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['email', 'password'],
        );
        final val = PostApiAuthLoginRequest(
          email: $checkedConvert('email', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$PostApiAuthLoginRequestToJson(
        PostApiAuthLoginRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
