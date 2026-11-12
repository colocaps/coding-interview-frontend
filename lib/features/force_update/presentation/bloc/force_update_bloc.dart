import 'package:exchange_caclculator/core/url_launcher/url_launcher.dart';
import 'package:exchange_caclculator/features/force_update/domain/repository/force_update_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'force_update_bloc.freezed.dart';
part 'force_update_event.dart';
part 'force_update_state.dart';

class ForceUpdateBloc extends Bloc<ForceUpdateEvent, ForceUpdateState> {
  ForceUpdateBloc({
    required ForceUpdateRepository repository,
    required UrlLauncher urlLauncher,
  }) : _repository = repository,
       _urlLauncher = urlLauncher,
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
    on<ForceUpdateOpenStorePressed>(_onOpenStorePressed);
  }

  final ForceUpdateRepository _repository;
  final UrlLauncher _urlLauncher;
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

  Future<void> _onOpenStorePressed(
    ForceUpdateOpenStorePressed event,
    Emitter<ForceUpdateState> emit,
  ) async {
    final storeUrl = state.storeUrl;
    if (storeUrl.isEmpty) return;
    await _urlLauncher.open(storeUrl);
  }

  ForceUpdateState _stateFor({required bool isRequired}) => ForceUpdateState(
    status: isRequired ? ForceUpdateStatus.active : ForceUpdateStatus.inactive,
    storeUrl: _repository.storeUrl,
  );
}
