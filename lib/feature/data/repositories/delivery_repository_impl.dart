import 'package:dartz/dartz.dart';
import 'package:delivery/feature/data/datasource/delivery_data_source.dart';
import 'package:delivery/feature/domain/repositories/delivery_repository.dart';
import 'package:delivery/protos/protos/main.pb.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DeliveryRepository)
class DeliveryRepositoryImpl implements DeliveryRepository {
  final DeliveryDataSource deliveryDataSource;

  DeliveryRepositoryImpl({required this.deliveryDataSource});

  @override
  Future<Either<GrpcError, GetItemResponse>> getItemDetails(
      GetItemRequest request) async {
    try {
      final item = await deliveryDataSource.getItemDetails(request);
      return Right(item);
    } on Exception {
      return Left(GrpcError.unknown());
    }
  }

  @override
  Future<Either<GrpcError, ListItemResponse>> getItems() async {
    try {
      final item = await deliveryDataSource.getItems();
      return Right(item);
    } on Exception {
      return Left(GrpcError.unknown());
    }
  }
}
