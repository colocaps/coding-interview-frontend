import 'package:exchange_caclculator/core/handlers/react_handler.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_keys.dart';
import 'package:exchange_caclculator/features/maintenance/domain/repository/maintenance_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MaintenanceRepository)
class MaintenanceRepositoryImpl implements MaintenanceRepository {
  MaintenanceRepositoryImpl({required RemoteConfig remoteConfig})
    : _handler = _MaintenanceFlagHandler() {
    _handler.notify(_isMaintenanceActive(remoteConfig.configs));
    remoteConfig.listen(
      (configs) => _handler.notify(_isMaintenanceActive(configs)),
    );
  }

  final ReactHandler<bool> _handler;

  @override
  bool get isMaintenanceActive => _handler.currentValue ?? false;

  @override
  Future<void> listen(void Function({required bool isActive}) onChange) {
    return _handler.listen((value) => onChange(isActive: value));
  }

  static bool _isMaintenanceActive(Map<String, dynamic> configs) {
    final value = configs[RemoteConfigKeys.isMaintenanceMode];
    if (value is bool) return value;
    if (value is String) return value.toLowerCase() == 'true';
    return false;
  }

  void dispose() => _handler.dispose();
}

class _MaintenanceFlagHandler extends ReactHandler<bool> {}
