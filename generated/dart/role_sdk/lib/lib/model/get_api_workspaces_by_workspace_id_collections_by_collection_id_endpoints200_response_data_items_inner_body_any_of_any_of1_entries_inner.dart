//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of1_entries_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner] instance.
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner({

     this.enabled,

    required  this.key,

    required  this.value,
  });

  @JsonKey(
    
    name: r'enabled',
    required: false,
    includeIfNull: false
  )


  final bool? enabled;



  @JsonKey(
    
    name: r'key',
    required: true,
    includeIfNull: false
  )


  final String key;



  @JsonKey(
    
    name: r'value',
    required: true,
    includeIfNull: false
  )


  final String value;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner &&
      other.enabled == enabled &&
      other.key == key &&
      other.value == value;

    @override
    int get hashCode =>
        enabled.hashCode +
        key.hashCode +
        value.hashCode;

  factory GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

