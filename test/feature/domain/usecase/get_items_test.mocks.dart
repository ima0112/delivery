// Mocks generated by Mockito 5.0.15 from annotations
// in delivery/test/feature/domain/usecase/get_items_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:delivery/feature/domain/repositories/delivery_repository.dart'
    as _i3;
import 'package:delivery/protos/protos/main.pb.dart' as _i6;
import 'package:grpc/grpc.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [DeliveryRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeliveryRepository extends _i1.Mock
    implements _i3.DeliveryRepository {
  MockDeliveryRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.GrpcError, List<_i6.Item>>> getItems() =>
      (super.noSuchMethod(Invocation.method(#getItems, []),
          returnValue: Future<_i2.Either<_i5.GrpcError, List<_i6.Item>>>.value(
              _FakeEither_0<_i5.GrpcError, List<_i6.Item>>())) as _i4
          .Future<_i2.Either<_i5.GrpcError, List<_i6.Item>>>);
  @override
  _i4.Future<_i2.Either<_i5.GrpcError, _i6.Item>> getItemDetails(String? id) =>
      (super.noSuchMethod(Invocation.method(#getItemDetails, [id]),
              returnValue: Future<_i2.Either<_i5.GrpcError, _i6.Item>>.value(
                  _FakeEither_0<_i5.GrpcError, _i6.Item>()))
          as _i4.Future<_i2.Either<_i5.GrpcError, _i6.Item>>);
  @override
  String toString() => super.toString();
}
