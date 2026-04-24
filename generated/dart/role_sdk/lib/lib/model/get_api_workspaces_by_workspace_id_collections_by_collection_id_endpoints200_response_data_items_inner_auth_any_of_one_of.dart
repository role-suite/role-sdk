//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_auth_any_of_one_of.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfOneOf {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfOneOf] instance.
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfOneOf({

    required  this.type,
  });

  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfOneOf &&
      other.type == type;

    @override
    int get hashCode =>
        type.hashCode;

  factory GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfOneOf.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfOneOfFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfOneOfToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

