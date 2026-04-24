// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_environments_by_environment_id_variables200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData
    extends GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData {
  @override
  final BuiltList<
          GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner>
      items;

  factory _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData._(
      {required this.items})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData
      rebuild(
              void Function(
                      GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataBuilder
      toBuilder() =>
          GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData &&
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
            r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData')
          ..add('items', items))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataBuilder
    implements
        Builder<
            GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData,
            GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataBuilder> {
  _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData?
      _$v;

  ListBuilder<
          GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner>?
      _items;
  ListBuilder<
          GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner>
      get items => _$this._items ??= ListBuilder<
          GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner>();
  set items(
          ListBuilder<
                  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner>?
              items) =>
      _$this._items = items;

  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataBuilder() {
    GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData
        ._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataBuilder
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
      GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData
          other) {
    _$v = other
        as _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData
      build() => _build();

  _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData
      _build() {
    _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData
        _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData
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
            r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData',
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
