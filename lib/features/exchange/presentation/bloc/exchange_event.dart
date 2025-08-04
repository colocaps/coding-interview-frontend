part of 'exchange_bloc.dart';

@immutable
sealed class ExchangeEvent {}

class InitialExchangeEvent extends ExchangeEvent {}

class GetFiatCurrencyList extends ExchangeEvent {}

class GetCryptoCurrencyList extends ExchangeEvent {}
