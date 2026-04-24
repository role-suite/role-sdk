// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_api_workspaces_by_workspace_id_collections_by_collection_id_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest
    extends PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest {
  @override
  final String? description;
  @override
  final String? name;

  factory _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest(
          [void Function(
                  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestBuilder)?
              updates]) =>
      (PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestBuilder()
            ..update(updates))
          ._build();

  _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest._(
      {this.description, this.name})
      : super._();
  @override
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest rebuild(
          void Function(
                  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestBuilder
      toBuilder() =>
          PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest &&
        description == other.description &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest')
          ..add('description', description)
          ..add('name', name))
        .toString();
  }
}

class PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestBuilder
    implements
        Builder<PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest,
            PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestBuilder> {
  _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestBuilder() {
    PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest._defaults(
        this);
  }

  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest other) {
    _$v = other
        as _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest;
  }

  @override
  void update(
      void Function(
              PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest build() =>
      _build();

  _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest _build() {
    final _$result = _$v ??
        _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest._(
          description: description,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
