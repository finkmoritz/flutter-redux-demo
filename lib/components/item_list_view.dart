import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:reduxdemo/components/item_view.dart';
import 'package:reduxdemo/redux/app_state.dart';

class ItemListView extends StatefulWidget {

  @override
  _ItemListViewState createState() => _ItemListViewState();
}

class _ItemListViewState extends State<ItemListView> {

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List>(
      converter: (store) {
        return store.state.availableItems;
      },
      builder: (context, items) {
        return ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ItemView(items[index]);
          },
        );
      },
    );
  }
}

