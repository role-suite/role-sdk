// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_GET =
    const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
        ._('GET');
const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_POST =
    const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
        ._('POST');
const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_PUT =
    const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
        ._('PUT');
const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_PATCH =
    const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
        ._('PATCH');
const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_DELETE =
    const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
        ._('DELETE');
const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_HEAD =
    const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
        ._('HEAD');
const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_OPTIONS =
    const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
        ._('OPTIONS');
const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_unknownDefaultOpenApi =
    const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
        ._('unknownDefaultOpenApi');

PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
    _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnumValueOf(
        String name) {
  switch (name) {
    case 'GET':
      return _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_GET;
    case 'POST':
      return _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_POST;
    case 'PUT':
      return _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_PUT;
    case 'PATCH':
      return _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_PATCH;
    case 'DELETE':
      return _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_DELETE;
    case 'HEAD':
      return _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_HEAD;
    case 'OPTIONS':
      return _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_OPTIONS;
    case 'unknownDefaultOpenApi':
      return _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_unknownDefaultOpenApi;
    default:
      return _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<
        PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum>
    _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnumValues =
    BuiltSet<
        PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum>(const <PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum>[
  _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_GET,
  _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_POST,
  _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_PUT,
  _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_PATCH,
  _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_DELETE,
  _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_HEAD,
  _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_OPTIONS,
  _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_unknownDefaultOpenApi,
]);

Serializer<
        PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum>
    _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnumSerializer =
    _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnumSerializer();

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnumSerializer
    implements
        PrimitiveSerializer<
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum> {
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
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
  ];
  @override
  final String wireName =
      'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum';

  @override
  Object serialize(
          Serializers serializers,
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
              object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
      deserialize(
              Serializers serializers, Object serialized,
              {FullType specifiedType = FullType.unspecified}) =>
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
              .valueOf(_fromWire[serialized] ??
                  (serialized is String ? serialized : ''));
}

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest
    extends PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest {
  @override
  final PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth? auth;
  @override
  final PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody? body;
  @override
  final BuiltList<
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>?
      headers;
  @override
  final PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum
      method;
  @override
  final BuiltList<
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>?
      queryParams;
  @override
  final String url;

  factory _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest._(
      {this.auth,
      this.body,
      this.headers,
      required this.method,
      this.queryParams,
      required this.url})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest &&
        auth == other.auth &&
        body == other.body &&
        headers == other.headers &&
        method == other.method &&
        queryParams == other.queryParams &&
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
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest')
          ..add('auth', auth)
          ..add('body', body)
          ..add('headers', headers)
          ..add('method', method)
          ..add('queryParams', queryParams)
          ..add('url', url))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest,
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest? _$v;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder? _auth;
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder
      get auth => _$this._auth ??=
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder();
  set auth(
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder?
              auth) =>
      _$this._auth = auth;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder? _body;
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder
      get body => _$this._body ??=
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder();
  set body(
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder?
              body) =>
      _$this._body = body;

  ListBuilder<
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>?
      _headers;
  ListBuilder<
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>
      get headers => _$this._headers ??= ListBuilder<
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>();
  set headers(
          ListBuilder<
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>?
              headers) =>
      _$this._headers = headers;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum?
      _method;
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum?
      get method => _$this._method;
  set method(
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum?
              method) =>
      _$this._method = method;

  ListBuilder<
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>?
      _queryParams;
  ListBuilder<
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>
      get queryParams => _$this._queryParams ??= ListBuilder<
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>();
  set queryParams(
          ListBuilder<
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>?
              queryParams) =>
      _$this._queryParams = queryParams;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder() {
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _auth = $v.auth?.toBuilder();
      _body = $v.body?.toBuilder();
      _headers = $v.headers?.toBuilder();
      _method = $v.method;
      _queryParams = $v.queryParams?.toBuilder();
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest other) {
    _$v =
        other as _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest build() =>
      _build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest _build() {
    _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest._(
            auth: _auth?.build(),
            body: _body?.build(),
            headers: _headers?.build(),
            method: BuiltValueNullFieldError.checkNotNull(
                method,
                r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest',
                'method'),
            queryParams: _queryParams?.build(),
            url: BuiltValueNullFieldError.checkNotNull(
                url,
                r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest',
                'url'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'auth';
        _auth?.build();
        _$failedField = 'body';
        _body?.build();
        _$failedField = 'headers';
        _headers?.build();

        _$failedField = 'queryParams';
        _queryParams?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest',
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
