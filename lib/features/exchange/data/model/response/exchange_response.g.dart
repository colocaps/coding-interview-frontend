// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExchangeResponse _$ExchangeResponseFromJson(Map<String, dynamic> json) =>
    _ExchangeResponse(
      data: ExchangeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExchangeResponseToJson(_ExchangeResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_ExchangeData _$ExchangeDataFromJson(Map<String, dynamic> json) =>
    _ExchangeData(
      byPrice: CurrencyPrice.fromJson(json['byPrice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExchangeDataToJson(_ExchangeData instance) =>
    <String, dynamic>{
      'byPrice': instance.byPrice,
    };

_CurrencyPrice _$CurrencyPriceFromJson(Map<String, dynamic> json) =>
    _CurrencyPrice(
      fiatToCryptoExchangeRate: json['fiatToCryptoExchangeRate'] as num,
    );

Map<String, dynamic> _$CurrencyPriceToJson(_CurrencyPrice instance) =>
    <String, dynamic>{
      'fiatToCryptoExchangeRate': instance.fiatToCryptoExchangeRate,
    };
