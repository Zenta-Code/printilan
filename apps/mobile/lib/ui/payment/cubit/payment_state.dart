part of 'payment_cubit.dart';

@freezed 
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;
  const factory PaymentState.loading() = _Loading;
  const factory PaymentState.success(WebViewController controller) = _Success;
  const factory PaymentState.failed() = _Failed;
}