// 🐦 Flutter imports:
import 'package:flutter/material.dart';

import 'injection_container.dart';

void main() {
  configureDependencies();  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
