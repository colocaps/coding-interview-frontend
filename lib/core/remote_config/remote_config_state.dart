import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_config_state.freezed.dart';

/// Snapshot of every remote flag the app reacts to at the top level.
/// New flags (e.g. force update) are added here so a single stream drives
/// all global gates.
@freezed
abstract class RemoteConfigState with _$RemoteConfigState {
  const factory RemoteConfigState({@Default(false) bool isMaintenanceMode}) =
      _RemoteConfigState;
}
