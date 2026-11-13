import 'package:exchange_caclculator/core/env/env.dart';
import 'package:exchange_caclculator/core/observability/observability.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: Observability, env: [AppEnv.mock])
class ObservabilityLoggerImpl implements Observability {
  ObservabilityLoggerImpl(this._logger);

  final Logger _logger;

  @override
  void track(String event, {Map<String, dynamic>? properties}) {
    if (properties == null || properties.isEmpty) {
      _logger.i('track: $event');
      return;
    }
    _logger.i('track: $event $properties');
  }

  @override
  void trackError(
    Object error, {
    StackTrace? stackTrace,
    String? reason,
    Map<String, dynamic>? properties,
  }) {
    _logger.e(
      reason == null ? 'trackError' : 'trackError: $reason',
      error: error,
      stackTrace: stackTrace,
    );
    if (properties != null && properties.isNotEmpty) {
      _logger.d(properties);
    }
  }
}
