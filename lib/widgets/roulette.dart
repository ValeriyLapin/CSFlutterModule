import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/item.dart';
import 'spinner.dart';

class Roulette extends StatefulWidget {
  const Roulette({super.key});

  @override
  State<Roulette> createState() => _RouletteState();
}

class _RouletteState extends State<Roulette>
    with SingleTickerProviderStateMixin {
  static const channelName = 'com.amco.cs/randomStudentItems';
  static const methodName = 'sendRandomItems';

  late final AnimationController controller;
  List<Item> originalItems = [];
  late var items = originalItems.toList();
  late Tween<double> tween = Tween(begin: 0, end: items.length.toDouble() - 1);
  late Animation<double> animation = tween.animate(controller);
  int? prevEnd;

  late final platform = const MethodChannel(channelName);

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(update);
    platform.setMethodCallHandler(handleMethodCall);
  }

  Future<dynamic> handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case methodName:
        final List<dynamic> dynamicList = call.arguments;
        List<Item> items = dynamicList.map((dynamic item) {
          final itemMap = Map<String, dynamic>.from(item);
          return Item.fromMap(itemMap);
        }).toList();
        setState(() {
          originalItems = items;
          this.items = items.toList();
        });
        break;
      default:
        throw MissingPluginException();
    }
  }

  @override
  void dispose() {
    controller.removeListener(update);
    controller.stop(canceled: true);
    super.dispose();
  }

  void update() => setState(() {});

  Future<void> startRoulette(DragEndDetails details) async {
    if (controller.isAnimating) {
      return;
    }

    if (prevEnd != null && items.length <= 1) {
      setState(() {
        items = originalItems.toList();
        prevEnd = null;
      });
      return;
    }

    final end = (Random().nextDouble() * (items.length - 1)).roundToDouble();
    controller.reset();
    tween = Tween(
      begin: 0,
      end: end + (items.length * 2),
    );
    animation = tween.animate(controller);

    setState(() {});

    await controller.forward();
    setState(() => prevEnd = end.toInt());
  }

  ImageProvider<Object>? get backgroundImage {
    if (items.isEmpty) {
      return null;
    }
    final imageData = items[animation.value.round() % items.length].imageData;
    if (imageData == null) {
      return null;
    }
    return MemoryImage(imageData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(64),
          child: LayoutBuilder(
            builder: (_, constraints) {
              final radius =
                  min(constraints.maxHeight, constraints.maxWidth) / 2;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                          child: CircleAvatar(backgroundImage: backgroundImage),
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
