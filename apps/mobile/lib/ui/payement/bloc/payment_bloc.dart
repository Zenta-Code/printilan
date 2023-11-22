import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_bloc.freezed.dart';
part 'payment_event.dart';
part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(const PaymentState.loading()) {
    on<PaymentEvent>((event, emit) {
      event.when(
        started: () async => started(event, emit),
        onPayment: () async => onPayment(event, emit),
        onPaymentSuccess: () async => onPaymentSuccess(event, emit),
        onPaymentFailed: () async => onPaymentFailed(event, emit),
      );
    });
  }
  void started(
    PaymentEvent event,
    Emitter<PaymentState> emit,
  ) async {}
  void onPayment(
    PaymentEvent event,
    Emitter<PaymentState> emit,
  ) async {}
  void onPaymentSuccess(
    PaymentEvent event,
    Emitter<PaymentState> emit,
  ) async {}
  void onPaymentFailed(
    PaymentEvent event,
    Emitter<PaymentState> emit,
  ) async {}
}
