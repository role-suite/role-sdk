// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login400_response_error_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiAuthLogin400ResponseErrorDetails
    extends PostApiAuthLogin400ResponseErrorDetails {
  @override
  final BuiltMap<String, BuiltList<String>> fieldErrors;

  factory _$PostApiAuthLogin400ResponseErrorDetails(
          [void Function(PostApiAuthLogin400ResponseErrorDetailsBuilder)?
              updates]) =>
      (PostApiAuthLogin400ResponseErrorDetailsBuilder()..update(updates))
          ._build();

  _$PostApiAuthLogin400ResponseErrorDetails._({required this.fieldErrors})
      : super._();
  @override
  PostApiAuthLogin400ResponseErrorDetails rebuild(
          void Function(PostApiAuthLogin400ResponseErrorDetailsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthLogin400ResponseErrorDetailsBuilder toBuilder() =>
      PostApiAuthLogin400ResponseErrorDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthLogin400ResponseErrorDetails &&
        fieldErrors == other.fieldErrors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fieldErrors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiAuthLogin400ResponseErrorDetails')
          ..add('fieldErrors', fieldErrors))
        .toString();
  }
}

class PostApiAuthLogin400ResponseErrorDetailsBuilder
    implements
        Builder<PostApiAuthLogin400ResponseErrorDetails,
            PostApiAuthLogin400ResponseErrorDetailsBuilder> {
  _$PostApiAuthLogin400ResponseErrorDetails? _$v;

  MapBuilder<String, BuiltList<String>>? _fieldErrors;
  MapBuilder<String, BuiltList<String>> get fieldErrors =>
      _$this._fieldErrors ??= MapBuilder<String, BuiltList<String>>();
  set fieldErrors(MapBuilder<String, BuiltList<String>>? fieldErrors) =>
      _$this._fieldErrors = fieldErrors;

  PostApiAuthLogin400ResponseErrorDetailsBuilder() {
    PostApiAuthLogin400ResponseErrorDetails._defaults(this);
  }

  PostApiAuthLogin400ResponseErrorDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fieldErrors = $v.fieldErrors.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiAuthLogin400ResponseErrorDetails other) {
    _$v = other as _$PostApiAuthLogin400ResponseErrorDetails;
  }

  @override
  void update(
      void Function(PostApiAuthLogin400ResponseErrorDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthLogin400ResponseErrorDetails build() => _build();

  _$PostApiAuthLogin400ResponseErrorDetails _build() {
    _$PostApiAuthLogin400ResponseErrorDetails _$result;
    try {
      _$result = _$v ??
          _$PostApiAuthLogin400ResponseErrorDetails._(
            fieldErrors: fieldErrors.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fieldErrors';
        fieldErrors.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiAuthLogin400ResponseErrorDetails',
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
