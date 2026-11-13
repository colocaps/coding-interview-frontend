import 'package:exchange_caclculator/core/remote_config/remote_config_keys.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_mock_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('uses defaults when no values are provided', () {
    final config = RemoteConfigMockImpl();

    expect(config.configs[RemoteConfigKeys.isMaintenanceMode], isFalse);
    expect(config.configs[RemoteConfigKeys.minRequiredVersionAndroid], '0.0.0');
    expect(config.configs[RemoteConfigKeys.minRequiredVersionIos], '0.0.0');
  });

  test('fromJson overrides defaults', () {
    final config = RemoteConfigMockImpl.fromJson({
      RemoteConfigKeys.isMaintenanceMode: true,
      RemoteConfigKeys.minRequiredVersionAndroid: '2.1.0',
      RemoteConfigKeys.minRequiredVersionIos: '2.2.0',
    });

    expect(config.configs[RemoteConfigKeys.isMaintenanceMode], isTrue);
    expect(config.configs[RemoteConfigKeys.minRequiredVersionAndroid], '2.1.0');
    expect(config.configs[RemoteConfigKeys.minRequiredVersionIos], '2.2.0');
  });

  test('fromJsonString parses a json object', () {
    final config = RemoteConfigMockImpl.fromJsonString('''
      {
        "is_maintenance_mode": true,
        "min_required_version_android": "3.0.0"
      }
    ''');

    expect(config.configs[RemoteConfigKeys.isMaintenanceMode], isTrue);
    expect(config.configs[RemoteConfigKeys.minRequiredVersionAndroid], '3.0.0');
    expect(config.configs[RemoteConfigKeys.minRequiredVersionIos], '0.0.0');
  });

  test('updateValues merges and notifies', () async {
    final config = RemoteConfigMockImpl();
    final versions = <String>[];
    config.listen((configs) {
      versions.add(configs[RemoteConfigKeys.minRequiredVersionAndroid] as String);
    });

    config.updateValues({
      RemoteConfigKeys.minRequiredVersionAndroid: '1.2.3',
    });
    await Future<void>.delayed(Duration.zero);

    expect(config.configs[RemoteConfigKeys.minRequiredVersionAndroid], '1.2.3');
    expect(versions, ['1.2.3']);
  });

  test('init falls back to defaults when asset is unavailable', () async {
    final config = RemoteConfigMockImpl();

    await config.init();

    expect(config.configs[RemoteConfigKeys.isMaintenanceMode], isFalse);
    expect(config.configs.containsKey(RemoteConfigKeys.minRequiredVersionAndroid), isTrue);
  });
}
