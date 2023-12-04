import 'dart:math';

import 'package:flutter/material.dart';

import '../roulette/roulette_item.dart';

class SpinnerPainter extends CustomPainter {
  SpinnerPainter({
    required this.rotation,
    required this.items,
    required this.radius,
    this.prevEnd,
  });

  final double rotation;
  final List<RouletteItem> items;
  final double radius;
  final int? prevEnd;

  final textLayoutBias = 0.7;

  late final textStyle = const TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
  );
  late final selectedTextStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  late final _paint = Paint()
    ..color = Colors.grey.shade300
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  late final _selectedPaint = Paint()
    ..color = Colors.blue
    ..style = PaintingStyle.fill;

  void drawSections(Canvas canvas, double radius) {
    double drewSweep = 0.0;
    for (int i = 0; i < items.length; i++) {
      final sweep = 2 * pi / items.length;

      canvas.save();
      canvas.rotate((drewSweep + pi / 2 + sweep / 2));

      final style = prevEnd == i ? selectedTextStyle : textStyle;

      final tp = TextPainter(
        text: TextSpan(text: items[i].name, style: style),
        textDirection: TextDirection.ltr,
      );
      tp.layout(maxWidth: radius / 2);
      canvas.save();
      final origin = Offset(-35, -radius * textLayoutBias);
      final pivot = tp.size.center(origin);
      canvas.translate(pivot.dx, pivot.dy);
      canvas.rotate(pi * 1.5);
      canvas.translate(-pivot.dx, -pivot.dy);
      tp.paint(canvas, origin);

      canvas.restore();
      canvas.restore();
      drewSweep += sweep;
    }
  }

  void drawBounds(Canvas canvas, double radius, Rect rect) {
    double drewSweep = 0;

    for (int i = 0; i < items.length; i++) {
      final sweep = 2 * pi / items.length;

      canvas.save();
      canvas.rotate(drewSweep);

      if (i == prevEnd) {
        canvas.drawArc(rect, 0, sweep, true, _selectedPaint);
      }
      canvas.drawArc(rect, 0, sweep, true, _paint);
      canvas.restore();
      drewSweep += sweep;
    }
  }

  void drawPick(Canvas canvas, double radius) {
    final paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(radius - 10, 0);
    path.lineTo(radius + 25, -20);
    path.lineTo(radius + 25, 20);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final radius = this.radius;
    final rect = Rect.fromCircle(center: Offset.zero, radius: radius);

    canvas.translate(size.width / 2, size.height / 2);

    canvas.save();
    canvas.rotate((-pi / items.length) + (-pi / items.length) * (rotation * 2));

    drawBounds(canvas, radius, rect);
    drawSections(canvas, radius);
    canvas.restore();

    drawPick(canvas, radius);
  }

  @override
  bool shouldRepaint(covariant SpinnerPainter oldDelegate) =>
      oldDelegate.rotation != rotation ||
      oldDelegate.items.length != items.length;
}
