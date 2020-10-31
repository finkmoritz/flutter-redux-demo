import 'package:flutter/material.dart';
import 'package:reduxdemo/components/item_list_view.dart';
import 'package:reduxdemo/components/shopping_cart_item_list_view.dart';

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
      body: Column(
        children: [
          Container(
            height: 100,
            child: ShoppingCartItemListView(),
          ),
          Expanded(
            child: ItemListView(),
          ),
        ],
      ),
    );
  }
}
