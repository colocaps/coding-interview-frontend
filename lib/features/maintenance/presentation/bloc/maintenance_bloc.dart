import 'package:exchange_caclculator/features/maintenance/domain/repository/maintenance_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'maintenance_bloc.freezed.dart';
part 'maintenance_event.dart';
part 'maintenance_state.dart';

class MaintenanceBloc extends Bloc<MaintenanceEvent, MaintenanceState> {
  MaintenanceBloc({required MaintenanceRepository repository})
    : _repository = repository,
      super(
        MaintenanceState(
          status: repository.isMaintenanceActive
              ? MaintenanceStatus.active
              : MaintenanceStatus.inactive,
        ),
      ) {
    on<MaintenanceStarted>(_onStarted);
    on<MaintenanceStatusChanged>(_onStatusChanged);
  }

  final MaintenanceRepository _repository;
  var _isListening = false;

  Future<void> _onStarted(
    MaintenanceStarted event,
    Emitter<MaintenanceState> emit,
  ) async {
    emit(_stateFor(isActive: _repository.isMaintenanceActive));
    if (_isListening) return;
    _isListening = true;
    await _repository.listen(({required bool isActive}) {
      if (!isClosed) {
        add(MaintenanceStatusChanged(isActive: isActive));
      }
    });
  }

  void _onStatusChanged(
    MaintenanceStatusChanged event,
    Emitter<MaintenanceState> emit,
  ) {
    emit(_stateFor(isActive: event.isActive));
  }

  MaintenanceState _stateFor({required bool isActive}) => MaintenanceState(
    status: isActive ? MaintenanceStatus.active : MaintenanceStatus.inactive,
  );
}
