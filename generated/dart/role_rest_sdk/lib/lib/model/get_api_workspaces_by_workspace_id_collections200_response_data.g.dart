// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_collections200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdCollections200ResponseData
    extends GetApiWorkspacesByWorkspaceIdCollections200ResponseData {
  @override
  final BuiltList<
      GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner> items;

  factory _$GetApiWorkspacesByWorkspaceIdCollections200ResponseData(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdCollections200ResponseData._(
      {required this.items})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdCollections200ResponseData rebuild(
          void Function(
                  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder toBuilder() =>
      GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiWorkspacesByWorkspaceIdCollections200ResponseData &&
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
            r'GetApiWorkspacesByWorkspaceIdCollections200ResponseData')
          ..add('items', items))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder
    implements
        Builder<GetApiWorkspacesByWorkspaceIdCollections200ResponseData,
            GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder> {
  _$GetApiWorkspacesByWorkspaceIdCollections200ResponseData? _$v;

  ListBuilder<
          GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner>?
      _items;
  ListBuilder<GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner>
      get items => _$this._items ??= ListBuilder<
          GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner>();
  set items(
          ListBuilder<
                  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner>?
              items) =>
      _$this._items = items;

  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder() {
    GetApiWorkspacesByWorkspaceIdCollections200ResponseData._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiWorkspacesByWorkspaceIdCollections200ResponseData other) {
    _$v = other as _$GetApiWorkspacesByWorkspaceIdCollections200ResponseData;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdCollections200ResponseData build() => _build();

  _$GetApiWorkspacesByWorkspaceIdCollections200ResponseData _build() {
    _$GetApiWorkspacesByWorkspaceIdCollections200ResponseData _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdCollections200ResponseData._(
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspacesByWorkspaceIdCollections200ResponseData',
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
