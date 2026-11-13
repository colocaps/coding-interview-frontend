import 'package:exchange_caclculator/core/env/env.dart';
import 'package:exchange_caclculator/core/observability/observability.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(
  as: Observability,
  env: [AppEnv.development, AppEnv.production],
)
class ObservabilityNoopImpl implements Observability {
  @override
  void track(String event, {Map<String, dynamic>? properties}) {}

  @override
  void trackError(
    Object error, {
    StackTrace? stackTrace,
    String? reason,
    Map<String, dynamic>? properties,
  }) {}
}
