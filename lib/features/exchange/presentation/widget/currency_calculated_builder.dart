import 'package:exchange_caclculator/design_system/molecule/ef_composed_text.dart';
import 'package:exchange_caclculator/design_system/organism/ef_description_text.dart';
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart';
import 'package:exchange_caclculator/features/exchange/presentation/bloc/exchange_bloc.dart';
import 'package:exchange_caclculator/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyCalculatedFeeBuilder extends StatelessWidget {
  const CurrencyCalculatedFeeBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExchangeBloc, ExchangeState>(
      builder: (context, state) {
        return EFDescriptionText(
          text: context.l10n.youWillReceive,
          composedText: EFComposedText(
            isLoading: state.status == ExchangeStatus.loading,
            prefixText: context.l10n.equalSign,
            middleText: state.calculatedAmount != null
                ? state.calculatedAmount!.toStringAsFixed(4)
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
