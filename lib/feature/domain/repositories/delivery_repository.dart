// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:grpc/grpc.dart';

// 🌎 Project imports:
import '../../../protos/protos/main.pb.dart';

abstract class DeliveryRepository {
  Future<Either<GrpcError, List<Item>>> getItems();
  Future<Either<GrpcError, Item>> getItemDetails(String id);
}
