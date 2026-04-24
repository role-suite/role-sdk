// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_environments200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData
    extends GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData {
  @override
  final BuiltList<
      GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner> items;

  factory _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData._(
      {required this.items})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData rebuild(
          void Function(
                  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder toBuilder() =>
      GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData &&
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
            r'GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData')
          ..add('items', items))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder
    implements
        Builder<GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData,
            GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder> {
  _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData? _$v;

  ListBuilder<
          GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner>?
      _items;
  ListBuilder<
          GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner>
      get items => _$this._items ??= ListBuilder<
          GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner>();
  set items(
          ListBuilder<
                  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner>?
              items) =>
      _$this._items = items;

  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder() {
    GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData other) {
    _$v = other as _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData build() => _build();

  _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData _build() {
    _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData._(
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData',
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
