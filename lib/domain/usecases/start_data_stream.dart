import '../repositories/ios_data_repository.dart';

class StartDataStream {
  final IOSDataRepository repository;

  StartDataStream(this.repository);

  Future<void> call() async {
    await repository.startDataStream();
  }
}
