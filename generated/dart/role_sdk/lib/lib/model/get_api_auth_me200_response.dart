//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_auth_me200_response_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_auth_me200_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiAuthMe200Response {
  /// Returns a new [GetApiAuthMe200Response] instance.
  GetApiAuthMe200Response({

    required  this.data,

    required  this.success,
  });

  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false
  )


  final GetApiAuthMe200ResponseData data;



  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false
  )


  final bool success;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiAuthMe200Response &&
      other.data == data &&
      other.success == success;

    @override
    int get hashCode =>
        data.hashCode +
        success.hashCode;

  factory GetApiAuthMe200Response.fromJson(Map<String, dynamic> json) => _$GetApiAuthMe200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiAuthMe200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

