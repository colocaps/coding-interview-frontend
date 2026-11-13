enum AppStorePlatform { android, ios, other }

abstract class AppInfo {
  String get version;
  AppStorePlatform get platform;
}
