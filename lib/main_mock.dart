import 'package:exchange_caclculator/app/app.dart';
import 'package:exchange_caclculator/bootstrap.dart';
import 'package:exchange_caclculator/core/env/env.dart';

Future<void> main() async {
  await bootstrap(
    () => const App(),
    environment: AppEnvironment.mock,
  );
}
