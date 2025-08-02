import 'package:exchange_caclculator/design_system/molecule/EFDescription_icon.dart';
import 'package:flutter/material.dart';

class EfIconSelector extends StatelessWidget {
  const EfIconSelector({
    super.key,
    required this.currencyDescriptionIcon,
    required this.onTap,
  });

  final EFCurrencyDescriptionIcon currencyDescriptionIcon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        currencyDescriptionIcon,
        GestureDetector(
          onTap: onTap,
          child: const Icon(Icons.keyboard_arrow_down_sharp, size: 25),
        ),
      ],
    );
  }
}
