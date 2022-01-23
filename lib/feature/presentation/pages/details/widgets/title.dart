import 'package:delivery/core/style/styled_spacers.dart';
import 'package:delivery/core/style/styles.dart';
import 'package:flutter/widgets.dart';
import 'package:delivery/protos/protos/main.pb.dart';

class DetailsTitle extends StatelessWidget {
  const DetailsTitle({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.name,
          overflow: TextOverflow.ellipsis,
          style: TextStyles.h2,
          textAlign: TextAlign.start,
        ),
        HSpace(10.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '${item.price}',
              style: TextStyles.h2,
            ),
            Text(
              'MN',
              style: TextStyles.callout2,
            ),
          ],
        )
      ],
    );
  }
}
