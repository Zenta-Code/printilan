part of "settings_cubit.dart";

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.loading() = _Loading;
  const factory SettingsState.success(
    StoreEntity store,
    UserEntity user,
  ) = _Success;
  const factory SettingsState.failure(String message) = _Failure;
  const factory SettingsState.empty() = _Empty;
}
