// Mocks generated by Mockito 5.0.15 from annotations
// in delivery/test/feature/presentation/bloc/item_details_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:delivery/feature/domain/repositories/delivery_repository.dart'
    as _i2;
import 'package:delivery/feature/domain/usecase/get_item_details.dart' as _i4;
import 'package:delivery/protos/protos/main.pb.dart' as _i7;
import 'package:grpc/grpc.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeDeliveryRepository_0 extends _i1.Fake
    implements _i2.DeliveryRepository {}

class _FakeEither_1<L, R> extends _i1.Fake implements _i3.Either<L, R> {}

/// A class which mocks [GetItemDetails].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetItemDetails extends _i1.Mock implements _i4.GetItemDetails {
  MockGetItemDetails() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.DeliveryRepository get deliveryRepository =>
      (super.noSuchMethod(Invocation.getter(#deliveryRepository),
          returnValue: _FakeDeliveryRepository_0()) as _i2.DeliveryRepository);
  @override
  _i5.Future<_i3.Either<_i6.GrpcError, _i7.Item>> call(String? id) =>
      (super.noSuchMethod(Invocation.method(#call, [id]),
              returnValue: Future<_i3.Either<_i6.GrpcError, _i7.Item>>.value(
                  _FakeEither_1<_i6.GrpcError, _i7.Item>()))
          as _i5.Future<_i3.Either<_i6.GrpcError, _i7.Item>>);
  @override
  String toString() => super.toString();
}
