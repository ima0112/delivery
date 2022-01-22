// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:grpc/src/shared/status.dart';

// 🌎 Project imports:
import 'package:delivery/core/usecase/usecase.dart';
import 'package:delivery/feature/domain/repositories/delivery_repository.dart';
import '../../../protos/protos/main.pb.dart';

class GetItems implements UseCase<ListItemResponse, NoParams> {
  final DeliveryRepository deliveryRepository;

  GetItems(this.deliveryRepository);

  @override
  Future<Either<GrpcError, ListItemResponse>> call(NoParams params) async {
    return await deliveryRepository.getItems();
  }
}
