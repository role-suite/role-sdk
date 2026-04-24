// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces200_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspaces200ResponseData _$GetApiWorkspaces200ResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'GetApiWorkspaces200ResponseData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['items'],
        );
        final val = GetApiWorkspaces200ResponseData(
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => PostApiAuthLogin200ResponseDataWorkspace.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$GetApiWorkspaces200ResponseDataToJson(
        GetApiWorkspaces200ResponseData instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
