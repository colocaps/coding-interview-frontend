part of 'maintenance_bloc.dart';

enum MaintenanceStatus {
  inactive,
  active,
}

@freezed
abstract class MaintenanceState with _$MaintenanceState {
  const factory MaintenanceState({
    @Default(MaintenanceStatus.inactive) MaintenanceStatus status,
  }) = _MaintenanceState;
}
