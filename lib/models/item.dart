import 'package:flutter/material.dart';

class Item {
  Item({
    required this.id,
    required this.name,
    required this.image,
    this.selected = false,
  });

  final String id;
  final String name;
  final Image image;
  bool selected;
}

