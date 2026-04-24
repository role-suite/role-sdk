//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections200_response_data_items_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_collections200_response_data.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdCollections200ResponseData {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdCollections200ResponseData] instance.
  GetApiWorkspacesByWorkspaceIdCollections200ResponseData({

    required  this.items,
  });

  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false
  )


  final List<GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner> items;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdCollections200ResponseData &&
      other.items == items;

    @override
    int get hashCode =>
        items.hashCode;

  factory GetApiWorkspacesByWorkspaceIdCollections200ResponseData.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

