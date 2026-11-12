import 'package:exchange_caclculator/core/env/env.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_state.dart';
import 'package:injectable/injectable.dart';

/// Placeholder until development/production wire a real remote config.
@LazySingleton(as: RemoteConfig, env: [AppEnv.development, AppEnv.production])
class RemoteConfigInactiveImpl implements RemoteConfig {
  @override
  RemoteConfigState get current => const RemoteConfigState();

  @override
  Future<void> listen(void Function(RemoteConfigState state) onChange) async {}
}
