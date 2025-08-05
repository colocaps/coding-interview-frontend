import 'package:dio/dio.dart';
import 'package:exchange_caclculator/core/env/env.dart';
import 'package:exchange_caclculator/core/networking/interceptors/ef_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class NetworkModule {
  Dio _baseDio(Interceptor apiInterceptor, PrettyDioLogger logger) {
    final dio = Dio();
    final baseUrl = Env.baseUrl;
    dio.options.baseUrl = baseUrl;
    dio.interceptors.add(apiInterceptor);
    if (!kReleaseMode) {
      dio.interceptors.add(logger);
    }
    return dio;
  }

  @lazySingleton
  Dio efDio(EFInterceptor interceptor, PrettyDioLogger logger) {
    return _baseDio(interceptor, logger);
  }
}
