import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';
import 'package:reduxdemo/flutter_redux_demo_app.dart';
import 'package:reduxdemo/redux/app_state.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    final store = Store<AppState>(AppState.reduce, initialState: AppState());
    await tester.pumpWidget(FlutterReduxDemoApp(store));

    expect(find.text('Total: 0.00 €'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add_shopping_cart).first);
    await tester.pump();

    expect(find.text('Total: 0.00 €'), findsNothing);
  });
}
