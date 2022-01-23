import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:delivery/feature/domain/usecase/get_item_details.dart';
import 'package:delivery/feature/presentation/bloc/item_details/item_details_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'item_details_bloc_test.mocks.dart';
import 'package:delivery/protos/protos/main.pb.dart';

@GenerateMocks([GetItemDetails])
void main() {
  late ItemDetailsBloc bloc;
  late MockGetItemDetails mockGetItemDetails;

  setUp(() {
    mockGetItemDetails = MockGetItemDetails();
    bloc = ItemDetailsBloc(mockGetItemDetails);
  });

  test('initialState should be Empty', () {
    expect(bloc.state, equals(ItemDetailsState.initial()));
  });

  group('GetItems', () {
    group('Getting data is Succesfully', () {
      const tId = '1';
      final tItem = Item();

      setUp(() {
        when(mockGetItemDetails(any)).thenAnswer((_) async => Right(tItem));
      });

      blocTest<ItemDetailsBloc, ItemDetailsState>(
          'should get data from the getItems use case',
          build: () => bloc,
          act: (bloc) => bloc.add(ItemDetailsEvent.getItemDetails(id: tId)),
          verify: (_) {
            verify(mockGetItemDetails(tId));
          });

      blocTest<ItemDetailsBloc, ItemDetailsState>(
          'should emit [Loading, Loaded] when data is gotten succesfully',
          build: () => bloc,
          act: (bloc) => bloc.add(ItemDetailsEvent.getItemDetails(id: tId)),
          expect: () => [
                ItemDetailsState.loading(),
                ItemDetailsState.loaded(item: tItem),
              ],
          verify: (_) {
            verify(mockGetItemDetails(tId));
          });
    });

    group('Getting data fails', () {
      const tId = '1';

      setUp(() {
        when(mockGetItemDetails(any))
            .thenAnswer((_) async => Left(GrpcError.unknown()));
      });

      blocTest<ItemDetailsBloc, ItemDetailsState>(
          'should emit [Loading, Error] when data is gotten succesfully',
          build: () => bloc,
          act: (bloc) => bloc.add(ItemDetailsEvent.getItemDetails(id: tId)),
          expect: () => [
                ItemDetailsState.loading(),
                ItemDetailsState.error(),
              ],
          verify: (_) {
            verify(mockGetItemDetails(tId));
          });
    });
  });
}
