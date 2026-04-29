// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_import_export_exports201_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum
    _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum_export_ =
    const PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum
        ._('export_');
const PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum
    _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum_import_ =
    const PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum
        ._('import_');
const PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum
    _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum_unknownDefaultOpenApi =
    const PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum
        ._('unknownDefaultOpenApi');

PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum
    _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnumValueOf(
        String name) {
  switch (name) {
    case 'export_':
      return _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum_export_;
    case 'import_':
      return _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum_import_;
    case 'unknownDefaultOpenApi':
      return _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum_unknownDefaultOpenApi;
    default:
      return _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<
        PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum>
    _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnumValues =
    BuiltSet<
        PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum>(const <PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum>[
  _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum_export_,
  _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum_import_,
  _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum_unknownDefaultOpenApi,
]);

Serializer<
        PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum>
    _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnumSerializer =
    _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnumSerializer();

class _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnumSerializer
    implements
        PrimitiveSerializer<
            PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'export_': 'export',
    'import_': 'import',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'export': 'export_',
    'import': 'import_',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum
  ];
  @override
  final String wireName =
      'PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum';

  @override
  Object serialize(
          Serializers serializers,
          PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum
              object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum
      deserialize(Serializers serializers, Object serialized,
              {FullType specifiedType = FullType.unspecified}) =>
          PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum
              .valueOf(_fromWire[serialized] ??
                  (serialized is String ? serialized : ''));
}

class _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData
    extends PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData {
  @override
  final String completedAt;
  @override
  final String createdAt;
  @override
  final int createdByUserId;
  @override
  final String format;
  @override
  final int id;
  @override
  final String status;
  @override
  final BuiltMap<String, JsonObject?> summary;
  @override
  final PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum
      type;
  @override
  final int workspaceId;

  factory _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData._(
      {required this.completedAt,
      required this.createdAt,
      required this.createdByUserId,
      required this.format,
      required this.id,
      required this.status,
      required this.summary,
      required this.type,
      required this.workspaceId})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData &&
        completedAt == other.completedAt &&
        createdAt == other.createdAt &&
        createdByUserId == other.createdByUserId &&
        format == other.format &&
        id == other.id &&
        status == other.status &&
        summary == other.summary &&
        type == other.type &&
        workspaceId == other.workspaceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, createdByUserId.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, workspaceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData')
          ..add('completedAt', completedAt)
          ..add('createdAt', createdAt)
          ..add('createdByUserId', createdByUserId)
          ..add('format', format)
          ..add('id', id)
          ..add('status', status)
          ..add('summary', summary)
          ..add('type', type)
          ..add('workspaceId', workspaceId))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataBuilder
    implements
        Builder<
            PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData,
            PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataBuilder> {
  _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData? _$v;

  String? _completedAt;
  String? get completedAt => _$this._completedAt;
  set completedAt(String? completedAt) => _$this._completedAt = completedAt;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  int? _createdByUserId;
  int? get createdByUserId => _$this._createdByUserId;
  set createdByUserId(int? createdByUserId) =>
      _$this._createdByUserId = createdByUserId;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  MapBuilder<String, JsonObject?>? _summary;
  MapBuilder<String, JsonObject?> get summary =>
      _$this._summary ??= MapBuilder<String, JsonObject?>();
  set summary(MapBuilder<String, JsonObject?>? summary) =>
      _$this._summary = summary;

  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum?
      _type;
  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum?
      get type => _$this._type;
  set type(
          PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum?
              type) =>
      _$this._type = type;

  int? _workspaceId;
  int? get workspaceId => _$this._workspaceId;
  set workspaceId(int? workspaceId) => _$this._workspaceId = workspaceId;

  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataBuilder() {
    PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData._defaults(
        this);
  }

  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _completedAt = $v.completedAt;
      _createdAt = $v.createdAt;
      _createdByUserId = $v.createdByUserId;
      _format = $v.format;
      _id = $v.id;
      _status = $v.status;
      _summary = $v.summary.toBuilder();
      _type = $v.type;
      _workspaceId = $v.workspaceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData other) {
    _$v = other
        as _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData build() =>
      _build();

  _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData _build() {
    _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData._(
            completedAt: BuiltValueNullFieldError.checkNotNull(
                completedAt,
                r'PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData',
                'completedAt'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt,
                r'PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData',
                'createdAt'),
            createdByUserId: BuiltValueNullFieldError.checkNotNull(
                createdByUserId,
                r'PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData',
                'createdByUserId'),
            format: BuiltValueNullFieldError.checkNotNull(
                format,
                r'PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData',
                'format'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData',
                'id'),
            status: BuiltValueNullFieldError.checkNotNull(
                status,
                r'PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData',
                'status'),
            summary: summary.build(),
            type: BuiltValueNullFieldError.checkNotNull(
                type,
                r'PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData',
                'type'),
            workspaceId: BuiltValueNullFieldError.checkNotNull(
                workspaceId,
                r'PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData',
                'workspaceId'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'summary';
        summary.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData',
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
