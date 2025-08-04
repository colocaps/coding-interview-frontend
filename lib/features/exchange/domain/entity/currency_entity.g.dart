// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurrencyEntity _$CurrencyEntityFromJson(Map<String, dynamic> json) =>
    _CurrencyEntity(
      currencyId: json['currencyId'] as String,
      currencyName: json['currencyName'] as String,
      currencyDescription: json['currencyDescription'] as String?,
    );

Map<String, dynamic> _$CurrencyEntityToJson(_CurrencyEntity instance) =>
    <String, dynamic>{
      'currencyId': instance.currencyId,
      'currencyName': instance.currencyName,
      'currencyDescription': instance.currencyDescription,
    };
