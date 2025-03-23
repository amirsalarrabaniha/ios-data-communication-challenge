import 'package:get_it/get_it.dart';
import 'package:zanis_sample/core/platform/event_channel_service.dart';
import 'package:zanis_sample/core/platform/method_channel_service.dart';
import 'package:zanis_sample/data/repositories/ios_data_repository.dart';
import 'package:zanis_sample/domain/repositories/ios_data_repository_impl.dart';
import 'package:zanis_sample/domain/usecases/start_data_stream.dart';
import 'package:zanis_sample/domain/usecases/stop_data_stream.dart';
import 'package:zanis_sample/presentation/bloc/ios_data_bloc.dart';

final locator = GetIt.instance;

void setupLocator() {
  // Register platform services
  locator.registerLazySingleton<MethodChannelService>(
      () => MethodChannelService());
  locator
      .registerLazySingleton<EventChannelService>(() => EventChannelService());

  // Register repositories
  locator.registerLazySingleton<IOSDataRepository>(
      () => IOSDataRepositoryImpl(locator(), locator()));

  // Register use cases
  locator.registerLazySingleton(() => StartDataStream(locator()));
  locator.registerLazySingleton(() => StopDataStream(locator()));

  // Bloc
  locator.registerLazySingleton(() => IOSDataCubit(
      startDataStream: locator(),
      stopDataStream: locator(),
      repository: locator()));
}
