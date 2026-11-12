import 'package:exchange_caclculator/app/app.dart';
import 'package:exchange_caclculator/bootstrap.dart';
import 'package:exchange_caclculator/core/env/env.dart';

void main() {
  bootstrap(
    () => const App(),
    environment: AppEnvironment.production,
  );
}
