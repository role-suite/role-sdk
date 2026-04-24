//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of1.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of_request.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRunsRequestSource {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRunsRequestSource] instance.
  PostApiWorkspacesByWorkspaceIdRunsRequestSource({

    required  this.request,

    required  this.type,

    required  this.collectionId,

    required  this.endpointId,
  });

  @JsonKey(
    
    name: r'request',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest request;



  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRunsRequestSource &&
      other.request == request &&
      other.type == type &&
      other.collectionId == collectionId &&
      other.endpointId == endpointId;

    @override
    int get hashCode =>
        request.hashCode +
        type.hashCode +
        collectionId.hashCode +
        endpointId.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRunsRequestSource.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

