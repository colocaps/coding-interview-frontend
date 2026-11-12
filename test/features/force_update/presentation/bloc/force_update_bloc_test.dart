import 'package:bloc_test/bloc_test.dart';
import 'package:exchange_caclculator/core/app_info/app_info.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_keys.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_mock_impl.dart';
import 'package:exchange_caclculator/features/force_update/data/repository/force_update_repository_impl.dart';
import 'package:exchange_caclculator/features/force_update/presentation/bloc/force_update_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late RemoteConfigMockImpl remoteConfig;
  late ForceUpdateRepositoryImpl repository;

  const appInfo = AppInfo(
    version: '1.0.0',
    platform: AppStorePlatform.android,
  );

  setUp(() {
    remoteConfig = RemoteConfigMockImpl();
    repository = ForceUpdateRepositoryImpl(
      remoteConfig: remoteConfig,
      appInfo: appInfo,
    );
  });

  tearDown(() {
    repository.dispose();
    remoteConfig.dispose();
  });

  blocTest<ForceUpdateBloc, ForceUpdateState>(
    'emits active then inactive when min android version crosses current',
    build: () => ForceUpdateBloc(repository: repository),
    act: (bloc) async {
      bloc.add(ForceUpdateStarted());
      await Future<void>.delayed(Duration.zero);
      remoteConfig.updateValues({
        RemoteConfigKeys.minRequiredVersionAndroid: '1.0.1',
        RemoteConfigKeys.storeUrlAndroid: 'https://play.google.com/store',
      });
      await Future<void>.delayed(Duration.zero);
      remoteConfig.updateValues({
        RemoteConfigKeys.minRequiredVersionAndroid: '1.0.0',
      });
    },
    wait: const Duration(milliseconds: 10),
    expect: () => const [
      ForceUpdateState(),
      ForceUpdateState(
        status: ForceUpdateStatus.active,
        storeUrl: 'https://play.google.com/store',
      ),
      ForceUpdateState(storeUrl: 'https://play.google.com/store'),
    ],
  );

  blocTest<ForceUpdateBloc, ForceUpdateState>(
    'uses ios min version and store url when platform is ios',
    build: () {
      remoteConfig = RemoteConfigMockImpl.fromJson({
        RemoteConfigKeys.minRequiredVersionAndroid: '0.0.0',
        RemoteConfigKeys.minRequiredVersionIos: '2.0.0',
        RemoteConfigKeys.storeUrlIos: 'https://apps.apple.com/app/id1',
      });
      return ForceUpdateBloc(
        repository: ForceUpdateRepositoryImpl(
          remoteConfig: remoteConfig,
          appInfo: const AppInfo(
            version: '1.0.0',
            platform: AppStorePlatform.ios,
          ),
        ),
      );
    },
    act: (bloc) => bloc.add(ForceUpdateStarted()),
    expect: () => const [
      ForceUpdateState(
        status: ForceUpdateStatus.active,
        storeUrl: 'https://apps.apple.com/app/id1',
      ),
    ],
  );

  blocTest<ForceUpdateBloc, ForceUpdateState>(
    'ignores the other platform min version',
    build: () {
      remoteConfig = RemoteConfigMockImpl.fromJson({
        RemoteConfigKeys.minRequiredVersionAndroid: '9.0.0',
        RemoteConfigKeys.minRequiredVersionIos: '0.0.0',
      });
      return ForceUpdateBloc(
        repository: ForceUpdateRepositoryImpl(
          remoteConfig: remoteConfig,
          appInfo: const AppInfo(
            version: '1.0.0',
            platform: AppStorePlatform.ios,
          ),
        ),
      );
    },
    act: (bloc) => bloc.add(ForceUpdateStarted()),
    expect: () => const [ForceUpdateState()],
  );
}
