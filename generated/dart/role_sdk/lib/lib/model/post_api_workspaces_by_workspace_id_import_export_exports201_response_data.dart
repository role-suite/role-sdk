//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_import_export_exports201_response_data.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData] instance.
  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData({

    required  this.completedAt,

    required  this.createdAt,

    required  this.createdByUserId,

    required  this.format,

    required  this.id,

    required  this.status,

    required  this.summary,

    required  this.type,

    required  this.workspaceId,
  });

  @JsonKey(
    
    name: r'completedAt',
    required: true,
    includeIfNull: false
  )


  final String completedAt;



  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false
  )


  final String createdAt;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'createdByUserId',
    required: true,
    includeIfNull: false
  )


  final int createdByUserId;



  @JsonKey(
    
    name: r'format',
    required: true,
    includeIfNull: false
  )


  final String format;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false
  )


  final int id;



  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false
  )


  final String status;



  @JsonKey(
    
    name: r'summary',
    required: true,
    includeIfNull: false
  )


  final Map<String, Object> summary;



  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum type;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'workspaceId',
    required: true,
    includeIfNull: false
  )


  final int workspaceId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData &&
      other.completedAt == completedAt &&
      other.createdAt == createdAt &&
      other.createdByUserId == createdByUserId &&
      other.format == format &&
      other.id == id &&
      other.status == status &&
      other.summary == summary &&
      other.type == type &&
      other.workspaceId == workspaceId;

    @override
    int get hashCode =>
        completedAt.hashCode +
        createdAt.hashCode +
        createdByUserId.hashCode +
        format.hashCode +
        id.hashCode +
        status.hashCode +
        summary.hashCode +
        type.hashCode +
        workspaceId.hashCode;

  factory PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum {
  @JsonValue(r'export')
  export_,
  @JsonValue(r'import')
  import_,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}


