//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_auth_logout200_response_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_auth_logout200_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiAuthLogout200Response {
  /// Returns a new [PostApiAuthLogout200Response] instance.
  PostApiAuthLogout200Response({

    required  this.data,

    required  this.success,
  });

  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false
  )


  final PostApiAuthLogout200ResponseData data;



  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false
  )


  final bool success;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiAuthLogout200Response &&
      other.data == data &&
      other.success == success;

    @override
    int get hashCode =>
        data.hashCode +
        success.hashCode;

  factory PostApiAuthLogout200Response.fromJson(Map<String, dynamic> json) => _$PostApiAuthLogout200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiAuthLogout200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

