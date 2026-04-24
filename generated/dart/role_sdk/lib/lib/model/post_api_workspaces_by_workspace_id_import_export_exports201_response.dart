//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_import_export_exports201_response_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_import_export_exports201_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdImportExportExports201Response {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdImportExportExports201Response] instance.
  PostApiWorkspacesByWorkspaceIdImportExportExports201Response({

    required  this.data,

    required  this.success,
  });

  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData data;



  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false
  )


  final bool success;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdImportExportExports201Response &&
      other.data == data &&
      other.success == success;

    @override
    int get hashCode =>
        data.hashCode +
        success.hashCode;

  factory PostApiWorkspacesByWorkspaceIdImportExportExports201Response.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

