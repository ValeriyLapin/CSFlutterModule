import 'package:cs_flutter_module/gen/resources.pb.dart';
import 'package:flutter/services.dart';


class ResourcesViewModel {
  static const _channelName = 'com.amco.cs/resourcesMethodChannel';

  static const _sendResourcesMethod = "sendResources";
  static const _deleteMethod = 'deleteResources';
  static const _updateMethod = 'updateResources';
  static const _copyToICloudMethod = "copyToICloud";
  static const _copyToLocalMethod = "copyToLocal";

  final MethodChannel _platform = const MethodChannel(_channelName);

  Future<void> deleteStudents(FResourceList resources) async {
    final data = resources.writeToBuffer();
    await _platform.invokeMethod(_deleteMethod, data);
  }

  Future<void> updateResources(FResourceList resources) async {
    final data = resources.writeToBuffer();
    await _platform.invokeMethod(_updateMethod, data);
  }

  Future<void> copyToICloud(FResourceList resources) async {
    final data = resources.writeToBuffer();
    await _platform.invokeMethod(_copyToICloudMethod, data);
  }

  Future<void> copyToLocal(FResourceList resources) async {
    final data = resources.writeToBuffer();
    await _platform.invokeMethod(_copyToLocalMethod, data);
  }

  void startListeningForResources(Function(List<FResourcesState>) updateUI) {
    _platform.setMethodCallHandler((MethodCall call) async {
      if (call.method == _sendResourcesMethod) {
        // updateUI(items);
      }
    });
  }
}
