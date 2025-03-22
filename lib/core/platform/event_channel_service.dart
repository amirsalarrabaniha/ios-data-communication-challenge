import 'package:flutter/services.dart';

class EventChannelService {
  static const EventChannel _eventChannel =
      EventChannel('event_channel_example');

  Stream<String> receiveDataStream() {
    return _eventChannel
        .receiveBroadcastStream()
        .map((event) => event.toString());
  }
}
