enum AppStorePlatform {
  android,
  ios,
  other,
}

/// Runtime identity of the installed app (version + store platform).
class AppInfo {
  const AppInfo({
    required this.version,
    required this.platform,
  });

  /// Marketing version from the native package (e.g. `1.0.0`), no build number.
  final String version;
  final AppStorePlatform platform;
}
