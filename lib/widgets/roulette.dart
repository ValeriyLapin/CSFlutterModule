import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../gen/classroom.pb.dart';
import '../models/item.dart';
// import '../utilities/file_helper.dart';
import 'spinner.dart';

class Roulette extends StatefulWidget {
  const Roulette({super.key});

  @override
  State<Roulette> createState() => _RouletteState();
}

class _RouletteState extends State<Roulette>
    with SingleTickerProviderStateMixin {
  static const channelName = 'com.amco.cs/selectedClassroomMethodChannel';
  static const studentSelectedMethod = 'studentSelected';
  static const requestForSelectedClassroomMethod =
      'requestForSelectedClassroom';
  static const sendSelectedClassroomMethod = 'sendSelectedClassroom';
  final channel = const MethodChannel(channelName);

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
    print('### initState, set subscription');
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(update);

    requestSelectedClassroomData();
    startListeningForClassroomChanged();
  }

  Future<void> requestSelectedClassroomData() async {
    print('### requestSelectedClassroomData');
    try {
      final result = await platform.invokeMethod(requestForSelectedClassroomMethod);
      // Assuming the result is a serialized FClassroom object
      final classroom = FClassroom.fromBuffer(result);
      updateUI(classroom);
    } catch (e) {
      print('### Error occurred while requesting classroom data: $e');
    }
  }

  Future<void> onStudentSelected(String id) async {
    print('### onStudentSelected id=$id');
    try {
      await platform.invokeMethod(studentSelectedMethod, id);
    } catch (e) {
      print('### Error occurred while sending selected student data: $e');
    }
  }

  void startListeningForClassroomChanged() {
    print('### startListeningForClassroomChanged');
    platform.setMethodCallHandler((MethodCall call) async {
      if (call.method == sendSelectedClassroomMethod) {
        final classroom = FClassroom.fromBuffer(call.arguments);
        updateUI(classroom);
      }
    });
  }

  Future<void> updateUI(FClassroom classroom) async {
    print('### updateUI');
    final items =
        await Future.wait(classroom.students.map((FStudent student) async {
      final path = 'fake path'; //await FileHelper.getStudentPreviewPath(student.id);
      print('### updateUI path=$path');
      return Item(
        id: student.id,
        name: "${student.firstName} ${student.lastName}",
        image: Image.file(File(path)),
      );
    }).toList());
    setState(() {
      originalItems = items;
      this.items = items.toList();
    });
  }

  @override
  void dispose() {
    print('### dispose');
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
    print('### startRoulette end=$end');
    setState(() {
      prevEnd = end.toInt();
      final selectedStudentId = items[prevEnd!].id;
      onStudentSelected(selectedStudentId);
    });
  }

  Widget buildFloatingActionButtons() => Row(
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
            const SizedBox(width: 8),
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
      );

  ImageProvider<Object>? get imageProvider => items.isEmpty
      ? null
      : items[animation.value.round() % items.length].image as ImageProvider;

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
      floatingActionButton: buildFloatingActionButtons(),
    );
  }
}
