import 'package:flutter/material.dart';
import 'package:reduxdemo/data/item.dart';

class ShoppingCartItemView extends StatefulWidget {
  ShoppingCartItemView(this.item) : super();

  final Item item;

  @override
  _ShoppingCartItemViewState createState() => _ShoppingCartItemViewState();
}

class _ShoppingCartItemViewState extends State<ShoppingCartItemView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Icon(widget.item.iconData,),
    );
  }
}

