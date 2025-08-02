// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ErrorResponseModel _$ErrorResponseModelFromJson(Map<String, dynamic> json) =>
    _ErrorResponseModel(
      error: ErrorContent.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ErrorResponseModelToJson(_ErrorResponseModel instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_ErrorContent _$ErrorContentFromJson(Map<String, dynamic> json) =>
    _ErrorContent(
      message: json['message'] as String,
      code: (json['code'] as num).toInt(),
      stack: json['stack'] as String?,
    );

Map<String, dynamic> _$ErrorContentToJson(_ErrorContent instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'stack': instance.stack,
    };
