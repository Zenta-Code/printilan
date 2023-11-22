part of 'payment_bloc.dart'; 

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.started() = _Started;
  const factory PaymentEvent.onPayment() = _OnPayment;
  const factory PaymentEvent.onPaymentSuccess() = _OnPaymentSuccess;
  const factory PaymentEvent.onPaymentFailed() = _OnPaymentFailed;
}