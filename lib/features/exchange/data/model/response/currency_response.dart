import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_response.freezed.dart';
part 'currency_response.g.dart';

@freezed
abstract class CurrencyResponse with _$CurrencyResponse {
  const factory CurrencyResponse({
    required String currencyId,
    required String currencyName,
    String? currencyDescription,
  }) = _CurrencyResponse;

  factory CurrencyResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrencyResponseFromJson(json);
}
