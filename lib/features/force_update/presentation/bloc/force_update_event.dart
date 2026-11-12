part of 'force_update_bloc.dart';

@immutable
sealed class ForceUpdateEvent {}

class ForceUpdateStarted extends ForceUpdateEvent {}

class ForceUpdateStatusChanged extends ForceUpdateEvent {
  ForceUpdateStatusChanged({required this.isRequired});
  final bool isRequired;
}

class ForceUpdateOpenStorePressed extends ForceUpdateEvent {}
