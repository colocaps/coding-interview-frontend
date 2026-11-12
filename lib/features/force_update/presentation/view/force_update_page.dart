import 'package:exchange_caclculator/design_system/atom/ef_text.dart';
import 'package:exchange_caclculator/design_system/molecule/ef_button.dart';
import 'package:exchange_caclculator/design_system/organism/ef_background.dart';
import 'package:exchange_caclculator/design_system/organism/ef_scaffold.dart';
import 'package:exchange_caclculator/design_system/theme/ef_colors.dart';
import 'package:exchange_caclculator/design_system/theme/ef_font_sizes.dart';
import 'package:exchange_caclculator/features/force_update/presentation/bloc/force_update_bloc.dart';
import 'package:exchange_caclculator/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class ForceUpdatePage extends StatelessWidget {
  const ForceUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final storeUrl = context.select(
      (ForceUpdateBloc bloc) => bloc.state.storeUrl,
    );

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
                      Icons.system_update_rounded,
                      size: 56,
                      color: EFColors.secondary,
                    ),
                    const SizedBox(height: 20),
                    EFText(
                      text: l10n.forceUpdateTitle,
                      textAlign: TextAlign.center,
                      maxFontSize: EFFontSizes.headline3FontSize,
                      color: EFColors.labelBlackColor,
                    ),
                    const SizedBox(height: 10),
                    EFText(
                      text: l10n.forceUpdateMessage,
                      textAlign: TextAlign.center,
                      maxLines: 4,
                      maxFontSize: EFFontSizes.subtitle,
                      color: EFColors.grey,
                    ),
                    if (storeUrl.isNotEmpty) ...[
                      const SizedBox(height: 20),
                      EFButton(
                        title: l10n.forceUpdateCta,
                        onPressed: () => _openStore(storeUrl),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _openStore(String storeUrl) async {
    final uri = Uri.tryParse(storeUrl);
    if (uri == null) return;
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}
