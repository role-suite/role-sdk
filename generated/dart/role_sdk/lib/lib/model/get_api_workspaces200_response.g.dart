// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspaces200Response _$GetApiWorkspaces200ResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'GetApiWorkspaces200Response',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['data', 'success'],
        );
        final val = GetApiWorkspaces200Response(
          data: $checkedConvert(
              'data',
              (v) => GetApiWorkspaces200ResponseData.fromJson(
                  v as Map<String, dynamic>)),
          success: $checkedConvert('success', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$GetApiWorkspaces200ResponseToJson(
        GetApiWorkspaces200Response instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'success': instance.success,
    };
