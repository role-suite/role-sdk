// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response_data_completed_at.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt
    extends PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt {
  @override
  final AnyOf anyOf;

  factory _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt._(
      {required this.anyOf})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt &&
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
            r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt,
            PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder() {
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt._defaults(
        this);
  }

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder
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
      PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt other) {
    _$v =
        other as _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt build() =>
      _build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf,
              r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt',
              'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
