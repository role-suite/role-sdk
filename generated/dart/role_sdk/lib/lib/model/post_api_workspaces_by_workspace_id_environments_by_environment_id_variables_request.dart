//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_environments_by_environment_id_variables_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest] instance.
  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest({

     this.enabled,

     this.isSecret,

    required  this.key,

     this.position,

    required  this.value,
  });

  @JsonKey(
    
    name: r'enabled',
    required: false,
    includeIfNull: false
  )


  final bool? enabled;



  @JsonKey(
    
    name: r'isSecret',
    required: false,
    includeIfNull: false
  )


  final bool? isSecret;



  @JsonKey(
    
    name: r'key',
    required: true,
    includeIfNull: false
  )


  final String key;



          // minimum: 0
          // maximum: 100000
  @JsonKey(
    
    name: r'position',
    required: false,
    includeIfNull: false
  )


  final int? position;



  @JsonKey(
    
    name: r'value',
    required: true,
    includeIfNull: false
  )


  final String value;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest &&
      other.enabled == enabled &&
      other.isSecret == isSecret &&
      other.key == key &&
      other.position == position &&
      other.value == value;

    @override
    int get hashCode =>
        enabled.hashCode +
        isSecret.hashCode +
        key.hashCode +
        position.hashCode +
        value.hashCode;

  factory PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

