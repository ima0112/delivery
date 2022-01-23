// 🐦 Flutter imports:
import 'package:delivery/core/style/styled_spacers.dart';
import 'package:delivery/core/style/styles.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:shimmer/shimmer.dart';

import 'app_bar_skeleton.dart';

class ItemsDetailsSkeleton extends StatelessWidget {
  const ItemsDetailsSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarSkeleton(),
          ItemDetailsTitleSkeleton(),
          ItemDescriptionSkeleton(),
        ],
      ),
    );
  }
}

class ItemDescriptionSkeleton extends StatelessWidget {
  const ItemDescriptionSkeleton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VSpace.med,
            Container(
              height: size.height * 0.03,
              width: size.width * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: Corners.customBorder,
              ),
            ),
            VSpace.med,
            for (var i = 0; i < 10; i++)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 2.0),
                height: size.height * 0.01,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: Corners.customBorder,
                ),
              ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 2.0),
              height: size.height * 0.01,
              width: size.width * 0.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: Corners.customBorder,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemDetailsTitleSkeleton extends StatelessWidget {
  const ItemDetailsTitleSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VSpace.lg,
            Container(
              height: size.height * 0.04,
              width: size.width * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: Corners.customBorder,
              ),
            ),
            VSpace.sm,
            Divider()
          ],
        ),
      ),
    );
  }
}
