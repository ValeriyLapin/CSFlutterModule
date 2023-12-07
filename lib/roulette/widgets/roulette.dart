import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../models/roulette_item.dart';
import '../view_models/roulette_view_model.dart';
import 'spinner.dart';

class Roulette extends StatefulWidget {
  const Roulette({super.key});

  @override
  State<Roulette> createState() => _RouletteState();
}

class _RouletteState extends State<Roulette>
    with SingleTickerProviderStateMixin {
  final viewModel = RouletteViewModel();

  late final AnimationController controller;
  List<RouletteItem> originalItems = [];
  late var items = originalItems.toList();
  late Tween<double> tween = Tween(begin: 0, end: items.length.toDouble() - 1);
  late Animation<double> animation = tween.animate(controller);
  int? prevEnd;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(update);

    viewModel.startListeningForSelectedClassroom(updateUI);
  }

  Future<void> updateUI(List<RouletteItem> items) async {
    setState(() {
      originalItems = items;
      this.items = items.toList();
    });
  }

  @override
  void dispose() {
    controller.removeListener(update);
    controller.stop(canceled: true);

    super.dispose();
  }

  void update() => setState(() {});

  Future<void> startRoulette(DragEndDetails details) async {
    final pps = details.velocity.pixelsPerSecond;
    final isClockwise = pps.dx.isNegative || pps.dy > 0;
    if (controller.isAnimating) {
      return;
    }

    var previous = 0.0;
    if (prevEnd != null) {
      previous = prevEnd!.toDouble();
      prevEnd = null;
      if (items.length <= 1) {
        setState(() {
          items = originalItems.toList();
        });
        return;
      }
    }

    final end = (Random().nextDouble() * (items.length - 1)).roundToDouble();
    controller.reset();
    tween = Tween(
      begin: isClockwise ? items.length * 3 + previous : previous,
      end: isClockwise ? end : end + (items.length * 2),
    );
    animation = tween.animate(controller);

    setState(() {});

    await controller.forward();

    setState(() {
      prevEnd = end.toInt();
      final selectedStudentId = items[prevEnd!].id;
      viewModel.onStudentSelected(selectedStudentId);
    });
  }

  ImageProvider<Object>? get imageProvider => items.isEmpty
      ? null
      : items[animation.value.round() % items.length].imageProvider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: LayoutBuilder(
            builder: (_, constraints) {
              final radius =
                  min(constraints.maxHeight, constraints.maxWidth) / 2;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onVerticalDragEnd: startRoulette,
                    onHorizontalDragEnd: startRoulette,
                    child: Spinner(
                      animation: animation,
                      items: items,
                      radius: radius,
                      prevEnd: prevEnd,
                      child: Padding(
                        padding: EdgeInsets.all(radius * 0.66),
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(backgroundImage: imageProvider),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (prevEnd != null) ...[
            FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () {
                setState(() {
                  items.removeAt(prevEnd!);
                  prevEnd = null;
                });
                controller.reset();
              },
              tooltip: 'Remove',
              child: const Icon(Icons.remove_circle),
            ),
            const SizedBox(
              width: 8,
            ),
          ],
          FloatingActionButton(
            onPressed: () {
              controller.stop();
              controller.reset();
              setState(() {
                prevEnd = null;
                items = originalItems.toList();
              });
            },
            tooltip: 'Restart',
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
