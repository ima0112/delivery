import 'package:dartz/dartz.dart';
import 'package:delivery/feature/domain/usecase/get_items.dart';
import 'package:delivery/feature/presentation/bloc/items/items_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'items_bloc_test.mocks.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:delivery/protos/protos/main.pb.dart';
import 'package:delivery/protos/google/protobuf/empty.pb.dart';

@GenerateMocks([GetItems])
void main() {
  late ItemsBloc bloc;
  late MockGetItems mockGetItems;

  setUp(() {
    mockGetItems = MockGetItems();
    bloc = ItemsBloc(mockGetItems);
  });

  test('initialState should be Empty', () {
    expect(bloc.state, equals(ItemsState.initial()));
  });

  group('GetItems', () {
    group('Getting data is Succesfully', () {
      final tItemsList = List.generate(10, (index) => Item());

      setUp(() {
        when(mockGetItems(any)).thenAnswer((_) async => Right(tItemsList));
      });

      blocTest<ItemsBloc, ItemsState>(
          'should get data from the getItems use case',
          build: () => bloc,
          act: (bloc) => bloc.add(ItemsEvent.getItems()),
          verify: (_) {
            verify(mockGetItems(Empty()));
          });

      blocTest<ItemsBloc, ItemsState>(
          'should emit [Loading, Loaded] when data is gotten succesfully',
          build: () => bloc,
          act: (bloc) => bloc.add(ItemsEvent.getItems()),
          expect: () => [
                ItemsState.loading(),
                ItemsState.loaded(items: tItemsList),
              ],
          verify: (_) {
            verify(mockGetItems(Empty()));
          });
    });

    group('Getting data fails', () {
      setUp(() {
        when(mockGetItems(any))
            .thenAnswer((_) async => Left(GrpcError.unknown()));
      });

      blocTest<ItemsBloc, ItemsState>(
          'should emit [Loading, Error] when data is gotten succesfully',
          build: () => bloc,
          act: (bloc) => bloc.add(ItemsEvent.getItems()),
          expect: () => [
                ItemsState.loading(),
                ItemsState.error(),
              ],
          verify: (_) {
            verify(mockGetItems(Empty()));
          });
    });
  });
}
