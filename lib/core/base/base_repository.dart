import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:exchange_caclculator/core/api/api_result.dart';
import 'package:exchange_caclculator/core/exceptions/custom_exceptions.dart';

abstract class BaseRepository {
  Future<Either<CustomException, RESP>> executeDataSource<RESP>({
    required Future<ApiResult<RESP>> Function() function,
  }) async {
    try {
      final result = await function();

      return result.when(
        success: (value) {
          return Right(value);
        },
        failure: (error) {
          throw error;
        },
      );
    } on CustomException catch (e) {
      log('Error in BaseRepository DataError: $e');
      return Left(CustomException(e.exceptionMapper, statusCode: e.statusCode));
    } catch (e) {
      log('Error in BaseRepository Exception: $e');
      return Left(CustomException(ExceptionMapper(message: e.toString())));
    }
  }
}
