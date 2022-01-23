import 'package:dartz/dartz.dart';
import 'package:delivery/feature/domain/usecase/get_item_details.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../../test/feature/domain/usecase/get_items_test.mocks.dart';
import 'package:delivery/protos/protos/main.pb.dart';

void main() {
  late GetItemDetails usecase;
  late MockDeliveryRepository mockDeliveryDetails;

  setUp(() {
    mockDeliveryDetails = MockDeliveryRepository();
    usecase = GetItemDetails(mockDeliveryDetails);
  });

  const tId = '1';
  final tItem = Item();
  test('should get Item for the id from the repository', () async {
    when(mockDeliveryDetails.getItemDetails(any))
        .thenAnswer((_) async => Right(tItem));

    final result = await usecase(tId);

    expect(result, Right(tItem));
    verify(mockDeliveryDetails.getItemDetails(tId));
    verifyNoMoreInteractions(mockDeliveryDetails);
  });
}
