import 'package:exchange_caclculator/features/force_update/domain/repository/force_update_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'force_update_bloc.freezed.dart';
part 'force_update_event.dart';
part 'force_update_state.dart';

class ForceUpdateBloc extends Bloc<ForceUpdateEvent, ForceUpdateState> {
  ForceUpdateBloc({required ForceUpdateRepository repository})
    : _repository = repository,
      super(
        ForceUpdateState(
          status: repository.isForceUpdateRequired
              ? ForceUpdateStatus.active
              : ForceUpdateStatus.inactive,
          storeUrl: repository.storeUrl,
        ),
      ) {
    on<ForceUpdateStarted>(_onStarted);
    on<ForceUpdateStatusChanged>(_onStatusChanged);
  }

  final ForceUpdateRepository _repository;
  var _isListening = false;

  Future<void> _onStarted(
    ForceUpdateStarted event,
    Emitter<ForceUpdateState> emit,
  ) async {
    emit(_stateFor(isRequired: _repository.isForceUpdateRequired));
    if (_isListening) return;
    _isListening = true;
    await _repository.listen(({required bool isRequired}) {
      if (!isClosed) {
        add(ForceUpdateStatusChanged(isRequired: isRequired));
      }
    });
  }

  void _onStatusChanged(
    ForceUpdateStatusChanged event,
    Emitter<ForceUpdateState> emit,
  ) {
    emit(_stateFor(isRequired: event.isRequired));
  }

  ForceUpdateState _stateFor({required bool isRequired}) => ForceUpdateState(
    status: isRequired ? ForceUpdateStatus.active : ForceUpdateStatus.inactive,
    storeUrl: _repository.storeUrl,
  );
}
