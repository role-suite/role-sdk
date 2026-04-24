//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_invitations201_response_data.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdInvitations201ResponseData {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdInvitations201ResponseData] instance.
  PostApiWorkspacesByWorkspaceIdInvitations201ResponseData({

    required  this.email,

    required  this.expiresAt,

    required  this.id,

    required  this.role,

    required  this.token,

    required  this.workspaceId,
  });

  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false
  )


  final String email;



  @JsonKey(
    
    name: r'expiresAt',
    required: true,
    includeIfNull: false
  )


  final String expiresAt;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false
  )


  final int id;



  @JsonKey(
    
    name: r'role',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum role;



  @JsonKey(
    
    name: r'token',
    required: true,
    includeIfNull: false
  )


  final String token;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'workspaceId',
    required: true,
    includeIfNull: false
  )


  final int workspaceId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdInvitations201ResponseData &&
      other.email == email &&
      other.expiresAt == expiresAt &&
      other.id == id &&
      other.role == role &&
      other.token == token &&
      other.workspaceId == workspaceId;

    @override
    int get hashCode =>
        email.hashCode +
        expiresAt.hashCode +
        id.hashCode +
        role.hashCode +
        token.hashCode +
        workspaceId.hashCode;

  factory PostApiWorkspacesByWorkspaceIdInvitations201ResponseData.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum {
  @JsonValue(r'admin')
  admin,
  @JsonValue(r'member')
  member,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}


