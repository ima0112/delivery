import 'package:dartz/dartz.dart';
import 'package:delivery/feature/data/datasource/delivery_data_source.dart';
import 'package:delivery/feature/data/repositories/delivery_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart';
import 'package:mockito/annotations.dart';
import 'package:delivery/protos/protos/main.pb.dart';
import 'package:mockito/mockito.dart';
import '../../../../test/feature/data/repositories/delvery_repository_impl_test.mocks.dart';

@GenerateMocks([DeliveryDataSource])
void main() {
  late DeliveryRepositoryImpl repository;
  late MockDeliveryDataSource mockDeliveryDataSource;

  setUp(() {
    mockDeliveryDataSource = MockDeliveryDataSource();
    repository =
        DeliveryRepositoryImpl(deliveryDataSource: mockDeliveryDataSource);
  });

  group('getItems', () {
    final tResponse = List.generate(10, (index) => Item());

    test(
        'should return data when '
        'the call to data source is successful', () async {
      when(mockDeliveryDataSource.getItems())
          .thenAnswer((_) async => tResponse);

      final result = await repository.getItems();

      verify(mockDeliveryDataSource.getItems());
      expect(result, Right(tResponse));
    });

    test(
        'should return GrpcError when '
        'the call to data source is unsuccessful', () async {
      when(mockDeliveryDataSource.getItems()).thenThrow(Exception());

      final result = await repository.getItems();

      verify(mockDeliveryDataSource.getItems());
      expect(result, Left(GrpcError.unknown()));
    });
  });

  group('getItemDetails', () {
    const tId = '1';
    final tItem = Item();

    test(
        'should return data when '
        'the call to data source is successful', () async {
      when(mockDeliveryDataSource.getItemDetails(any))
          .thenAnswer((_) async => tItem);

      final result = await repository.getItemDetails(tId);

      verify(mockDeliveryDataSource.getItemDetails(tId));
      expect(result, Right(tItem));
    });

    test(
        'should return GrpcError when '
        'the call to data source is unsuccessful', () async {
      when(mockDeliveryDataSource.getItemDetails(any)).thenThrow(Exception());

      final result = await repository.getItemDetails(tId);

      verify(mockDeliveryDataSource.getItemDetails(tId));
      expect(result, Left(GrpcError.unknown()));
    });
  });
}
