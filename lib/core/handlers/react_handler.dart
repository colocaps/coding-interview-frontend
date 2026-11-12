import 'dart:async';
import 'dart:developer';

abstract class ReactHandler<T> {
  T? currentValue;

  final StreamController<T?> _streamController =
      StreamController<T?>.broadcast();
  final List<StreamSubscription<T>> _subscriptions = [];

  void notify(T? model) {
    try {
      currentValue = model;
      _streamController.add(model);
    } catch (e, stack) {
      log('[ReactHandler] ❌ Error in notify: $e\n$stack');
      log('[ReactHandler] Model type: ${model.runtimeType}, Expected: $T');
    }
  }

  /// Registers [action] for updates. Completes when listening is ready.
  /// Does not expose the underlying stream so callers cannot push into it.
  Future<void> listen(void Function(T value) action) async {
    _subscriptions.add(
      _streamController.stream
          .where((value) => value != null)
          .cast<T>()
          .listen(
            action,
            onError: (Object error, StackTrace stack) {
              log(
                '[ReactHandler] ❌ Error in stream listener: $error\n$stack',
              );
            },
          ),
    );
  }

  void dispose() {
    for (final subscription in _subscriptions) {
      unawaited(subscription.cancel());
    }
    _subscriptions.clear();
    unawaited(_streamController.close());
  }
}
