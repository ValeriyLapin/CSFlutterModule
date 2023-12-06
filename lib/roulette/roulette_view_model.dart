import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../gen/classroom.pb.dart';
import '../utilities/file_helper.dart';
import 'roulette_item.dart';

class RouletteViewModel {
  static const _channelName = 'com.amco.cs/selectedClassroomMethodChannel';
  static const _studentSelectedMethod = 'studentSelected';
  static const _sendSelectedClassroomMethod = 'sendSelectedClassroom';
  final MethodChannel _platform = const MethodChannel(_channelName);
  late final Image _placeholderImage =
      Image.asset('assets/images/student_icon.png');

  Future<void> onStudentSelected(String id) async {
    try {
      final data = Uint8List.fromList(utf8.encode(id));
      await _platform.invokeMethod(_studentSelectedMethod, data);
    } catch (e) {
      print('### Error occurred while sending selected student data: $e');
    }
  }

  void startListeningForSelectedClassroom(
      Function(List<RouletteItem>) updateUI) {
    _platform.setMethodCallHandler((MethodCall call) async {
      if (call.method == _sendSelectedClassroomMethod) {
        final classroom = FClassroom.fromBuffer(call.arguments);
        final items =
            await Future.wait(classroom.students.map((FStudent student) async {
          final path = await FileHelper.getStudentPreviewPath(student.id);
          final exists = await File(path).exists();

          return RouletteItem(
            id: student.id,
            name: "${student.firstName} ${student.lastName}",
            imageProvider:
                exists ? FileImage(File(path)) : _placeholderImage.image,
          );
        }).toList());
        updateUI(items);
      }
    });
  }
}
