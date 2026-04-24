//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_auth_login200_response_data_user.dart';
import 'package:role_sdk/lib/model/get_api_auth_me200_response_data_memberships_inner.dart';
import 'package:role_sdk/lib/model/post_api_auth_login200_response_data_workspace.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_auth_me200_response_data.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiAuthMe200ResponseData {
  /// Returns a new [GetApiAuthMe200ResponseData] instance.
  GetApiAuthMe200ResponseData({

    required  this.memberships,

    required  this.user,

    required  this.workspace,
  });

  @JsonKey(
    
    name: r'memberships',
    required: true,
    includeIfNull: false
  )


  final List<GetApiAuthMe200ResponseDataMembershipsInner> memberships;



  @JsonKey(
    
    name: r'user',
    required: true,
    includeIfNull: false
  )


  final PostApiAuthLogin200ResponseDataUser user;



  @JsonKey(
    
    name: r'workspace',
    required: true,
    includeIfNull: false
  )


  final PostApiAuthLogin200ResponseDataWorkspace workspace;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiAuthMe200ResponseData &&
      other.memberships == memberships &&
      other.user == user &&
      other.workspace == workspace;

    @override
    int get hashCode =>
        memberships.hashCode +
        user.hashCode +
        workspace.hashCode;

  factory GetApiAuthMe200ResponseData.fromJson(Map<String, dynamic> json) => _$GetApiAuthMe200ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiAuthMe200ResponseDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

