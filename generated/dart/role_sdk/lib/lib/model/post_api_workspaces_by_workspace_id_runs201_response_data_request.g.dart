// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response_data_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_GET =
    const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum._(
        'GET');
const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_POST =
    const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum._(
        'POST');
const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_PUT =
    const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum._(
        'PUT');
const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_PATCH =
    const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum._(
        'PATCH');
const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_DELETE =
    const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum._(
        'DELETE');
const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_HEAD =
    const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum._(
        'HEAD');
const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_OPTIONS =
    const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum._(
        'OPTIONS');
const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_unknownDefaultOpenApi =
    const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum._(
        'unknownDefaultOpenApi');

PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnumValueOf(
        String name) {
  switch (name) {
    case 'GET':
      return _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_GET;
    case 'POST':
      return _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_POST;
    case 'PUT':
      return _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_PUT;
    case 'PATCH':
      return _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_PATCH;
    case 'DELETE':
      return _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_DELETE;
    case 'HEAD':
      return _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_HEAD;
    case 'OPTIONS':
      return _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_OPTIONS;
    case 'unknownDefaultOpenApi':
      return _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_unknownDefaultOpenApi;
    default:
      return _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<
        PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum>
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnumValues =
    BuiltSet<
        PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum>(const <PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum>[
  _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_GET,
  _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_POST,
  _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_PUT,
  _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_PATCH,
  _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_DELETE,
  _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_HEAD,
  _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_OPTIONS,
  _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_unknownDefaultOpenApi,
]);

Serializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum>
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnumSerializer =
    _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnumSerializer();

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnumSerializer
    implements
        PrimitiveSerializer<
            PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum> {
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
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum
  ];
  @override
  final String wireName =
      'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum';

  @override
  Object serialize(
          Serializers serializers,
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum
              object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum
      deserialize(Serializers serializers, Object serialized,
              {FullType specifiedType = FullType.unspecified}) =>
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum
              .valueOf(_fromWire[serialized] ??
                  (serialized is String ? serialized : ''));
}

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest
    extends PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest {
  @override
  final GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOf
      auth;
  @override
  final PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody body;
  @override
  final BuiltList<
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner>
      headers;
  @override
  final PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum
      method;
  @override
  final BuiltList<
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner>
      queryParams;
  @override
  final BuiltMap<String, String> resolvedVariables;
  @override
  final int timeoutMs;
  @override
  final String url;

  factory _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest._(
      {required this.auth,
      required this.body,
      required this.headers,
      required this.method,
      required this.queryParams,
      required this.resolvedVariables,
      required this.timeoutMs,
      required this.url})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest &&
        auth == other.auth &&
        body == other.body &&
        headers == other.headers &&
        method == other.method &&
        queryParams == other.queryParams &&
        resolvedVariables == other.resolvedVariables &&
        timeoutMs == other.timeoutMs &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, headers.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, queryParams.hashCode);
    _$hash = $jc(_$hash, resolvedVariables.hashCode);
    _$hash = $jc(_$hash, timeoutMs.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest')
          ..add('auth', auth)
          ..add('body', body)
          ..add('headers', headers)
          ..add('method', method)
          ..add('queryParams', queryParams)
          ..add('resolvedVariables', resolvedVariables)
          ..add('timeoutMs', timeoutMs)
          ..add('url', url))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest,
            PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest? _$v;

  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfBuilder?
      _auth;
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfBuilder
      get auth => _$this._auth ??=
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfBuilder();
  set auth(
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfBuilder?
              auth) =>
      _$this._auth = auth;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyBuilder? _body;
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyBuilder
      get body => _$this._body ??=
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyBuilder();
  set body(
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyBuilder?
              body) =>
      _$this._body = body;

  ListBuilder<
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner>?
      _headers;
  ListBuilder<
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner>
      get headers => _$this._headers ??= ListBuilder<
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner>();
  set headers(
          ListBuilder<
                  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner>?
              headers) =>
      _$this._headers = headers;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum? _method;
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum?
      get method => _$this._method;
  set method(
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum?
              method) =>
      _$this._method = method;

  ListBuilder<
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner>?
      _queryParams;
  ListBuilder<
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner>
      get queryParams => _$this._queryParams ??= ListBuilder<
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner>();
  set queryParams(
          ListBuilder<
                  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner>?
              queryParams) =>
      _$this._queryParams = queryParams;

  MapBuilder<String, String>? _resolvedVariables;
  MapBuilder<String, String> get resolvedVariables =>
      _$this._resolvedVariables ??= MapBuilder<String, String>();
  set resolvedVariables(MapBuilder<String, String>? resolvedVariables) =>
      _$this._resolvedVariables = resolvedVariables;

  int? _timeoutMs;
  int? get timeoutMs => _$this._timeoutMs;
  set timeoutMs(int? timeoutMs) => _$this._timeoutMs = timeoutMs;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder() {
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _auth = $v.auth.toBuilder();
      _body = $v.body.toBuilder();
      _headers = $v.headers.toBuilder();
      _method = $v.method;
      _queryParams = $v.queryParams.toBuilder();
      _resolvedVariables = $v.resolvedVariables.toBuilder();
      _timeoutMs = $v.timeoutMs;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest build() => _build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest _build() {
    _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest._(
            auth: auth.build(),
            body: body.build(),
            headers: headers.build(),
            method: BuiltValueNullFieldError.checkNotNull(
                method,
                r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest',
                'method'),
            queryParams: queryParams.build(),
            resolvedVariables: resolvedVariables.build(),
            timeoutMs: BuiltValueNullFieldError.checkNotNull(
                timeoutMs,
                r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest',
                'timeoutMs'),
            url: BuiltValueNullFieldError.checkNotNull(
                url,
                r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest',
                'url'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'auth';
        auth.build();
        _$failedField = 'body';
        body.build();
        _$failedField = 'headers';
        headers.build();

        _$failedField = 'queryParams';
        queryParams.build();
        _$failedField = 'resolvedVariables';
        resolvedVariables.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest',
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
