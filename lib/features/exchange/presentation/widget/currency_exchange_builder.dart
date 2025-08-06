import 'package:exchange_caclculator/design_system/atom/ef_icon.dart';
import 'package:exchange_caclculator/design_system/molecule/ef_description_icon.dart';
import 'package:exchange_caclculator/design_system/organism/ef_currency_exchange_selector.dart';
import 'package:exchange_caclculator/design_system/organism/ef_icon_selector.dart';
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart';
import 'package:exchange_caclculator/features/exchange/presentation/bloc/exchange_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyExchangeBuilder extends StatelessWidget {
  const CurrencyExchangeBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExchangeBloc, ExchangeState>(
      builder: (context, state) {
        if (state.selectedCryptoCurrency != null &&
            state.selectedFiatCurrency != null) {
          return EFCurrencyExchangeSelector(
            onTap: ({required bool isSwapped}) {
              context.read<ExchangeBloc>().add(
                    SelectExchangeTypeEvent(
                      type: isSwapped ? CurrencyType.fiat : CurrencyType.crypto,
                    ),
                  );
            },
            initialLeftCurrencySelector: EFIconSelector(
              currencyDescriptionIcon: EFCurrencyDescriptionIcon(
                title: state.selectedCryptoCurrency!.currencyName,
                currencyImage: Currency.fromString(
                  state.selectedCryptoCurrency!.currencyName,
                ),
                maxFontSize: 18,
              ),
              onTap: () {
                context.read<ExchangeBloc>().add(
                      SelectCurrencyListEvent(
                        type: CurrencyType.crypto,
                      ),
                    );
              },
            ),
            initialRightCurrencySelector: EFIconSelector(
              currencyDescriptionIcon: EFCurrencyDescriptionIcon(
                title: state.selectedFiatCurrency!.currencyName,
                currencyImage: Currency.fromString(
                  state.selectedFiatCurrency!.currencyName,
                ),
                maxFontSize: 18,
              ),
              onTap: () {
                context.read<ExchangeBloc>().add(
                      SelectCurrencyListEvent(
                        type: CurrencyType.fiat,
                      ),
                    );
              },
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
