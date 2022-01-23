// 🐦 Flutter imports:
import 'package:delivery/core/provider/app_provider.dart';
import 'package:delivery/feature/presentation/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:

import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:delivery/core/style/styles.dart';

import 'package:delivery/feature/presentation/bloc/items/items_bloc.dart';
import 'package:provider/provider.dart';
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
    final themeMode = context.watch<AppProvider>().themeMode;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Delivery',
          style: TextStyles.h2,
        ),
        actions: [
          IconBtn(
              themeMode == ThemeMode.light ? Icons.dark_mode : Icons.light_mode,
              onPressed: () => Provider.of<AppProvider>(context, listen: false)
                      .themeMode =
                  themeMode == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light)
        ],
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
