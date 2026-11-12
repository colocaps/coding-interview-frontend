import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_config_state.freezed.dart';

/// Snapshot of every remote flag the app reacts to at the top level.
@freezed
abstract class RemoteConfigState with _$RemoteConfigState {
  const factory RemoteConfigState({
    @Default(false) bool isMaintenanceMode,
    @Default('0.0.0') String minRequiredVersionAndroid,
    @Default('0.0.0') String minRequiredVersionIos,
    @Default('') String storeUrlAndroid,
    @Default('') String storeUrlIos,
  }) = _RemoteConfigState;
}
