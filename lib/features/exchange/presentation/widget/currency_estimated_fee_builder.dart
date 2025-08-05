import 'package:exchange_caclculator/design_system/molecule/EFComposed_text.dart';
import 'package:exchange_caclculator/design_system/organism/EFDescription_text.dart';
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart';
import 'package:exchange_caclculator/features/exchange/presentation/bloc/exchange_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyEstimatedFeeBuilder extends StatelessWidget {
  const CurrencyEstimatedFeeBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExchangeBloc, ExchangeState>(
      builder: (context, state) {
        return EFDescriptionText(
          text: 'Tasa estimada',
          composedText: EFComposedText(
            prefixText: '≈',
            middleText:
                state.exchangeRate != null ? '${state.exchangeRate}' : '....',
            suffixText: state.currencyType == CurrencyType.crypto
                ? state.selectedFiatCurrency?.currencyName ?? ''
                : state.selectedCryptoCurrency?.currencyName ?? '',
          ),
        );
      },
    );
  }
}
