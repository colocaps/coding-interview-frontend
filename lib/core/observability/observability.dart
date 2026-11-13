abstract class Observability {
  void track(String event, {Map<String, dynamic>? properties});

  void trackError(
    Object error, {
    StackTrace? stackTrace,
    String? reason,
    Map<String, dynamic>? properties,
  });
}
