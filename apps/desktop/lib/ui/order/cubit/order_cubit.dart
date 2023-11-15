
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(const _Loading());

  Future<void> fetchData() async {
    emit(const OrderState.loading());
    await Future.delayed(const Duration(seconds: 2));
    emit(const OrderState.success([]));
  }
}
