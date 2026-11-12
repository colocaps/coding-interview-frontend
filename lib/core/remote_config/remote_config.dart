import 'package:exchange_caclculator/core/remote_config/remote_config_state.dart';

abstract class RemoteConfig {
  RemoteConfigState get current;

  Future<void> listen(void Function(RemoteConfigState state) onChange);
}
