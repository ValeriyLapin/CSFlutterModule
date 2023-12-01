import '../gen/classroom.pb.dart';
import 'data_listener.dart';

class SelectedClassroomListener extends DataListener<FClassroom> {
  static const channelName = 'com.amco.cs/selectedClassroomEventChannel';

  SelectedClassroomListener() : super(channelName, FClassroom.fromBuffer);
}
