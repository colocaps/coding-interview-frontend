import 'package:exchange_caclculator/design_system/atom/ef_text.dart';
import 'package:exchange_caclculator/design_system/molecule/ef_composed_text.dart';
import 'package:flutter/material.dart';

class EFDescriptionText extends StatelessWidget {
  const EFDescriptionText({
    required this.composedText,
    required this.text,
    super.key,
  });

  final EFComposedText composedText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          EFText(text: text, color: Colors.grey),
          composedText,
        ],
      ),
    );
  }
}
