// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_source_one_of1.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1
    extends PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1 {
  @override
  final int collectionId;
  @override
  final int endpointId;
  @override
  final String type;

  factory _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Builder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Builder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1._(
      {required this.collectionId,
      required this.endpointId,
      required this.type})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1 rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Builder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Builder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Builder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1 &&
        collectionId == other.collectionId &&
        endpointId == other.endpointId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, collectionId.hashCode);
    _$hash = $jc(_$hash, endpointId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1')
          ..add('collectionId', collectionId)
          ..add('endpointId', endpointId)
          ..add('type', type))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Builder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1,
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Builder> {
  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1? _$v;

  int? _collectionId;
  int? get collectionId => _$this._collectionId;
  set collectionId(int? collectionId) => _$this._collectionId = collectionId;

  int? _endpointId;
  int? get endpointId => _$this._endpointId;
  set endpointId(int? endpointId) => _$this._endpointId = endpointId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Builder() {
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _collectionId = $v.collectionId;
      _endpointId = $v.endpointId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1 other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Builder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1 build() => _build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1 _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1._(
          collectionId: BuiltValueNullFieldError.checkNotNull(
              collectionId,
              r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1',
              'collectionId'),
          endpointId: BuiltValueNullFieldError.checkNotNull(
              endpointId,
              r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1',
              'endpointId'),
          type: BuiltValueNullFieldError.checkNotNull(type,
              r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1', 'type'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
