import 'package:dartz/dartz.dart';
import 'package:grpc/grpc.dart';
import '../../../protos/protos/main.pb.dart';

abstract class DeliveryRepository {
  Future<Either<GrpcError, ListItemResponse>> getItems();
  Future<Either<GrpcError, GetItemResponse>> getItemDetails();
}
