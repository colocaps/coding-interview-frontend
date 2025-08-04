import 'package:exchange_caclculator/features/exchange/data/model/response/currency_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_entity.freezed.dart';
part 'currency_entity.g.dart';

@freezed
abstract class CurrencyEntity with _$CurrencyEntity {
  const factory CurrencyEntity({
    required String currencyId,
    required String currencyName,
    String? currencyDescription,
  }) = _CurrencyEntity;

  factory CurrencyEntity.fromJson(Map<String, dynamic> json) =>
      _$CurrencyEntityFromJson(json);
}

extension CurrencyResponseExtension on CurrencyResponse {
  CurrencyEntity toEntity() {
    return CurrencyEntity(
      currencyId: currencyId,
      currencyName: currencyName,
      currencyDescription: currencyDescription,
    );
  }
}
