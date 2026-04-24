//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_auth_login200_response_data_user.dart';
import 'package:role_sdk/lib/model/post_api_auth_login200_response_data_memberships_inner.dart';
import 'package:role_sdk/lib/model/post_api_auth_login200_response_data_workspace.dart';
import 'package:role_sdk/lib/model/post_api_auth_login200_response_data_tokens.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_auth_login200_response_data.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiAuthLogin200ResponseData {
  /// Returns a new [PostApiAuthLogin200ResponseData] instance.
  PostApiAuthLogin200ResponseData({

    required  this.memberships,

    required  this.tokens,

    required  this.user,

    required  this.workspace,
  });

  @JsonKey(
    
    name: r'memberships',
    required: true,
    includeIfNull: false
  )


  final List<PostApiAuthLogin200ResponseDataMembershipsInner> memberships;



  @JsonKey(
    
    name: r'tokens',
    required: true,
    includeIfNull: false
  )


  final PostApiAuthLogin200ResponseDataTokens tokens;



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
    bool operator ==(Object other) => identical(this, other) || other is PostApiAuthLogin200ResponseData &&
      other.memberships == memberships &&
      other.tokens == tokens &&
      other.user == user &&
      other.workspace == workspace;

    @override
    int get hashCode =>
        memberships.hashCode +
        tokens.hashCode +
        user.hashCode +
        workspace.hashCode;

  factory PostApiAuthLogin200ResponseData.fromJson(Map<String, dynamic> json) => _$PostApiAuthLogin200ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiAuthLogin200ResponseDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

