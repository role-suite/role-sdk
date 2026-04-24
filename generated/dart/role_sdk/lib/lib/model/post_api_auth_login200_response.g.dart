// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiAuthLogin200Response _$PostApiAuthLogin200ResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostApiAuthLogin200Response',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['data', 'success'],
        );
        final val = PostApiAuthLogin200Response(
          data: $checkedConvert(
              'data',
              (v) => PostApiAuthLogin200ResponseData.fromJson(
                  v as Map<String, dynamic>)),
          success: $checkedConvert('success', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$PostApiAuthLogin200ResponseToJson(
        PostApiAuthLogin200Response instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'success': instance.success,
    };
