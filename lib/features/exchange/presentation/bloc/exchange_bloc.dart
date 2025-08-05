import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart';
import 'package:exchange_caclculator/features/exchange/domain/entity/currency_entity.dart';
import 'package:exchange_caclculator/features/exchange/domain/usecase/get_currencies.dart';
import 'package:exchange_caclculator/features/exchange/domain/usecase/get_exchange_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_event.dart';
part 'exchange_state.dart';

part 'exchange_bloc.freezed.dart';

class ExchangeBloc extends Bloc<ExchangeEvent, ExchangeState> {
  ExchangeBloc({
    required this.getCurrenciesUsecase,
    required this.getExchangeUsecase,
  }) : super(ExchangeState()) {
    on<InitialExchangeEvent>(_onInitialExchange);
    on<GetCurrencyListEvent>(_onGetCurrencyList);
    on<SelectCurrencyListEvent>(_selectCurrencyList);
    on<SelectCurrencyEvent>(_selectCurrency);
    on<ExchangeValueChangedEvent>(_setCurrencyValue);
    on<SelectExchangeTypeEvent>(_setCurrencyType);
  }

  final GetCurrenciesUsecase getCurrenciesUsecase;
  final GetExchangeUsecase getExchangeUsecase;

  Future<void> _setCurrencyType(
    SelectExchangeTypeEvent event,
    Emitter<ExchangeState> emit,
  ) async {
    emit(state.copyWith(
      currencyType: event.type,
      dateTime: DateTime.now(),
    ));
  }

  Future<void> _setCurrencyValue(
    ExchangeValueChangedEvent event,
    Emitter<ExchangeState> emit,
  ) async {
    emit(state.copyWith(
      exhangeAmount: event.currencyValue,
      dateTime: DateTime.now(),
    ));
  }

  Future<void> _selectCurrencyList(
    SelectCurrencyListEvent event,
    Emitter<ExchangeState> emit,
  ) async {
    emit(state.copyWith(
      status: event.type == CurrencyType.crypto
          ? ExchangeStatus.showCryptoCurrencies
          : ExchangeStatus.showFiatCurrencies,
      dateTime: DateTime.now(),
    ));
  }

  Future<void> _selectCurrency(
    SelectCurrencyEvent event,
    Emitter<ExchangeState> emit,
  ) async {
    if (event.type == CurrencyType.crypto) {
      emit(state.copyWith(
        selectedCryptoCurrency: event.currency,
        status: ExchangeStatus.currencySelected,
        dateTime: DateTime.now(),
      ));
      return;
    }
    if (event.type == CurrencyType.fiat) {
      emit(state.copyWith(
        selectedFiatCurrency: event.currency,
        status: ExchangeStatus.currencySelected,
        dateTime: DateTime.now(),
      ));
      return;
    }
  }

  Future<void> _onInitialExchange(
    InitialExchangeEvent event,
    Emitter<ExchangeState> emit,
  ) async {
    emit(state.copyWith(
      status: ExchangeStatus.loading,
      dateTime: DateTime.now(),
    ));

    add(GetCurrencyListEvent(request: CurrencyType.crypto));
    add(GetCurrencyListEvent(request: CurrencyType.fiat));
  }

  Future<void> _onGetCurrencyList(
    GetCurrencyListEvent event,
    Emitter<ExchangeState> emit,
  ) async {
    final response = await getCurrenciesUsecase(request: event.request);

    response.fold((failure) {
      emit(
        state.copyWith(
          status: ExchangeStatus.failure,
          dateTime: DateTime.now(),
        ),
      );
    }, (list) {
      if (event.request == CurrencyType.crypto) {
        emit(state.copyWith(
          dateTime: DateTime.now(),
          cryptoCurrencyList: list,
          selectedCryptoCurrency: list.first,
          currencyType: CurrencyType.crypto,
        ));
      } else if (event.request == CurrencyType.fiat) {
        emit(state.copyWith(
          dateTime: DateTime.now(),
          fiatCurrencyList: list,
          selectedFiatCurrency: list.first,
        ));
      }
    });
  }
}
