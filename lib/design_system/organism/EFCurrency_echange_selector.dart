import 'package:exchange_caclculator/design_system/atom/EFRounded_button.dart';
import 'package:exchange_caclculator/design_system/theme/EFColors.dart';
import 'package:flutter/material.dart';

class EFCurrencyExchangeSelector extends StatefulWidget {
  final Widget initialLeftCurrencySelector;
  final Widget initialRightCurrencySelector;
  final Widget? centerSwapButton;

  const EFCurrencyExchangeSelector({
    Key? key,
    required this.initialLeftCurrencySelector,
    required this.initialRightCurrencySelector,
    this.centerSwapButton,
  }) : super(key: key);

  @override
  State<EFCurrencyExchangeSelector> createState() =>
      _EFCurrencyExchangeSelectorState();
}

class _EFCurrencyExchangeSelectorState
    extends State<EFCurrencyExchangeSelector> {
  late Widget leftCurrencySelector;
  late Widget rightCurrencySelector;

  @override
  void initState() {
    super.initState();
    leftCurrencySelector = widget.initialLeftCurrencySelector;
    rightCurrencySelector = widget.initialRightCurrencySelector;
  }

  void _swapCurrencies() {
    setState(() {
      final temp = leftCurrencySelector;
      leftCurrencySelector = rightCurrencySelector;
      rightCurrencySelector = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: EFColors.secondary,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Row(
            spacing: 60,
            children: [
              Expanded(
                child: leftCurrencySelector,
              ),
              Expanded(
                child: rightCurrencySelector,
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 50,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Text(
              'TENGO',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 50,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              'QUIERO',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
        Positioned(
          top: 4,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.center,
            child: widget.centerSwapButton ??
                EFRoundedButton(
                  onTap: _swapCurrencies,
                ),
          ),
        ),
      ],
    );
  }
}
