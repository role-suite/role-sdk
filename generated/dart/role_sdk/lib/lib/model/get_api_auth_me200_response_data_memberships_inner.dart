//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'get_api_auth_me200_response_data_memberships_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiAuthMe200ResponseDataMembershipsInner {
  /// Returns a new [GetApiAuthMe200ResponseDataMembershipsInner] instance.
  GetApiAuthMe200ResponseDataMembershipsInner({

     this.legacyId,

    required  this.name,

    required  this.role,

    required  this.slug,

    required  this.type,

    required  this.workspaceId,
  });

          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'_id',
    required: false,
    includeIfNull: false
  )


  final int? legacyId;



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


  final GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum role;



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


  final GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum type;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'workspaceId',
    required: true,
    includeIfNull: false
  )


  final int workspaceId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiAuthMe200ResponseDataMembershipsInner &&
      other.legacyId == legacyId &&
      other.name == name &&
      other.role == role &&
      other.slug == slug &&
      other.type == type &&
      other.workspaceId == workspaceId;

    @override
    int get hashCode =>
        legacyId.hashCode +
        name.hashCode +
        role.hashCode +
        slug.hashCode +
        type.hashCode +
        workspaceId.hashCode;

  factory GetApiAuthMe200ResponseDataMembershipsInner.fromJson(Map<String, dynamic> json) => _$GetApiAuthMe200ResponseDataMembershipsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiAuthMe200ResponseDataMembershipsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum {
  @JsonValue(r'owner')
  owner,
  @JsonValue(r'admin')
  admin,
  @JsonValue(r'member')
  member,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}



enum GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum {
  @JsonValue(r'personal')
  personal,
  @JsonValue(r'team')
  team,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}


