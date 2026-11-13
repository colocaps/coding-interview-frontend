import 'package:exchange_caclculator/core/commons/app_info/app_info.dart';
import 'package:exchange_caclculator/core/env/env.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

@Singleton(
  as: AppInfo,
  env: AppEnv.all,
)
class AppInfoImpl implements AppInfo {
  const AppInfoImpl({required this.version, required this.platform});

  @factoryMethod
  @preResolve
  static Future<AppInfo> create() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return AppInfoImpl(
      version: packageInfo.version,
      platform: resolvePlatform(),
    );
  }

  @override
  final String version;

  @override
  final AppStorePlatform platform;

  static AppStorePlatform resolvePlatform() {
    return switch (defaultTargetPlatform) {
      TargetPlatform.android => AppStorePlatform.android,
      TargetPlatform.iOS => AppStorePlatform.ios,
      _ => AppStorePlatform.other,
    };
  }
}
