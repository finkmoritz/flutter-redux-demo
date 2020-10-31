import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:reduxdemo/redux/app_state.dart';
import 'package:reduxdemo/redux/app_state_action.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Redux Demo'),
      ),
      body: _buildBody(),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          StoreBuilder<AppState>(
              builder: (context, store) {
                return Text(
                  '${store.state.count}',
                  style: Theme.of(context).textTheme.headline4,
                );
              }
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return StoreConnector<AppState, VoidCallback>(
        converter: (store) {
          return () => store.dispatch(AppStateAction.INCREMENT);
        },
        builder: (context, callback) {
          return FloatingActionButton(
            onPressed: callback,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          );
        },
    );
  }
}
