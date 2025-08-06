import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_response.freezed.dart';
part 'exchange_response.g.dart';

@freezed
abstract class ExchangeResponse with _$ExchangeResponse {
  const factory ExchangeResponse({
    required ExchangeData data,
  }) = _ExchangeResponse;

  factory ExchangeResponse.fromJson(Map<String, dynamic> json) =>
      _$ExchangeResponseFromJson(json);
}

@freezed
abstract class ExchangeData with _$ExchangeData {
  const factory ExchangeData({
    required CurrencyPrice byPrice,
  }) = _ExchangeData;

  factory ExchangeData.fromJson(Map<String, dynamic> json) =>
      _$ExchangeDataFromJson(json);
}

@freezed
abstract class CurrencyPrice with _$CurrencyPrice {
  const factory CurrencyPrice({
    required String fiatToCryptoExchangeRate,
  }) = _CurrencyPrice;

  factory CurrencyPrice.fromJson(Map<String, dynamic> json) =>
      _$CurrencyPriceFromJson(json);
}
