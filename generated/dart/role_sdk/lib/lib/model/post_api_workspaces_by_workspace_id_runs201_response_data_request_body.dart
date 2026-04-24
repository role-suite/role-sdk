//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of4.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of1.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_request_body_any_of.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of3.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs201_response_data_request_body.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody] instance.
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody({

     this.contentType,

    required  this.mode,

    required  this.raw,

    required  this.entries,

    required  this.dataBase64,

    required  this.fileName,
  });

  @JsonKey(
    
    name: r'contentType',
    required: false,
    includeIfNull: false
  )


  final String? contentType;



  @JsonKey(
    
    name: r'mode',
    required: true,
    includeIfNull: false
  )


  final String mode;



  @JsonKey(
    
    name: r'raw',
    required: true,
    includeIfNull: false
  )


  final String raw;



  @JsonKey(
    
    name: r'entries',
    required: true,
    includeIfNull: false
  )


  final List<Object> entries;



  @JsonKey(
    
    name: r'dataBase64',
    required: true,
    includeIfNull: false
  )


  final String dataBase64;



  @JsonKey(
    
    name: r'fileName',
    required: true,
    includeIfNull: false
  )


  final String fileName;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody &&
      other.contentType == contentType &&
      other.mode == mode &&
      other.raw == raw &&
      other.entries == entries &&
      other.dataBase64 == dataBase64 &&
      other.fileName == fileName;

    @override
    int get hashCode =>
        contentType.hashCode +
        mode.hashCode +
        raw.hashCode +
        entries.hashCode +
        dataBase64.hashCode +
        fileName.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

