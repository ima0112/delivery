part of 'items_bloc.dart';

@freezed
class ItemsState with _$ItemsState {
  const factory ItemsState.loading() = _Loading;
  const factory ItemsState.error() = _Error;
  const factory ItemsState.loaded({required List<Item> items}) = _Loaded;
}
