part of 'maintenance_bloc.dart';

@immutable
sealed class MaintenanceEvent {}

class MaintenanceStarted extends MaintenanceEvent {}

class MaintenanceStatusChanged extends MaintenanceEvent {
  MaintenanceStatusChanged({required this.isActive});
  final bool isActive;
}
