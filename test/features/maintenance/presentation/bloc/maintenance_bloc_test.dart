import 'package:bloc_test/bloc_test.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_keys.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_mock_impl.dart';
import 'package:exchange_caclculator/features/maintenance/data/repository/maintenance_repository_impl.dart';
import 'package:exchange_caclculator/features/maintenance/presentation/bloc/maintenance_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late RemoteConfigMockImpl remoteConfig;
  late MaintenanceRepositoryImpl repository;

  setUp(() {
    remoteConfig = RemoteConfigMockImpl();
    repository = MaintenanceRepositoryImpl(remoteConfig: remoteConfig);
  });

  tearDown(() {
    repository.dispose();
    remoteConfig.dispose();
  });

  blocTest<MaintenanceBloc, MaintenanceState>(
    'emits active then inactive when the remote flag toggles',
    build: () => MaintenanceBloc(repository: repository),
    act: (bloc) async {
      bloc.add(MaintenanceStarted());
      await Future<void>.delayed(Duration.zero);
      remoteConfig.updateValues({RemoteConfigKeys.isMaintenanceMode: true});
      await Future<void>.delayed(Duration.zero);
      remoteConfig.updateValues({RemoteConfigKeys.isMaintenanceMode: false});
    },
    wait: const Duration(milliseconds: 10),
    expect: () => const [
      MaintenanceState(),
      MaintenanceState(status: MaintenanceStatus.active),
      MaintenanceState(),
    ],
  );

  blocTest<MaintenanceBloc, MaintenanceState>(
    'starts active when seeded from json map',
    build: () {
      remoteConfig = RemoteConfigMockImpl.fromJson({
        RemoteConfigKeys.isMaintenanceMode: true,
      });
      return MaintenanceBloc(
        repository: MaintenanceRepositoryImpl(remoteConfig: remoteConfig),
      );
    },
    act: (bloc) => bloc.add(MaintenanceStarted()),
    expect: () => const [
      MaintenanceState(status: MaintenanceStatus.active),
    ],
  );
}
