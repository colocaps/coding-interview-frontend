import 'package:json_annotation/json_annotation.dart';
part 'custom_exceptions.g.dart';

class CustomExceptions {
  static CustomException fromStatusCode(
    int? statusCode,
    ExceptionMapper data,
  ) {
    switch (statusCode) {
      case 400:
        return BadRequestException(data, statusCode: statusCode);
      case 401:
        return UnauthorizedException(data, statusCode: statusCode);
      case 403:
        return ForbiddenException(data, statusCode: statusCode);
      case 404:
        return NotFoundException(data, statusCode: statusCode);
      case 500:
        return ServerErrorException(data, statusCode: statusCode);
      case 422:
        return BadRequestException(data, statusCode: statusCode);
      default:
        return CustomException(data, statusCode: statusCode);
    }
  }
}

class CustomException implements Exception {
  CustomException(this.exceptionMapper, {this.statusCode});
  final ExceptionMapper exceptionMapper;
  final int? statusCode;

  ExceptionMapper get exception => exceptionMapper;
}

class BadRequestException extends CustomException {
  BadRequestException(super.exceptionMapper, {super.statusCode});
}

class NotExistentException extends CustomException {
  NotExistentException(super.exceptionMapper, {super.statusCode});
}

class UnauthorizedException extends CustomException {
  UnauthorizedException(super.exceptionMapper, {super.statusCode});
}

class ForbiddenException extends CustomException {
  ForbiddenException(super.exceptionMapper, {super.statusCode});
}

class NotFoundException extends CustomException {
  NotFoundException(super.exceptionMapper, {super.statusCode});
}

class ServerErrorException extends CustomException {
  ServerErrorException(super.exceptionMapper, {super.statusCode});
}

@JsonSerializable()
class ExceptionMapper {
  ExceptionMapper({
    this.message,
    this.statusCode,
  });

  factory ExceptionMapper.fromJson(Map<String, dynamic> json) =>
      _$ExceptionMapperFromJson(json);
  final String? message;
  final int? statusCode;

  Map<String, dynamic> toJson() => _$ExceptionMapperToJson(this);
}
