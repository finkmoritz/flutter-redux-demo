import 'package:flutter/material.dart';
import 'package:reduxdemo/data/item.dart';
import 'package:reduxdemo/redux/actions/add_to_cart_action.dart';
import 'package:reduxdemo/redux/actions/remove_from_cart_action.dart';

class AppState {

  List<Item> availableItems = _defaultItemList;
  List<Item> shoppingCartItems = [];

  static AppState reduce(AppState state, dynamic action) {
    if(action is AddToCartAction) {
      int index = state.availableItems.indexWhere((item) => item.id == action.itemId);
      Item item = state.availableItems.removeAt(index);
      state.shoppingCartItems.add(item);
    } else if(action is RemoveFromCartAction) {
      int index = state.shoppingCartItems.indexWhere((item) => item.id == action.itemId);
      Item item = state.shoppingCartItems.removeAt(index);
      state.availableItems.add(item);
    } else {
      throw new Exception('Invalid action: $action');
    }
    return state;
  }
}

List<Item> _defaultItemList = [
  Item(
    id: 0,
    title: 'iPhone',
    iconData: Icons.phone_iphone,
    prize: 699.99,
  ),
  Item(
    id: 1,
    title: 'TV',
    iconData: Icons.tv,
    prize: 849.99,
  ),
  Item(
    id: 1,
    title: 'Watch',
    iconData: Icons.watch,
    prize: 1350.00,
  ),
  Item(
    id: 2,
    title: 'House',
    iconData: Icons.house,
    prize: 380000.00,
  ),
  Item(
    id: 3,
    title: 'Car',
    iconData: Icons.directions_car_rounded,
    prize: 18495.00,
  ),
  Item(
    id: 4,
    title: 'Couch',
    iconData: Icons.weekend,
    prize: 2890.49,
  ),
  Item(
    id: 5,
    title: 'Apartment',
    iconData: Icons.apartment,
    prize: 1200.00,
  ),
  Item(
    id: 6,
    title: 'Bike',
    iconData: Icons.pedal_bike,
    prize: 1899.90,
  ),
];
