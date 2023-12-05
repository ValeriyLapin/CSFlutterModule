import 'package:cs_flutter_module/gen/resources.pb.dart';
import 'package:flutter/services.dart';


class ResourcesViewModel {
  static const channelName = 'com.amco.cs/resourcesMethodChannel';

  static const sendResourcesMethod = "sendResources";
  static const deleteMethod = 'deleteResources';
  static const updateMethod = 'updateResources';

  final MethodChannel platform = const MethodChannel(channelName);

  Future<void> deleteStudents(List<FResource> resources) async {
    // prepare data
    //  await platform.invokeMethod(deleteMethod, data);
  }

  Future<void> updateResources(List<FResource> resources) async {
    // prepare data
    //  await platform.invokeMethod(updateMethod, data);
  }

  void startListeningForResources(
      Function(List<FResourcesState>) updateUI) {
    platform.setMethodCallHandler((MethodCall call) async {
      if (call.method == sendResourcesMethod) {
        // updateUI(items);
      }
    });
  }
}
