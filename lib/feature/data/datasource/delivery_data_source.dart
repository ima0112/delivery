import 'package:injectable/injectable.dart';

import '../../../protos/protos/main.pb.dart';

abstract class DeliveryDataSource {
  Future<ListItemResponse> getItems();
  Future<GetItemResponse> getItemDetails(GetItemRequest request);
}
