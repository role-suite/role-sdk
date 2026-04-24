//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_updates200_response_data_cursor.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_updates200_response_data_items_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_updates200_response_data.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdUpdates200ResponseData {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdUpdates200ResponseData] instance.
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseData({

    required  this.cursor,

    required  this.items,
  });

  @JsonKey(
    
    name: r'cursor',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor cursor;



  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false
  )


  final List<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner> items;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdUpdates200ResponseData &&
      other.cursor == cursor &&
      other.items == items;

    @override
    int get hashCode =>
        cursor.hashCode +
        items.hashCode;

  factory GetApiWorkspacesByWorkspaceIdUpdates200ResponseData.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

