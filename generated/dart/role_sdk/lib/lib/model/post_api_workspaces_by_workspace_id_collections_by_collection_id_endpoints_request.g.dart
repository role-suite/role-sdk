// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_GET =
    const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
        ._('GET');
const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_POST =
    const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
        ._('POST');
const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_PUT =
    const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
        ._('PUT');
const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_PATCH =
    const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
        ._('PATCH');
const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_DELETE =
    const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
        ._('DELETE');
const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_HEAD =
    const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
        ._('HEAD');
const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_OPTIONS =
    const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
        ._('OPTIONS');
const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_unknownDefaultOpenApi =
    const PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
        ._('unknownDefaultOpenApi');

PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnumValueOf(
        String name) {
  switch (name) {
    case 'GET':
      return _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_GET;
    case 'POST':
      return _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_POST;
    case 'PUT':
      return _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_PUT;
    case 'PATCH':
      return _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_PATCH;
    case 'DELETE':
      return _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_DELETE;
    case 'HEAD':
      return _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_HEAD;
    case 'OPTIONS':
      return _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_OPTIONS;
    case 'unknownDefaultOpenApi':
      return _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_unknownDefaultOpenApi;
    default:
      return _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<
        PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum>
    _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnumValues =
    BuiltSet<
        PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum>(const <PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum>[
  _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_GET,
  _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_POST,
  _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_PUT,
  _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_PATCH,
  _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_DELETE,
  _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_HEAD,
  _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_OPTIONS,
  _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum_unknownDefaultOpenApi,
]);

Serializer<
        PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum>
    _$postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnumSerializer =
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnumSerializer();

class _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnumSerializer
    implements
        PrimitiveSerializer<
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'GET': 'GET',
    'POST': 'POST',
    'PUT': 'PUT',
    'PATCH': 'PATCH',
    'DELETE': 'DELETE',
    'HEAD': 'HEAD',
    'OPTIONS': 'OPTIONS',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'GET': 'GET',
    'POST': 'POST',
    'PUT': 'PUT',
    'PATCH': 'PATCH',
    'DELETE': 'DELETE',
    'HEAD': 'HEAD',
    'OPTIONS': 'OPTIONS',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
  ];
  @override
  final String wireName =
      'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum';

  @override
  Object serialize(
          Serializers serializers,
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
              object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
      deserialize(Serializers serializers, Object serialized,
              {FullType specifiedType = FullType.unspecified}) =>
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
              .valueOf(_fromWire[serialized] ??
                  (serialized is String ? serialized : ''));
}

class _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest
    extends PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest {
  @override
  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth?
      auth;
  @override
  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody?
      body;
  @override
  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId?
      folderId;
  @override
  final BuiltList<
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>?
      headers;
  @override
  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum
      method;
  @override
  final String name;
  @override
  final int? position;
  @override
  final BuiltList<
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>?
      queryParams;
  @override
  final String url;

  factory _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest._(
      {this.auth,
      this.body,
      this.folderId,
      this.headers,
      required this.method,
      required this.name,
      this.position,
      this.queryParams,
      required this.url})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest &&
        auth == other.auth &&
        body == other.body &&
        folderId == other.folderId &&
        headers == other.headers &&
        method == other.method &&
        name == other.name &&
        position == other.position &&
        queryParams == other.queryParams &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, folderId.hashCode);
    _$hash = $jc(_$hash, headers.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, queryParams.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest')
          ..add('auth', auth)
          ..add('body', body)
          ..add('folderId', folderId)
          ..add('headers', headers)
          ..add('method', method)
          ..add('name', name)
          ..add('position', position)
          ..add('queryParams', queryParams)
          ..add('url', url))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBuilder
    implements
        Builder<
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest,
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBuilder> {
  _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest?
      _$v;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthBuilder?
      _auth;
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthBuilder
      get auth => _$this._auth ??=
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthBuilder();
  set auth(
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthBuilder?
              auth) =>
      _$this._auth = auth;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyBuilder?
      _body;
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyBuilder
      get body => _$this._body ??=
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyBuilder();
  set body(
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyBuilder?
              body) =>
      _$this._body = body;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder?
      _folderId;
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder
      get folderId => _$this._folderId ??=
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder();
  set folderId(
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder?
              folderId) =>
      _$this._folderId = folderId;

  ListBuilder<
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>?
      _headers;
  ListBuilder<
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>
      get headers => _$this._headers ??= ListBuilder<
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>();
  set headers(
          ListBuilder<
                  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>?
              headers) =>
      _$this._headers = headers;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum?
      _method;
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum?
      get method => _$this._method;
  set method(
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestMethodEnum?
              method) =>
      _$this._method = method;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  ListBuilder<
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>?
      _queryParams;
  ListBuilder<
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>
      get queryParams => _$this._queryParams ??= ListBuilder<
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>();
  set queryParams(
          ListBuilder<
                  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>?
              queryParams) =>
      _$this._queryParams = queryParams;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBuilder() {
    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest
        ._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _auth = $v.auth?.toBuilder();
      _body = $v.body?.toBuilder();
      _folderId = $v.folderId?.toBuilder();
      _headers = $v.headers?.toBuilder();
      _method = $v.method;
      _name = $v.name;
      _position = $v.position;
      _queryParams = $v.queryParams?.toBuilder();
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest
          other) {
    _$v = other
        as _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest
      build() => _build();

  _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest
      _build() {
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest
        _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest
              ._(
            auth: _auth?.build(),
            body: _body?.build(),
            folderId: _folderId?.build(),
            headers: _headers?.build(),
            method: BuiltValueNullFieldError.checkNotNull(
                method,
                r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest',
                'method'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest',
                'name'),
            position: position,
            queryParams: _queryParams?.build(),
            url: BuiltValueNullFieldError.checkNotNull(
                url,
                r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest',
                'url'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'auth';
        _auth?.build();
        _$failedField = 'body';
        _body?.build();
        _$failedField = 'folderId';
        _folderId?.build();
        _$failedField = 'headers';
        _headers?.build();

        _$failedField = 'queryParams';
        _queryParams?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
