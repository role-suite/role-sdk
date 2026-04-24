//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_environments_by_environment_id_variables200_response_data_items_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner] instance.
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner({

    required  this.createdAt,

    required  this.createdByUserId,

    required  this.enabled,

    required  this.environmentId,

    required  this.id,

    required  this.isSecret,

    required  this.key,

    required  this.position,

    required  this.updatedAt,

    required  this.value,
  });

  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false
  )


  final String createdAt;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'createdByUserId',
    required: true,
    includeIfNull: false
  )


  final int createdByUserId;



  @JsonKey(
    
    name: r'enabled',
    required: true,
    includeIfNull: false
  )


  final bool enabled;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'environmentId',
    required: true,
    includeIfNull: false
  )


  final int environmentId;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false
  )


  final int id;



  @JsonKey(
    
    name: r'isSecret',
    required: true,
    includeIfNull: false
  )


  final bool isSecret;



  @JsonKey(
    
    name: r'key',
    required: true,
    includeIfNull: false
  )


  final String key;



          // minimum: -9007199254740991
          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'position',
    required: true,
    includeIfNull: false
  )


  final int position;



  @JsonKey(
    
    name: r'updatedAt',
    required: true,
    includeIfNull: false
  )


  final String updatedAt;



  @JsonKey(
    
    name: r'value',
    required: true,
    includeIfNull: false
  )


  final String value;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner &&
      other.createdAt == createdAt &&
      other.createdByUserId == createdByUserId &&
      other.enabled == enabled &&
      other.environmentId == environmentId &&
      other.id == id &&
      other.isSecret == isSecret &&
      other.key == key &&
      other.position == position &&
      other.updatedAt == updatedAt &&
      other.value == value;

    @override
    int get hashCode =>
        createdAt.hashCode +
        createdByUserId.hashCode +
        enabled.hashCode +
        environmentId.hashCode +
        id.hashCode +
        isSecret.hashCode +
        key.hashCode +
        position.hashCode +
        updatedAt.hashCode +
        value.hashCode;

  factory GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

