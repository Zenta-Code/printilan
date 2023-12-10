part of 'order_cubit.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.loading() = _Loading;
  const factory OrderState.success(List<OrderEntityResponse> data) = _Success;
  const factory OrderState.failure(String message) = _Failure;
  const factory OrderState.empty() = _Empty;
}
