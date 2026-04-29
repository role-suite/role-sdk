// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_collections_by_collection_id_folders200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData
    extends GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData {
  @override
  final BuiltList<
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner>
      items;

  factory _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData._(
      {required this.items})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData
      rebuild(
              void Function(
                      GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder
      toBuilder() =>
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData')
          ..add('items', items))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder
    implements
        Builder<
            GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData,
            GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder> {
  _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData?
      _$v;

  ListBuilder<
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner>?
      _items;
  ListBuilder<
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner>
      get items => _$this._items ??= ListBuilder<
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner>();
  set items(
          ListBuilder<
                  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner>?
              items) =>
      _$this._items = items;

  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder() {
    GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData
        ._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData
          other) {
    _$v = other
        as _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData
      build() => _build();

  _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData
      _build() {
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData
        _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData
              ._(
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData',
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
