// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_logout200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiAuthLogout200Response _$PostApiAuthLogout200ResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostApiAuthLogout200Response',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['data', 'success'],
        );
        final val = PostApiAuthLogout200Response(
          data: $checkedConvert(
              'data',
              (v) => PostApiAuthLogout200ResponseData.fromJson(
                  v as Map<String, dynamic>)),
          success: $checkedConvert('success', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$PostApiAuthLogout200ResponseToJson(
        PostApiAuthLogout200Response instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'success': instance.success,
    };
