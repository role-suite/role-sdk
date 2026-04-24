//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'patch_api_workspaces_by_workspace_id_members_by_member_user_id_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest {
  /// Returns a new [PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest] instance.
  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest({

    required  this.role,
  });

  @JsonKey(
    
    name: r'role',
    required: true,
    includeIfNull: false
  )


  final PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum role;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest &&
      other.role == role;

    @override
    int get hashCode =>
        role.hashCode;

  factory PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest.fromJson(Map<String, dynamic> json) => _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum {
  @JsonValue(r'admin')
  admin,
  @JsonValue(r'member')
  member,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}


