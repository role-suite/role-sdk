//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_auth_refresh200_response_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_auth_refresh200_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiAuthRefresh200Response {
  /// Returns a new [PostApiAuthRefresh200Response] instance.
  PostApiAuthRefresh200Response({

    required  this.data,

    required  this.success,
  });

  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false
  )


  final PostApiAuthRefresh200ResponseData data;



  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false
  )


  final bool success;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiAuthRefresh200Response &&
      other.data == data &&
      other.success == success;

    @override
    int get hashCode =>
        data.hashCode +
        success.hashCode;

  factory PostApiAuthRefresh200Response.fromJson(Map<String, dynamic> json) => _$PostApiAuthRefresh200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiAuthRefresh200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

