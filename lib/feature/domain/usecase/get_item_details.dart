// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:delivery/core/usecase/usecase.dart';
import 'package:delivery/feature/domain/repositories/delivery_repository.dart';
import '../../../protos/protos/main.pb.dart';

@injectable
class GetItemDetails implements UseCase<Item, String> {
  final DeliveryRepository deliveryRepository;

  GetItemDetails(this.deliveryRepository);

  @override
  Future<Either<GrpcError, Item>> call(
      String id) async {
    return await deliveryRepository.getItemDetails(id);
  }
}
