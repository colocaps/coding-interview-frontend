import 'package:exchange_caclculator/core/observability/observability_logger_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';

void main() {
  late final ObservabilityLoggerImpl observability;

  setUpAll(() {
    observability = ObservabilityLoggerImpl(
      Logger(level: Level.off, printer: SimplePrinter()),
    );
  });

  test('track does not throw', () {
    expect(
      () => observability.track(
        'breadcrumb',
        properties: {'type': 'navigation', 'action': 'push'},
      ),
      returnsNormally,
    );
  });

  test('trackError does not throw', () {
    expect(
      () => observability.trackError(
        StateError('boom'),
        stackTrace: StackTrace.current,
        reason: 'test',
        properties: {'screen': 'exchange'},
      ),
      returnsNormally,
    );
  });
}
