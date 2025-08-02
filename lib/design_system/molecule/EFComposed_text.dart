import 'package:exchange_caclculator/design_system/atom/EFText.dart';
import 'package:flutter/material.dart';

class EFComposedText extends StatelessWidget {
  const EFComposedText({
    super.key,
    required this.suffixText,
    required this.middleText,
    this.prefixText,
  });

  final String suffixText;
  final String middleText;
  final String? prefixText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        spacing: 6,
        children: [
          prefixText != null
              ? EFText(
                  text: prefixText!,
                  color: Colors.black,
                  maxFontSize: 12,
                )
              : SizedBox.shrink(),
          EFText(text: middleText, color: Colors.black),
          EFText(text: suffixText, color: Colors.black, maxFontSize: 14),
        ],
      ),
    );
  }
}
