// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login400_response_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiAuthLogin400ResponseError _$PostApiAuthLogin400ResponseErrorFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostApiAuthLogin400ResponseError',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['code', 'details', 'message', 'requestId'],
        );
        final val = PostApiAuthLogin400ResponseError(
          code: $checkedConvert('code', (v) => v as String),
          details: $checkedConvert(
              'details',
              (v) => PostApiAuthLogin400ResponseErrorDetails.fromJson(
                  v as Map<String, dynamic>)),
          message: $checkedConvert('message', (v) => v as String),
          requestId: $checkedConvert('requestId', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$PostApiAuthLogin400ResponseErrorToJson(
        PostApiAuthLogin400ResponseError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'details': instance.details.toJson(),
      'message': instance.message,
      'requestId': instance.requestId,
    };
