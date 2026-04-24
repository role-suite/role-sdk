// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response_data_request_body_any_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf
    extends PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf {
  @override
  final BuiltList<BuiltMap<String, JsonObject?>> entries;
  @override
  final String mode;

  factory _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf._(
      {required this.entries, required this.mode})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf &&
        entries == other.entries &&
        mode == other.mode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entries.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf')
          ..add('entries', entries)
          ..add('mode', mode))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfBuilder
    implements
        Builder<
            PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf,
            PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf? _$v;

  ListBuilder<BuiltMap<String, JsonObject?>>? _entries;
  ListBuilder<BuiltMap<String, JsonObject?>> get entries =>
      _$this._entries ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set entries(ListBuilder<BuiltMap<String, JsonObject?>>? entries) =>
      _$this._entries = entries;

  String? _mode;
  String? get mode => _$this._mode;
  set mode(String? mode) => _$this._mode = mode;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfBuilder() {
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf._defaults(
        this);
  }

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _entries = $v.entries.toBuilder();
      _mode = $v.mode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf other) {
    _$v = other
        as _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf build() =>
      _build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf _build() {
    _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf
        _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf._(
            entries: entries.build(),
            mode: BuiltValueNullFieldError.checkNotNull(
                mode,
                r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf',
                'mode'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entries';
        entries.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf',
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
