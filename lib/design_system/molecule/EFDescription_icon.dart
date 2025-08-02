import 'package:exchange_caclculator/design_system/atom/EFIcon.dart';
import 'package:exchange_caclculator/design_system/atom/EFText.dart';
import 'package:flutter/material.dart';

class EFCurrencyDescriptionIcon extends StatelessWidget {
  const EFCurrencyDescriptionIcon({
    super.key,
    required this.currencyImage,
    required this.title,
    this.subtitle,
    this.maxFontSize = 12,
  });

  final Currency currencyImage;
  final String title;
  final String? subtitle;
  final double maxFontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          EFIcon(currencyImage: currencyImage),
          Title(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EFText(
                    text: title,
                    color: Colors.black,
                    maxFontSize: maxFontSize,
                  ),
                  if (subtitle != null)
                    EFText(
                      text: subtitle!,
                      color: Colors.grey,
                      maxFontSize: 8,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
