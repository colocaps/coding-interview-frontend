import 'package:exchange_caclculator/features/exchange/domain/entity/currency_entity.dart';
import 'package:exchange_caclculator/features/exchange/domain/usecase/get_crypto_currencies.dart';
import 'package:exchange_caclculator/features/exchange/domain/usecase/get_exchange_usecase.dart';
import 'package:exchange_caclculator/features/exchange/domain/usecase/get_fiat_currencies_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_event.dart';
part 'exchange_state.dart';

part 'exchange_bloc.freezed.dart';

class ExchangeBloc extends Bloc<ExchangeEvent, ExchangeState> {
  ExchangeBloc({
    required this.getCryptoCurrenciesUsecase,
    required this.getExchangeUsecase,
    required this.getFiatCurrenciesUsecase,
  }) : super(ExchangeState()) {
    on<InitialExchangeEvent>(_onInitialExchange);
    on<GetFiatCurrencyList>(_onGetFiatCurrencyList);
    on<GetCryptoCurrencyList>(_onGetCryptoCurrencyList);
  }

  final GetCryptoCurrenciesUsecase getCryptoCurrenciesUsecase;
  final GetFiatCurrenciesUsecase getFiatCurrenciesUsecase;
  final GetExchangeUsecase getExchangeUsecase;

  void _onInitialExchange(
    InitialExchangeEvent event,
    Emitter<ExchangeState> emit,
  ) {
    emit(state.copyWith(
      status: ExchangeStatus.loading,
      dateTime: DateTime.now(),
    ));

    add(GetFiatCurrencyList());
    add(GetCryptoCurrencyList());
  }

  Future<void> _onGetFiatCurrencyList(
    GetFiatCurrencyList event,
    Emitter<ExchangeState> emit,
  ) async {
    final response = await getFiatCurrenciesUsecase();

    response.fold(
      (failure) => emit(state.copyWith(
        status: ExchangeStatus.failure,
        dateTime: DateTime.now(),
      )),
      (list) => emit(state.copyWith(
        status: ExchangeStatus.success,
        dateTime: DateTime.now(),
        fiatCurrencyList: list,
      )),
    );
  }

  Future<void> _onGetCryptoCurrencyList(
    GetCryptoCurrencyList event,
    Emitter<ExchangeState> emit,
  ) async {
    final response = await getCryptoCurrenciesUsecase();

    response.fold(
      (failure) => emit(state.copyWith(
        status: ExchangeStatus.failure,
        dateTime: DateTime.now(),
      )),
      (modelList) => emit(state.copyWith(
        status: ExchangeStatus.success,
        dateTime: DateTime.now(),
        cryptoCurrencyList: modelList,
      )),
    );
  }
}
