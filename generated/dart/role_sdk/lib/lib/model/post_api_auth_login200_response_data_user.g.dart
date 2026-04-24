// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login200_response_data_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiAuthLogin200ResponseDataUser
    _$PostApiAuthLogin200ResponseDataUserFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiAuthLogin200ResponseDataUser',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['email', 'id', 'name'],
            );
            final val = PostApiAuthLogin200ResponseDataUser(
              email: $checkedConvert('email', (v) => v as String),
              id: $checkedConvert('id', (v) => (v as num).toInt()),
              name: $checkedConvert('name', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic> _$PostApiAuthLogin200ResponseDataUserToJson(
        PostApiAuthLogin200ResponseDataUser instance) =>
    <String, dynamic>{
      'email': instance.email,
      'id': instance.id,
      'name': instance.name,
    };
