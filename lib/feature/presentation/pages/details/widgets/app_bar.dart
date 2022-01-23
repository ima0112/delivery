import 'package:cached_network_image/cached_network_image.dart';
import 'package:delivery/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';
import 'package:delivery/protos/protos/main.pb.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      stretch: true,
      pinned: true,
      floating: false,
      expandedHeight: 250.0,
      onStretchTrigger: () {
        // Function callback for stretch

        return Future<void>.value();
      },
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const <StretchMode>[
          StretchMode.zoomBackground,
          StretchMode.blurBackground,
        ],
        collapseMode: CollapseMode.pin,
        background: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            OctoImage(
              image: CachedNetworkImageProvider(url + item.highQualityPhoto),
              placeholderBuilder: OctoPlaceholder.blurHash(
                item.highQualityPhotoBlurHash,
                fit: BoxFit.cover,
              ),
              errorBuilder: OctoError.icon(color: Colors.red),
              fit: BoxFit.cover,
            ),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: <Color>[
                    Colors.black45,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: <Color>[
                    Colors.black12,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
