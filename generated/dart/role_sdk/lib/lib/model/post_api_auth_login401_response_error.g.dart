// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login401_response_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiAuthLogin401ResponseError
    extends PostApiAuthLogin401ResponseError {
  @override
  final String code;
  @override
  final BuiltMap<String, JsonObject?> details;
  @override
  final String message;
  @override
  final String requestId;

  factory _$PostApiAuthLogin401ResponseError(
          [void Function(PostApiAuthLogin401ResponseErrorBuilder)? updates]) =>
      (PostApiAuthLogin401ResponseErrorBuilder()..update(updates))._build();

  _$PostApiAuthLogin401ResponseError._(
      {required this.code,
      required this.details,
      required this.message,
      required this.requestId})
      : super._();
  @override
  PostApiAuthLogin401ResponseError rebuild(
          void Function(PostApiAuthLogin401ResponseErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthLogin401ResponseErrorBuilder toBuilder() =>
      PostApiAuthLogin401ResponseErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthLogin401ResponseError &&
        code == other.code &&
        details == other.details &&
        message == other.message &&
        requestId == other.requestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostApiAuthLogin401ResponseError')
          ..add('code', code)
          ..add('details', details)
          ..add('message', message)
          ..add('requestId', requestId))
        .toString();
  }
}

class PostApiAuthLogin401ResponseErrorBuilder
    implements
        Builder<PostApiAuthLogin401ResponseError,
            PostApiAuthLogin401ResponseErrorBuilder> {
  _$PostApiAuthLogin401ResponseError? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  MapBuilder<String, JsonObject?>? _details;
  MapBuilder<String, JsonObject?> get details =>
      _$this._details ??= MapBuilder<String, JsonObject?>();
  set details(MapBuilder<String, JsonObject?>? details) =>
      _$this._details = details;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  PostApiAuthLogin401ResponseErrorBuilder() {
    PostApiAuthLogin401ResponseError._defaults(this);
  }

  PostApiAuthLogin401ResponseErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _details = $v.details.toBuilder();
      _message = $v.message;
      _requestId = $v.requestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiAuthLogin401ResponseError other) {
    _$v = other as _$PostApiAuthLogin401ResponseError;
  }

  @override
  void update(void Function(PostApiAuthLogin401ResponseErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthLogin401ResponseError build() => _build();

  _$PostApiAuthLogin401ResponseError _build() {
    _$PostApiAuthLogin401ResponseError _$result;
    try {
      _$result = _$v ??
          _$PostApiAuthLogin401ResponseError._(
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'PostApiAuthLogin401ResponseError', 'code'),
            details: details.build(),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'PostApiAuthLogin401ResponseError', 'message'),
            requestId: BuiltValueNullFieldError.checkNotNull(
                requestId, r'PostApiAuthLogin401ResponseError', 'requestId'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        details.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiAuthLogin401ResponseError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
