// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

// 🌎 Project imports:
import 'package:delivery/feature/domain/repositories/delivery_repository.dart';
import 'package:delivery/feature/domain/usecase/get_items.dart';
import 'package:delivery/protos/google/protobuf/empty.pb.dart';
import 'package:delivery/protos/protos/main.pb.dart';
import '../../../../test/feature/domain/usecase/get_items_test.mocks.dart';

@GenerateMocks([DeliveryRepository])
void main() {
  late GetItems usecase;
  late MockDeliveryRepository mockDeliveryRepository;

  setUp(() {
    mockDeliveryRepository = MockDeliveryRepository();
    usecase = GetItems(mockDeliveryRepository);
  });

  final tResponse = List.generate(10, (index) => Item());
  test('should get list of items from repository', () async {
    when(mockDeliveryRepository.getItems())
        .thenAnswer((_) async => Right(tResponse));

    final result = await usecase(Empty());

    expect(result, Right(tResponse));
    verify(mockDeliveryRepository.getItems());
    verifyNoMoreInteractions(mockDeliveryRepository);
  });
}
