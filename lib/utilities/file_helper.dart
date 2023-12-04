import 'package:cs_flutter_module/utilities/string_extension.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class FileHelper {
  static Future<String> getStudentPreviewPath(String studentId) async =>
      _getStudentImagePath(studentId, 'preview.png');

  static Future<String> getStudentThumbnailPath(String studentId) async =>
      _getStudentImagePath(studentId, 'thumbnail.png');

  static Future<String> _getStudentImagePath(
    String studentId,
    String fileName,
  ) async {
    final directory = await getTemporaryDirectory();
    return join(directory.path, "students", studentId.removeDocId(), fileName);
  }
}
