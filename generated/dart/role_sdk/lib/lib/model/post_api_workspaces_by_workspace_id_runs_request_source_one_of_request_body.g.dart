// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody
    extends PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody {
  @override
  final AnyOf anyOf;

  factory _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody._(
      {required this.anyOf})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody &&
        anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody,
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder() {
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody._defaults(
        this);
  }

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody other) {
    _$v = other
        as _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody build() =>
      _build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf,
              r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody',
              'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
