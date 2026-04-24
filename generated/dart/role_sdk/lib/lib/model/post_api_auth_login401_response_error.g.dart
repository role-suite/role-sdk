// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login401_response_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiAuthLogin401ResponseError _$PostApiAuthLogin401ResponseErrorFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostApiAuthLogin401ResponseError',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['code', 'details', 'message', 'requestId'],
        );
        final val = PostApiAuthLogin401ResponseError(
          code: $checkedConvert('code', (v) => v as String),
          details: $checkedConvert(
              'details',
              (v) => (v as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )),
          message: $checkedConvert('message', (v) => v as String),
          requestId: $checkedConvert('requestId', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$PostApiAuthLogin401ResponseErrorToJson(
        PostApiAuthLogin401ResponseError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'details': instance.details,
      'message': instance.message,
      'requestId': instance.requestId,
    };
