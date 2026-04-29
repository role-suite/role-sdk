// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response_data_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody
    extends PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody {
  @override
  final AnyOf anyOf;

  factory _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody._(
      {required this.anyOf})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody &&
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
            r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody,
            PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyBuilder() {
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody._defaults(
        this);
  }

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyBuilder
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
      PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody other) {
    _$v =
        other as _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody build() =>
      _build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf,
              r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody',
              'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
