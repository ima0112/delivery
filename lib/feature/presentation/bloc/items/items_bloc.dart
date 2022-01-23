// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:delivery/feature/domain/usecase/get_items.dart';
import '../../../../protos/google/protobuf/empty.pb.dart';
import '../../../../protos/protos/main.pb.dart';

part 'items_event.dart';
part 'items_state.dart';
part 'items_bloc.freezed.dart';

@injectable
class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  final GetItems getItems;

  ItemsBloc(this.getItems) : super(_Loading()) {
    on<ItemsEvent>((event, emit) async {
      await event.when(
        getItems: () async => await _mapEventGetItemsToState(emit),
      );
    });
  }

  Future<void> _mapEventGetItemsToState(Emitter<ItemsState> emit) async {
    emit(ItemsState.loading());

    final result = await getItems(Empty());

    result.fold(
      (_) => emit(
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
