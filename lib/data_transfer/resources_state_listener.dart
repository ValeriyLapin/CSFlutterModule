import '../gen/resources.pb.dart';
import 'data_listener.dart';

class ResourcesStateListener extends DataListener<FResourcesState> {
  static const channelName = 'com.amco.cs/resourcesEventChannel';

  ResourcesStateListener() : super(channelName, FResourcesState.fromBuffer);
}

