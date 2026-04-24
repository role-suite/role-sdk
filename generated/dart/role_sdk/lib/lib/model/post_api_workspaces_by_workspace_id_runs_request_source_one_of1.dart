//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_source_one_of1.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1 {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1] instance.
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1({

    required  this.collectionId,

    required  this.endpointId,

    required  this.type,
  });

          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'collectionId',
    required: true,
    includeIfNull: false
  )


  final int collectionId;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'endpointId',
    required: true,
    includeIfNull: false
  )


  final int endpointId;



  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1 &&
      other.collectionId == collectionId &&
      other.endpointId == endpointId &&
      other.type == type;

    @override
    int get hashCode =>
        collectionId.hashCode +
        endpointId.hashCode +
        type.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1FromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1ToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

