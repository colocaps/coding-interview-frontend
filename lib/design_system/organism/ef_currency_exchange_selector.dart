import 'package:exchange_caclculator/design_system/atom/ef_rounded_button.dart';
import 'package:exchange_caclculator/design_system/atom/ef_text.dart';
import 'package:exchange_caclculator/design_system/theme/ef_colors.dart';
import 'package:flutter/material.dart';

class EFCurrencyExchangeSelector extends StatefulWidget {
  const EFCurrencyExchangeSelector({
    required this.initialLeftCurrencySelector,
    required this.initialRightCurrencySelector,
    super.key,
    this.centerSwapButton,
    this.onTap,
  });

  final Widget initialLeftCurrencySelector;
  final Widget initialRightCurrencySelector;
  final Widget? centerSwapButton;
  final void Function({required bool isSwapped})? onTap;

  @override
  State<EFCurrencyExchangeSelector> createState() =>
      _EFCurrencyExchangeSelectorState();
}

class _EFCurrencyExchangeSelectorState
    extends State<EFCurrencyExchangeSelector> {
  late Widget leftCurrencySelector;
  late Widget rightCurrencySelector;
  bool isSwapped = false;

  @override
  void initState() {
    super.initState();
    leftCurrencySelector = widget.initialLeftCurrencySelector;
    rightCurrencySelector = widget.initialRightCurrencySelector;
  }

  @override
  void didUpdateWidget(covariant EFCurrencyExchangeSelector oldWidget) {
    super.didUpdateWidget(oldWidget);

    final newLeft = widget.initialLeftCurrencySelector;
    final newRight = widget.initialRightCurrencySelector;

    if (!isSwapped) {
      leftCurrencySelector = newLeft;
      rightCurrencySelector = newRight;
    } else {
      leftCurrencySelector = newRight;
      rightCurrencySelector = newLeft;
    }
  }

  void _swapCurrencies() {
    setState(() {
      final temp = leftCurrencySelector;
      leftCurrencySelector = rightCurrencySelector;
      rightCurrencySelector = temp;
      isSwapped = !isSwapped;
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const EFText(
              text: 'TENGO',
              color: Colors.grey,
              maxFontSize: 12,
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 50,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const EFText(
              text: 'QIUERO',
              color: Colors.grey,
              maxFontSize: 12,
            ),
          ),
        ),
        Positioned(
          top: 4,
          left: 0,
          right: 0,
          child: Align(
            child: widget.centerSwapButton ??
                EFRoundedButton(
                  onTap: () {
                    _swapCurrencies();
                    widget.onTap?.call(isSwapped: isSwapped);
                  },
                ),
          ),
        ),
      ],
    );
  }
}
