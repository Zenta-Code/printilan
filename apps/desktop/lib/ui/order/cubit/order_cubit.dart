import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'order_cubit.freezed.dart';
part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> with MainBoxMixin {
  OrderCubit(
    this._joinSocket,
    this._socketClient,
    this._dioClient,
  ) : super(const _Loading());

  final JoinSocket _joinSocket;
  final SocketClient _socketClient;
  final DioClient _dioClient;
  Future<void> fetchData() async {
    emit(const OrderState.loading());
    final store = getData(MainBoxKeys.store);
    final response = await _dioClient.getRequest(
      ListAPI.order,
      queryParameters: {
        "storeId": store!['_id'],
      },
      converter: (response) {
        final data = response['data'] as List<dynamic>;
        return data.map((e) => Order.fromJson(e)).toList();
      },
    );
  }

  Future<void> joinRoom() async {
    emit(const OrderState.loading());
    final store = getData(MainBoxKeys.store);
    log.f("Store: ${store["_id"]}");
    _joinSocket.call(store!['_id']);
    message();
  }

  void message() {
    _socketClient.socket.on('message', (data) {
      log.i(data);
    });
  }
}
