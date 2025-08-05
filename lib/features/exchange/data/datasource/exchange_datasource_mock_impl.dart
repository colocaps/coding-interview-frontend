import 'package:exchange_caclculator/core/api/api_result.dart';
import 'package:exchange_caclculator/core/base/base_datasource.dart';
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart';
import 'package:exchange_caclculator/features/exchange/data/model/request/exchange_request.dart';
import 'package:exchange_caclculator/features/exchange/data/model/response/currency_response.dart';
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
                byPrice: CurrencyPrice(fiatToCryptoExchangeRate: 1000)));
      },
    );
  }

  @override
  Future<ApiResult<List<CurrencyResponse>>> getCurrencies(
      {required CurrencyType request}) {
    switch (request) {
      case CurrencyType.fiat:
        final list = [
          CurrencyResponse(
              currencyId: '1',
              currencyName: 'VES',
              currencyDescription: 'Bolivares (Bs)'),
          CurrencyResponse(
              currencyId: '2',
              currencyName: 'COP',
              currencyDescription: 'Pesos Colombianos (COL\$)'),
          CurrencyResponse(
              currencyId: '3',
              currencyName: 'ARS',
              currencyDescription: 'Pesos Argentinos (ARS\$)'),
          CurrencyResponse(
              currencyId: '4',
              currencyName: 'BRL',
              currencyDescription: 'Real Brasileño (R\$)'),
        ];

        return executeRequest(
          function: () async {
            return list;
          },
        );
      case CurrencyType.crypto:
        final list = [
          CurrencyResponse(
              currencyId: '6',
              currencyName: 'USDT',
              currencyDescription: 'Teher (USDT)'),
          CurrencyResponse(
              currencyId: '7',
              currencyName: 'USDC',
              currencyDescription: 'USDC Coin (USDC)'),
        ];

        return executeRequest(
          function: () async {
            return list;
          },
        );
    }
  }
}
