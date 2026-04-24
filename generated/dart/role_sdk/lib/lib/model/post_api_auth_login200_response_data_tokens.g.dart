// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login200_response_data_tokens.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiAuthLogin200ResponseDataTokens
    _$PostApiAuthLogin200ResponseDataTokensFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiAuthLogin200ResponseDataTokens',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const [
                'accessToken',
                'accessTokenTtlSeconds',
                'refreshToken',
                'refreshTokenTtlSeconds'
              ],
            );
            final val = PostApiAuthLogin200ResponseDataTokens(
              accessToken: $checkedConvert('accessToken', (v) => v as String),
              accessTokenTtlSeconds: $checkedConvert(
                  'accessTokenTtlSeconds', (v) => (v as num).toInt()),
              refreshToken: $checkedConvert('refreshToken', (v) => v as String),
              refreshTokenTtlSeconds: $checkedConvert(
                  'refreshTokenTtlSeconds', (v) => (v as num).toInt()),
            );
            return val;
          },
        );

Map<String, dynamic> _$PostApiAuthLogin200ResponseDataTokensToJson(
        PostApiAuthLogin200ResponseDataTokens instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'accessTokenTtlSeconds': instance.accessTokenTtlSeconds,
      'refreshToken': instance.refreshToken,
      'refreshTokenTtlSeconds': instance.refreshTokenTtlSeconds,
    };
