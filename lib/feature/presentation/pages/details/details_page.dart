import 'package:delivery/core/style/styled_spacers.dart';
import 'package:delivery/core/style/styles.dart';
import 'package:delivery/feature/presentation/bloc/item_details/item_details_bloc.dart';
import 'package:delivery/feature/presentation/pages/details/widgets/app_bar.dart';
import 'package:delivery/feature/presentation/pages/details/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import 'widgets/items_details_skeleton.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final ScrollPhysics physics =
      const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics());

  @override
  void initState() {
    context
        .read<ItemDetailsBloc>()
        .add(ItemDetailsEvent.getItemDetails(id: widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ItemDetailsBloc, ItemDetailsState>(
        builder: (context, state) {
          return state.when(
            loading: () => ItemsDetailsSkeleton(),
            error: () => Center(
              child: Text('Error'),
            ),
            loaded: (item) {
              return CustomScrollView(
                scrollDirection: Axis.vertical,
                physics: physics,
                slivers: [
                  DetailsAppBar(
                    item: item,
                  ),
                  SliverToBoxAdapter(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DetailsTitle(
                          item: item,
                        ),
                        VSpace(10.0),
                        Divider(),
                        Text(
                          'Description',
                          style: TextStyles.title1,
                        ),
                        VSpace(8.0),
                        Text(
                          lorem(words: 100, paragraphs: 3),
                        )
                      ],
                    ),
                  )),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
