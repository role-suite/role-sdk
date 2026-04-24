//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_invitations_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdInvitationsRequest {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdInvitationsRequest] instance.
  PostApiWorkspacesByWorkspaceIdInvitationsRequest({

    required  this.email,

     this.role = const PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum._('member'),
  });

  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false
  )


  final String email;



  @JsonKey(
    defaultValue: 'member',
    name: r'role',
    required: false,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum? role;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdInvitationsRequest &&
      other.email == email &&
      other.role == role;

    @override
    int get hashCode =>
        email.hashCode +
        role.hashCode;

  factory PostApiWorkspacesByWorkspaceIdInvitationsRequest.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdInvitationsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdInvitationsRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum {
  @JsonValue(r'admin')
  admin,
  @JsonValue(r'member')
  member,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}


