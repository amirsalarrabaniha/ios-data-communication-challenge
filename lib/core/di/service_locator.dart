import 'package:get_it/get_it.dart';
import 'package:zanis_sample/core/platform/event_channel_service.dart';
import 'package:zanis_sample/core/platform/method_channel_service.dart';

final locator = GetIt.instance;

void setupLocator() {
  // Register platform services
  locator.registerLazySingleton<MethodChannelService>(
      () => MethodChannelService());
  locator
      .registerLazySingleton<EventChannelService>(() => EventChannelService());
}
