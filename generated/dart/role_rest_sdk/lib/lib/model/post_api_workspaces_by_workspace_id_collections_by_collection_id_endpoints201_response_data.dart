//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of1_entries_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_auth.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_folder_id.dart';
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints201_response_data.g.dart';

/// PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData
///
/// Properties:
/// * [auth] 
/// * [body] 
/// * [collectionId] 
/// * [createdAt] 
/// * [createdByUserId] 
/// * [folderId] 
/// * [headers] 
/// * [id] 
/// * [method] 
/// * [name] 
/// * [position] 
/// * [queryParams] 
/// * [updatedAt] 
/// * [url] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData implements Built<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData, PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataBuilder> {
  @BuiltValueField(wireName: r'auth')
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuth get auth;

  @BuiltValueField(wireName: r'body')
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBody get body;

  @BuiltValueField(wireName: r'collectionId')
  int get collectionId;

  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  @BuiltValueField(wireName: r'createdByUserId')
  int get createdByUserId;

  @BuiltValueField(wireName: r'folderId')
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId get folderId;

  @BuiltValueField(wireName: r'headers')
  BuiltList<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner> get headers;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'method')
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum get method;
  // enum methodEnum {  GET,  POST,  PUT,  PATCH,  DELETE,  HEAD,  OPTIONS,  };

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'position')
  int get position;

  @BuiltValueField(wireName: r'queryParams')
  BuiltList<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner> get queryParams;

  @BuiltValueField(wireName: r'updatedAt')
  String get updatedAt;

  @BuiltValueField(wireName: r'url')
  String get url;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData._();

  factory PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData([void updates(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData> get serializer => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData, _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'auth';
    yield serializers.serialize(
      object.auth,
      specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuth),
    );
    yield r'body';
    yield serializers.serialize(
      object.body,
      specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBody),
    );
    yield r'collectionId';
    yield serializers.serialize(
      object.collectionId,
      specifiedType: const FullType(int),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'createdByUserId';
    yield serializers.serialize(
      object.createdByUserId,
      specifiedType: const FullType(int),
    );
    yield r'folderId';
    yield serializers.serialize(
      object.folderId,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId),
    );
    yield r'headers';
    yield serializers.serialize(
      object.headers,
      specifiedType: const FullType(BuiltList, [FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner)]),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'position';
    yield serializers.serialize(
      object.position,
      specifiedType: const FullType(int),
    );
    yield r'queryParams';
    yield serializers.serialize(
      object.queryParams,
      specifiedType: const FullType(BuiltList, [FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner)]),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(String),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'auth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuth),
          ) as GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuth;
          result.auth.replace(valueDes);
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBody),
          ) as GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBody;
          result.body.replace(valueDes);
          break;
        case r'collectionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.collectionId = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'createdByUserId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.createdByUserId = valueDes;
          break;
        case r'folderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId),
          ) as PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId;
          result.folderId.replace(valueDes);
          break;
        case r'headers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner)]),
          ) as BuiltList<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner>;
          result.headers.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum),
          ) as PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum;
          result.method = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.position = valueDes;
          break;
        case r'queryParams':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner)]),
          ) as BuiltList<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner>;
          result.queryParams.replace(valueDes);
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updatedAt = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataBuilder();
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

class PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'GET')
  static const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum GET = _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum_GET;
  @BuiltValueEnumConst(wireName: r'POST')
  static const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum POST = _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum_POST;
  @BuiltValueEnumConst(wireName: r'PUT')
  static const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum PUT = _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum_PUT;
  @BuiltValueEnumConst(wireName: r'PATCH')
  static const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum PATCH = _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum_PATCH;
  @BuiltValueEnumConst(wireName: r'DELETE')
  static const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum DELETE = _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum_DELETE;
  @BuiltValueEnumConst(wireName: r'HEAD')
  static const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum HEAD = _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum_HEAD;
  @BuiltValueEnumConst(wireName: r'OPTIONS')
  static const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum OPTIONS = _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum_OPTIONS;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum unknownDefaultOpenApi = _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum_unknownDefaultOpenApi;

  static Serializer<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum> get serializer => _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnumSerializer;

  const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum._(String name): super(name);

  static BuiltSet<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum> get values => _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnumValues;
  static PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum valueOf(String name) => _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnumValueOf(name);
}

