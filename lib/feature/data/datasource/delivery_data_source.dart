import 'package:injectable/injectable.dart';
import '../../../protos/google/protobuf/empty.pb.dart';
import '../../../protos/protos/main.pbgrpc.dart';

abstract class DeliveryDataSource {
  Future<List<Item>> getItems();
  Future<Item> getItemDetails(String id);
}

@Injectable(as: DeliveryDataSource)
class DeliveryDataSourceImpl implements DeliveryDataSource {
  final ItemServiceClient client;

  DeliveryDataSourceImpl({required this.client});

  @override
  Future<Item> getItemDetails(String id) async {
    final response = await client.getItem(GetItemRequest(id: id));

    if (response.hasItem()) {
      return response.item;
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<Item>> getItems() async {
    final response = await client.listItem(Empty());

    if (response.items.isNotEmpty) {
      return response.items;
    } else {
      throw Exception();
    }
  }
}
