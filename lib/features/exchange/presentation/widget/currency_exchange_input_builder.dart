import 'package:easy_debounce/easy_debounce.dart';
import 'package:exchange_caclculator/design_system/molecule/EFEchange_Input.dart';
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart';
import 'package:exchange_caclculator/features/exchange/presentation/bloc/exchange_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyExchangeInputBuilder extends StatefulWidget {
  const CurrencyExchangeInputBuilder({
    super.key,
  });

  @override
  State<CurrencyExchangeInputBuilder> createState() =>
      _CurrencyExchangeInputBuilderState();
}

class _CurrencyExchangeInputBuilderState
    extends State<CurrencyExchangeInputBuilder> {
  final exchangeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    exchangeController.addListener(_onExchangeChanged);
  }

  @override
  void dispose() {
    exchangeController.dispose();
    super.dispose();
  }

  void _onExchangeChanged() {
    final text = exchangeController.text.trim();
    final value = num.tryParse(text);
    if (value != null) {
      EasyDebounce.debounce(
          'currencyExchange', const Duration(milliseconds: 500), () async {
        context.read<ExchangeBloc>().add(
              ExchangeValueChangedEvent(currencyValue: value),
            );
      });
    } else {
      // TODO manejar excepcion con un toast
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExchangeBloc, ExchangeState>(
      builder: (context, state) {
        return EFExchangeInput(
          controller: exchangeController,
          currency: state.currencyType == CurrencyType.crypto
              ? state.selectedCryptoCurrency?.currencyName ?? ''
              : state.selectedFiatCurrency?.currencyName ?? '',
        );
      },
    );
  }
}
