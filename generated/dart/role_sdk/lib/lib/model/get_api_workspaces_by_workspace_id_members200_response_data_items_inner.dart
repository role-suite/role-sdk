//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_members200_response_data_items_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner] instance.
  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner({

    required  this.email,

    required  this.name,

    required  this.role,

    required  this.userId,
  });

  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false
  )


  final String email;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @JsonKey(
    
    name: r'role',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum role;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'userId',
    required: true,
    includeIfNull: false
  )


  final int userId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner &&
      other.email == email &&
      other.name == name &&
      other.role == role &&
      other.userId == userId;

    @override
    int get hashCode =>
        email.hashCode +
        name.hashCode +
        role.hashCode +
        userId.hashCode;

  factory GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum {
  @JsonValue(r'owner')
  owner,
  @JsonValue(r'admin')
  admin,
  @JsonValue(r'member')
  member,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}


