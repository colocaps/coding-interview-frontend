part of 'exchange_bloc.dart';

@immutable
sealed class ExchangeEvent {}

class InitialExchangeEvent extends ExchangeEvent {}

class GetCurrencyListEvent extends ExchangeEvent {
  GetCurrencyListEvent({required this.request});
  final CurrencyType request;
}

class SelectCurrencyListEvent extends ExchangeEvent {
  SelectCurrencyListEvent({required this.type});
  final CurrencyType type;
}

class SelectCurrencyEvent extends ExchangeEvent {
  SelectCurrencyEvent({
    required this.type,
    required this.currency,
  });
  final CurrencyType type;
  final CurrencyEntity currency;
}

class SelectExchangeTypeEvent extends ExchangeEvent {
  SelectExchangeTypeEvent({required this.type});
  final CurrencyType type;
}

class ExchangeValueChangedEvent extends ExchangeEvent {
  ExchangeValueChangedEvent({required this.currencyValue});
  final num currencyValue;
}

class GetExchangeRateEvent extends ExchangeEvent {
  GetExchangeRateEvent({required this.request});
  final ExchangeRequest request;
}
