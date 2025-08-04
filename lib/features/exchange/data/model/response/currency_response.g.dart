// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurrencyResponse _$CurrencyResponseFromJson(Map<String, dynamic> json) =>
    _CurrencyResponse(
      currencyId: json['currencyId'] as String,
      currencyName: json['currencyName'] as String,
      currencyDescription: json['currencyDescription'] as String?,
    );

Map<String, dynamic> _$CurrencyResponseToJson(_CurrencyResponse instance) =>
    <String, dynamic>{
      'currencyId': instance.currencyId,
      'currencyName': instance.currencyName,
      'currencyDescription': instance.currencyDescription,
    };
