//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces200_response_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces200_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspaces200Response {
  /// Returns a new [GetApiWorkspaces200Response] instance.
  GetApiWorkspaces200Response({

    required  this.data,

    required  this.success,
  });

  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspaces200ResponseData data;



  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false
  )


  final bool success;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspaces200Response &&
      other.data == data &&
      other.success == success;

    @override
    int get hashCode =>
        data.hashCode +
        success.hashCode;

  factory GetApiWorkspaces200Response.fromJson(Map<String, dynamic> json) => _$GetApiWorkspaces200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspaces200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

