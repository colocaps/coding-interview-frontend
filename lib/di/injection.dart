import 'package:exchange_caclculator/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt getIt = GetIt.instance;
@InjectableInit()
Future<GetIt> configInjector(
  GetIt getIt, {
  String? env,
  EnvironmentFilter? environmentFilter,
}) async {
  return getIt.init(
    environmentFilter: environmentFilter,
    environment: env,
  );
}
