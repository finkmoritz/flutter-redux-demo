import 'package:flutter/material.dart';
import 'package:reduxdemo/data/item.dart';
import 'package:reduxdemo/redux/actions/add_to_cart_action.dart';
import 'package:reduxdemo/redux/actions/remove_from_cart_action.dart';

class AppState {

  List<Item> availableItems = _defaultItemList;
  List<Item> shoppingCartItems = [];

  static AppState reduce(AppState state, dynamic action) {
    if(action is AddToCartAction) {
      state.availableItems.remove(action.item);
      state.shoppingCartItems.add(action.item);
    } else if(action is RemoveFromCartAction) {
      state.shoppingCartItems.remove(action.item);
      state.availableItems.add(action.item);
    } else {
      throw new Exception('Invalid action: $action');
    }
    return state;
  }
}

List<Item> _defaultItemList = [
  Item(
    title: 'iPhone',
    iconData: Icons.phone_iphone,
    prize: 699.99,
  ),
  Item(
    title: 'TV',
    iconData: Icons.tv,
    prize: 849.99,
  ),
  Item(
    title: 'Watch',
    iconData: Icons.watch,
    prize: 1350.00,
  ),
  Item(
    title: 'House',
    iconData: Icons.house,
    prize: 380000.00,
  ),
  Item(
    title: 'Car',
    iconData: Icons.directions_car_rounded,
    prize: 18495.00,
  ),
  Item(
    title: 'Couch',
    iconData: Icons.weekend,
    prize: 2890.49,
  ),
  Item(
    title: 'Apartment',
    iconData: Icons.apartment,
    prize: 1200.00,
  ),
  Item(
    title: 'Bike',
    iconData: Icons.pedal_bike,
    prize: 1899.90,
  ),
];
