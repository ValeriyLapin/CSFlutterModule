import 'package:flutter/material.dart';

class Item {
  Item({
    required this.name,
    required this.image,
    this.selected = false,
  });

  final String name;
  final Image image;
  bool selected;
}

