import 'package:flutter/services.dart';
import 'package:protobuf/protobuf.dart';

class DataListener<T extends GeneratedMessage> {
  final EventChannel _eventChannel;
  final T Function(List<int>) _fromBuffer;

  DataListener(String channelName, this._fromBuffer)
      : _eventChannel = EventChannel(channelName);

  Stream<T> get dataStream => _eventChannel.receiveBroadcastStream().map(
        (event) => _fromBuffer(event as List<int>),
      );
}
