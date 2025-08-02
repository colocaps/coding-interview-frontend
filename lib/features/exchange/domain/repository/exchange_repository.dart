import 'package:dartz/dartz.dart';
import 'package:exchange_caclculator/core/exceptions/custom_exceptions.dart';
import 'package:exchange_caclculator/features/exchange/data/model/request/exchange_request.dart';
import 'package:exchange_caclculator/features/exchange/data/model/response/exchange_response.dart';

abstract class ExchangeRepository {
  Future<Either<CustomException, ExchangeResponse>> getExchange(
      {required ExchangeRequest request});
}
