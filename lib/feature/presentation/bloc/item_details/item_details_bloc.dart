import 'package:bloc/bloc.dart';
import 'package:delivery/feature/domain/usecase/get_item_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../protos/protos/main.pb.dart';

part 'item_details_event.dart';
part 'item_details_state.dart';
part 'item_details_bloc.freezed.dart';

@injectable
class ItemDetailsBloc extends Bloc<ItemDetailsEvent, ItemDetailsState> {
  final GetItemDetails getItemDetails;

  ItemDetailsBloc(this.getItemDetails) : super(_Initial()) {
    on<ItemDetailsEvent>((event, emit) async {
      event.when(
        getItemDetails: (id) async =>
            await _mapEventGetItemDetailsToState(emit, id),
      );
    });
  }

  Future<void> _mapEventGetItemDetailsToState(
      Emitter<ItemDetailsState> emit, String id) async {
    emit(ItemDetailsState.loading());

    final result = await getItemDetails(id);

    result.fold(
      (_) => emit(
        ItemDetailsState.error(),
      ),
      (item) => emit(
        ItemDetailsState.loaded(item: item),
      ),
    );
  }
}
