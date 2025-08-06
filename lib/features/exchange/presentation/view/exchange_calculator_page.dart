import 'package:exchange_caclculator/design_system/molecule/ef_button.dart';
import 'package:exchange_caclculator/design_system/molecule/ef_composed_text.dart';
import 'package:exchange_caclculator/design_system/organism/ef_background.dart';
import 'package:exchange_caclculator/design_system/organism/ef_description_text.dart';
import 'package:exchange_caclculator/design_system/organism/ef_scaffold.dart';
import 'package:exchange_caclculator/features/exchange/presentation/widget/currency_calculated_builder.dart';
import 'package:exchange_caclculator/features/exchange/presentation/widget/currency_estimated_fee_builder.dart';
import 'package:exchange_caclculator/features/exchange/presentation/widget/currency_exchange_builder.dart';
import 'package:exchange_caclculator/features/exchange/presentation/widget/currency_exchange_input_builder.dart';
import 'package:exchange_caclculator/l10n/l10n.dart';
import 'package:flutter/material.dart';

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
                    const CurrencyExchangeBuilder(),
                    const SizedBox(height: 10),
                    const CurrencyExchangeInputBuilder(),
                    const SizedBox(height: 20),
                    const CurrencyEstimatedFeeBuilder(),
                    const SizedBox(height: 10),
                    const CurrencyCalculatedFeeBuilder(),
                    const SizedBox(height: 10),
                    EFDescriptionText(
                      text: context.l10n.estimatedTime,
                      composedText: EFComposedText(
                        prefixText: context.l10n.equalSign,
                        middleText: context.l10n.ten,
                        suffixText: context.l10n.min,
                      ),
                    ),
                    const SizedBox(height: 20),
                    EFButton(onPressed: () {}, title: context.l10n.change),
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
