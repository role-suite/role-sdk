// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_auth_me200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiAuthMe200Response _$GetApiAuthMe200ResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'GetApiAuthMe200Response',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['data', 'success'],
        );
        final val = GetApiAuthMe200Response(
          data: $checkedConvert(
              'data',
              (v) => GetApiAuthMe200ResponseData.fromJson(
                  v as Map<String, dynamic>)),
          success: $checkedConvert('success', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$GetApiAuthMe200ResponseToJson(
        GetApiAuthMe200Response instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'success': instance.success,
    };
