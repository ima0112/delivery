///
//  Generated code. Do not modify.
//  source: protos/main.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use signOutRequestDescriptor instead')
const SignOutRequest$json = const {
  '1': 'SignOutRequest',
  '2': const [
    const {'1': 'all', '3': 1, '4': 1, '5': 8, '10': 'all'},
    const {'1': 'authorizationTokenFk', '3': 2, '4': 1, '5': 9, '10': 'authorizationTokenFk'},
  ],
};

/// Descriptor for `SignOutRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signOutRequestDescriptor = $convert.base64Decode('Cg5TaWduT3V0UmVxdWVzdBIQCgNhbGwYASABKAhSA2FsbBIyChRhdXRob3JpemF0aW9uVG9rZW5GaxgCIAEoCVIUYXV0aG9yaXphdGlvblRva2VuRms=');
@$core.Deprecated('Use refreshTokenRequestDescriptor instead')
const RefreshTokenRequest$json = const {
  '1': 'RefreshTokenRequest',
  '2': const [
    const {'1': 'refreshToken', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
    const {'1': 'fieldMask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'fieldMask'},
  ],
};

/// Descriptor for `RefreshTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshTokenRequestDescriptor = $convert.base64Decode('ChNSZWZyZXNoVG9rZW5SZXF1ZXN0EiIKDHJlZnJlc2hUb2tlbhgBIAEoCVIMcmVmcmVzaFRva2VuEjgKCWZpZWxkTWFzaxgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5GaWVsZE1hc2tSCWZpZWxkTWFzaw==');
@$core.Deprecated('Use refreshTokenResponseDescriptor instead')
const RefreshTokenResponse$json = const {
  '1': 'RefreshTokenResponse',
  '2': const [
    const {'1': 'refreshToken', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
    const {'1': 'authorizationToken', '3': 2, '4': 1, '5': 9, '10': 'authorizationToken'},
  ],
};

/// Descriptor for `RefreshTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshTokenResponseDescriptor = $convert.base64Decode('ChRSZWZyZXNoVG9rZW5SZXNwb25zZRIiCgxyZWZyZXNoVG9rZW4YASABKAlSDHJlZnJlc2hUb2tlbhIuChJhdXRob3JpemF0aW9uVG9rZW4YAiABKAlSEmF1dGhvcml6YXRpb25Ub2tlbg==');
@$core.Deprecated('Use listItemResponseDescriptor instead')
const ListItemResponse$json = const {
  '1': 'ListItemResponse',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.main.Item', '10': 'items'},
  ],
};

/// Descriptor for `ListItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listItemResponseDescriptor = $convert.base64Decode('ChBMaXN0SXRlbVJlc3BvbnNlEiAKBWl0ZW1zGAEgAygLMgoubWFpbi5JdGVtUgVpdGVtcw==');
@$core.Deprecated('Use getItemRequestDescriptor instead')
const GetItemRequest$json = const {
  '1': 'GetItemRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'fieldMask', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'fieldMask'},
  ],
};

/// Descriptor for `GetItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemRequestDescriptor = $convert.base64Decode('Cg5HZXRJdGVtUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSOAoJZmllbGRNYXNrGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLkZpZWxkTWFza1IJZmllbGRNYXNr');
@$core.Deprecated('Use getItemResponseDescriptor instead')
const GetItemResponse$json = const {
  '1': 'GetItemResponse',
  '2': const [
    const {'1': 'item', '3': 1, '4': 1, '5': 11, '6': '.main.Item', '10': 'item'},
  ],
};

/// Descriptor for `GetItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemResponseDescriptor = $convert.base64Decode('Cg9HZXRJdGVtUmVzcG9uc2USHgoEaXRlbRgBIAEoCzIKLm1haW4uSXRlbVIEaXRlbQ==');
@$core.Deprecated('Use signInRequestDescriptor instead')
const SignInRequest$json = const {
  '1': 'SignInRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `SignInRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInRequestDescriptor = $convert.base64Decode('Cg1TaWduSW5SZXF1ZXN0EhQKBWVtYWlsGAEgASgJUgVlbWFpbBIaCghwYXNzd29yZBgCIAEoCVIIcGFzc3dvcmQ=');
@$core.Deprecated('Use signInResponseDescriptor instead')
const SignInResponse$json = const {
  '1': 'SignInResponse',
  '2': const [
    const {'1': 'refreshToken', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
    const {'1': 'authorizationToken', '3': 2, '4': 1, '5': 9, '10': 'authorizationToken'},
    const {'1': 'user', '3': 3, '4': 1, '5': 11, '6': '.main.User', '10': 'user'},
  ],
};

/// Descriptor for `SignInResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInResponseDescriptor = $convert.base64Decode('Cg5TaWduSW5SZXNwb25zZRIiCgxyZWZyZXNoVG9rZW4YASABKAlSDHJlZnJlc2hUb2tlbhIuChJhdXRob3JpemF0aW9uVG9rZW4YAiABKAlSEmF1dGhvcml6YXRpb25Ub2tlbhIeCgR1c2VyGAMgASgLMgoubWFpbi5Vc2VyUgR1c2Vy');
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'createTime', '3': 3, '4': 1, '5': 9, '10': 'createTime'},
    const {'1': 'updateTime', '3': 4, '4': 1, '5': 9, '10': 'updateTime'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEg4KAmlkGAEgASgJUgJpZBIUCgVlbWFpbBgCIAEoCVIFZW1haWwSHgoKY3JlYXRlVGltZRgDIAEoCVIKY3JlYXRlVGltZRIeCgp1cGRhdGVUaW1lGAQgASgJUgp1cGRhdGVUaW1l');
@$core.Deprecated('Use itemDescriptor instead')
const Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'price', '3': 4, '4': 1, '5': 1, '10': 'price'},
    const {'1': 'highQualityPhoto', '3': 5, '4': 1, '5': 9, '10': 'highQualityPhoto'},
    const {'1': 'highQualityPhotoBlurHash', '3': 6, '4': 1, '5': 9, '10': 'highQualityPhotoBlurHash'},
    const {'1': 'lowQualityPhoto', '3': 7, '4': 1, '5': 9, '10': 'lowQualityPhoto'},
    const {'1': 'lowQualityPhotoBlurHash', '3': 8, '4': 1, '5': 9, '10': 'lowQualityPhotoBlurHash'},
    const {'1': 'thumbnail', '3': 9, '4': 1, '5': 9, '10': 'thumbnail'},
    const {'1': 'thumbnailBlurHash', '3': 10, '4': 1, '5': 9, '10': 'thumbnailBlurHash'},
    const {'1': 'createTime', '3': 11, '4': 1, '5': 9, '10': 'createTime'},
    const {'1': 'updateTime', '3': 12, '4': 1, '5': 9, '10': 'updateTime'},
    const {'1': 'cursor', '3': 13, '4': 1, '5': 5, '10': 'cursor'},
  ],
};

