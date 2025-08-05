import 'package:exchange_caclculator/design_system/atom/EFIcon.dart';
import 'package:exchange_caclculator/design_system/molecule/EFButton.dart';
import 'package:exchange_caclculator/design_system/molecule/EFComposed_text.dart';
import 'package:exchange_caclculator/design_system/molecule/EFDescription_icon.dart';
import 'package:exchange_caclculator/design_system/molecule/EFEchange_Input.dart';
import 'package:exchange_caclculator/design_system/organism/EFBackground.dart';
import 'package:exchange_caclculator/design_system/organism/EFCurrency_exchange_selector.dart';
import 'package:exchange_caclculator/design_system/organism/EFDescription_text.dart';
import 'package:exchange_caclculator/design_system/organism/EFIcon_selector.dart';
import 'package:exchange_caclculator/design_system/organism/EFScaffold.dart';
import 'package:exchange_caclculator/features/exchange/data/datasource/exchange_datasource.dart';
import 'package:exchange_caclculator/features/exchange/presentation/bloc/exchange_bloc.dart';
import 'package:exchange_caclculator/features/exchange/presentation/widget/currency_exchange_builder.dart';
import 'package:exchange_caclculator/features/exchange/presentation/widget/currency_exchange_input_builder.dart';
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
                    CurrencyExchangeBuilder(),
                    SizedBox(height: 10),
                    CurrencyExchangeInputBuilder(),
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
