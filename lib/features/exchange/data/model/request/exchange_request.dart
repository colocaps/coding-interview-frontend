import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_request.freezed.dart';
part 'exchange_request.g.dart';

@freezed
abstract class ExchangeRequest with _$ExchangeRequest {
  const factory ExchangeRequest({
    required String type,
    required String cryptoCurrencyId,
    required String fiatCurrencyId,
    required String amount,
    required String amountCurrencyId,
  }) = _ExchangeRequest;

  factory ExchangeRequest.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRequestFromJson(json);
}
