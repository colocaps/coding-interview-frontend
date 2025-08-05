import 'package:exchange_caclculator/design_system/molecule/EFComposed_text.dart';
import 'package:exchange_caclculator/design_system/organism/EFDescription_text.dart';
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart';
import 'package:exchange_caclculator/features/exchange/presentation/bloc/exchange_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyCalculatedFeeBuilder extends StatelessWidget {
  const CurrencyCalculatedFeeBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExchangeBloc, ExchangeState>(
      builder: (context, state) {
        return EFDescriptionText(
          text: 'Recibiras',
          composedText: EFComposedText(
            isLoading: state.status == ExchangeStatus.loading,
            prefixText: '≈',
            middleText: state.calculatedAmount != null
                ? '${state.calculatedAmount}'
                : '....',
            suffixText: state.currencyType == CurrencyType.crypto
                ? state.selectedFiatCurrency?.currencyName ?? ''
                : state.selectedCryptoCurrency?.currencyName ?? '',
          ),
        );
      },
    );
  }
}
