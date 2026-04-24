//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_import_export_imports_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdImportExportImportsRequest {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdImportExportImportsRequest] instance.
  PostApiWorkspacesByWorkspaceIdImportExportImportsRequest({

     this.format = const PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum._('json'),

    required  this.payload,
  });

  @JsonKey(
    defaultValue: 'json',
    name: r'format',
    required: false,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum? format;



  @JsonKey(
    
    name: r'payload',
    required: true,
    includeIfNull: false
  )


  final Map<String, Object> payload;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdImportExportImportsRequest &&
      other.format == format &&
      other.payload == payload;

    @override
    int get hashCode =>
        format.hashCode +
        payload.hashCode;

  factory PostApiWorkspacesByWorkspaceIdImportExportImportsRequest.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdImportExportImportsRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum {
  @JsonValue(r'json')
  json,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}


