// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_members200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdMembers200ResponseData
    extends GetApiWorkspacesByWorkspaceIdMembers200ResponseData {
  @override
  final BuiltList<GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner>
      items;

  factory _$GetApiWorkspacesByWorkspaceIdMembers200ResponseData(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdMembers200ResponseDataBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdMembers200ResponseData._({required this.items})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdMembers200ResponseData rebuild(
          void Function(
                  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataBuilder toBuilder() =>
      GetApiWorkspacesByWorkspaceIdMembers200ResponseDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiWorkspacesByWorkspaceIdMembers200ResponseData &&
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
            r'GetApiWorkspacesByWorkspaceIdMembers200ResponseData')
          ..add('items', items))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdMembers200ResponseDataBuilder
    implements
        Builder<GetApiWorkspacesByWorkspaceIdMembers200ResponseData,
            GetApiWorkspacesByWorkspaceIdMembers200ResponseDataBuilder> {
  _$GetApiWorkspacesByWorkspaceIdMembers200ResponseData? _$v;

  ListBuilder<GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner>?
      _items;
  ListBuilder<GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner>
      get items => _$this._items ??= ListBuilder<
          GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner>();
  set items(
          ListBuilder<
                  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner>?
              items) =>
      _$this._items = items;

  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataBuilder() {
    GetApiWorkspacesByWorkspaceIdMembers200ResponseData._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiWorkspacesByWorkspaceIdMembers200ResponseData other) {
    _$v = other as _$GetApiWorkspacesByWorkspaceIdMembers200ResponseData;
  }

  @override
  void update(
      void Function(GetApiWorkspacesByWorkspaceIdMembers200ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdMembers200ResponseData build() => _build();

  _$GetApiWorkspacesByWorkspaceIdMembers200ResponseData _build() {
    _$GetApiWorkspacesByWorkspaceIdMembers200ResponseData _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdMembers200ResponseData._(
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspacesByWorkspaceIdMembers200ResponseData',
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
