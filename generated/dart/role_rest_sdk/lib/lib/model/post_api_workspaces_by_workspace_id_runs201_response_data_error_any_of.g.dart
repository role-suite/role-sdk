// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response_data_error_any_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf
    extends PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf {
  @override
  final String code;
  @override
  final BuiltMap<String, JsonObject?>? details;
  @override
  final String message;

  factory _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf._(
      {required this.code, this.details, required this.message})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf &&
        code == other.code &&
        details == other.details &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf')
          ..add('code', code)
          ..add('details', details)
          ..add('message', message))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf,
            PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf? _$v;

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

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfBuilder() {
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _details = $v.details?.toBuilder();
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf other) {
    _$v =
        other as _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf build() =>
      _build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf _build() {
    _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf._(
            code: BuiltValueNullFieldError.checkNotNull(
                code,
                r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf',
                'code'),
            details: _details?.build(),
            message: BuiltValueNullFieldError.checkNotNull(
                message,
                r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf',
                'message'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf',
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
