import 'dart:async';

import 'package:exchange_caclculator/core/handlers/react_handler.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config.dart';
import 'package:exchange_caclculator/features/maintenance/domain/repository/maintenance_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MaintenanceRepository)
class MaintenanceRepositoryImpl implements MaintenanceRepository {
  MaintenanceRepositoryImpl({required RemoteConfig remoteConfig})
    : _handler = _MaintenanceFlagHandler() {
    _handler.notify(remoteConfig.current.isMaintenanceMode);
    unawaited(
      remoteConfig.listen(
        (config) => _handler.notify(config.isMaintenanceMode),
      ),
    );
  }

  final ReactHandler<bool> _handler;

  @override
  bool get isMaintenanceActive => _handler.currentValue ?? false;

  @override
  Future<void> listen(void Function({required bool isActive}) onChange) {
    return _handler.listen((value) => onChange(isActive: value));
  }

  void dispose() => _handler.dispose();
}

class _MaintenanceFlagHandler extends ReactHandler<bool> {}
