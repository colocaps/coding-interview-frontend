import 'dart:async';

import 'package:exchange_caclculator/core/app_info/app_info.dart';
import 'package:exchange_caclculator/core/handlers/react_handler.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_state.dart';
import 'package:exchange_caclculator/features/force_update/domain/compare_versions.dart';
import 'package:exchange_caclculator/features/force_update/domain/repository/force_update_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ForceUpdateRepository)
class ForceUpdateRepositoryImpl implements ForceUpdateRepository {
  ForceUpdateRepositoryImpl({
    required RemoteConfig remoteConfig,
    required AppInfo appInfo,
  }) : _appInfo = appInfo,
       _latest = remoteConfig.current,
       _handler = _ForceUpdateFlagHandler() {
    _handler.notify(_evaluate(_latest));
    unawaited(
      remoteConfig.listen((config) {
        _latest = config;
        _handler.notify(_evaluate(config));
      }),
    );
  }

  final AppInfo _appInfo;
  final ReactHandler<bool> _handler;
  RemoteConfigState _latest;

  @override
  bool get isForceUpdateRequired => _handler.currentValue ?? false;

  @override
  String get storeUrl => switch (_appInfo.platform) {
    AppStorePlatform.android => _latest.storeUrlAndroid,
    AppStorePlatform.ios => _latest.storeUrlIos,
    AppStorePlatform.other => '',
  };

  @override
  Future<void> listen(void Function({required bool isRequired}) onChange) {
    return _handler.listen((value) => onChange(isRequired: value));
  }

  bool _evaluate(RemoteConfigState config) {
    final minRequiredVersion = switch (_appInfo.platform) {
      AppStorePlatform.android => config.minRequiredVersionAndroid,
      AppStorePlatform.ios => config.minRequiredVersionIos,
      AppStorePlatform.other => '0.0.0',
    };

    return requiresForceUpdate(
      currentVersion: _appInfo.version,
      minRequiredVersion: minRequiredVersion,
    );
  }

  void dispose() => _handler.dispose();
}

class _ForceUpdateFlagHandler extends ReactHandler<bool> {}
