import 'package:flutter/material.dart';

import 'home_page.dart';

class FlutterReduxDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Redux Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Flutter Redux Demo'),
    );
  }
}
