import 'package:exchange_caclculator/features/error/presentation/view/error_screen.dart';
import 'package:exchange_caclculator/features/home/presentation/view/home_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: HomeScreen.routePath,
  errorBuilder: (context, state) {
    return ErrorScreen();
  },
  routes: [
    GoRoute(
      path: HomeScreen.routePath,
      name: HomeScreen.routeName,
      builder: (context, state) {
        return HomeScreen();
      },
    ),
    GoRoute(
      path: ErrorScreen.routePath,
      name: ErrorScreen.routeName,
      builder: (context, state) {
        return ErrorScreen();
      },
    ),
  ],
);
