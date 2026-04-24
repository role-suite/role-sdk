//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_auth_login200_response_data_workspace.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces200_response_data.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspaces200ResponseData {
  /// Returns a new [GetApiWorkspaces200ResponseData] instance.
  GetApiWorkspaces200ResponseData({

    required  this.items,
  });

  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false
  )


  final List<PostApiAuthLogin200ResponseDataWorkspace> items;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspaces200ResponseData &&
      other.items == items;

    @override
    int get hashCode =>
        items.hashCode;

  factory GetApiWorkspaces200ResponseData.fromJson(Map<String, dynamic> json) => _$GetApiWorkspaces200ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspaces200ResponseDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

