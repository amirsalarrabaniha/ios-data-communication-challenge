import '../../domain/repositories/ios_data_repository.dart';
import '../../core/platform/method_channel_service.dart';
import '../../core/platform/event_channel_service.dart';

class IOSDataRepositoryImpl implements IOSDataRepository {
  final MethodChannelService methodChannelService;
  final EventChannelService eventChannelService;

  IOSDataRepositoryImpl(this.methodChannelService, this.eventChannelService);

  @override
  Future<void> startDataStream() async {
    await methodChannelService.startDataStream();
  }

  @override
  Future<void> stopDataStream() async {
    await methodChannelService.stopDataStream();
  }

  @override
  Stream<String> receiveDataStream() {
    return eventChannelService.receiveDataStream();
  }
}
