import 'package:exchange_caclculator/core/api/api_result.dart';
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart';
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource_impl.dart';
import 'package:exchange_caclculator/features/exchange/data/model/response/currency_response.dart';
import 'package:exchange_caclculator/features/exchange/data/model/response/exchange_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../mocks/features/exchange/data/request/exchange_request_mock.dart';
import '../../../../mocks/features/exchange/data/request/exchange_response_mock.dart';
import '../../../../mocks/helpers/test_mocks_helpers.mocks.dart';

void main() {
  late ExchangeDatasourceImpl datasource;
  late MockExchangeService mockService;

  setUp(() {
    mockService = MockExchangeService();
    datasource = ExchangeDatasourceImpl(service: mockService);
  });

  group('ExchangeDatasourceImpl', () {
    group('getExchanges', () {
      test('should return ApiResult.success with ExchangeResponse', () async {
        // arrange

        when(
          mockService.getExchangesRate(
            exchangeRequestMock.type,
            exchangeRequestMock.cryptoCurrencyId,
            exchangeRequestMock.fiatCurrencyId,
            exchangeRequestMock.amount,
            exchangeRequestMock.amountCurrencyId,
          ),
        ).thenAnswer((_) async => exchangeResponseMock);

        // act
        final result =
            await datasource.getExchanges(request: exchangeRequestMock);

        // assert
        expect(result, isA<ApiResult<ExchangeResponse>>());
        result.when(
          success: (data) => expect(data, exchangeResponseMock),
          failure: (_) => fail('Should not fail'),
        );
      });
    });

    group('getCurrencies', () {
      test('should return fiat currencies', () async {
        // act
        final result =
            await datasource.getCurrencies(request: CurrencyType.fiat);

        // assert
        expect(result, isA<ApiResult<List<CurrencyResponse>>>());
        result.when(
          success: (data) {
            expect(data.length, 4);
            expect(data.first.currencyName, 'VES');
          },
          failure: (_) => fail('Should not fail'),
        );
      });

      test('should return crypto currencies', () async {
        // act
        final result =
            await datasource.getCurrencies(request: CurrencyType.crypto);

        // assert
        expect(result, isA<ApiResult<List<CurrencyResponse>>>());
        result.when(
          success: (data) {
            expect(data.length, 2);
            expect(data.first.currencyName, 'USDT');
          },
          failure: (_) => fail('Should not fail'),
        );
      });
    });
  });
}
