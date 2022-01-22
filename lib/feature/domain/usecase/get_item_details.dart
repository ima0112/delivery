import 'package:dartz/dartz.dart';
import 'package:delivery/core/usecase/usecase.dart';
import 'package:delivery/feature/domain/repositories/delivery_repository.dart';
import 'package:grpc/grpc.dart';
import '../../../protos/protos/main.pb.dart';

class GetItemDetails implements UseCase<GetItemResponse, GetItemRequest> {
  final DeliveryRepository deliveryRepository;

  GetItemDetails(this.deliveryRepository);

  @override
  Future<Either<GrpcError, GetItemResponse>> call(
      GetItemRequest request) async {
    return await deliveryRepository.getItemDetails(request);
  }
}
