//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_import_export_exports_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdImportExportExportsRequest {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdImportExportExportsRequest] instance.
  PostApiWorkspacesByWorkspaceIdImportExportExportsRequest({

     this.format = const PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum._('json'),

     this.includeCollections,

     this.includeEnvironments,

     this.includeRuns,
  });

  @JsonKey(
    defaultValue: 'json',
    name: r'format',
    required: false,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum? format;



  @JsonKey(
    
    name: r'includeCollections',
    required: false,
    includeIfNull: false
  )


  final bool? includeCollections;



  @JsonKey(
    
    name: r'includeEnvironments',
    required: false,
    includeIfNull: false
  )


  final bool? includeEnvironments;



  @JsonKey(
    
    name: r'includeRuns',
    required: false,
    includeIfNull: false
  )


  final bool? includeRuns;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdImportExportExportsRequest &&
      other.format == format &&
      other.includeCollections == includeCollections &&
      other.includeEnvironments == includeEnvironments &&
      other.includeRuns == includeRuns;

    @override
    int get hashCode =>
        format.hashCode +
        includeCollections.hashCode +
        includeEnvironments.hashCode +
        includeRuns.hashCode;

  factory PostApiWorkspacesByWorkspaceIdImportExportExportsRequest.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdImportExportExportsRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum {
  @JsonValue(r'json')
  json,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}


