// ignore_for_file: one_member_abstracts

import 'package:dio/dio.dart';
import 'package:exchange_caclculator/features/exchange/data/model/response/exchange_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'exchange_service.g.dart';

@singleton
@RestApi()
abstract class ExchangeService {
  @factoryMethod
  factory ExchangeService(Dio dio) = _ExchangeService;

  @GET('stage/orderbook/public/recommendations')
  Future<ExchangeResponse> getExchanges(
    @Query('type') String type,
    @Query('cryptoCurrencyId') String cryptoCurrencyId,
    @Query('fiatCurrencyId') String fiatCurrencyId,
    @Query('amount') String amount,
    @Query('amountCurrencyId') String amountCurrencyId,
  );
}
