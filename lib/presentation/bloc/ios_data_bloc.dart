import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zanis_sample/data/repositories/ios_data_repository.dart';
import 'package:zanis_sample/domain/usecases/start_data_stream.dart';
import 'package:zanis_sample/domain/usecases/stop_data_stream.dart';

class IOSDataCubit extends Cubit<String> {
  final StartDataStream startDataStream;
  final StopDataStream stopDataStream;
  final IOSDataRepository repository;

  IOSDataCubit({
    required this.startDataStream,
    required this.stopDataStream,
    required this.repository,
  }) : super("No data yet") {
    repository.receiveDataStream().listen((event) {
      emit("Received: $event");
    }, onError: (error) {
      emit("Error: $error");
    });
  }

  void start() async => await startDataStream();

  void stop() async => await stopDataStream();
}
