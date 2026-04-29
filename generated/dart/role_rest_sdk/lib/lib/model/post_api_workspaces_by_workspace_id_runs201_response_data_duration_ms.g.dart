// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response_data_duration_ms.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs
    extends PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs {
  @override
  final AnyOf anyOf;

  factory _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs._(
      {required this.anyOf})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs &&
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
            r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs,
            PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder() {
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder
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
      PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs other) {
    _$v =
        other as _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs build() =>
      _build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf,
              r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs',
              'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
