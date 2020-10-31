import 'package:flutter/material.dart';
import 'package:reduxdemo/redux/app_state.dart';
import 'package:redux/redux.dart';

import 'flutter_redux_demo_app.dart';

void main() {
  final store = Store<AppState>(
      AppState.reduce,
      initialState: AppState.example()
  );
  runApp(FlutterReduxDemoApp(store));
}
