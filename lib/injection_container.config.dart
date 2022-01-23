// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'feature/data/datasource/delivery_data_source.dart' as _i3;
import 'feature/data/repositories/delivery_repository_impl.dart' as _i6;
import 'feature/domain/repositories/delivery_repository.dart' as _i5;
import 'feature/domain/usecase/get_item_details.dart' as _i7;
import 'feature/domain/usecase/get_items.dart' as _i8;
import 'feature/presentation/bloc/items/items_bloc.dart' as _i9;
import 'protos/protos/main.pbgrpc.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.DeliveryDataSource>(
      () => _i3.DeliveryDataSourceImpl(client: get<_i4.ItemServiceClient>()));
  gh.factory<_i5.DeliveryRepository>(() => _i6.DeliveryRepositoryImpl(
      deliveryDataSource: get<_i3.DeliveryDataSource>()));
  gh.factory<_i7.GetItemDetails>(
      () => _i7.GetItemDetails(get<_i5.DeliveryRepository>()));
  gh.factory<_i8.GetItems>(() => _i8.GetItems(get<_i5.DeliveryRepository>()));
  gh.factory<_i9.ItemsBloc>(() => _i9.ItemsBloc(get<_i8.GetItems>()));
  return get;
}
