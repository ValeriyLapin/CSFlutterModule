import 'dart:math';

import 'package:flutter/material.dart';

import '../models/roulette_item.dart';

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
  final minFontSize = 12.0;
  final maxFontSize = 18.0;
  final double stepGranularity = 1;

  late final textStyle = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: maxFontSize,
  );
  late final selectedTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: maxFontSize,
  );

  late final _paint = Paint()
    ..color = Colors.grey.shade300
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  late final _selectedPaint = Paint()
    ..color = Colors.blue
    ..style = PaintingStyle.fill;

  List _calculateFontSize(String text, double width) {
    final span = TextSpan(style: textStyle, text: text);

    int left;
    int right;

    final num defaultFontSize =
        textStyle.fontSize!.clamp(minFontSize, maxFontSize);
    final defaultScale = defaultFontSize / textStyle.fontSize!;
    if (_checkTextFits(span, defaultScale, width)) {
      return <Object>[defaultFontSize, true];
    }

    left = (minFontSize / stepGranularity).floor();
    right = (defaultFontSize / stepGranularity).ceil();

    var lastValueFits = false;
    while (left <= right) {
      final mid = (left + (right - left) / 2).floor();
      double scale;
      scale = mid * stepGranularity / textStyle.fontSize!;

      if (_checkTextFits(span, scale, width)) {
        left = mid + 1;
        lastValueFits = true;
      } else {
        right = mid - 1;
      }
    }

    if (!lastValueFits) {
      right += 1;
    }

    double fontSize;
    fontSize = right * stepGranularity;

    return <Object>[fontSize, lastValueFits];
  }

  bool _checkTextFits(
    TextSpan text,
    double scale,
    double width,
  ) {
    final words = text.toPlainText().split(RegExp('\\s+'));

    final wordWrapTextPainter = TextPainter(
      text: TextSpan(
        style: text.style,
        text: words.join('\n'),
      ),
      textScaler: TextScaler.linear(scale),
      textDirection: TextDirection.ltr,
      maxLines: 1,
    );

    wordWrapTextPainter.layout(maxWidth: width);

    if (wordWrapTextPainter.didExceedMaxLines ||
        wordWrapTextPainter.width > width) {
      return false;
    }

    final textPainter = TextPainter(
      text: text,
      textDirection: TextDirection.ltr,
      maxLines: 1,
    );

    textPainter.layout(maxWidth: width);

    return !(textPainter.didExceedMaxLines || textPainter.width > width);
  }

  void drawSections(Canvas canvas, double radius) {
    double drewSweep = 0.0;
    for (int i = 0; i < items.length; i++) {
      final sweep = 2 * pi / items.length;

      canvas.save();
      canvas.rotate((drewSweep + pi / 2 + sweep / 2));

      final style = prevEnd == i ? selectedTextStyle : textStyle;
      final width = radius / 2;
      final fontSize = _calculateFontSize(items[i].name, width);
      final tp = TextPainter(
        text: TextSpan(
          text: items[i].name,
          style: style.copyWith(fontSize: fontSize.firstOrNull),
        ),
        textDirection: TextDirection.ltr,
        maxLines: 1,
      );
      tp.layout(maxWidth: width);
      canvas.save();
      final dy = -radius * textLayoutBias;
      canvas.translate(0, dy);
      canvas.rotate(pi * 1.5);
      final origin = Offset(0, dy);
      final pivot = tp.size.center(origin);
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
