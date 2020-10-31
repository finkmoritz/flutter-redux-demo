import 'package:flutter/material.dart';
import 'package:reduxdemo/data/item.dart';
import 'package:reduxdemo/redux/actions/add_to_cart_action.dart';

class AppState {

  int count = 0;
  List<Item> availableItems = [
    Item(
      id: 0,
      title: 'iPhone',
      iconData: Icons.phone_iphone,
      prize: 699.99,
    ),
    Item(
      id: 1,
      title: 'House',
      iconData: Icons.house,
      prize: 380000.00,
    ),
    Item(
      id: 2,
      title: 'Car',
      iconData: Icons.directions_car_rounded,
      prize: 18499.00,
    ),
  ];
  List<Item> shoppingCartItems = [];

  static AppState reduce(AppState state, dynamic action) {
    if(action is AddToCartAction) {
      int index = state.availableItems.indexWhere((item) => item.id == action.itemId);
      Item item = state.availableItems.removeAt(index);
      state.shoppingCartItems.add(item);
    } else {
      throw new Exception('Invalid action: $action');
    }
    return state;
  }
}
