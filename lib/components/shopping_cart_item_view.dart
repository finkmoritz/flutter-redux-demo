import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:reduxdemo/data/item.dart';
import 'package:reduxdemo/redux/actions/remove_from_cart_action.dart';
import 'package:reduxdemo/redux/app_state.dart';

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
      child: Stack(
        children: [
          Icon(widget.item.iconData, size: 36,),
          Positioned(
            top: -16,
            right: -16,
            child: _buildRemoveFromCartButton(),
          ),
        ],
      ),
    );
  }

  Widget _buildRemoveFromCartButton() {
    return StoreConnector<AppState,VoidCallback>(
      converter: (store) {
        return () => store.dispatch(RemoveFromCartAction(widget.item.id));
      },
      builder: (context, callback) {
        return IconButton(
          onPressed: callback,
          color: Colors.red,
          icon: Icon(Icons.cancel, size: 16,),
        );
      },
    );
  }
}

