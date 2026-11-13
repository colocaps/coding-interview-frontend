import 'package:exchange_caclculator/core/remote_config/remote_config_keys.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_mock_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('init reads remote config flags from asset json', () async {
    final config = RemoteConfigMockImpl();
    await config.init();

    expect(config.configs[RemoteConfigKeys.isMaintenanceMode], isFalse);
    expect(config.configs[RemoteConfigKeys.minRequiredVersionAndroid], '0.0.0');
    expect(config.configs[RemoteConfigKeys.minRequiredVersionIos], '2.0.0');
    expect(
      config.configs[RemoteConfigKeys.storeUrlAndroid],
      contains('play.google.com'),
    );
    expect(
      config.configs[RemoteConfigKeys.storeUrlIos],
      contains('apps.apple.com'),
    );
    expect(
      config.configs.containsKey(RemoteConfigKeys.storeUrlAndroid),
      isTrue,
    );
  });
}