/// Descriptor for `Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode('CgRJdGVtEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBXByaWNlGAQgASgBUgVwcmljZRIqChBoaWdoUXVhbGl0eVBob3RvGAUgASgJUhBoaWdoUXVhbGl0eVBob3RvEjoKGGhpZ2hRdWFsaXR5UGhvdG9CbHVySGFzaBgGIAEoCVIYaGlnaFF1YWxpdHlQaG90b0JsdXJIYXNoEigKD2xvd1F1YWxpdHlQaG90bxgHIAEoCVIPbG93UXVhbGl0eVBob3RvEjgKF2xvd1F1YWxpdHlQaG90b0JsdXJIYXNoGAggASgJUhdsb3dRdWFsaXR5UGhvdG9CbHVySGFzaBIcCgl0aHVtYm5haWwYCSABKAlSCXRodW1ibmFpbBIsChF0aHVtYm5haWxCbHVySGFzaBgKIAEoCVIRdGh1bWJuYWlsQmx1ckhhc2gSHgoKY3JlYXRlVGltZRgLIAEoCVIKY3JlYXRlVGltZRIeCgp1cGRhdGVUaW1lGAwgASgJUgp1cGRhdGVUaW1lEhYKBmN1cnNvchgNIAEoBVIGY3Vyc29y');
