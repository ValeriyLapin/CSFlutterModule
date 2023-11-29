import '../gen/resources.pb.dart';
import 'data_listener.dart';

class ResourcesDataListener extends DataListener<FResourcesState> {
  static const channelName = 'com.amco.cs/resourcesChannel';

  ResourcesDataListener() : super(channelName, FResourcesState.fromBuffer);
}
