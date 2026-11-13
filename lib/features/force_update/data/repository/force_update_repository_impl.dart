import 'package:exchange_caclculator/core/commons/app_info/app_info.dart';
import 'package:exchange_caclculator/core/handlers/react_handler.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_keys.dart';
import 'package:exchange_caclculator/features/force_update/domain/compare_versions.dart';
import 'package:exchange_caclculator/features/force_update/domain/repository/force_update_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ForceUpdateRepository)
class ForceUpdateRepositoryImpl implements ForceUpdateRepository {
  ForceUpdateRepositoryImpl({
    required RemoteConfig remoteConfig,
    required AppInfo appInfo,
  }) : _appInfo = appInfo,
       _remoteConfig = remoteConfig,
       _handler = _ForceUpdateFlagHandler() {
    _handler.notify(_evaluate(remoteConfig.configs));
    remoteConfig.listen((configs) => _handler.notify(_evaluate(configs)));
  }

  final AppInfo _appInfo;
  final RemoteConfig _remoteConfig;
  final ReactHandler<bool> _handler;

  @override
  bool get isForceUpdateRequired => _handler.currentValue ?? false;

  @override
  String get storeUrl => switch (_appInfo.platform) {
    AppStorePlatform.android => _readString(
      _remoteConfig.configs,
      RemoteConfigKeys.storeUrlAndroid,
    ),
    AppStorePlatform.ios => _readString(
      _remoteConfig.configs,
      RemoteConfigKeys.storeUrlIos,
    ),
    AppStorePlatform.other => '',
  };

  @override
  Future<void> listen(void Function({required bool isRequired}) onChange) {
    return _handler.listen((value) => onChange(isRequired: value));
  }

  bool _evaluate(Map<String, dynamic> configs) {
    final minRequiredVersion = switch (_appInfo.platform) {
      AppStorePlatform.android => _readString(
        configs,
        RemoteConfigKeys.minRequiredVersionAndroid,
      ),
      AppStorePlatform.ios => _readString(
        configs,
        RemoteConfigKeys.minRequiredVersionIos,
      ),
      AppStorePlatform.other => '0.0.0',
    };

    return requiresForceUpdate(
      currentVersion: _appInfo.version,
      minRequiredVersion: minRequiredVersion,
    );
  }

  static String _readString(Map<String, dynamic> configs, String key) {
    final value = configs[key];
    if (value is String) return value.trim();
    return '';
  }

  void dispose() => _handler.dispose();
}

class _ForceUpdateFlagHandler extends ReactHandler<bool> {}
