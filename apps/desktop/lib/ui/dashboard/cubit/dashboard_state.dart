part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.loading() = _Loading;
  const factory DashboardState.success(dynamic data) = _Success;
  const factory DashboardState.failure(String message) = _Failure;
  const factory DashboardState.empty() = _Empty;
}
