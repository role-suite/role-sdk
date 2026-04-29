//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_import_export_jobs200_response_data.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_workspaces_by_workspace_id_import_export_jobs200_response.g.dart';

/// GetApiWorkspacesByWorkspaceIdImportExportJobs200Response
///
/// Properties:
/// * [data] 
/// * [success] 
@BuiltValue()
abstract class GetApiWorkspacesByWorkspaceIdImportExportJobs200Response implements Built<GetApiWorkspacesByWorkspaceIdImportExportJobs200Response, GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData get data;

  @BuiltValueField(wireName: r'success')
  bool get success;

  GetApiWorkspacesByWorkspaceIdImportExportJobs200Response._();

  factory GetApiWorkspacesByWorkspaceIdImportExportJobs200Response([void updates(GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseBuilder b)]) = _$GetApiWorkspacesByWorkspaceIdImportExportJobs200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiWorkspacesByWorkspaceIdImportExportJobs200Response> get serializer => _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseSerializer();
}

class _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseSerializer implements PrimitiveSerializer<GetApiWorkspacesByWorkspaceIdImportExportJobs200Response> {
  @override
  final Iterable<Type> types = const [GetApiWorkspacesByWorkspaceIdImportExportJobs200Response, _$GetApiWorkspacesByWorkspaceIdImportExportJobs200Response];

  @override
  final String wireName = r'GetApiWorkspacesByWorkspaceIdImportExportJobs200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdImportExportJobs200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData),
    );
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdImportExportJobs200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData),
          ) as GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData;
          result.data = valueDes;
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetApiWorkspacesByWorkspaceIdImportExportJobs200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

