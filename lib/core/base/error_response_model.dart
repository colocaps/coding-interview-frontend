import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_response_model.freezed.dart';
part 'error_response_model.g.dart';

@freezed
class ErrorResponseModel with _$ErrorResponseModel {
  const factory ErrorResponseModel({
    required ErrorContent error,
  }) = _ErrorResponseModel;

  factory ErrorResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseModelFromJson(json);
}

@freezed
class ErrorContent with _$ErrorContent {
  const factory ErrorContent({
    required String message,
    required int code,
    String? stack,
  }) = _ErrorContent;

  factory ErrorContent.fromJson(Map<String, dynamic> json) =>
      _$ErrorContentFromJson(json);
}
