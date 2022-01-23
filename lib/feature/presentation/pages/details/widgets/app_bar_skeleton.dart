// 🐦 Flutter imports:
import 'package:delivery/core/provider/app_provider.dart';
import 'package:delivery/core/utils/constant.dart';
import 'package:delivery/feature/presentation/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

// 📦 Package imports:
import 'package:shimmer/shimmer.dart';

class AppBarSkeleton extends StatelessWidget {
  const AppBarSkeleton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Shimmer.fromColors(
          baseColor: context.watch<AppProvider>().themeMode == ThemeMode.light
              ? Colors.grey[300]!
              : greyMedium,
          highlightColor:
              context.watch<AppProvider>().themeMode == ThemeMode.light
                  ? Colors.grey[100]!
                  : greyStrong,
          child: Container(
            height: 300.0,
            width: double.infinity,
            color: Colors.white,
          ),
        ),
        SafeArea(
          child: IconBtn(
            Icons.arrow_back,
            onPressed: () => context.pop(),
          ),
        ),
      ],
    );
  }
}
