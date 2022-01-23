import 'package:delivery/core/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child:
                SvgPicture.asset('assets/svgs/undraw_server_down_s-4-lk.svg'),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            width: MediaQuery.of(context).size.width * 0.6,
            child: Text(
              'Oopsssss...! An error seems to have occurred.',
              style: TextStyles.h2,
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
