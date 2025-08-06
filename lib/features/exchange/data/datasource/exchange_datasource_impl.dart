import 'package:exchange_caclculator/core/api/api_result.dart';
import 'package:exchange_caclculator/core/base/base_datasource.dart';
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart';
import 'package:exchange_caclculator/features/exchange/data/model/request/exchange_request.dart';
import 'package:exchange_caclculator/features/exchange/data/model/response/currency_response.dart';
import 'package:exchange_caclculator/features/exchange/data/model/response/exchange_response.dart';
import 'package:exchange_caclculator/features/exchange/data/service/exchange_service.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ExchangeDatasource, env: ['development', 'production'])
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
        return service.getExchangesRate(
          request.type,
          request.cryptoCurrencyId,
          request.fiatCurrencyId,
          request.amount,
          request.amountCurrencyId,
        );
      },
    );
  }

  @override
  Future<ApiResult<List<CurrencyResponse>>> getCurrencies({
    required CurrencyType request,
  }) {
    switch (request) {
      case CurrencyType.fiat:
        final list = [
          const CurrencyResponse(
            currencyId: '1',
            currencyName: 'VES',
            currencyDescription: 'Bolivares (Bs)',
          ),
          const CurrencyResponse(
            currencyId: '2',
            currencyName: 'COP',
            currencyDescription: r'Pesos Colombianos (COL$)',
          ),
          const CurrencyResponse(
            currencyId: '3',
            currencyName: 'ARS',
            currencyDescription: r'Pesos Argentinos (ARS$)',
          ),
          const CurrencyResponse(
            currencyId: '4',
            currencyName: 'BRL',
            currencyDescription: r'Real Brasileño (R$)',
          ),
        ];

        return executeRequest(
          function: () async {
            return list;
          },
        );
      case CurrencyType.crypto:
        final list = [
          const CurrencyResponse(
            currencyId: '6',
            currencyName: 'USDT',
            currencyDescription: 'Teher (USDT)',
          ),
          const CurrencyResponse(
            currencyId: '7',
            currencyName: 'USDC',
            currencyDescription: 'USDC Coin (USDC)',
          ),
        ];

        return executeRequest(
          function: () async {
            return list;
          },
        );
    }
  }
}
