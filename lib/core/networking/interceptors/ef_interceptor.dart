import 'package:dio/dio.dart';
import 'package:exchange_caclculator/core/networking/interceptors/base_interceptor.dart';
import 'package:injectable/injectable.dart';

@injectable
class EFInterceptor extends BaseInterceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options
      ..connectTimeout = const Duration(seconds: 30)
      ..receiveTimeout = const Duration(seconds: 30);
    options.headers['Content-Type'] = 'application/json';

    return super.onRequest(options, handler);
  }
}
