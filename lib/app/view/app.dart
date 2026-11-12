import 'package:exchange_caclculator/core/env/env_banner.dart';
import 'package:exchange_caclculator/core/router/exchange_calculator_router.dart';
import 'package:exchange_caclculator/design_system/theme/ef_theme.dart';
import 'package:exchange_caclculator/features/force_update/presentation/view/force_update_widget.dart';
import 'package:exchange_caclculator/features/maintenance/presentation/view/maintenance_widget.dart';
import 'package:exchange_caclculator/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Exchange Caclculator',
      locale: const Locale('es', 'ES'),
      theme: EFTheme.lightTheme(),
      debugShowCheckedModeBanner: false,
      builder: (context, child) => EnvBanner(
        child: ForceUpdateWidget(
          child: MaintenanceWidget(
            child: child ?? const SizedBox.shrink(),
          ),
        ),
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        ...AppLocalizations.localizationsDelegates,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
