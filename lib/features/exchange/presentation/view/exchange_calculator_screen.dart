import 'package:exchange_caclculator/design_system/atom/EFIcon.dart';
import 'package:exchange_caclculator/design_system/molecule/EFDescription_icon.dart';
import 'package:exchange_caclculator/design_system/organism/EFBottom_sheet.dart';
import 'package:exchange_caclculator/design_system/organism/EFIcon_radio_selector.dart';
import 'package:exchange_caclculator/di/injection.dart';
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart';
import 'package:exchange_caclculator/features/exchange/domain/entity/currency_entity.dart';
import 'package:exchange_caclculator/features/exchange/domain/usecase/get_currencies.dart';
import 'package:exchange_caclculator/features/exchange/domain/usecase/get_exchange_rate_usecase.dart';
import 'package:exchange_caclculator/features/exchange/presentation/bloc/exchange_bloc.dart';
import 'package:exchange_caclculator/features/exchange/presentation/view/exchange_calculator_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ExchangeCalculatorScreen extends StatelessWidget {
  const ExchangeCalculatorScreen({super.key});

  static const routePath = '/exchange-calculator-screen';
  static const routeName = 'exchange-calculator-screen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExchangeBloc(
        getCurrenciesUsecase: getIt<GetCurrenciesUsecase>(),
        getExchangeRateUsecase: getIt<GetExchangeRateUsecase>(),
      )..add(InitialExchangeEvent()),
      child: BlocListener<ExchangeBloc, ExchangeState>(
        listener: (context, state) async {
          if (state.status == ExchangeStatus.showFiatCurrencies) {
            await _showCurrencyBottomSheet(
              context: context,
              title: 'FIAT',
              items: state.fiatCurrencyList,
              selected: state.selectedFiatCurrency,
              type: CurrencyType.fiat,
            );
          } else if (state.status == ExchangeStatus.showCryptoCurrencies) {
            await _showCurrencyBottomSheet(
              context: context,
              title: 'Crypto',
              items: state.cryptoCurrencyList,
              selected: state.selectedCryptoCurrency,
              type: CurrencyType.crypto,
            );
          }
        },
        child: const ExchangeCalculatorPage(),
      ),
    );
  }

  Future<void> _showCurrencyBottomSheet({
    required BuildContext context,
    required String title,
    required List<CurrencyEntity> items,
    required CurrencyEntity? selected,
    required CurrencyType type,
  }) async {
    await showEFBottomSheet<EFIconRadioSelector>(
      isSearchInputVisible: false,
      title: title,
      context: context,
      items: items
          .map(
            (currencyEntity) => EFIconRadioSelector<CurrencyEntity>(
              currencyDescriptionIcon: EFCurrencyDescriptionIcon(
                title: currencyEntity.currencyName,
                subtitle: currencyEntity.currencyDescription,
                currencyImage: Currency.fromString(currencyEntity.currencyName),
              ),
              value: currencyEntity,
              groupValue: selected,
              onChanged: (currency) {
                if (currency != null) {
                  context.read<ExchangeBloc>().add(
                        SelectCurrencyEvent(
                          type: type,
                          currency: currency,
                        ),
                      );
                  context.pop();
                }
              },
            ),
          )
          .toList(),
      itemWidgetBuilder: (value) => value,
    );
  }
}
