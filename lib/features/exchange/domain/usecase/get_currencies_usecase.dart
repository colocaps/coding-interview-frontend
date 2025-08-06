import 'package:dartz/dartz.dart';
import 'package:exchange_caclculator/core/exceptions/custom_exceptions.dart';
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart';
import 'package:exchange_caclculator/features/exchange/domain/entity/currency_entity.dart';
import 'package:exchange_caclculator/features/exchange/domain/repository/exchange_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCurrenciesUsecase {
  GetCurrenciesUsecase(this._repository);

  final ExchangeRepository _repository;

  Future<Either<CustomException, List<CurrencyEntity>>> call({
    required CurrencyType request,
  }) async {
    final result = await _repository.getCurrencies(request: request);

    return result.map((response) => response.map((e) => e.toEntity()).toList());
  }
}
