import 'package:flutter/services.dart';

class MethodChannelService {
  static const MethodChannel _methodChannel =
      MethodChannel('method_channel_example');

  Future<void> startDataStream() async {
    await _methodChannel.invokeMethod('startDataStream');
  }

  Future<void> stopDataStream() async {
    await _methodChannel.invokeMethod('stopDataStream');
  }
}
