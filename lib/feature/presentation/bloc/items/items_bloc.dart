import 'package:bloc/bloc.dart';
import 'package:delivery/feature/domain/usecase/get_items.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../protos/protos/main.pb.dart';
import '../../../../protos/google/protobuf/empty.pb.dart';

part 'items_event.dart';
part 'items_state.dart';
part 'items_bloc.freezed.dart';

@injectable
class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  final GetItems getItems;

  ItemsBloc(this.getItems) : super(_Initial()) {
    on<ItemsEvent>((event, emit) async {
      event.when(
        getItems: () async => await _mapEventGetItemsToState(event, emit),
      );
    });
  }

  Future<void> _mapEventGetItemsToState(
      ItemsEvent event, Emitter<ItemsState> emit) async {
    emit(ItemsState.loading());

    final result = await getItems(Empty());

    result.fold(
      (left) => emit(
        ItemsState.error(),
      ),
      (items) => emit(
        ItemsState.loaded(
          items: items,
        ),
      ),
    );
  }
}
