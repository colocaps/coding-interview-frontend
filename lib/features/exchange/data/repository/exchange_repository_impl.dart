import 'package:dartz/dartz.dart';
import 'package:exchange_caclculator/core/base/base_repository.dart';
import 'package:exchange_caclculator/core/exceptions/custom_exceptions.dart';
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart';
import 'package:exchange_caclculator/features/exchange/data/model/request/exchange_request.dart';
import 'package:exchange_caclculator/features/exchange/data/model/response/currency_response.dart';
import 'package:exchange_caclculator/features/exchange/data/model/response/exchange_response.dart';
import 'package:exchange_caclculator/features/exchange/domain/repository/exchange_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ExchangeRepository)
class ExchangeRepositoryImpl extends BaseRepository
    implements ExchangeRepository {
  ExchangeRepositoryImpl({required ExchangeDatasource datasource})
      : _datasource = datasource;
  final ExchangeDatasource _datasource;

  @override
  Future<Either<CustomException, ExchangeResponse>> getExchangesRate({
    required ExchangeRequest request,
  }) async {
    return executeDataSource(
      function: () => _datasource.getExchanges(request: request),
    );
  }

  @override
  Future<Either<CustomException, List<CurrencyResponse>>> getCurrencies({
    required CurrencyType request,
  }) async {
    return executeDataSource(
      function: () => _datasource.getCurrencies(request: request),
    );
  }
}
