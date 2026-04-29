// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_collections200_response_data_items_inner_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription
    extends GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription {
  @override
  final AnyOf anyOf;

  factory _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription._(
      {required this.anyOf})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription
      rebuild(
              void Function(
                      GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder
      toBuilder() =>
          GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription &&
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
            r'GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder
    implements
        Builder<
            GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription,
            GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder> {
  _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription?
      _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder() {
    GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription
        ._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder
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
      GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription
          other) {
    _$v = other
        as _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription
      build() => _build();

  _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription
      _build() {
    final _$result = _$v ??
        _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription
            ._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf,
              r'GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription',
              'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
