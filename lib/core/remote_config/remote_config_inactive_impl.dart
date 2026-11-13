import 'package:exchange_caclculator/core/env/env.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_defaults.dart';
import 'package:injectable/injectable.dart';

/// Placeholder until development/production wire a real remote config.
@LazySingleton(as: RemoteConfig, env: [AppEnv.development, AppEnv.production])
class RemoteConfigInactiveImpl implements RemoteConfig {
  Map<String, dynamic> _configs = Map<String, dynamic>.from(
    RemoteConfigDefaults.values,
  );

  @override
  Map<String, dynamic> get configs => Map.unmodifiable(_configs);

  @override
  Future<void> init() async {
    _configs = Map<String, dynamic>.from(RemoteConfigDefaults.values);
  }

  @override
  void listen(void Function(Map<String, dynamic> configs) callback) {}
}
