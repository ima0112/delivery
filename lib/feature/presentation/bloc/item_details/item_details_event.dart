part of 'item_details_bloc.dart';

@freezed
class ItemDetailsEvent with _$ItemDetailsEvent {
  const factory ItemDetailsEvent.getItemDetails({required String id}) =
      _GetItemsDetails;
}
