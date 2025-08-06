import 'package:exchange_caclculator/design_system/atom/ef_text.dart';
import 'package:exchange_caclculator/design_system/theme/ef_colors.dart';
import 'package:flutter/material.dart';

class EFExchangeInput extends StatelessWidget {
  const EFExchangeInput({
    required this.controller,
    required this.currency,
    super.key,
  });
  final TextEditingController controller;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: EFColors.secondary, width: 1.5),
      ),
      height: 50,
      child: Row(
        children: [
          EFText(
            text: currency,
            color: EFColors.secondary,
          ),
          const SizedBox(width: 6),
          Expanded(
            child: TextField(
              controller: controller,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.symmetric(vertical: 12),
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
                hintText: '0.00',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
