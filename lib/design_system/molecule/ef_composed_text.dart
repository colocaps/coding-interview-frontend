import 'package:exchange_caclculator/core/extensions/widget_extensions.dart';
import 'package:exchange_caclculator/design_system/atom/ef_text.dart';
import 'package:flutter/material.dart';

class EFComposedText extends StatelessWidget {
  const EFComposedText({
    required this.suffixText,
    required this.middleText,
    super.key,
    this.prefixText,
    this.isLoading = false,
  });

  final String suffixText;
  final String middleText;
  final String? prefixText;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        spacing: 6,
        children: [
          if (prefixText != null)
            EFText(
              text: prefixText!,
              color: Colors.black,
              maxFontSize: 12,
            )
          else
            const SizedBox.shrink(),
          EFText(text: middleText, color: Colors.black),
          EFText(text: suffixText, color: Colors.black, maxFontSize: 14),
        ],
      ).withShimmer(isLoading: isLoading),
    );
  }
}
