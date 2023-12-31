import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';
import '../painters/spinner_painter.dart';

class Spinner extends AnimatedWidget {
  const Spinner({
    Key? key,
    required Animation<double> animation,
    required this.items,
    required this.radius,
    this.prevEnd,
    this.child,
  }) : super(key: key, listenable: animation);

  final List<Item> items;
  final double radius;
  final int? prevEnd;
  final Widget? child;

  Animation<double> get rotation => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size.fromRadius(radius),
      child: CustomPaint(
        painter: SpinnerPainter(
          rotation: rotation.value,
          items: items,
          radius: radius,
          prevEnd: prevEnd,
        ),
        child: child,
      ),
    );
  }
}
