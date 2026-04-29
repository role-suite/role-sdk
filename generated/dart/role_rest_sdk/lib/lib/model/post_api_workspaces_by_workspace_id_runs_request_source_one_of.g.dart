// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_source_one_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf
    extends PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf {
  @override
  final PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest request;
  @override
  final String type;

  factory _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf._(
      {required this.request, required this.type})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf &&
        request == other.request &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, request.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf')
          ..add('request', request)
          ..add('type', type))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf,
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf? _$v;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder? _request;
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder
      get request => _$this._request ??=
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder();
  set request(
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder?
              request) =>
      _$this._request = request;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfBuilder() {
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _request = $v.request.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf build() => _build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf _build() {
    _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf._(
            request: request.build(),
            type: BuiltValueNullFieldError.checkNotNull(
                type,
                r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf',
                'type'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'request';
        request.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf',
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
