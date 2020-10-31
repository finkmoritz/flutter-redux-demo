import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';
import 'package:reduxdemo/flutter_redux_demo_app.dart';
import 'package:reduxdemo/redux/app_state.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    final store = Store<AppState>(AppState.reduce, initialState: AppState());
    await tester.pumpWidget(FlutterReduxDemoApp(store));

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
