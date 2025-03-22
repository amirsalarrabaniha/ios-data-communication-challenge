import '../repositories/ios_data_repository.dart';

class StopDataStream {
  final IOSDataRepository repository;

  StopDataStream(this.repository);

  Future<void> call() async {
    await repository.stopDataStream();
  }
}
