//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_auth_login200_response_data_workspace.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiAuthLogin200ResponseDataWorkspace {
  /// Returns a new [PostApiAuthLogin200ResponseDataWorkspace] instance.
  PostApiAuthLogin200ResponseDataWorkspace({

     this.legacyId,

    required  this.id,

    required  this.name,

    required  this.role,

    required  this.slug,

    required  this.type,
  });

          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'_id',
    required: false,
    includeIfNull: false
  )


  final int? legacyId;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false
  )


  final int id;



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


  final PostApiAuthLogin200ResponseDataWorkspaceRoleEnum role;



  @JsonKey(
    
    name: r'slug',
    required: true,
    includeIfNull: false
  )


  final String slug;



  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final PostApiAuthLogin200ResponseDataWorkspaceTypeEnum type;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiAuthLogin200ResponseDataWorkspace &&
      other.legacyId == legacyId &&
      other.id == id &&
      other.name == name &&
      other.role == role &&
      other.slug == slug &&
      other.type == type;

    @override
    int get hashCode =>
        legacyId.hashCode +
        id.hashCode +
        name.hashCode +
        role.hashCode +
        slug.hashCode +
        type.hashCode;

  factory PostApiAuthLogin200ResponseDataWorkspace.fromJson(Map<String, dynamic> json) => _$PostApiAuthLogin200ResponseDataWorkspaceFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiAuthLogin200ResponseDataWorkspaceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum PostApiAuthLogin200ResponseDataWorkspaceRoleEnum {
  @JsonValue(r'owner')
  owner,
  @JsonValue(r'admin')
  admin,
  @JsonValue(r'member')
  member,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}



enum PostApiAuthLogin200ResponseDataWorkspaceTypeEnum {
  @JsonValue(r'personal')
  personal,
  @JsonValue(r'team')
  team,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}


