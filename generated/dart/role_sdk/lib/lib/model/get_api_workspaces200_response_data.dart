//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_sdk/lib/model/post_api_auth_login200_response_data_workspace.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_workspaces200_response_data.g.dart';

/// GetApiWorkspaces200ResponseData
///
/// Properties:
/// * [items] 
@BuiltValue()
abstract class GetApiWorkspaces200ResponseData implements Built<GetApiWorkspaces200ResponseData, GetApiWorkspaces200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<PostApiAuthLogin200ResponseDataWorkspace> get items;

  GetApiWorkspaces200ResponseData._();

  factory GetApiWorkspaces200ResponseData([void updates(GetApiWorkspaces200ResponseDataBuilder b)]) = _$GetApiWorkspaces200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiWorkspaces200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiWorkspaces200ResponseData> get serializer => _$GetApiWorkspaces200ResponseDataSerializer();
}

class _$GetApiWorkspaces200ResponseDataSerializer implements PrimitiveSerializer<GetApiWorkspaces200ResponseData> {
  @override
  final Iterable<Type> types = const [GetApiWorkspaces200ResponseData, _$GetApiWorkspaces200ResponseData];

  @override
  final String wireName = r'GetApiWorkspaces200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiWorkspaces200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(PostApiAuthLogin200ResponseDataWorkspace)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetApiWorkspaces200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiWorkspaces200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PostApiAuthLogin200ResponseDataWorkspace)]),
          ) as BuiltList<PostApiAuthLogin200ResponseDataWorkspace>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetApiWorkspaces200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiWorkspaces200ResponseDataBuilder();
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

