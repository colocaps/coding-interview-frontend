part of 'exchange_bloc.dart';

@immutable
sealed class ExchangeEvent {}

class InitialExchangeEvent extends ExchangeEvent {}

class GetCurrencyListEvent extends ExchangeEvent {
  final CurrencyType request;

  GetCurrencyListEvent({required this.request});
}

class SelectCurrencyListEvent extends ExchangeEvent {
  final CurrencyType type;

  SelectCurrencyListEvent({required this.type});
}

class SelectCurrencyEvent extends ExchangeEvent {
  final CurrencyType type;
  final CurrencyEntity currency;

  SelectCurrencyEvent({
    required this.type,
    required this.currency,
  });
}

class SelectExchangeTypeEvent extends ExchangeEvent {
  final CurrencyType type;

  SelectExchangeTypeEvent({required this.type});
}

class ExchangeValueChangedEvent extends ExchangeEvent {
  final num currencyValue;

  ExchangeValueChangedEvent({required this.currencyValue});
}

class GetExchangeRateEvent extends ExchangeEvent {
  final ExchangeRequest request;

  GetExchangeRateEvent({required this.request});
}
