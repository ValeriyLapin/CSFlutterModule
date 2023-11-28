import '../gen/resources.pb.dart';
import 'data_listener.dart';

class ResourcesDataListener extends DataListener<ResourcesList> {
  static const channelName = 'com.amco.cs/resourcesChannel';

  ResourcesDataListener() : super(channelName, ResourcesList.fromBuffer);
}
