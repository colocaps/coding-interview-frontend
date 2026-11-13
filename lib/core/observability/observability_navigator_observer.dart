import 'package:exchange_caclculator/core/observability/observability.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ObservabilityNavigatorObserver extends NavigatorObserver {
  ObservabilityNavigatorObserver(this._observability);

  final Observability _observability;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _trackNavigation(
      action: 'push',
      route: route,
      previousRoute: previousRoute,
    );
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _trackNavigation(
      action: 'pop',
      route: route,
      previousRoute: previousRoute,
    );
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    _trackNavigation(
      action: 'replace',
      route: newRoute,
      previousRoute: oldRoute,
    );
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _trackNavigation(
      action: 'remove',
      route: route,
      previousRoute: previousRoute,
    );
  }

  void _trackNavigation({
    required String action,
    Route<dynamic>? route,
    Route<dynamic>? previousRoute,
  }) {
    _observability.track(
      'breadcrumb',
      properties: {
        'type': 'navigation',
        'action': action,
        'route': _routeLabel(route),
        'previous_route': _routeLabel(previousRoute),
      },
    );
  }

  String? _routeLabel(Route<dynamic>? route) {
    if (route == null) return null;
    final name = route.settings.name;
    if (name != null && name.isNotEmpty) return name;
    return route.settings.arguments?.toString() ?? route.runtimeType.toString();
  }
}
