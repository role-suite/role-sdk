// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response_data_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse
    extends PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse {
  @override
  final AnyOf anyOf;

  factory _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse._(
      {required this.anyOf})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse &&
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
            r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse,
            PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder() {
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse build() => _build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf,
              r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse',
              'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
