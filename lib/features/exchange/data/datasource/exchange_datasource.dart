import 'package:exchange_caclculator/core/api/api_result.dart';
import 'package:exchange_caclculator/features/exchange/data/model/request/exchange_request.dart';
import 'package:exchange_caclculator/features/exchange/data/model/response/exchange_response.dart';

abstract class ExchangeDatasource {
  Future<ApiResult<ExchangeResponse>> getExchanges(
      {required ExchangeRequest request});
}
