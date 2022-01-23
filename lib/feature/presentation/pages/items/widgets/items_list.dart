import 'package:cached_network_image/cached_network_image.dart';
import 'package:delivery/core/style/styles.dart';
import 'package:delivery/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:delivery/protos/protos/main.pb.dart';
import 'package:octo_image/octo_image.dart';

class SearchGridView extends StatelessWidget {
  const SearchGridView({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Item> items;
  final _itemCount = 2;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _color = Theme.of(context).inputDecorationTheme.fillColor;

    return AnimationLimiter(
      child: GridView.builder(
        itemCount: items.length,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 32.0),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          maxCrossAxisExtent: _size.width / _itemCount,
          mainAxisExtent: _size.height * 0.25,
        ),
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredGrid(
            position: index,
            duration: Times.fast,
            columnCount: _itemCount,
            child: ScaleAnimation(
              duration: Times.medium,
              child: FadeInAnimation(
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: _color,
                      borderRadius: Corners.customBorder,
                      boxShadow: Shadows.small,
                    ),
                    child: Column(
                      children: [
                        BoxImage(item: items[index]),
                        BoxInfo(item: items[index]),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class BoxInfo extends StatelessWidget {
  const BoxInfo({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Text(
              item.name,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.body3,
              maxLines: 1,
            ),
          ),
          SizedBox(
            child: Text(
              '\$ '
              '${item.price}',
              style: TextStyles.title1,
            ),
          ),
        ],
      ),
    );
  }
}

class BoxImage extends StatelessWidget {
  const BoxImage({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Container(
      height: _size.height * 0.18,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Corners.customRadius,
          topRight: Corners.customRadius,
        ),
        child: OctoImage(
          image: CachedNetworkImageProvider(url + item.thumbnail),
          placeholderBuilder: OctoPlaceholder.blurHash(
            item.thumbnailBlurHash,
            fit: BoxFit.cover,
          ),
          errorBuilder: OctoError.icon(color: Colors.red),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
