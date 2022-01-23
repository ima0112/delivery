import 'package:delivery/core/provider/app_provider.dart';
import 'package:delivery/core/style/styles.dart';
import 'package:delivery/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:shimmer/shimmer.dart';
import 'package:provider/provider.dart';

class SearchGridSkeleton extends StatelessWidget {
  const SearchGridSkeleton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: List.generate(
          6,
          (index) => AnimationConfiguration.staggeredGrid(
            position: index,
            duration: Times.fast,
            columnCount: 2,
            child: ScaleAnimation(
              duration: Times.medium,
              child: FadeInAnimation(
                child: Shimmer.fromColors(
                  baseColor:
                      context.watch<AppProvider>().themeMode == ThemeMode.light
                          ? Colors.grey[300]!
                          : greyMedium,
                  highlightColor:
                      context.watch<AppProvider>().themeMode == ThemeMode.light
                          ? Colors.grey[100]!
                          : greyStrong,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: Corners.customBorder,
                      boxShadow: Shadows.small,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
