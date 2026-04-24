// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_collections_by_collection_id_folders200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response
    extends GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response {
  @override
  final GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData
      data;
  @override
  final bool success;

  factory _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response._(
      {required this.data, required this.success})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response rebuild(
          void Function(
                  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseBuilder
      toBuilder() =>
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response &&
        data == other.data &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseBuilder
    implements
        Builder<
            GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response,
            GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseBuilder> {
  _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response?
      _$v;

  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder?
      _data;
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder
      get data => _$this._data ??=
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder();
  set data(
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder?
              data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseBuilder() {
    GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response
        ._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response
          other) {
    _$v = other
        as _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response
      build() => _build();

  _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response
      _build() {
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response
        _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response
              ._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response',
                'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response',
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
