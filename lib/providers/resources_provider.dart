import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data_transfer/resources_data_listener.dart';
import '../gen/resources.pb.dart';

final resourcesProvider = StreamProvider<ResourcesList>((ref) {
  return ResourcesDataListener().dataStream;
});
