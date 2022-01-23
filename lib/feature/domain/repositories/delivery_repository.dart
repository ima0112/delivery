// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import '../../../protos/protos/main.pb.dart';

@injectable
abstract class DeliveryRepository {
  Future<Either<GrpcError, ListItemResponse>> getItems();
  Future<Either<GrpcError, GetItemResponse>> getItemDetails(
      GetItemRequest request);
}
