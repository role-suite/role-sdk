//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_auth_any_of_one_of2.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_auth_any_of_one_of1.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_auth_any_of_one_of.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_auth_any_of.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOf {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOf] instance.
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOf({

    required  this.type,

    required  this.token,

    required  this.password,

    required  this.username,
  });

  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @JsonKey(
    
    name: r'token',
    required: true,
    includeIfNull: false
  )


  final String token;



  @JsonKey(
    
    name: r'password',
    required: true,
    includeIfNull: false
  )


  final String password;



  @JsonKey(
    
    name: r'username',
    required: true,
    includeIfNull: false
  )


  final String username;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOf &&
      other.type == type &&
      other.token == token &&
      other.password == password &&
      other.username == username;

    @override
    int get hashCode =>
        type.hashCode +
        token.hashCode +
        password.hashCode +
        username.hashCode;

  factory GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOf.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

