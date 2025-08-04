import 'package:injectable/injectable.dart';

const development = Environment('development');
const production = Environment('production');
const mock = Environment('mock');

class Env {
  static String get baseUrl => const String.fromEnvironment('BASE_URL');
}
