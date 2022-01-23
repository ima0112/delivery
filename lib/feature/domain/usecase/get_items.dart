// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:delivery/core/usecase/usecase.dart';
import 'package:delivery/feature/domain/repositories/delivery_repository.dart';
import '../../../protos/google/protobuf/empty.pb.dart';
import '../../../protos/protos/main.pb.dart';

@injectable
class GetItems implements UseCase<List<Item>, Empty> {
  final DeliveryRepository deliveryRepository;

  GetItems(this.deliveryRepository);

  @override
  Future<Either<GrpcError, List<Item>>> call(_) async {
    return await deliveryRepository.getItems();
  }
}
