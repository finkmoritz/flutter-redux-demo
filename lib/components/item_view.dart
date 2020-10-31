import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:reduxdemo/data/item.dart';
import 'package:reduxdemo/redux/actions/add_to_cart_action.dart';
import 'package:reduxdemo/redux/app_state.dart';
import 'package:reduxdemo/util/util.dart';

class ItemView extends StatefulWidget {
  ItemView(this.item, this.backroundColor) : super();

  final Item item;
  final Color backroundColor;

  @override
  _ItemViewState createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: widget.backroundColor,
      child: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Text(widget.item.title, style: TextStyle(fontWeight: FontWeight.bold,),),
                Icon(widget.item.iconData, size: 48,),
                Text('${Util.formatPrize(widget.item.prize)}', style: TextStyle(fontStyle: FontStyle.italic,),),
              ],
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerRight,
              child: _buildAddToCartButton(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddToCartButton() {
    return StoreConnector<AppState,VoidCallback>(
        converter: (store) {
          return () => store.dispatch(AddToCartAction(widget.item));
        },
        builder: (context, callback) {
          return IconButton(
            onPressed: callback,
            color: Colors.green,
            icon: Icon(Icons.add_shopping_cart),
          );
        },
    );
  }
}

