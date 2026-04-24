//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_updates200_response_data_cursor.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor] instance.
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor({

    required  this.hasMore,

    required  this.next,
  });

  @JsonKey(
    
    name: r'hasMore',
    required: true,
    includeIfNull: false
  )


  final bool hasMore;



          // minimum: 0
          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'next',
    required: true,
    includeIfNull: false
  )


  final int next;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor &&
      other.hasMore == hasMore &&
      other.next == next;

    @override
    int get hashCode =>
        hasMore.hashCode +
        next.hashCode;

  factory GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

