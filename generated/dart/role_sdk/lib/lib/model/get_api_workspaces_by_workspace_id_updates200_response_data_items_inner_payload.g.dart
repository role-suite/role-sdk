// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_updates200_response_data_items_inner_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload
    extends GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload {
  @override
  final AnyOf anyOf;

  factory _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload._(
      {required this.anyOf})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload rebuild(
          void Function(
                  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder
      toBuilder() =>
          GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload &&
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
            r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder
    implements
        Builder<
            GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload,
            GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder> {
  _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder() {
    GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload
        ._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder
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
      GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload
          other) {
    _$v = other
        as _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload
      build() => _build();

  _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload
      _build() {
    final _$result = _$v ??
        _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload
            ._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf,
              r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload',
              'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
