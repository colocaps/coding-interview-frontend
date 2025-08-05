import 'package:exchange_caclculator/design_system/molecule/EFDescription_icon.dart';
import 'package:flutter/material.dart';

class EFIconRadioSelector<T> extends StatelessWidget {
  const EFIconRadioSelector({
    super.key,
    required this.currencyDescriptionIcon,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  final EFCurrencyDescriptionIcon currencyDescriptionIcon;
  final T value;
  final T? groupValue;
  final ValueChanged<T?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        children: [
          currencyDescriptionIcon,
          const Spacer(),
          Radio<T?>(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
