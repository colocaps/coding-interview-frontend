import 'package:exchange_caclculator/core/remote_config/remote_config_keys.dart';

abstract final class RemoteConfigDefaults {
  static const Map<String, dynamic> values = {
    RemoteConfigKeys.isMaintenanceMode: false,
    RemoteConfigKeys.minRequiredVersionAndroid: '0.0.0',
    RemoteConfigKeys.minRequiredVersionIos: '0.0.0',
    RemoteConfigKeys.storeUrlAndroid: '',
    RemoteConfigKeys.storeUrlIos: '',
  };
}
