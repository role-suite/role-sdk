//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_convert_to_team_request.g.dart';

/// PostApiWorkspacesByWorkspaceIdConvertToTeamRequest
///
/// Properties:
/// * [name] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdConvertToTeamRequest implements Built<PostApiWorkspacesByWorkspaceIdConvertToTeamRequest, PostApiWorkspacesByWorkspaceIdConvertToTeamRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  PostApiWorkspacesByWorkspaceIdConvertToTeamRequest._();

  factory PostApiWorkspacesByWorkspaceIdConvertToTeamRequest([void updates(PostApiWorkspacesByWorkspaceIdConvertToTeamRequestBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdConvertToTeamRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdConvertToTeamRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdConvertToTeamRequest> get serializer => _$PostApiWorkspacesByWorkspaceIdConvertToTeamRequestSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdConvertToTeamRequestSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdConvertToTeamRequest> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdConvertToTeamRequest, _$PostApiWorkspacesByWorkspaceIdConvertToTeamRequest];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdConvertToTeamRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdConvertToTeamRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    PostApiWorkspacesByWorkspaceIdConvertToTeamRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdConvertToTeamRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  PostApiWorkspacesByWorkspaceIdConvertToTeamRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdConvertToTeamRequestBuilder();
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

