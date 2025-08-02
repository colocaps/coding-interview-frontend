import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:exchange_caclculator/core/api/api_result.dart';
import 'package:exchange_caclculator/core/base/error_response_model.dart';
import 'package:exchange_caclculator/core/exceptions/custom_exceptions.dart';

abstract class BaseDataSource {
  Future<ApiResult<T>> executeRequest<T>({
    required Future<T> Function() function,
    Future<void> Function()? onUnauthorized,
  }) async {
    try {
      final apiResult = await function();
      return ApiResult.success(data: apiResult);
    } on DioException catch (e) {
      try {
        log('error>$e');
        final responseData = e.response?.data;

        if (responseData is Map<String, dynamic>) {
          final error = responseData['error'];

          if (error is String) {
            // error es un String simple
            final dataException = CustomExceptions.fromStatusCode(
              e.response!.statusCode ?? 0,
              ExceptionMapper(
                message: error,
                statusCode: e.response!.statusCode ?? 0,
              ),
            );

            if (dataException is UnauthorizedException) {
              await handleUnauthorized();
            }

            return ApiResult.failure(exceptions: dataException);
          } else if (error is Map<String, dynamic>) {
            final errorResponse = ErrorResponseModel.fromJson(responseData);
            final message = errorResponse.error.message;
            final code = errorResponse.error.code;

            final dataException = CustomExceptions.fromStatusCode(
              code,
              ExceptionMapper(message: message, statusCode: code),
            );

            if (dataException is UnauthorizedException) {
              await handleUnauthorized();
            }

            return ApiResult.failure(exceptions: dataException);
          }
        }

        // fallback si no se puede mapear el error
        return ApiResult.failure(
          exceptions: CustomException(
            ExceptionMapper(
              message: e.message,
              statusCode: e.response?.statusCode ?? 0,
            ),
          ),
        );
      } catch (_) {
        // Si falla el parseo JSON o cualquier cosa
        return ApiResult.failure(
          exceptions: CustomException(
            ExceptionMapper(
              message: e.message,
              statusCode: e.response?.statusCode ?? 0,
            ),
          ),
        );
      }
    } catch (e) {
      return ApiResult.failure(
        exceptions: CustomException(
          ExceptionMapper(
            message: e.toString(),
            statusCode: 420,
          ),
        ),
      );
    }
  }

  Future<void> handleUnauthorized() async {
    //TODO manage unauthorized
  }
}
