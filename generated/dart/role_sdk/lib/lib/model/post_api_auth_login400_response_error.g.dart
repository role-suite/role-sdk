// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login400_response_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiAuthLogin400ResponseError
    extends PostApiAuthLogin400ResponseError {
  @override
  final String code;
  @override
  final PostApiAuthLogin400ResponseErrorDetails details;
  @override
  final String message;
  @override
  final String requestId;

  factory _$PostApiAuthLogin400ResponseError(
          [void Function(PostApiAuthLogin400ResponseErrorBuilder)? updates]) =>
      (PostApiAuthLogin400ResponseErrorBuilder()..update(updates))._build();

  _$PostApiAuthLogin400ResponseError._(
      {required this.code,
      required this.details,
      required this.message,
      required this.requestId})
      : super._();
  @override
  PostApiAuthLogin400ResponseError rebuild(
          void Function(PostApiAuthLogin400ResponseErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthLogin400ResponseErrorBuilder toBuilder() =>
      PostApiAuthLogin400ResponseErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthLogin400ResponseError &&
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
    return (newBuiltValueToStringHelper(r'PostApiAuthLogin400ResponseError')
          ..add('code', code)
          ..add('details', details)
          ..add('message', message)
          ..add('requestId', requestId))
        .toString();
  }
}

class PostApiAuthLogin400ResponseErrorBuilder
    implements
        Builder<PostApiAuthLogin400ResponseError,
            PostApiAuthLogin400ResponseErrorBuilder> {
  _$PostApiAuthLogin400ResponseError? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  PostApiAuthLogin400ResponseErrorDetailsBuilder? _details;
  PostApiAuthLogin400ResponseErrorDetailsBuilder get details =>
      _$this._details ??= PostApiAuthLogin400ResponseErrorDetailsBuilder();
  set details(PostApiAuthLogin400ResponseErrorDetailsBuilder? details) =>
      _$this._details = details;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  PostApiAuthLogin400ResponseErrorBuilder() {
    PostApiAuthLogin400ResponseError._defaults(this);
  }

  PostApiAuthLogin400ResponseErrorBuilder get _$this {
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
  void replace(PostApiAuthLogin400ResponseError other) {
    _$v = other as _$PostApiAuthLogin400ResponseError;
  }

  @override
  void update(void Function(PostApiAuthLogin400ResponseErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthLogin400ResponseError build() => _build();

  _$PostApiAuthLogin400ResponseError _build() {
    _$PostApiAuthLogin400ResponseError _$result;
    try {
      _$result = _$v ??
          _$PostApiAuthLogin400ResponseError._(
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'PostApiAuthLogin400ResponseError', 'code'),
            details: details.build(),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'PostApiAuthLogin400ResponseError', 'message'),
            requestId: BuiltValueNullFieldError.checkNotNull(
                requestId, r'PostApiAuthLogin400ResponseError', 'requestId'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        details.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiAuthLogin400ResponseError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
