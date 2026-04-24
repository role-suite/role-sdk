//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_workspaces_by_workspace_id_updates200_response_data_cursor.g.dart';

/// GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor
///
/// Properties:
/// * [hasMore] 
/// * [next] 
@BuiltValue()
abstract class GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor implements Built<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor, GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder> {
  @BuiltValueField(wireName: r'hasMore')
  bool get hasMore;

  @BuiltValueField(wireName: r'next')
  int get next;

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor._();

  factory GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor([void updates(GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder b)]) = _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor> get serializer => _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorSerializer();
}

class _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorSerializer implements PrimitiveSerializer<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor> {
  @override
  final Iterable<Type> types = const [GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor, _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor];

  @override
  final String wireName = r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'hasMore';
    yield serializers.serialize(
      object.hasMore,
      specifiedType: const FullType(bool),
    );
    yield r'next';
    yield serializers.serialize(
      object.next,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hasMore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasMore = valueDes;
          break;
        case r'next':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.next = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder();
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

