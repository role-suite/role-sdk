//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200Response {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200Response] instance.
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200Response({

    required  this.data,

    required  this.success,
  });

  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseData data;



  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false
  )


  final bool success;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200Response &&
      other.data == data &&
      other.success == success;

    @override
    int get hashCode =>
        data.hashCode +
        success.hashCode;

  factory GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200Response.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

