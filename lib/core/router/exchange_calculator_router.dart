import 'package:exchange_caclculator/features/error/presentation/view/error_screen.dart';
import 'package:exchange_caclculator/features/exchange/presentation/view/exchange_calculator_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: ExchangeCalculatorScreen.routePath,
  errorBuilder: (context, state) {
    return const ErrorScreen();
  },
  routes: [
    GoRoute(
      path: ExchangeCalculatorScreen.routePath,
      name: ExchangeCalculatorScreen.routeName,
      builder: (context, state) {
        return const ExchangeCalculatorScreen();
      },
    ),
    GoRoute(
      path: ErrorScreen.routePath,
      name: ErrorScreen.routeName,
      builder: (context, state) {
        return const ErrorScreen();
      },
    ),
  ],
);
