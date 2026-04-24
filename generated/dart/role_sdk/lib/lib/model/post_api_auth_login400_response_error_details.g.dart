// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login400_response_error_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiAuthLogin400ResponseErrorDetails
    _$PostApiAuthLogin400ResponseErrorDetailsFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiAuthLogin400ResponseErrorDetails',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['fieldErrors'],
            );
            final val = PostApiAuthLogin400ResponseErrorDetails(
              fieldErrors: $checkedConvert(
                  'fieldErrors',
                  (v) => (v as Map<String, dynamic>).map(
                        (k, e) => MapEntry(
                            k,
                            (e as List<dynamic>)
                                .map((e) => e as String)
                                .toList()),
                      )),
            );
            return val;
          },
        );

Map<String, dynamic> _$PostApiAuthLogin400ResponseErrorDetailsToJson(
        PostApiAuthLogin400ResponseErrorDetails instance) =>
    <String, dynamic>{
      'fieldErrors': instance.fieldErrors,
    };
