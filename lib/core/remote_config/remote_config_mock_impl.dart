import 'dart:async';
import 'dart:convert';

import 'package:exchange_caclculator/core/remote_config/remote_config.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_keys.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_state.dart';
import 'package:flutter/services.dart';

/// In-memory remote config for the mock flavor.
///
/// Seeded from [assetPath] in bootstrap (defaults fill any missing key).
class RemoteConfigMockImpl implements RemoteConfig {
  RemoteConfigMockImpl({Map<String, Object?>? values})
    : _values = _merge(defaultValues, values) {
    _current = stateFromValues(_values);
  }

  factory RemoteConfigMockImpl.fromJson(Map<String, dynamic> json) {
    return RemoteConfigMockImpl(values: Map<String, Object?>.from(json));
  }

  factory RemoteConfigMockImpl.fromJsonString(String source) {
    final decoded = jsonDecode(source);
    if (decoded is! Map<String, dynamic>) {
      throw FormatException(
        'Remote config JSON must be an object, got ${decoded.runtimeType}',
      );
    }
    return RemoteConfigMockImpl.fromJson(decoded);
  }

  static const assetPath = 'assets/mock/remote_config.json';

  /// Defaults used when a key is missing from the supplied map/JSON.
  static const Map<String, Object?> defaultValues = {
    RemoteConfigKeys.isMaintenanceMode: false,
    RemoteConfigKeys.minRequiredVersionAndroid: '0.0.0',
    RemoteConfigKeys.minRequiredVersionIos: '0.0.0',
    RemoteConfigKeys.storeUrlAndroid: '',
    RemoteConfigKeys.storeUrlIos: '',
  };

  static Future<RemoteConfigMockImpl> loadFromAsset({
    String path = assetPath,
  }) async {
    final source = await rootBundle.loadString(path);
    return RemoteConfigMockImpl.fromJsonString(source);
  }

  Map<String, Object?> _values;
  late RemoteConfigState _current;
  final _controller = StreamController<RemoteConfigState>.broadcast();
  final List<StreamSubscription<RemoteConfigState>> _subscriptions = [];

  Map<String, Object?> get values => Map.unmodifiable(_values);

  @override
  RemoteConfigState get current => _current;

  @override
  Future<void> listen(void Function(RemoteConfigState state) onChange) async {
    _subscriptions.add(_controller.stream.listen(onChange));
  }

  /// Merges [values] on top of the current map and notifies listeners.
  void updateValues(Map<String, Object?> values) {
    _values = _merge(_values, values);
    update(stateFromValues(_values));
  }

  void update(RemoteConfigState state) {
    _current = state;
    _controller.add(state);
  }

  static RemoteConfigState stateFromValues(Map<String, Object?> values) {
    return RemoteConfigState(
      isMaintenanceMode: _readBool(
        values,
        RemoteConfigKeys.isMaintenanceMode,
      ),
      minRequiredVersionAndroid: _readString(
        values,
        RemoteConfigKeys.minRequiredVersionAndroid,
      ),
      minRequiredVersionIos: _readString(
        values,
        RemoteConfigKeys.minRequiredVersionIos,
      ),
      storeUrlAndroid: _readString(
        values,
        RemoteConfigKeys.storeUrlAndroid,
      ),
      storeUrlIos: _readString(
        values,
        RemoteConfigKeys.storeUrlIos,
      ),
    );
  }

  static Map<String, Object?> _merge(
    Map<String, Object?> base,
    Map<String, Object?>? overrides,
  ) => {
    ...base,
    ...?overrides,
  };

  static bool _readBool(Map<String, Object?> values, String key) {
    final value = values[key];
    if (value is bool) return value;
    if (value is String) return value.toLowerCase() == 'true';
    return defaultValues[key] as bool? ?? false;
  }

  static String _readString(Map<String, Object?> values, String key) {
    final value = values[key];
    if (value is String) return value.trim();
    return defaultValues[key] as String? ?? '';
  }

  void dispose() {
    for (final subscription in _subscriptions) {
      unawaited(subscription.cancel());
    }
    _subscriptions.clear();
    unawaited(_controller.close());
  }
}
