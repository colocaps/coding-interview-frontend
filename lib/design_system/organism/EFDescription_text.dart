import 'package:exchange_caclculator/design_system/atom/EFText.dart';
import 'package:exchange_caclculator/design_system/molecule/EFComposed_text.dart';
import 'package:flutter/material.dart';

class EFDescriptionText extends StatelessWidget {
  const EFDescriptionText({
    super.key,
    required this.composedText,
    required this.text,
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
