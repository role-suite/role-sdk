// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_import_export_exports_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum
    _$postApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum_json =
    const PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum._(
        'json');
const PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum
    _$postApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum_unknownDefaultOpenApi =
    const PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum._(
        'unknownDefaultOpenApi');

PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum
    _$postApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnumValueOf(
        String name) {
  switch (name) {
    case 'json':
      return _$postApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum_json;
    case 'unknownDefaultOpenApi':
      return _$postApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum_unknownDefaultOpenApi;
    default:
      return _$postApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<
        PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum>
    _$postApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnumValues =
    BuiltSet<
        PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum>(const <PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum>[
  _$postApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum_json,
  _$postApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum_unknownDefaultOpenApi,
]);

Serializer<PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum>
    _$postApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnumSerializer =
    _$PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnumSerializer();

class _$PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnumSerializer
    implements
        PrimitiveSerializer<
            PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'json': 'json',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'json': 'json',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum
  ];
  @override
  final String wireName =
      'PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum';

  @override
  Object serialize(
          Serializers serializers,
          PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum
              object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum
      deserialize(Serializers serializers, Object serialized,
              {FullType specifiedType = FullType.unspecified}) =>
          PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum
              .valueOf(_fromWire[serialized] ??
                  (serialized is String ? serialized : ''));
}

class _$PostApiWorkspacesByWorkspaceIdImportExportExportsRequest
    extends PostApiWorkspacesByWorkspaceIdImportExportExportsRequest {
  @override
  final PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum?
      format;
  @override
  final bool? includeCollections;
  @override
  final bool? includeEnvironments;
  @override
  final bool? includeRuns;

  factory _$PostApiWorkspacesByWorkspaceIdImportExportExportsRequest(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdImportExportExportsRequestBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdImportExportExportsRequestBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdImportExportExportsRequest._(
      {this.format,
      this.includeCollections,
      this.includeEnvironments,
      this.includeRuns})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdImportExportExportsRequest rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdImportExportExportsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdImportExportExportsRequestBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdImportExportExportsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdImportExportExportsRequest &&
        format == other.format &&
        includeCollections == other.includeCollections &&
        includeEnvironments == other.includeEnvironments &&
        includeRuns == other.includeRuns;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, includeCollections.hashCode);
    _$hash = $jc(_$hash, includeEnvironments.hashCode);
    _$hash = $jc(_$hash, includeRuns.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdImportExportExportsRequest')
          ..add('format', format)
          ..add('includeCollections', includeCollections)
          ..add('includeEnvironments', includeEnvironments)
          ..add('includeRuns', includeRuns))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdImportExportExportsRequestBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdImportExportExportsRequest,
            PostApiWorkspacesByWorkspaceIdImportExportExportsRequestBuilder> {
  _$PostApiWorkspacesByWorkspaceIdImportExportExportsRequest? _$v;

  PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum? _format;
  PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum?
      get format => _$this._format;
  set format(
          PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum?
              format) =>
      _$this._format = format;

  bool? _includeCollections;
  bool? get includeCollections => _$this._includeCollections;
  set includeCollections(bool? includeCollections) =>
      _$this._includeCollections = includeCollections;

  bool? _includeEnvironments;
  bool? get includeEnvironments => _$this._includeEnvironments;
  set includeEnvironments(bool? includeEnvironments) =>
      _$this._includeEnvironments = includeEnvironments;

  bool? _includeRuns;
  bool? get includeRuns => _$this._includeRuns;
  set includeRuns(bool? includeRuns) => _$this._includeRuns = includeRuns;

  PostApiWorkspacesByWorkspaceIdImportExportExportsRequestBuilder() {
    PostApiWorkspacesByWorkspaceIdImportExportExportsRequest._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdImportExportExportsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _format = $v.format;
      _includeCollections = $v.includeCollections;
      _includeEnvironments = $v.includeEnvironments;
      _includeRuns = $v.includeRuns;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdImportExportExportsRequest other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdImportExportExportsRequest;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdImportExportExportsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdImportExportExportsRequest build() => _build();

  _$PostApiWorkspacesByWorkspaceIdImportExportExportsRequest _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdImportExportExportsRequest._(
          format: format,
          includeCollections: includeCollections,
          includeEnvironments: includeEnvironments,
          includeRuns: includeRuns,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
