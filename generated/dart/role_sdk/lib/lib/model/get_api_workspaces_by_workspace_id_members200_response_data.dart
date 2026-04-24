//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_members200_response_data_items_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_members200_response_data.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdMembers200ResponseData {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdMembers200ResponseData] instance.
  GetApiWorkspacesByWorkspaceIdMembers200ResponseData({

    required  this.items,
  });

  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false
  )


  final List<GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner> items;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdMembers200ResponseData &&
      other.items == items;

    @override
    int get hashCode =>
        items.hashCode;

  factory GetApiWorkspacesByWorkspaceIdMembers200ResponseData.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

