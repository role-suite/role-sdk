// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_logout200_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiAuthLogout200ResponseData _$PostApiAuthLogout200ResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostApiAuthLogout200ResponseData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['action'],
        );
        final val = PostApiAuthLogout200ResponseData(
          action: $checkedConvert('action', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$PostApiAuthLogout200ResponseDataToJson(
        PostApiAuthLogout200ResponseData instance) =>
    <String, dynamic>{
      'action': instance.action,
    };
