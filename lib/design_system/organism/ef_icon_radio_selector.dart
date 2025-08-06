import 'package:exchange_caclculator/design_system/molecule/ef_description_icon.dart';
import 'package:flutter/material.dart';

class EFIconRadioSelector<T> extends StatelessWidget {
  const EFIconRadioSelector({
    required this.currencyDescriptionIcon,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    super.key,
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
