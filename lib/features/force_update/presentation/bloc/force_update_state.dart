part of 'force_update_bloc.dart';

enum ForceUpdateStatus {
  inactive,
  active,
}

@freezed
abstract class ForceUpdateState with _$ForceUpdateState {
  const factory ForceUpdateState({
    @Default(ForceUpdateStatus.inactive) ForceUpdateStatus status,
    @Default('') String storeUrl,
  }) = _ForceUpdateState;
}
