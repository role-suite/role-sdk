//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_by_endpoint_id_examples_request_body.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of1_entries_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patch_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_by_endpoint_id_examples_by_example_id_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest {
  /// Returns a new [PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest] instance.
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest({

     this.body,

     this.headers,

     this.name,

     this.position,

     this.statusCode,
  });

  @JsonKey(
    
    name: r'body',
    required: false,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequestBody? body;



  @JsonKey(
    
    name: r'headers',
    required: false,
    includeIfNull: false
  )


  final List<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>? headers;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



          // minimum: 0
          // maximum: 100000
  @JsonKey(
    
    name: r'position',
    required: false,
    includeIfNull: false
  )


  final int? position;



          // minimum: 100
          // maximum: 599
  @JsonKey(
    
    name: r'statusCode',
    required: false,
    includeIfNull: false
  )


  final int? statusCode;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest &&
      other.body == body &&
      other.headers == headers &&
      other.name == name &&
      other.position == position &&
      other.statusCode == statusCode;

    @override
    int get hashCode =>
        body.hashCode +
        headers.hashCode +
        name.hashCode +
        position.hashCode +
        statusCode.hashCode;

  factory PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest.fromJson(Map<String, dynamic> json) => _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

