abstract class IOSDataRepository {
  Future<void> startDataStream();

  Future<void> stopDataStream();

  Stream<String> receiveDataStream();
}
