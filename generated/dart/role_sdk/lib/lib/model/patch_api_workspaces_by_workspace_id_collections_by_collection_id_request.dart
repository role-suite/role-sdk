//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patch_api_workspaces_by_workspace_id_collections_by_collection_id_request.g.dart';

/// PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest
///
/// Properties:
/// * [description] 
/// * [name] 
@BuiltValue()
abstract class PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest implements Built<PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest, PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestBuilder> {
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'name')
  String? get name;

  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest._();

  factory PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest([void updates(PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestBuilder b)]) = _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest> get serializer => _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestSerializer();
}

class _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestSerializer implements PrimitiveSerializer<PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest> {
  @override
  final Iterable<Type> types = const [PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest, _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest];

  @override
  final String wireName = r'PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestBuilder();
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

