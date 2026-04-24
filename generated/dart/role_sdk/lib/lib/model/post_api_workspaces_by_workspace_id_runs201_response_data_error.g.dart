// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response_data_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError
    extends PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError {
  @override
  final AnyOf anyOf;

  factory _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError._(
      {required this.anyOf})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError &&
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
            r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError,
            PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder() {
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError build() => _build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf,
              r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError',
              'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
