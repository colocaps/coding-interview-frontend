import 'package:bloc_test/bloc_test.dart';
import 'package:exchange_caclculator/core/commons/app_info/app_info.dart';
import 'package:exchange_caclculator/core/commons/app_info/app_info_impl.dart';
import 'package:exchange_caclculator/core/commons/url_launcher/url_launcher.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_keys.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_mock_impl.dart';
import 'package:exchange_caclculator/features/force_update/data/repository/force_update_repository_impl.dart';
import 'package:exchange_caclculator/features/force_update/presentation/bloc/force_update_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeUrlLauncher implements UrlLauncher {
  final openedUrls = <String>[];

  @override
  Future<bool> open(String url) async {
    openedUrls.add(url);
    return true;
  }
}

void main() {
  late RemoteConfigMockImpl remoteConfig;
  late ForceUpdateRepositoryImpl repository;
  late _FakeUrlLauncher urlLauncher;

  const appInfo = AppInfoImpl(
    version: '1.0.0',
    platform: AppStorePlatform.android,
  );

  setUp(() {
    remoteConfig = RemoteConfigMockImpl();
    repository = ForceUpdateRepositoryImpl(
      remoteConfig: remoteConfig,
      appInfo: appInfo,
    );
    urlLauncher = _FakeUrlLauncher();
  });

  tearDown(() {
    repository.dispose();
    remoteConfig.dispose();
  });

  ForceUpdateBloc buildBloc() =>
      ForceUpdateBloc(repository: repository, urlLauncher: urlLauncher);

  blocTest<ForceUpdateBloc, ForceUpdateState>(
    'emits active then inactive when min android version crosses current',
    build: buildBloc,
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
          appInfo: const AppInfoImpl(
            version: '1.0.0',
            platform: AppStorePlatform.ios,
          ),
        ),
        urlLauncher: urlLauncher,
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
          appInfo: const AppInfoImpl(
            version: '1.0.0',
            platform: AppStorePlatform.ios,
          ),
        ),
        urlLauncher: urlLauncher,
      );
    },
    act: (bloc) => bloc.add(ForceUpdateStarted()),
    expect: () => const [ForceUpdateState()],
  );

  blocTest<ForceUpdateBloc, ForceUpdateState>(
    'opens the store url through UrlLauncher',
    build: () {
      remoteConfig = RemoteConfigMockImpl.fromJson({
        RemoteConfigKeys.minRequiredVersionAndroid: '2.0.0',
        RemoteConfigKeys.storeUrlAndroid: 'https://play.google.com/store',
      });
      repository = ForceUpdateRepositoryImpl(
        remoteConfig: remoteConfig,
        appInfo: appInfo,
      );
      return buildBloc();
    },
    act: (bloc) async {
      bloc.add(ForceUpdateStarted());
      await Future<void>.delayed(Duration.zero);
      bloc.add(ForceUpdateOpenStorePressed());
    },
    wait: const Duration(milliseconds: 10),
    expect: () => const [
      ForceUpdateState(
        status: ForceUpdateStatus.active,
        storeUrl: 'https://play.google.com/store',
      ),
    ],
    verify: (_) {
      expect(urlLauncher.openedUrls, ['https://play.google.com/store']);
    },
  );
}
