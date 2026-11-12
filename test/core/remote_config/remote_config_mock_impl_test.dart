import 'package:exchange_caclculator/core/remote_config/remote_config_keys.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_mock_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('uses defaults when no values are provided', () {
    final config = RemoteConfigMockImpl();

    expect(config.current.isMaintenanceMode, isFalse);
    expect(config.current.minRequiredVersionAndroid, '0.0.0');
    expect(config.current.minRequiredVersionIos, '0.0.0');
  });

  test('fromJson overrides defaults', () {
    final config = RemoteConfigMockImpl.fromJson({
      RemoteConfigKeys.isMaintenanceMode: true,
      RemoteConfigKeys.minRequiredVersionAndroid: '2.1.0',
      RemoteConfigKeys.minRequiredVersionIos: '2.2.0',
    });

    expect(config.current.isMaintenanceMode, isTrue);
    expect(config.current.minRequiredVersionAndroid, '2.1.0');
    expect(config.current.minRequiredVersionIos, '2.2.0');
  });

  test('fromJsonString parses a json object', () {
    final config = RemoteConfigMockImpl.fromJsonString('''
      {
        "is_maintenance_mode": true,
        "min_required_version_android": "3.0.0"
      }
    ''');

    expect(config.current.isMaintenanceMode, isTrue);
    expect(config.current.minRequiredVersionAndroid, '3.0.0');
    expect(config.current.minRequiredVersionIos, '0.0.0');
  });

  test('updateValues merges and notifies', () async {
    final config = RemoteConfigMockImpl();
    final versions = <String>[];
    await config.listen(
      (state) => versions.add(state.minRequiredVersionAndroid),
    );

    config.updateValues({
      RemoteConfigKeys.minRequiredVersionAndroid: '1.2.3',
    });
    await Future<void>.delayed(Duration.zero);

    expect(config.current.minRequiredVersionAndroid, '1.2.3');
    expect(versions, ['1.2.3']);
  });
}
