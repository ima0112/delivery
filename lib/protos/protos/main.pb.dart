///
//  Generated code. Do not modify.
//  source: protos/main.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/field_mask.pb.dart' as $2;

class RefreshTokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RefreshTokenRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refreshToken', protoName: 'refreshToken')
    ..aOM<$2.FieldMask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldMask', protoName: 'fieldMask', subBuilder: $2.FieldMask.create)
    ..hasRequiredFields = false
  ;

  RefreshTokenRequest._() : super();
  factory RefreshTokenRequest({
    $core.String? refreshToken,
    $2.FieldMask? fieldMask,
  }) {
    final _result = create();
    if (refreshToken != null) {
      _result.refreshToken = refreshToken;
    }
    if (fieldMask != null) {
      _result.fieldMask = fieldMask;
    }
    return _result;
  }
  factory RefreshTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RefreshTokenRequest clone() => RefreshTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RefreshTokenRequest copyWith(void Function(RefreshTokenRequest) updates) => super.copyWith((message) => updates(message as RefreshTokenRequest)) as RefreshTokenRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RefreshTokenRequest create() => RefreshTokenRequest._();
  RefreshTokenRequest createEmptyInstance() => create();
  static $pb.PbList<RefreshTokenRequest> createRepeated() => $pb.PbList<RefreshTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static RefreshTokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshTokenRequest>(create);
  static RefreshTokenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get refreshToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set refreshToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefreshToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefreshToken() => clearField(1);

  @$pb.TagNumber(2)
  $2.FieldMask get fieldMask => $_getN(1);
  @$pb.TagNumber(2)
  set fieldMask($2.FieldMask v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFieldMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearFieldMask() => clearField(2);
  @$pb.TagNumber(2)
  $2.FieldMask ensureFieldMask() => $_ensure(1);
}

class RefreshTokenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RefreshTokenResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refreshToken', protoName: 'refreshToken')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authorizationToken', protoName: 'authorizationToken')
    ..hasRequiredFields = false
  ;

  RefreshTokenResponse._() : super();
  factory RefreshTokenResponse({
    $core.String? refreshToken,
    $core.String? authorizationToken,
  }) {
    final _result = create();
    if (refreshToken != null) {
      _result.refreshToken = refreshToken;
    }
    if (authorizationToken != null) {
      _result.authorizationToken = authorizationToken;
    }
    return _result;
  }
  factory RefreshTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RefreshTokenResponse clone() => RefreshTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RefreshTokenResponse copyWith(void Function(RefreshTokenResponse) updates) => super.copyWith((message) => updates(message as RefreshTokenResponse)) as RefreshTokenResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RefreshTokenResponse create() => RefreshTokenResponse._();
  RefreshTokenResponse createEmptyInstance() => create();
  static $pb.PbList<RefreshTokenResponse> createRepeated() => $pb.PbList<RefreshTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static RefreshTokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshTokenResponse>(create);
  static RefreshTokenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get refreshToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set refreshToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefreshToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefreshToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get authorizationToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set authorizationToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthorizationToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthorizationToken() => clearField(2);
}

class ListItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListItemResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..pc<Item>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Item.create)
    ..hasRequiredFields = false
  ;

  ListItemResponse._() : super();
  factory ListItemResponse({
    $core.Iterable<Item>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory ListItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListItemResponse clone() => ListItemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListItemResponse copyWith(void Function(ListItemResponse) updates) => super.copyWith((message) => updates(message as ListItemResponse)) as ListItemResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListItemResponse create() => ListItemResponse._();
  ListItemResponse createEmptyInstance() => create();
  static $pb.PbList<ListItemResponse> createRepeated() => $pb.PbList<ListItemResponse>();
  @$core.pragma('dart2js:noInline')
  static ListItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListItemResponse>(create);
  static ListItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Item> get items => $_getList(0);
}

class GetItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetItemRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOM<$2.FieldMask>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldMask', protoName: 'fieldMask', subBuilder: $2.FieldMask.create)
    ..hasRequiredFields = false
  ;

  GetItemRequest._() : super();
  factory GetItemRequest({
    $core.String? id,
    $2.FieldMask? fieldMask,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (fieldMask != null) {
      _result.fieldMask = fieldMask;
    }
    return _result;
  }
  factory GetItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetItemRequest clone() => GetItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetItemRequest copyWith(void Function(GetItemRequest) updates) => super.copyWith((message) => updates(message as GetItemRequest)) as GetItemRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetItemRequest create() => GetItemRequest._();
  GetItemRequest createEmptyInstance() => create();
  static $pb.PbList<GetItemRequest> createRepeated() => $pb.PbList<GetItemRequest>();
  @$core.pragma('dart2js:noInline')
  static GetItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetItemRequest>(create);
  static GetItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(3)
  $2.FieldMask get fieldMask => $_getN(1);
  @$pb.TagNumber(3)
  set fieldMask($2.FieldMask v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFieldMask() => $_has(1);
  @$pb.TagNumber(3)
  void clearFieldMask() => clearField(3);
  @$pb.TagNumber(3)
  $2.FieldMask ensureFieldMask() => $_ensure(1);
}

class GetItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetItemResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOM<Item>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'item', subBuilder: Item.create)
    ..hasRequiredFields = false
  ;

  GetItemResponse._() : super();
  factory GetItemResponse({
    Item? item,
  }) {
    final _result = create();
    if (item != null) {
      _result.item = item;
    }
    return _result;
  }
  factory GetItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetItemResponse clone() => GetItemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetItemResponse copyWith(void Function(GetItemResponse) updates) => super.copyWith((message) => updates(message as GetItemResponse)) as GetItemResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetItemResponse create() => GetItemResponse._();
  GetItemResponse createEmptyInstance() => create();
  static $pb.PbList<GetItemResponse> createRepeated() => $pb.PbList<GetItemResponse>();
  @$core.pragma('dart2js:noInline')
  static GetItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetItemResponse>(create);
  static GetItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Item get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(Item v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => clearField(1);
  @$pb.TagNumber(1)
  Item ensureItem() => $_ensure(0);
}

class SignInRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignInRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  SignInRequest._() : super();
  factory SignInRequest({
    $core.String? email,
    $core.String? password,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory SignInRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignInRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignInRequest clone() => SignInRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignInRequest copyWith(void Function(SignInRequest) updates) => super.copyWith((message) => updates(message as SignInRequest)) as SignInRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignInRequest create() => SignInRequest._();
  SignInRequest createEmptyInstance() => create();
  static $pb.PbList<SignInRequest> createRepeated() => $pb.PbList<SignInRequest>();
  @$core.pragma('dart2js:noInline')
  static SignInRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignInRequest>(create);
  static SignInRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class SignInResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignInResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refreshToken', protoName: 'refreshToken')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authorizationToken', protoName: 'authorizationToken')
    ..aOM<User>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  SignInResponse._() : super();
  factory SignInResponse({
    $core.String? refreshToken,
    $core.String? authorizationToken,
    User? user,
  }) {
    final _result = create();
    if (refreshToken != null) {
      _result.refreshToken = refreshToken;
    }
    if (authorizationToken != null) {
      _result.authorizationToken = authorizationToken;
    }
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory SignInResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignInResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignInResponse clone() => SignInResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignInResponse copyWith(void Function(SignInResponse) updates) => super.copyWith((message) => updates(message as SignInResponse)) as SignInResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignInResponse create() => SignInResponse._();
  SignInResponse createEmptyInstance() => create();
  static $pb.PbList<SignInResponse> createRepeated() => $pb.PbList<SignInResponse>();
  @$core.pragma('dart2js:noInline')
  static SignInResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignInResponse>(create);
  static SignInResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get refreshToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set refreshToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefreshToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefreshToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get authorizationToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set authorizationToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthorizationToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthorizationToken() => clearField(2);

  @$pb.TagNumber(3)
  User get user => $_getN(2);
  @$pb.TagNumber(3)
  set user(User v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUser() => $_has(2);
  @$pb.TagNumber(3)
  void clearUser() => clearField(3);
  @$pb.TagNumber(3)
  User ensureUser() => $_ensure(2);
}

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'User', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createTime', protoName: 'createTime')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateTime', protoName: 'updateTime')
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User({
    $core.String? id,
    $core.String? email,
    $core.String? createTime,
    $core.String? updateTime,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (email != null) {
      _result.email = email;
    }
    if (createTime != null) {
      _result.createTime = createTime;
    }
    if (updateTime != null) {
      _result.updateTime = updateTime;
    }
    return _result;
  }
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get createTime => $_getSZ(2);
  @$pb.TagNumber(3)
  set createTime($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreateTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreateTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get updateTime => $_getSZ(3);
  @$pb.TagNumber(4)
  set updateTime($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdateTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdateTime() => clearField(4);
}

class Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Item', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OD)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'highQualityPhoto', protoName: 'highQualityPhoto')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'highQualityPhotoBlurHash', protoName: 'highQualityPhotoBlurHash')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lowQualityPhoto', protoName: 'lowQualityPhoto')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lowQualityPhotoBlurHash', protoName: 'lowQualityPhotoBlurHash')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thumbnail')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thumbnailBlurHash', protoName: 'thumbnailBlurHash')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createTime', protoName: 'createTime')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateTime', protoName: 'updateTime')
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cursor', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Item._() : super();
  factory Item({
    $core.String? id,
    $core.String? name,
    $core.double? price,
    $core.String? highQualityPhoto,
    $core.String? highQualityPhotoBlurHash,
    $core.String? lowQualityPhoto,
    $core.String? lowQualityPhotoBlurHash,
    $core.String? thumbnail,
    $core.String? thumbnailBlurHash,
    $core.String? createTime,
    $core.String? updateTime,
    $core.int? cursor,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (price != null) {
      _result.price = price;
    }
    if (highQualityPhoto != null) {
      _result.highQualityPhoto = highQualityPhoto;
    }
    if (highQualityPhotoBlurHash != null) {
      _result.highQualityPhotoBlurHash = highQualityPhotoBlurHash;
    }
    if (lowQualityPhoto != null) {
      _result.lowQualityPhoto = lowQualityPhoto;
    }
    if (lowQualityPhotoBlurHash != null) {
      _result.lowQualityPhotoBlurHash = lowQualityPhotoBlurHash;
    }
    if (thumbnail != null) {
      _result.thumbnail = thumbnail;
    }
    if (thumbnailBlurHash != null) {
      _result.thumbnailBlurHash = thumbnailBlurHash;
    }
    if (createTime != null) {
      _result.createTime = createTime;
    }
    if (updateTime != null) {
      _result.updateTime = updateTime;
    }
    if (cursor != null) {
      _result.cursor = cursor;
    }
    return _result;
  }
  factory Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Item clone() => Item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Item copyWith(void Function(Item) updates) => super.copyWith((message) => updates(message as Item)) as Item; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Item create() => Item._();
  Item createEmptyInstance() => create();
  static $pb.PbList<Item> createRepeated() => $pb.PbList<Item>();
  @$core.pragma('dart2js:noInline')
  static Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Item>(create);
  static Item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(2);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get highQualityPhoto => $_getSZ(3);
  @$pb.TagNumber(5)
  set highQualityPhoto($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasHighQualityPhoto() => $_has(3);
  @$pb.TagNumber(5)
  void clearHighQualityPhoto() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get highQualityPhotoBlurHash => $_getSZ(4);
  @$pb.TagNumber(6)
  set highQualityPhotoBlurHash($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasHighQualityPhotoBlurHash() => $_has(4);
  @$pb.TagNumber(6)
  void clearHighQualityPhotoBlurHash() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get lowQualityPhoto => $_getSZ(5);
  @$pb.TagNumber(7)
  set lowQualityPhoto($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasLowQualityPhoto() => $_has(5);
  @$pb.TagNumber(7)
  void clearLowQualityPhoto() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get lowQualityPhotoBlurHash => $_getSZ(6);
  @$pb.TagNumber(8)
  set lowQualityPhotoBlurHash($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasLowQualityPhotoBlurHash() => $_has(6);
  @$pb.TagNumber(8)
  void clearLowQualityPhotoBlurHash() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get thumbnail => $_getSZ(7);
  @$pb.TagNumber(9)
  set thumbnail($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasThumbnail() => $_has(7);
  @$pb.TagNumber(9)
  void clearThumbnail() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get thumbnailBlurHash => $_getSZ(8);
  @$pb.TagNumber(10)
  set thumbnailBlurHash($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasThumbnailBlurHash() => $_has(8);
  @$pb.TagNumber(10)
  void clearThumbnailBlurHash() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get createTime => $_getSZ(9);
  @$pb.TagNumber(11)
  set createTime($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasCreateTime() => $_has(9);
  @$pb.TagNumber(11)
  void clearCreateTime() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get updateTime => $_getSZ(10);
  @$pb.TagNumber(12)
  set updateTime($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasUpdateTime() => $_has(10);
  @$pb.TagNumber(12)
  void clearUpdateTime() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get cursor => $_getIZ(11);
  @$pb.TagNumber(13)
  set cursor($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasCursor() => $_has(11);
  @$pb.TagNumber(13)
  void clearCursor() => clearField(13);
}

