// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspaces200ResponseData
    extends GetApiWorkspaces200ResponseData {
  @override
  final BuiltList<PostApiAuthLogin200ResponseDataWorkspace> items;

  factory _$GetApiWorkspaces200ResponseData(
          [void Function(GetApiWorkspaces200ResponseDataBuilder)? updates]) =>
      (GetApiWorkspaces200ResponseDataBuilder()..update(updates))._build();

  _$GetApiWorkspaces200ResponseData._({required this.items}) : super._();
  @override
  GetApiWorkspaces200ResponseData rebuild(
          void Function(GetApiWorkspaces200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspaces200ResponseDataBuilder toBuilder() =>
      GetApiWorkspaces200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiWorkspaces200ResponseData && items == other.items;
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
    return (newBuiltValueToStringHelper(r'GetApiWorkspaces200ResponseData')
          ..add('items', items))
        .toString();
  }
}

class GetApiWorkspaces200ResponseDataBuilder
    implements
        Builder<GetApiWorkspaces200ResponseData,
            GetApiWorkspaces200ResponseDataBuilder> {
  _$GetApiWorkspaces200ResponseData? _$v;

  ListBuilder<PostApiAuthLogin200ResponseDataWorkspace>? _items;
  ListBuilder<PostApiAuthLogin200ResponseDataWorkspace> get items =>
      _$this._items ??= ListBuilder<PostApiAuthLogin200ResponseDataWorkspace>();
  set items(ListBuilder<PostApiAuthLogin200ResponseDataWorkspace>? items) =>
      _$this._items = items;

  GetApiWorkspaces200ResponseDataBuilder() {
    GetApiWorkspaces200ResponseData._defaults(this);
  }

  GetApiWorkspaces200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiWorkspaces200ResponseData other) {
    _$v = other as _$GetApiWorkspaces200ResponseData;
  }

  @override
  void update(void Function(GetApiWorkspaces200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspaces200ResponseData build() => _build();

  _$GetApiWorkspaces200ResponseData _build() {
    _$GetApiWorkspaces200ResponseData _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspaces200ResponseData._(
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspaces200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
