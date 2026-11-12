import 'package:exchange_caclculator/core/remote_config/remote_config_keys.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_mock_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('loadFromAsset reads remote config flags from json', () async {
    final config = await RemoteConfigMockImpl.loadFromAsset();

    expect(config.current.isMaintenanceMode, isFalse);
    expect(config.current.minRequiredVersionAndroid, '0.0.0');
    expect(config.current.minRequiredVersionIos, '2.0.0');
    expect(config.current.storeUrlAndroid, contains('play.google.com'));
    expect(config.current.storeUrlIos, contains('apps.apple.com'));
    expect(
      config.values.containsKey(RemoteConfigKeys.storeUrlAndroid),
      isTrue,
    );
  });
}
