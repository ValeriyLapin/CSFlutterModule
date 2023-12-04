import 'package:flutter/material.dart';

class RouletteItem {
  RouletteItem({
    required this.id,
    required this.name,
    required this.imageProvider,
    this.selected = false,
  });

  final String id;
  final String name;
  final ImageProvider imageProvider;
  bool selected;
}

