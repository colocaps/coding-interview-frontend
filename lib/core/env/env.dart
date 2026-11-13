abstract final class AppEnv {
  static const development = 'development';
  static const production = 'production';
  static const mock = 'mock';

  /// Constante usable en anotaciones de injectable (`env:`).
  static const all = [development, production, mock];
}

enum AppEnvironment {
  development(AppEnv.development, bannerLabel: 'DEV'),
  production(AppEnv.production, bannerLabel: ''),
  mock(AppEnv.mock, bannerLabel: 'MOCK');

  const AppEnvironment(this.name, {required this.bannerLabel});

  final String name;

  final String bannerLabel;

  bool get isDevelopment => this == AppEnvironment.development;
  bool get isProduction => this == AppEnvironment.production;
  bool get isMock => this == AppEnvironment.mock;
  bool get showsBanner => bannerLabel.isNotEmpty;
}

class Env {
  static AppEnvironment? _current;

  static String get baseUrl => const String.fromEnvironment('BASE_URL');

  static AppEnvironment get current {
    final environment = _current;
    if (environment == null) {
      throw StateError(
        'Env no inicializado. Asigná Env.current desde el main del flavor.',
      );
    }
    return environment;
  }

  static set current(AppEnvironment environment) {
    _current = environment;
  }
}
