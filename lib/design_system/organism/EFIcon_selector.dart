import 'package:exchange_caclculator/design_system/molecule/EFDescription_icon.dart';
import 'package:flutter/material.dart';

class EFIconSelector extends StatelessWidget {
  const EFIconSelector({
    super.key,
    required this.currencyDescriptionIcon,
    required this.onTap,
  });

  final EFCurrencyDescriptionIcon currencyDescriptionIcon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          currencyDescriptionIcon,
          const Icon(Icons.keyboard_arrow_down_sharp, size: 25),
        ],
      ),
    );
  }
}
