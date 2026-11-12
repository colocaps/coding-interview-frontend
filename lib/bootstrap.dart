import 'dart:async';
import 'dart:developer';

import 'package:exchange_caclculator/core/app_info/app_info.dart';
import 'package:exchange_caclculator/core/env/env.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_mock_impl.dart';
import 'package:exchange_caclculator/di/injection.config.dart';
import 'package:exchange_caclculator/di/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(
  FutureOr<Widget> Function() builder, {
  required AppEnvironment environment,
}) async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  Env.current = environment;
  getIt.init(environment: environment.name);

  await _registerAppInfo();

  if (environment.isMock) {
    await _registerMockRemoteConfig();
  }

  runApp(await builder());
}

Future<void> _registerAppInfo() async {
  final packageInfo = await PackageInfo.fromPlatform();
  final appInfo = AppInfo(
    version: packageInfo.version,
    platform: _resolvePlatform(),
  );
  log(
    'AppInfo registered: version=${appInfo.version}, '
    'platform=${appInfo.platform.name}',
  );
  if (getIt.isRegistered<AppInfo>()) {
    await getIt.unregister<AppInfo>();
  }
  getIt.registerSingleton<AppInfo>(appInfo);
}

AppStorePlatform _resolvePlatform() {
  return switch (defaultTargetPlatform) {
    TargetPlatform.android => AppStorePlatform.android,
    TargetPlatform.iOS => AppStorePlatform.ios,
    _ => AppStorePlatform.other,
  };
}

/// Loads `assets/mock/remote_config.json` before any feature resolves
/// [RemoteConfig].
Future<void> _registerMockRemoteConfig() async {
  final remoteConfig = await RemoteConfigMockImpl.loadFromAsset();
  log(
    'Mock remote config loaded from ${RemoteConfigMockImpl.assetPath}: '
    '${remoteConfig.values}',
  );
  if (getIt.isRegistered<RemoteConfig>()) {
    await getIt.unregister<RemoteConfig>();
  }
  getIt.registerSingleton<RemoteConfig>(remoteConfig);
}
