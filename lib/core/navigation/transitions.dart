import 'package:delivery/core/style/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CupertinoTransitionPageWrapper extends Page {
  const CupertinoTransitionPageWrapper(
      {required this.screen, required this.transitionKey})
      : super(key: transitionKey);

  final Widget screen;
  final ValueKey transitionKey;

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      settings: this,
      transitionDuration: Times.medium,
      reverseTransitionDuration: Times.medium,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return CupertinoPageTransition(
          primaryRouteAnimation: animation,
          secondaryRouteAnimation: secondaryAnimation,
          linearTransition: false,
          child: child,
        );
      },
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return screen;
      },
    );
  }
}
