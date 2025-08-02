// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorResponseModelImpl _$$ErrorResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ErrorResponseModelImpl(
      error: ErrorContent.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ErrorResponseModelImplToJson(
        _$ErrorResponseModelImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$ErrorContentImpl _$$ErrorContentImplFromJson(Map<String, dynamic> json) =>
    _$ErrorContentImpl(
      message: json['message'] as String,
      code: (json['code'] as num).toInt(),
      stack: json['stack'] as String?,
    );

Map<String, dynamic> _$$ErrorContentImplToJson(_$ErrorContentImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'stack': instance.stack,
    };
