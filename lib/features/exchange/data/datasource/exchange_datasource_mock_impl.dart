import 'package:exchange_caclculator/core/api/api_result.dart';
import 'package:exchange_caclculator/core/base/base_datasource.dart';
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart';
import 'package:exchange_caclculator/features/exchange/data/model/request/exchange_request.dart';
import 'package:exchange_caclculator/features/exchange/data/model/response/exchange_response.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ExchangeDatasource, env: ['mock'])
class ExchangeDatasourceMockImpl extends BaseDataSource
    implements ExchangeDatasource {
  @override
  Future<ApiResult<ExchangeResponse>> getExchanges({
    required ExchangeRequest request,
  }) async {
    return executeRequest(
      function: () async {
        return ExchangeResponse(
            data: ExchangeData(
                byPrice: CurrencyPrice(fiatToCryptoExchangeRate: '1000')));
      },
    );
  }
}
