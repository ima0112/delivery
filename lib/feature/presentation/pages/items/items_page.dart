// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:

import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:delivery/core/style/styles.dart';

import 'package:delivery/feature/presentation/bloc/items/items_bloc.dart';
import 'widgets/items_list.dart';
import 'widgets/items_skeleton.dart';

class ItemsPage extends StatefulWidget {
  ItemsPage({Key? key}) : super(key: key);

  @override
  _ItemsPageState createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  @override
  void initState() {
    context.read<ItemsBloc>().add(ItemsEvent.getItems());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Delivery',
          style: TextStyles.h2,
        ),
      ),
      body: BlocBuilder<ItemsBloc, ItemsState>(
        builder: (context, state) {
          return state.when(
            loading: () => SearchGridSkeleton(),
            loaded: (items) => SafeArea(
              child: SearchGridView(
                items: items,
              ),
            ),
            error: () => SizedBox(
              child: Center(
                child: Text('Error'),
              ),
            ),
          );
        },
      ),
    );
  }
}
