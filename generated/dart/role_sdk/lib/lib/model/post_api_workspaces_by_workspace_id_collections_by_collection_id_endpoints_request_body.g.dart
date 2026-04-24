// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody
    extends PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody {
  @override
  final AnyOf anyOf;

  factory _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody._(
      {required this.anyOf})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody
      rebuild(
              void Function(
                      PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody &&
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
            r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyBuilder
    implements
        Builder<
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody,
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyBuilder> {
  _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody?
      _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyBuilder() {
    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody
        ._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyBuilder
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
      PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody
          other) {
    _$v = other
        as _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody
      build() => _build();

  _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody
      _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody
            ._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf,
              r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody',
              'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
