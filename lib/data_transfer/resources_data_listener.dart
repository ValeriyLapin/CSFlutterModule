import '../gen/resources.pb.dart';
import 'data_listener.dart';

class ResourcesDataListener extends DataListener<FResourcesList> {
  static const channelName = 'com.amco.cs/resourcesChannel';

  ResourcesDataListener() : super(channelName, FResourcesList.fromBuffer);
}
