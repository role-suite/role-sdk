// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login400_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiAuthLogin400Response _$PostApiAuthLogin400ResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostApiAuthLogin400Response',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['error', 'success'],
        );
        final val = PostApiAuthLogin400Response(
          error: $checkedConvert(
              'error',
              (v) => PostApiAuthLogin400ResponseError.fromJson(
                  v as Map<String, dynamic>)),
          success: $checkedConvert('success', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$PostApiAuthLogin400ResponseToJson(
        PostApiAuthLogin400Response instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'success': instance.success,
    };
