part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.success(
    LocationEntity location,
    List<StoreEntity> store,
    List<BundleEntity> bundle,
  ) = _Success;
  const factory HomeState.failure(String message) = _Failure;
  const factory HomeState.empty() = _Empty;
}
