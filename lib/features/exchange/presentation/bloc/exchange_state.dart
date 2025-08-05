part of 'exchange_bloc.dart';

enum ExchangeStatus {
  initial,
  success,
  failure,
  loading,
  showCryptoCurrencies,
  showFiatCurrencies,
  currencySelected,
}

@freezed
abstract class ExchangeState with _$ExchangeState {
  const factory ExchangeState({
    ExchangeStatus? status,
    DateTime? dateTime,
    @Default([]) List<CurrencyEntity> fiatCurrencyList,
    @Default([]) List<CurrencyEntity> cryptoCurrencyList,
    CurrencyEntity? selectedFiatCurrency,
    CurrencyEntity? selectedCryptoCurrency,
  }) = _ExchangeState;
}
