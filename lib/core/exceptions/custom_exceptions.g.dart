// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_exceptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExceptionMapper _$ExceptionMapperFromJson(Map<String, dynamic> json) =>
    ExceptionMapper(
      message: json['message'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ExceptionMapperToJson(ExceptionMapper instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
    };
