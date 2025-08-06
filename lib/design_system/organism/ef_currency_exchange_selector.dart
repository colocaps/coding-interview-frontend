import 'package:exchange_caclculator/design_system/atom/ef_rounded_button.dart';
import 'package:exchange_caclculator/design_system/atom/ef_text.dart';
import 'package:exchange_caclculator/design_system/theme/ef_colors.dart';
import 'package:exchange_caclculator/l10n/l10n.dart';
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
  late final ValueNotifier<Widget> leftCurrencySelectorNotifier;
  late final ValueNotifier<Widget> rightCurrencySelectorNotifier;
  bool isSwapped = false;

  @override
  void initState() {
    super.initState();
    leftCurrencySelectorNotifier =
        ValueNotifier(widget.initialLeftCurrencySelector);
    rightCurrencySelectorNotifier =
        ValueNotifier(widget.initialRightCurrencySelector);
  }

  @override
  void didUpdateWidget(covariant EFCurrencyExchangeSelector oldWidget) {
    super.didUpdateWidget(oldWidget);

    final newLeft = widget.initialLeftCurrencySelector;
    final newRight = widget.initialRightCurrencySelector;

    if (!isSwapped) {
      leftCurrencySelectorNotifier.value = newLeft;
      rightCurrencySelectorNotifier.value = newRight;
    } else {
      leftCurrencySelectorNotifier.value = newRight;
      rightCurrencySelectorNotifier.value = newLeft;
    }
  }

  void _swapCurrencies() {
    final temp = leftCurrencySelectorNotifier.value;
    leftCurrencySelectorNotifier.value = rightCurrencySelectorNotifier.value;
    rightCurrencySelectorNotifier.value = temp;
    isSwapped = !isSwapped;

    widget.onTap?.call(isSwapped: isSwapped);
  }

  @override
  void dispose() {
    leftCurrencySelectorNotifier.dispose();
    rightCurrencySelectorNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(
              color: EFColors.secondary,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Row(
            children: [
              ValueListenableBuilder<Widget>(
                valueListenable: leftCurrencySelectorNotifier,
                builder: (_, widget, __) => widget,
              ),
              const SizedBox(width: 70),
              ValueListenableBuilder<Widget>(
                valueListenable: rightCurrencySelectorNotifier,
                builder: (_, widget, __) => widget,
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
            child: EFText(
              text: context.l10n.have,
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
            child: EFText(
              text: context.l10n.want,
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
                  onTap: _swapCurrencies,
                ),
          ),
        ),
      ],
    );
  }
}
