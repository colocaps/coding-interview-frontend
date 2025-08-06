import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_request.freezed.dart';
part 'exchange_request.g.dart';

@freezed
abstract class ExchangeRequest with _$ExchangeRequest {
  const factory ExchangeRequest({
    required String type,
    required String fiatCurrencyId,
    required num amount,
    required String amountCurrencyId,
    @Default('TATUM-TRON-USDT') String cryptoCurrencyId,
  }) = _ExchangeRequest;

  factory ExchangeRequest.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRequestFromJson(json);
}
