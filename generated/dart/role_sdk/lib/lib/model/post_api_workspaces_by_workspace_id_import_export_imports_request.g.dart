// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_import_export_imports_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum
    _$postApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum_json =
    const PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum._(
        'json');
const PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum
    _$postApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum_unknownDefaultOpenApi =
    const PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum._(
        'unknownDefaultOpenApi');

PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum
    _$postApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnumValueOf(
        String name) {
  switch (name) {
    case 'json':
      return _$postApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum_json;
    case 'unknownDefaultOpenApi':
      return _$postApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum_unknownDefaultOpenApi;
    default:
      return _$postApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<
        PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum>
    _$postApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnumValues =
    BuiltSet<
        PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum>(const <PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum>[
  _$postApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum_json,
  _$postApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum_unknownDefaultOpenApi,
]);

Serializer<PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum>
    _$postApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnumSerializer =
    _$PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnumSerializer();

class _$PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnumSerializer
    implements
        PrimitiveSerializer<
            PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum> {
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
    PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum
  ];
  @override
  final String wireName =
      'PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum';

  @override
  Object serialize(
          Serializers serializers,
          PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum
              object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum
      deserialize(Serializers serializers, Object serialized,
              {FullType specifiedType = FullType.unspecified}) =>
          PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum
              .valueOf(_fromWire[serialized] ??
                  (serialized is String ? serialized : ''));
}

class _$PostApiWorkspacesByWorkspaceIdImportExportImportsRequest
    extends PostApiWorkspacesByWorkspaceIdImportExportImportsRequest {
  @override
  final PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum?
      format;
  @override
  final BuiltMap<String, JsonObject?> payload;

  factory _$PostApiWorkspacesByWorkspaceIdImportExportImportsRequest(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdImportExportImportsRequestBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdImportExportImportsRequestBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdImportExportImportsRequest._(
      {this.format, required this.payload})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdImportExportImportsRequest rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdImportExportImportsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdImportExportImportsRequestBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdImportExportImportsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdImportExportImportsRequest &&
        format == other.format &&
        payload == other.payload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdImportExportImportsRequest')
          ..add('format', format)
          ..add('payload', payload))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdImportExportImportsRequestBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdImportExportImportsRequest,
            PostApiWorkspacesByWorkspaceIdImportExportImportsRequestBuilder> {
  _$PostApiWorkspacesByWorkspaceIdImportExportImportsRequest? _$v;

  PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum? _format;
  PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum?
      get format => _$this._format;
  set format(
          PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum?
              format) =>
      _$this._format = format;

  MapBuilder<String, JsonObject?>? _payload;
  MapBuilder<String, JsonObject?> get payload =>
      _$this._payload ??= MapBuilder<String, JsonObject?>();
  set payload(MapBuilder<String, JsonObject?>? payload) =>
      _$this._payload = payload;

  PostApiWorkspacesByWorkspaceIdImportExportImportsRequestBuilder() {
    PostApiWorkspacesByWorkspaceIdImportExportImportsRequest._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdImportExportImportsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _format = $v.format;
      _payload = $v.payload.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdImportExportImportsRequest other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdImportExportImportsRequest;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdImportExportImportsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdImportExportImportsRequest build() => _build();

  _$PostApiWorkspacesByWorkspaceIdImportExportImportsRequest _build() {
    _$PostApiWorkspacesByWorkspaceIdImportExportImportsRequest _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdImportExportImportsRequest._(
            format: format,
            payload: payload.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'payload';
        payload.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdImportExportImportsRequest',
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
