import 'package:dartz/dartz.dart';
import 'package:delivery/core/usecase/usecase.dart';
import 'package:delivery/feature/domain/repositories/delivery_repository.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import '../../../protos/protos/main.pb.dart';

@injectable
class GetItemDetails implements UseCase<Item, GetItemRequest> {
  final DeliveryRepository deliveryRepository;

  GetItemDetails(this.deliveryRepository);

  @override
  Future<Either<GrpcError, Item>> call(
      GetItemRequest request) async {
    return await deliveryRepository.getItemDetails(request);
  }
}
