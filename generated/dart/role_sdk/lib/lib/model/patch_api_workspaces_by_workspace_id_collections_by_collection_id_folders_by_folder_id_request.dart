//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_folder_id.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patch_api_workspaces_by_workspace_id_collections_by_collection_id_folders_by_folder_id_request.g.dart';

/// PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest
///
/// Properties:
/// * [name] 
/// * [parentFolderId] 
/// * [position] 
@BuiltValue()
abstract class PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest implements Built<PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest, PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'parentFolderId')
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId? get parentFolderId;

  @BuiltValueField(wireName: r'position')
  int? get position;

  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest._();

  factory PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest([void updates(PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestBuilder b)]) = _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest> get serializer => _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestSerializer();
}

class _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestSerializer implements PrimitiveSerializer<PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest> {
  @override
  final Iterable<Type> types = const [PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest, _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest];

  @override
  final String wireName = r'PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.parentFolderId != null) {
      yield r'parentFolderId';
      yield serializers.serialize(
        object.parentFolderId,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId),
      );
    }
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestBuilder result,
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
        case r'parentFolderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId),
          ) as PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId;
          result.parentFolderId.replace(valueDes);
          break;
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.position = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestBuilder();
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

