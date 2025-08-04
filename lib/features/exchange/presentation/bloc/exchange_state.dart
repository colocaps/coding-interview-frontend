part of 'exchange_bloc.dart';

enum ExchangeStatus {
  initial,
  success,
  failure,
  loading,
}

@freezed
abstract class ExchangeState with _$ExchangeState {
  const factory ExchangeState({
    ExchangeStatus? status,
    DateTime? dateTime,
    @Default([]) List<CurrencyEntity> fiatCurrencyList,
    @Default([]) List<CurrencyEntity> cryptoCurrencyList,
  }) = _ExchangeState;
}
