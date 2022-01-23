part of 'item_details_bloc.dart';

@freezed
class ItemDetailsState with _$ItemDetailsState {
  const factory ItemDetailsState.loading() = _Loading;
  const factory ItemDetailsState.error() = _Error;
  const factory ItemDetailsState.loaded({required Item item}) = _Loaded;
}
