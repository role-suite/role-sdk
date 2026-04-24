// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces201_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspaces201Response _$PostApiWorkspaces201ResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostApiWorkspaces201Response',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['data', 'success'],
        );
        final val = PostApiWorkspaces201Response(
          data: $checkedConvert(
              'data',
              (v) => PostApiAuthLogin200ResponseDataWorkspace.fromJson(
                  v as Map<String, dynamic>)),
          success: $checkedConvert('success', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$PostApiWorkspaces201ResponseToJson(
        PostApiWorkspaces201Response instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'success': instance.success,
    };
