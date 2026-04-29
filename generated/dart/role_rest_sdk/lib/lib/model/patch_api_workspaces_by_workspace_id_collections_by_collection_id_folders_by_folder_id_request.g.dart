// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_api_workspaces_by_workspace_id_collections_by_collection_id_folders_by_folder_id_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest
    extends PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest {
  @override
  final String? name;
  @override
  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId?
      parentFolderId;
  @override
  final int? position;

  factory _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest(
          [void Function(
                  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestBuilder)?
              updates]) =>
      (PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestBuilder()
            ..update(updates))
          ._build();

  _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest._(
      {this.name, this.parentFolderId, this.position})
      : super._();
  @override
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest
      rebuild(
              void Function(
                      PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestBuilder
      toBuilder() =>
          PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest &&
        name == other.name &&
        parentFolderId == other.parentFolderId &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, parentFolderId.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest')
          ..add('name', name)
          ..add('parentFolderId', parentFolderId)
          ..add('position', position))
        .toString();
  }
}

class PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestBuilder
    implements
        Builder<
            PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest,
            PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestBuilder> {
  _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest?
      _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder?
      _parentFolderId;
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder
      get parentFolderId => _$this._parentFolderId ??=
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder();
  set parentFolderId(
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder?
              parentFolderId) =>
      _$this._parentFolderId = parentFolderId;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestBuilder() {
    PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest
        ._defaults(this);
  }

  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _parentFolderId = $v.parentFolderId?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest
          other) {
    _$v = other
        as _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest;
  }

  @override
  void update(
      void Function(
              PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest
      build() => _build();

  _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest
      _build() {
    _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest
        _$result;
    try {
      _$result = _$v ??
          _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest
              ._(
            name: name,
            parentFolderId: _parentFolderId?.build(),
            position: position,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parentFolderId';
        _parentFolderId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest',
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
