abstract class RemoteConfig {
  Future<void> init();

  Map<String, dynamic> get configs;

  void listen(void Function(Map<String, dynamic> configs) callback);
}
