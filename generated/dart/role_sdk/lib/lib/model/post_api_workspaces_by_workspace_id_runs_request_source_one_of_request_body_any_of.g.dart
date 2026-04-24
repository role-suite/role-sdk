// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_body_any_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf
    extends PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf {
  @override
  final AnyOf anyOf;

  factory _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf._(
      {required this.anyOf})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf &&
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
            r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfBuilder
    implements
        Builder<
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf,
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfBuilder() {
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf
        ._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfBuilder
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
      PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf
          other) {
    _$v = other
        as _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf
      build() => _build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf
      _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf
            ._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf,
              r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf',
              'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
