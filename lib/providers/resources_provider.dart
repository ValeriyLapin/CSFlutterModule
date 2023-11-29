import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data_transfer/resources_data_listener.dart';
import '../gen/resources.pb.dart';

final resourcesProvider = StreamProvider<FResourcesState>((ref) {
  return ResourcesDataListener().dataStream;
});
