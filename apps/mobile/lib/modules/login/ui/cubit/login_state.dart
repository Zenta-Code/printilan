part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success(String? data) = _Success;
  const factory LoginState.failure(String message) = _Failure;
  const factory LoginState.showHide() = _ShowHide;
  const factory LoginState.init() = _Init;
}
