import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:reduxdemo/redux/app_state.dart';
import 'package:redux/redux.dart';

import 'pages/home_page.dart';

class FlutterReduxDemoApp extends StatelessWidget {
  FlutterReduxDemoApp(this.store) : super();

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Redux Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
