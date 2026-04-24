//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_import_export_exports201_response_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_import_export_jobs200_response_data.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData] instance.
  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData({

    required  this.items,
  });

  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false
  )


  final List<PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData> items;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData &&
      other.items == items;

    @override
    int get hashCode =>
        items.hashCode;

  factory GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

