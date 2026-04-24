// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_join_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesJoinRequest _$PostApiWorkspacesJoinRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostApiWorkspacesJoinRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['token'],
        );
        final val = PostApiWorkspacesJoinRequest(
          token: $checkedConvert('token', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$PostApiWorkspacesJoinRequestToJson(
        PostApiWorkspacesJoinRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
