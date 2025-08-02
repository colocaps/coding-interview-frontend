import 'package:exchange_caclculator/core/api/api_result.dart';
import 'package:exchange_caclculator/core/base/base_datasource.dart';
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart';
import 'package:exchange_caclculator/features/exchange/data/model/request/exchange_request.dart';
import 'package:exchange_caclculator/features/exchange/data/model/response/exchange_response.dart';
import 'package:exchange_caclculator/features/exchange/data/service/exchange_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ExchangeDatasource)
class ExchangeDatasourceImpl extends BaseDataSource
    implements ExchangeDatasource {
  ExchangeDatasourceImpl({required this.service});

  final ExchangeService service;

  @override
  Future<ApiResult<ExchangeResponse>> getExchanges({
    required ExchangeRequest request,
  }) async {
    return executeRequest(
      function: () async {
        return service.getExchanges(
          request.type,
          request.cryptoCurrencyId,
          request.fiatCurrencyId,
          request.amount,
          request.amountCurrencyId,
        );
      },
    );
  }
}
