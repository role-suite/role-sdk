//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_environments_by_environment_id_variables200_response_data_items_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_environments_by_environment_id_variables200_response_data.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData] instance.
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData({

    required  this.items,
  });

  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false
  )


  final List<GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner> items;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData &&
      other.items == items;

    @override
    int get hashCode =>
        items.hashCode;

  factory GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

