import 'package:exchange_caclculator/features/exchange/data/model/response/exchange_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_entity.freezed.dart';
part 'exchange_entity.g.dart';

@freezed
abstract class ExchangeEntity with _$ExchangeEntity {
  const factory ExchangeEntity({
    required num exchangeRate,
  }) = _ExchangeEntity;

  factory ExchangeEntity.fromJson(Map<String, dynamic> json) =>
      _$ExchangeEntityFromJson(json);
}

extension ExchangeResponseExtension on ExchangeResponse {
  ExchangeEntity toEntity() {
    return ExchangeEntity(
      exchangeRate: data.byPrice.fiatToCryptoExchangeRate,
    );
  }
}
