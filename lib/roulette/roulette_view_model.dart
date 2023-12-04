import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../gen/classroom.pb.dart';
import '../utilities/file_helper.dart';
import 'roulette_item.dart';

class RouletteViewModel {
  static const channelName = 'com.amco.cs/selectedClassroomMethodChannel';
  static const studentSelectedMethod = 'studentSelected';
  static const sendSelectedClassroomMethod = 'sendSelectedClassroom';
  final MethodChannel platform = const MethodChannel(channelName);

  Future<void> onStudentSelected(String id) async {
    try {
      final data = Uint8List.fromList(utf8.encode(id));
      await platform.invokeMethod(studentSelectedMethod, data);
    } catch (e) {
      print('### Error occurred while sending selected student data: $e');
    }
  }

  void startListeningForSelectedClassroom(
      Function(List<RouletteItem>) updateUI) {
    platform.setMethodCallHandler((MethodCall call) async {
      if (call.method == sendSelectedClassroomMethod) {
        final classroom = FClassroom.fromBuffer(call.arguments);
        final items =
            await Future.wait(classroom.students.map((FStudent student) async {
          final path = await FileHelper.getStudentPreviewPath(student.id);
          return RouletteItem(
            id: student.id,
            name: "${student.firstName} ${student.lastName}",
            imageProvider: FileImage(File(path)),
          );
        }).toList());
        updateUI(items);
      }
    });
  }
}
