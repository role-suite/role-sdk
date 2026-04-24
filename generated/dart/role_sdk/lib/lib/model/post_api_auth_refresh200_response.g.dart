// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_refresh200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiAuthRefresh200Response _$PostApiAuthRefresh200ResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostApiAuthRefresh200Response',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['data', 'success'],
        );
        final val = PostApiAuthRefresh200Response(
          data: $checkedConvert(
              'data',
              (v) => PostApiAuthRefresh200ResponseData.fromJson(
                  v as Map<String, dynamic>)),
          success: $checkedConvert('success', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$PostApiAuthRefresh200ResponseToJson(
        PostApiAuthRefresh200Response instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'success': instance.success,
    };
