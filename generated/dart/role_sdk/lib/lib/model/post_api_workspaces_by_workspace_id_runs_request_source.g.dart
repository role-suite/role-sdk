// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSource
    extends PostApiWorkspacesByWorkspaceIdRunsRequestSource {
  @override
  final OneOf oneOf;

  factory _$PostApiWorkspacesByWorkspaceIdRunsRequestSource(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSource._({required this.oneOf})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSource rebuild(
          void Function(PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdRunsRequestSource &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdRunsRequestSource')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRunsRequestSource,
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRunsRequestSource? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder() {
    PostApiWorkspacesByWorkspaceIdRunsRequestSource._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdRunsRequestSource other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdRunsRequestSource;
  }

  @override
  void update(
      void Function(PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSource build() => _build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSource _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdRunsRequestSource._(
          oneOf: BuiltValueNullFieldError.checkNotNull(oneOf,
              r'PostApiWorkspacesByWorkspaceIdRunsRequestSource', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
