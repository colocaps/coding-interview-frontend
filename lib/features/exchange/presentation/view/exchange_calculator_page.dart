import 'package:exchange_caclculator/design_system/atom/EFIcon.dart';
import 'package:exchange_caclculator/design_system/molecule/EFButton.dart';
import 'package:exchange_caclculator/design_system/molecule/EFComposed_text.dart';
import 'package:exchange_caclculator/design_system/molecule/EFDescription_icon.dart';
import 'package:exchange_caclculator/design_system/molecule/EFEchange_Input.dart';
import 'package:exchange_caclculator/design_system/organism/EFBackground.dart';
import 'package:exchange_caclculator/design_system/organism/EFCurrency_echange_selector.dart';
import 'package:exchange_caclculator/design_system/organism/EFDescription_text.dart';
import 'package:exchange_caclculator/design_system/organism/EFIcon_selector.dart';
import 'package:exchange_caclculator/design_system/organism/EFScaffold.dart';
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart';
import 'package:exchange_caclculator/features/exchange/presentation/bloc/exchange_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExchangeCalculatorPage extends StatelessWidget {
  const ExchangeCalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EFScaffold(
      body: EFBackgound(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 26),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BlocBuilder<ExchangeBloc, ExchangeState>(
                      builder: (context, state) {
                        if (state.selectedCryptoCurrency != null &&
                            state.selectedFiatCurrency != null) {
                          print(
                              'selectedCurrency state:${state.selectedFiatCurrency}');
                          return EFCurrencyExchangeSelector(
                            onTap: () {
                              //TODO : evento para cambiar el type
                            },
                            initialLeftCurrencySelector: EFIconSelector(
                              currencyDescriptionIcon:
                                  EFCurrencyDescriptionIcon(
                                title:
                                    state.selectedCryptoCurrency!.currencyName,
                                currencyImage: Currency.fromString(
                                    state.selectedCryptoCurrency!.currencyName),
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
                              currencyDescriptionIcon:
                                  EFCurrencyDescriptionIcon(
                                title: state.selectedFiatCurrency!.currencyName,
                                currencyImage: Currency.fromString(
                                    state.selectedFiatCurrency!.currencyName),
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
                        return SizedBox.shrink();
                      },
                    ),
                    SizedBox(height: 10),
                    EFExchangeInput(
                      controller: TextEditingController(),
                      currency: 'USDT',
                    ),
                    SizedBox(height: 20),
                    EFDescriptionText(
                      text: 'Tasa estimada',
                      composedText: EFComposedText(
                        prefixText: '≈',
                        middleText: '25.00',
                        suffixText: 'VES',
                      ),
                    ),
                    SizedBox(height: 10),
                    EFDescriptionText(
                      text: 'Recibiras',
                      composedText: EFComposedText(
                        prefixText: '≈',
                        middleText: '125.00',
                        suffixText: 'VES',
                      ),
                    ),
                    SizedBox(height: 10),
                    EFDescriptionText(
                      text: 'Tiempo estimado',
                      composedText: EFComposedText(
                        prefixText: '≈',
                        middleText: '10',
                        suffixText: 'Min',
                      ),
                    ),
                    SizedBox(height: 20),
                    EFButton(onPressed: () {}, title: 'Cambiar'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
