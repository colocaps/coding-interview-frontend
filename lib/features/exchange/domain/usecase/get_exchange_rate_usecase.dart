import 'package:dartz/dartz.dart';
import 'package:exchange_caclculator/core/exceptions/custom_exceptions.dart';
import 'package:exchange_caclculator/features/exchange/data/model/request/exchange_request.dart';
import 'package:exchange_caclculator/features/exchange/domain/entity/exchange_entity.dart';
import 'package:exchange_caclculator/features/exchange/domain/repository/exchange_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetExchangeRateUsecase {
  GetExchangeRateUsecase(this._repository);

  final ExchangeRepository _repository;

  Future<Either<CustomException, ExchangeEntity>> call(
      {required ExchangeRequest request}) async {
    final result = await _repository.getExchangesRate(request: request);

    return result.map((response) => response.toEntity());
  }
}
