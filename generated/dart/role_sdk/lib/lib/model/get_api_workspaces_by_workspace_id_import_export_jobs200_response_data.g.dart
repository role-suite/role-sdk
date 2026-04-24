// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_import_export_jobs200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData
    extends GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData {
  @override
  final BuiltList<
      PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData> items;

  factory _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData._(
      {required this.items})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData rebuild(
          void Function(
                  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder
      toBuilder() =>
          GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData &&
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
            r'GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData')
          ..add('items', items))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder
    implements
        Builder<GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData,
            GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder> {
  _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData? _$v;

  ListBuilder<PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData>?
      _items;
  ListBuilder<PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData>
      get items => _$this._items ??= ListBuilder<
          PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData>();
  set items(
          ListBuilder<
                  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData>?
              items) =>
      _$this._items = items;

  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder() {
    GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData._defaults(
        this);
  }

  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder
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
      GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData other) {
    _$v =
        other as _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData build() =>
      _build();

  _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData _build() {
    _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData._(
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData',
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
