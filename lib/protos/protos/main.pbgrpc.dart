///
//  Generated code. Do not modify.
//  source: protos/main.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'main.pb.dart' as $0;
import '../google/protobuf/empty.pb.dart' as $1;
export 'main.pb.dart';

class AuthenticationServiceClient extends $grpc.Client {
  static final _$signIn =
      $grpc.ClientMethod<$0.SignInRequest, $0.SignInResponse>(
          '/main.AuthenticationService/SignIn',
          ($0.SignInRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SignInResponse.fromBuffer(value));
  static final _$signOut = $grpc.ClientMethod<$0.SignOutRequest, $1.Empty>(
      '/main.AuthenticationService/SignOut',
      ($0.SignOutRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$refreshToken =
      $grpc.ClientMethod<$0.RefreshTokenRequest, $0.RefreshTokenResponse>(
          '/main.AuthenticationService/RefreshToken',
          ($0.RefreshTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RefreshTokenResponse.fromBuffer(value));

  AuthenticationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.SignInResponse> signIn($0.SignInRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> signOut($0.SignOutRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signOut, request, options: options);
  }

  $grpc.ResponseFuture<$0.RefreshTokenResponse> refreshToken(
      $0.RefreshTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshToken, request, options: options);
  }
}

abstract class AuthenticationServiceBase extends $grpc.Service {
  $core.String get $name => 'main.AuthenticationService';

  AuthenticationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SignInRequest, $0.SignInResponse>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignInRequest.fromBuffer(value),
        ($0.SignInResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SignOutRequest, $1.Empty>(
        'SignOut',
        signOut_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignOutRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RefreshTokenRequest, $0.RefreshTokenResponse>(
            'RefreshToken',
            refreshToken_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RefreshTokenRequest.fromBuffer(value),
            ($0.RefreshTokenResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SignInResponse> signIn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignInRequest> request) async {
    return signIn(call, await request);
  }

  $async.Future<$1.Empty> signOut_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignOutRequest> request) async {
    return signOut(call, await request);
  }

  $async.Future<$0.RefreshTokenResponse> refreshToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RefreshTokenRequest> request) async {
    return refreshToken(call, await request);
  }

  $async.Future<$0.SignInResponse> signIn(
      $grpc.ServiceCall call, $0.SignInRequest request);
  $async.Future<$1.Empty> signOut(
      $grpc.ServiceCall call, $0.SignOutRequest request);
  $async.Future<$0.RefreshTokenResponse> refreshToken(
      $grpc.ServiceCall call, $0.RefreshTokenRequest request);
}

class ItemServiceClient extends $grpc.Client {
  static final _$listItem = $grpc.ClientMethod<$1.Empty, $0.ListItemResponse>(
      '/main.ItemService/ListItem',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListItemResponse.fromBuffer(value));
  static final _$getItem =
      $grpc.ClientMethod<$0.GetItemRequest, $0.GetItemResponse>(
          '/main.ItemService/GetItem',
          ($0.GetItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetItemResponse.fromBuffer(value));

  ItemServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListItemResponse> listItem($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetItemResponse> getItem($0.GetItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItem, request, options: options);
  }
}

abstract class ItemServiceBase extends $grpc.Service {
  $core.String get $name => 'main.ItemService';

  ItemServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.ListItemResponse>(
        'ListItem',
        listItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.ListItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetItemRequest, $0.GetItemResponse>(
        'GetItem',
        getItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetItemRequest.fromBuffer(value),
        ($0.GetItemResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListItemResponse> listItem_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return listItem(call, await request);
  }

  $async.Future<$0.GetItemResponse> getItem_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetItemRequest> request) async {
    return getItem(call, await request);
  }

  $async.Future<$0.ListItemResponse> listItem(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.GetItemResponse> getItem(
      $grpc.ServiceCall call, $0.GetItemRequest request);
}
