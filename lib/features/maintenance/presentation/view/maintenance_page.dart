import 'package:exchange_caclculator/design_system/atom/ef_text.dart';
import 'package:exchange_caclculator/design_system/organism/ef_background.dart';
import 'package:exchange_caclculator/design_system/organism/ef_scaffold.dart';
import 'package:exchange_caclculator/design_system/theme/ef_colors.dart';
import 'package:exchange_caclculator/design_system/theme/ef_font_sizes.dart';
import 'package:exchange_caclculator/l10n/l10n.dart';
import 'package:flutter/material.dart';

class MaintenancePage extends StatelessWidget {
  const MaintenancePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return EFScaffold(
      neverScrollable: true,
      body: EFBackgound(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              color: EFColors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 26,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.construction_rounded,
                      size: 56,
                      color: EFColors.secondary,
                    ),
                    const SizedBox(height: 20),
                    EFText(
                      text: l10n.maintenanceTitle,
                      textAlign: TextAlign.center,
                      maxFontSize: EFFontSizes.headline3FontSize,
                      color: EFColors.labelBlackColor,
                    ),
                    const SizedBox(height: 10),
                    EFText(
                      text: l10n.maintenanceMessage,
                      textAlign: TextAlign.center,
                      maxLines: 4,
                      maxFontSize: EFFontSizes.subtitle,
                      color: EFColors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
