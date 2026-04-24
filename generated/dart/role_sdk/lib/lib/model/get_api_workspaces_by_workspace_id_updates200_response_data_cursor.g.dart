// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_updates200_response_data_cursor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor
    extends GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor {
  @override
  final bool hasMore;
  @override
  final int next;

  factory _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor._(
      {required this.hasMore, required this.next})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor rebuild(
          void Function(
                  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder
      toBuilder() =>
          GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor &&
        hasMore == other.hasMore &&
        next == other.next;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hasMore.hashCode);
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor')
          ..add('hasMore', hasMore)
          ..add('next', next))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder
    implements
        Builder<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor,
            GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder> {
  _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor? _$v;

  bool? _hasMore;
  bool? get hasMore => _$this._hasMore;
  set hasMore(bool? hasMore) => _$this._hasMore = hasMore;

  int? _next;
  int? get next => _$this._next;
  set next(int? next) => _$this._next = next;

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder() {
    GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hasMore = $v.hasMore;
      _next = $v.next;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor other) {
    _$v = other as _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor build() => _build();

  _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor _build() {
    final _$result = _$v ??
        _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor._(
          hasMore: BuiltValueNullFieldError.checkNotNull(
              hasMore,
              r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor',
              'hasMore'),
          next: BuiltValueNullFieldError.checkNotNull(
              next,
              r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor',
              'next'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
