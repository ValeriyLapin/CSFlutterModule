import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Item {
  Item({
    required this.name,
    required this.imageData,
    this.selected = false,
  });

  static const imageDataKey = 'imageData';
  static const nameKey = 'name';

  final String name;
  final Uint8List? imageData;
  bool selected;

  factory Item.fromMap(Map<String, dynamic> map) {
    final Uint8List? imageData = map[imageDataKey];
    final String name = map[nameKey];
    return Item(name: name, imageData: imageData);
  }
}

extension ItemExtension on Item {
  ImageProvider<Object>? get image {
    return imageData != null ? MemoryImage(imageData!) : null;
  }
}
