abstract class ForceUpdateRepository {
  bool get isForceUpdateRequired;

  /// Platform-specific store URL from remote config.
  String get storeUrl;

  Future<void> listen(void Function({required bool isRequired}) onChange);
}
