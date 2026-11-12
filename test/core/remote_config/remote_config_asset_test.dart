import 'package:exchange_caclculator/core/remote_config/remote_config_mock_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('loadFromAsset reads is_maintenance_mode from json', () async {
    final config = await RemoteConfigMockImpl.loadFromAsset();

    expect(config.current.isMaintenanceMode, isTrue);
  });
}
