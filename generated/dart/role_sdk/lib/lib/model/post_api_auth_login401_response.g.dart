// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login401_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiAuthLogin401Response _$PostApiAuthLogin401ResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostApiAuthLogin401Response',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['error', 'success'],
        );
        final val = PostApiAuthLogin401Response(
          error: $checkedConvert(
              'error',
              (v) => PostApiAuthLogin401ResponseError.fromJson(
                  v as Map<String, dynamic>)),
          success: $checkedConvert('success', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$PostApiAuthLogin401ResponseToJson(
        PostApiAuthLogin401Response instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'success': instance.success,
    };
