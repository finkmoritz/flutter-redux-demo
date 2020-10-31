import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:reduxdemo/components/shopping_cart_item_view.dart';
import 'package:reduxdemo/redux/app_state.dart';

class ShoppingCartItemListView extends StatefulWidget {

  @override
  _ShoppingCartItemListViewState createState() => _ShoppingCartItemListViewState();
}

class _ShoppingCartItemListViewState extends State<ShoppingCartItemListView> {

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List>(
      converter: (store) {
        return store.state.shoppingCartItems;
      },
      builder: (context, items) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ShoppingCartItemView(items[index]);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

