import 'package:exchange_caclculator/core/remote_config/remote_config_keys.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_mock_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('uses defaults when no values are provided', () {
    final config = RemoteConfigMockImpl();

    expect(config.current.isMaintenanceMode, isFalse);
    expect(
      config.values[RemoteConfigKeys.isMaintenanceMode],
      RemoteConfigMockImpl.defaultValues[RemoteConfigKeys.isMaintenanceMode],
    );
  });

  test('fromJson overrides defaults', () {
    final config = RemoteConfigMockImpl.fromJson({
      RemoteConfigKeys.isMaintenanceMode: true,
    });

    expect(config.current.isMaintenanceMode, isTrue);
  });

  test('fromJsonString parses a json object', () {
    final config = RemoteConfigMockImpl.fromJsonString('''
      {"is_maintenance_mode": true}
    ''');

    expect(config.current.isMaintenanceMode, isTrue);
  });

  test('updateValues merges and notifies', () async {
    final config = RemoteConfigMockImpl();
    final states = <bool>[];
    await config.listen((state) => states.add(state.isMaintenanceMode));

    config.updateValues({RemoteConfigKeys.isMaintenanceMode: true});
    await Future<void>.delayed(Duration.zero);

    expect(config.current.isMaintenanceMode, isTrue);
    expect(states, [true]);
  });
}
