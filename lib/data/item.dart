import 'package:flutter/material.dart';

class Item {
  Item({this.id, this.title, this.iconData, this.prize});

  final int id;
  final String title;
  final IconData iconData;
  final double prize;
}
