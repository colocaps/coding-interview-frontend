// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExchangeRequest _$ExchangeRequestFromJson(Map<String, dynamic> json) =>
    _ExchangeRequest(
      type: json['type'] as String,
      cryptoCurrencyId: json['cryptoCurrencyId'] as String,
      fiatCurrencyId: json['fiatCurrencyId'] as String,
      amount: json['amount'] as num,
      amountCurrencyId: json['amountCurrencyId'] as String,
    );

Map<String, dynamic> _$ExchangeRequestToJson(_ExchangeRequest instance) =>
    <String, dynamic>{
      'type': instance.type,
      'cryptoCurrencyId': instance.cryptoCurrencyId,
      'fiatCurrencyId': instance.fiatCurrencyId,
      'amount': instance.amount,
      'amountCurrencyId': instance.amountCurrencyId,
    };
