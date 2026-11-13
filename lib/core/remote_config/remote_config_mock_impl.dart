import 'dart:async';
import 'dart:convert';

import 'package:exchange_caclculator/core/env/env.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config.dart';
import 'package:exchange_caclculator/core/remote_config/remote_config_defaults.dart';
import 'package:exchange_caclculator/gen/assets.gen.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RemoteConfig, env: [AppEnv.mock])
class RemoteConfigMockImpl implements RemoteConfig {
  RemoteConfigMockImpl() : _configs = Map<String, dynamic>.from(RemoteConfigDefaults.values);

  /// Seeds configs without going through [init] (tests / tooling).
  RemoteConfigMockImpl.seeded(Map<String, dynamic> values)
    : _configs = _merge(RemoteConfigDefaults.values, values);

  factory RemoteConfigMockImpl.fromJson(Map<String, dynamic> json) {
    return RemoteConfigMockImpl.seeded(json);
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

  Map<String, dynamic> _configs;
  final _controller = StreamController<Map<String, dynamic>>.broadcast();
  final List<StreamSubscription<Map<String, dynamic>>> _subscriptions = [];

  @override
  Map<String, dynamic> get configs => Map.unmodifiable(_configs);

  @override
  Future<void> init() async {
    try {
      final source = await rootBundle.loadString(Assets.mock.remoteConfig);
      final decoded = jsonDecode(source);
      if (decoded is! Map<String, dynamic>) {
        throw FormatException(
          'Remote config JSON must be an object, got ${decoded.runtimeType}',
        );
      }
      _configs = _merge(RemoteConfigDefaults.values, decoded);
    } on Object {
      _configs = Map<String, dynamic>.from(RemoteConfigDefaults.values);
    }
  }

  @override
  void listen(void Function(Map<String, dynamic> configs) callback) {
    _subscriptions.add(_controller.stream.listen(callback));
  }

  /// Merges [values] on top of the current map and notifies listeners.
  void updateValues(Map<String, dynamic> values) {
    _configs = _merge(_configs, values);
    _controller.add(configs);
  }

  static Map<String, dynamic> _merge(
    Map<String, dynamic> base,
    Map<String, dynamic>? overrides,
  ) => {...base, ...?overrides};

  void dispose() {
    for (final subscription in _subscriptions) {
      unawaited(subscription.cancel());
    }
    _subscriptions.clear();
    unawaited(_controller.close());
  }
}
