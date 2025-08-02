import 'package:exchange_caclculator/design_system/atom/EFIcon.dart';
import 'package:exchange_caclculator/design_system/atom/EFRounded_button.dart';
import 'package:exchange_caclculator/design_system/molecule/EFButton.dart';
import 'package:exchange_caclculator/design_system/molecule/EFComposed_text.dart';
import 'package:exchange_caclculator/design_system/molecule/EFDescription_icon.dart';
import 'package:exchange_caclculator/design_system/molecule/EFEchange_Input.dart';
import 'package:exchange_caclculator/design_system/organism/EFDescription_text.dart';
import 'package:exchange_caclculator/design_system/organism/EFIcon_radio_selector.dart';
import 'package:exchange_caclculator/design_system/organism/EFIcon_selector.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routePath = '/home-screen';
  static const routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          EFButton(onPressed: () {}, title: 'Cambiar'),
          EFExchangeInput(
            controller: TextEditingController(),
            currency: 'USDT',
          ),
          EFIcon(currencyImage: Currency.brl),
          EFRoundedButton(),
          EFDescriptionText(
            text: 'Tasa estimada',
            composedText: EFComposedText(
              prefixText: '≈',
              middleText: '25.00',
              suffixText: 'VES',
            ),
          ),
          EFCurrencyDescriptionIcon(
            title: 'USDT',
            currencyImage: Currency.usdt,
          ),
          EFCurrencyDescriptionIcon(
            title: 'VES',
            currencyImage: Currency.cop,
            subtitle: 'Bolivares (Bs)',
          ),
          EfIconSelector(
            currencyDescriptionIcon: EFCurrencyDescriptionIcon(
              title: 'VES',
              currencyImage: Currency.cop,
            ),
            onTap: () {},
          ),
          EFIconRadioSelector<String>(
            currencyDescriptionIcon: EFCurrencyDescriptionIcon(
              title: 'VES',
              subtitle: 'Bolivares (Bs)',
              currencyImage: Currency.cop,
            ),
            value: 'item',
            groupValue: selectedValue ?? '',
            onChanged: (val) {},
          )
        ],
      ),
    );
  }
}
