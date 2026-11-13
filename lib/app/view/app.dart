import 'package:exchange_caclculator/core/env/env_banner.dart';
import 'package:exchange_caclculator/core/observability/observability_navigator_observer.dart';
import 'package:exchange_caclculator/core/router/exchange_calculator_router.dart';
import 'package:exchange_caclculator/design_system/theme/ef_theme.dart';
import 'package:exchange_caclculator/di/injection.dart';
import 'package:exchange_caclculator/features/force_update/presentation/view/force_update_widget.dart';
import 'package:exchange_caclculator/features/maintenance/presentation/view/maintenance_widget.dart';
import 'package:exchange_caclculator/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final GoRouter _router = createExchangeCalculatorRouter(
    observers: [getIt<ObservabilityNavigatorObserver>()],
  );

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
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }
}
