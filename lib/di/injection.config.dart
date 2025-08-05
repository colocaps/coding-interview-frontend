// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:exchange_caclculator/core/networking/interceptors/ef_interceptor.dart'
    as _i870;
import 'package:exchange_caclculator/core/networking/modules/logger_module.dart'
    as _i970;
import 'package:exchange_caclculator/core/networking/modules/network_module.dart'
    as _i687;
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart'
    as _i655;
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource_impl.dart'
    as _i578;
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource_mock_impl.dart'
    as _i579;
import 'package:exchange_caclculator/features/exchange/data/repository/exchange_repository_impl.dart'
    as _i815;
import 'package:exchange_caclculator/features/exchange/data/service/exchange_service.dart'
    as _i129;
import 'package:exchange_caclculator/features/exchange/domain/repository/exchange_repository.dart'
    as _i851;
import 'package:exchange_caclculator/features/exchange/domain/usecase/get_crypto_currencies.dart'
    as _i482;
import 'package:exchange_caclculator/features/exchange/domain/usecase/get_exchange_usecase.dart'
    as _i198;
import 'package:exchange_caclculator/features/exchange/domain/usecase/get_fiat_currencies_usecase.dart'
    as _i831;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i528;

const String _mock = 'mock';
const String _development = 'development';
const String _production = 'production';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final loggerModule = _$LoggerModule();
    final networkModule = _$NetworkModule();
    gh.factory<_i528.PrettyDioLogger>(() => loggerModule.prettyDioLogger);
    gh.factory<_i870.EFInterceptor>(() => _i870.EFInterceptor());
    gh.lazySingleton<_i974.Logger>(() => loggerModule.logger);
    gh.singleton<_i655.ExchangeDatasource>(
      () => _i579.ExchangeDatasourceMockImpl(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i361.Dio>(() => networkModule.efDio(
          gh<_i870.EFInterceptor>(),
          gh<_i528.PrettyDioLogger>(),
        ));
    gh.factory<_i851.ExchangeRepository>(() => _i815.ExchangeRepositoryImpl(
        datasource: gh<_i655.ExchangeDatasource>()));
    gh.factory<_i198.GetExchangeUsecase>(
        () => _i198.GetExchangeUsecase(gh<_i851.ExchangeRepository>()));
    gh.factory<_i831.GetFiatCurrenciesUsecase>(
        () => _i831.GetFiatCurrenciesUsecase(gh<_i851.ExchangeRepository>()));
    gh.factory<_i482.GetCryptoCurrenciesUsecase>(
        () => _i482.GetCryptoCurrenciesUsecase(gh<_i851.ExchangeRepository>()));
    gh.singleton<_i129.ExchangeService>(
        () => _i129.ExchangeService(gh<_i361.Dio>()));
    gh.singleton<_i655.ExchangeDatasource>(
      () => _i578.ExchangeDatasourceImpl(service: gh<_i129.ExchangeService>()),
      registerFor: {
        _development,
        _production,
      },
    );
    return this;
  }
}

class _$LoggerModule extends _i970.LoggerModule {}

class _$NetworkModule extends _i687.NetworkModule {}
