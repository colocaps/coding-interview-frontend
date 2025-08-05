import 'package:exchange_caclculator/design_system/organism/EFBackground.dart';
import 'package:exchange_caclculator/design_system/organism/EFScaffold.dart';
import 'package:flutter/material.dart';

class ExchangeCalculatorPage extends StatelessWidget {
  const ExchangeCalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EFScaffold(
      body: EFBackgound(),
    );
  }
}
