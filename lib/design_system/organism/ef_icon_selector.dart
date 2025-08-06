import 'package:exchange_caclculator/design_system/molecule/ef_description_icon.dart';
import 'package:flutter/material.dart';

class EFIconSelector extends StatelessWidget {
  const EFIconSelector({
    required this.currencyDescriptionIcon,
    required this.onTap,
    super.key,
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
          const Icon(Icons.keyboard_arrow_down_sharp, size: 20),
        ],
      ),
    );
  }
}
