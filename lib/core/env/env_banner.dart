import 'package:exchange_caclculator/core/env/env.dart';
import 'package:exchange_caclculator/design_system/theme/ef_colors.dart';
import 'package:flutter/material.dart';

class EnvBanner extends StatelessWidget {
  const EnvBanner({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final environment = Env.current;
    if (!environment.showsBanner) {
      return child;
    }

    return Banner(
      message: environment.bannerLabel,
      location: BannerLocation.topEnd,
      color: environment.isMock ? EFColors.secondary : EFColors.primary,
      textStyle: const TextStyle(
        color: EFColors.white,
        fontSize: 10,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.8,
      ),
      child: child,
    );
  }
}
