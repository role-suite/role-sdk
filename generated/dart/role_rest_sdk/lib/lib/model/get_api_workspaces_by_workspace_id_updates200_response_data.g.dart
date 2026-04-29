// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_updates200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseData
    extends GetApiWorkspacesByWorkspaceIdUpdates200ResponseData {
  @override
  final GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor cursor;
  @override
  final BuiltList<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner>
      items;

  factory _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseData(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseData._(
      {required this.cursor, required this.items})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseData rebuild(
          void Function(
                  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder toBuilder() =>
      GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiWorkspacesByWorkspaceIdUpdates200ResponseData &&
        cursor == other.cursor &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cursor.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseData')
          ..add('cursor', cursor)
          ..add('items', items))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder
    implements
        Builder<GetApiWorkspacesByWorkspaceIdUpdates200ResponseData,
            GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder> {
  _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseData? _$v;

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder? _cursor;
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder get cursor =>
      _$this._cursor ??=
          GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder();
  set cursor(
          GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder?
              cursor) =>
      _$this._cursor = cursor;

  ListBuilder<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner>?
      _items;
  ListBuilder<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner>
      get items => _$this._items ??= ListBuilder<
          GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner>();
  set items(
          ListBuilder<
                  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner>?
              items) =>
      _$this._items = items;

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder() {
    GetApiWorkspacesByWorkspaceIdUpdates200ResponseData._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cursor = $v.cursor.toBuilder();
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiWorkspacesByWorkspaceIdUpdates200ResponseData other) {
    _$v = other as _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseData;
  }

  @override
  void update(
      void Function(GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseData build() => _build();

  _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseData _build() {
    _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseData _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseData._(
            cursor: cursor.build(),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cursor';
        cursor.build();
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseData',
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
